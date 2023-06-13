module @logreg_09_03_28_sections_0_2 attributes {plasma.kVerbose = false}  {
  plasma.Section @s0 attributes {kControlBlockId = 0 : i64}  {
    plasma.Chip @c0 attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>, %arg4: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>):  // no predecessors
      %u0r, %u0s:3 = plasma.unit.Pmu attributes {kName = "nbuf1a_0_0_71_pmu0", kUnitId = 0 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u1r, %u1s:5 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__linear WBuf 0_PCU", kUnitId = 1 : i64}  {
      ^bb0(%arg5: !plasma.ControlSrc, %arg6: !plasma.ControlSink, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSink, %arg9: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc)
      %u2r, %u2s:2 = plasma.unit.Pmu attributes {kName = "logreg__lin_layer__linear WBuf 0_PMU", kUnitId = 2 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u3r, %u3s:2 = plasma.unit.Pmu attributes {kName = "gbuf1a_0_0_70_head1_neck0_data_pmu0", kUnitId = 3 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u4r, %u4s:2 = plasma.unit.Pmu attributes {kName = "transpose_0_0_88.buffer_head1_neck0_data_pmu0", kUnitId = 4 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u5r, %u5s:2 = plasma.unit.Pmu attributes {kName = "gbuf1a_0_0_72_head1_neck0_data_pmu0", kUnitId = 5 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u6r, %u6s:2 = plasma.unit.Pmu attributes {kName = "output_buf_0_0_91_pmu", kUnitId = 6 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink)
      %u7r, %u7s:7 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_73_D_0_0", kUnitId = 7 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ScalarSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.VectorSrc, %arg9: !plasma.ControlSink, %arg10: !plasma.ControlSink, %arg11: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink)
      %u8r, %u8s:8 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_74_D_0_0", kUnitId = 8 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink, %arg10: !plasma.ScalarSink, %arg11: !plasma.ScalarSrc, %arg12: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink, !plasma.ScalarSink, !plasma.ScalarSrc, !plasma.ControlSink)
      %u9r, %u9s:20 = plasma.unit.Pcu attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.tcompute0_tcompute0", kUnitId = 9 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ControlSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink, %arg11: !plasma.ControlSink, %arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.ScalarSink, %arg19: !plasma.ScalarSink, %arg20: !plasma.ScalarSink, %arg21: !plasma.ScalarSink, %arg22: !plasma.ControlSink, %arg23: !plasma.ScalarSrc, %arg24: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.ScalarSink, !plasma.ControlSink, !plasma.ScalarSrc, !plasma.ControlSrc)
      %u10r, %u10s:12 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.tbuf_tmp_D_0_0", kUnitId = 10 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ControlSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSrc, %arg11: !plasma.ControlSink, %arg12: !plasma.VectorSink, %arg13: !plasma.ScalarSrc, %arg14: !plasma.ControlSink, %arg15: !plasma.ScalarSrc, %arg16: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ScalarSrc, !plasma.ControlSink)
      %u11r, %u11s:4 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss.tbuf_y_copy_D_0_0", kUnitId = 11 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ScalarSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ScalarSrc, !plasma.ControlSink, !plasma.ControlSrc)
      %u12r, %u12s:2 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_0_0_.tbuf1a_0_0_75_D_0_0", kUnitId = 12 : i64}  {
      ^bb0(%arg5: !plasma.ScalarSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ScalarSink, !plasma.VectorSrc)
      %u13r, %u13s:3 = plasma.unit.Pmu attributes {kName = "s0.fronting_pmu_load_group_2", kUnitId = 13 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %0 = "plasma.load.Dram"(%arg0) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<256x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%0, %u13s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %1 = "plasma.load.Dram"(%arg1) {kOffChipLayout = !plasma.TL<784x1xbf16:CVRM:64>, kOnChipLayout = !plasma.TL<784x1xbf16:CVRM:64>} : (!plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%1, %u0s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %2 = "plasma.load.Dram"(%arg2) {kOffChipLayout = !plasma.TL<1xsi16:RVRM>, kOnChipLayout = !plasma.TL<1xsi16:RVRM:64>} : (!plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%2, %u7s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %3 = "plasma.store.Dram"(%arg3) {kOffChipLayout = !plasma.TL<1x10xbf16:RVRM:64>, kOnChipLayout = !plasma.TL<1x10xbf16:RVRM:64>} : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,W>) -> !plasma.VectorSink
      "plasma.Connection"(%u6s#0, %3) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %4 = "plasma.store.Dram"(%arg4) {kOffChipLayout = !plasma.TL<1x64xui8:RVRM>, kOnChipLayout = !plasma.TL<1x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,W>) -> !plasma.VectorSink
      "plasma.Connection"(%u12s#1, %4) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u0s#0, %u1s#3) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u1s#0, %u1s#1) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u1s#4, %u3s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u2s#1, %u1s#2) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u3s#1, %u4s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u4s#1, %u5s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u4s#1, %u8s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u5s#1, %u6s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u7s#1, %u8s#5) : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      "plasma.Connection"(%u7s#3, %u11s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u8s#6, %u9s#14) : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      "plasma.Connection"(%u8s#1, %u9s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u9s#19, %u9s#1) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#3, %u9s#6) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#8, %u9s#10) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#12, %u9s#17) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#2, %u10s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u9s#3, %u10s#3) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#7, %u10s#4) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u9s#8, %u10s#6) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#11, %u10s#7) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u9s#12, %u10s#11) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#12, %u10s#9) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#19, %u10s#1) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#12, %u11s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#19, %u7s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#12, %u7s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#12, %u8s#7) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#19, %u8s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#3, %u8s#3) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#8, %u8s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u9s#18, %u12s#0) : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      "plasma.Connection"(%u10s#2, %u9s#5) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u10s#5, %u9s#9) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u10s#10, %u9s#13) : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      "plasma.Connection"(%u10s#8, %u9s#15) : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      "plasma.Connection"(%u11s#1, %u9s#16) : (!plasma.ScalarSrc, !plasma.ScalarSink) -> ()
      "plasma.Connection"(%u11s#3, %u7s#5) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u13s#0, %u2s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.view.TemplateHierarchy  {
        plasma.SuperNode @nbuf1a_0_0_71  {
          "plasma.BindUnit"(%u0r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @NBuffer {}
        }
        plasma.SuperNode @logreg__lin_layer__linear  {
          "plasma.BindUnit"(%u1r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u2r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @logreg__lin_layer__linearW_Buf {}
          plasma.SuperNode @ParGemm  {
            plasma.SuperNode @gemm_node {}
          }
        }
        plasma.SuperNode @gbuf1a_0_0_70  {
          "plasma.BindUnit"(%u3r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @transpose_0_0_88  {
          plasma.SuperNode @transpose_0_0_88.buffer  {
            "plasma.BindUnit"(%u4r) : (!plasma.Unitref) -> ()
          }
        }
        plasma.SuperNode @gbuf1a_0_0_72  {
          "plasma.BindUnit"(%u5r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @output_buf_0_0_91  {
          "plasma.BindUnit"(%u6r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_0_0_73  {
          "plasma.BindUnit"(%u7r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_0_0_74  {
          "plasma.BindUnit"(%u8r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__criterion__crossentropyloss  {
          plasma.SuperNode @tbuf_y_copy  {
            "plasma.BindUnit"(%u11r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tbuf_tmp  {
            "plasma.BindUnit"(%u10r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tcompute0  {
            "plasma.BindUnit"(%u9r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @tcompute0 {}
          }
        }
        plasma.SuperNode @tbuf1a_0_0_75  {
          "plasma.BindUnit"(%u12r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s0.fronting_pmu_load_group_2  {
          "plasma.BindUnit"(%u13r) : (!plasma.Unitref) -> ()
        }
      }
      plasma.view.PhysicalAssignment @main {}
    }
  }
  plasma.Section @s1 attributes {kControlBlockId = 1 : i64}  {
    plasma.Chip @c0 attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>, %arg3: !plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>, %arg4: !plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>):  // no predecessors
      %u14r, %u14s:3 = plasma.unit.Pmu attributes {kName = "input_buf_1_0_92_pmu", kUnitId = 14 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u15r, %u15s:2 = plasma.unit.Pmu attributes {kName = "gbuf1a_1_0_76_head1_neck0_data_pmu0", kUnitId = 15 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u16r, %u16s:4 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_77_D_0_0", kUnitId = 16 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u17r, %u17s:4 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_78_D_0_0", kUnitId = 17 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ScalarSink)
      %u18r, %u18s:5 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_79_D_0_0", kUnitId = 18 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.ControlSink)
      %u19r, %u19s:20 = plasma.unit.Pcu attributes {kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss.tcompute0_tcompute0", kUnitId = 19 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ControlSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSrc, %arg9: !plasma.VectorSink, %arg10: !plasma.VectorSink, %arg11: !plasma.ControlSink, %arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSrc, %arg14: !plasma.VectorSink, %arg15: !plasma.ControlSink, %arg16: !plasma.VectorSrc, %arg17: !plasma.ControlSrc, %arg18: !plasma.VectorSink, %arg19: !plasma.VectorSink, %arg20: !plasma.VectorSink, %arg21: !plasma.VectorSink, %arg22: !plasma.ControlSink, %arg23: !plasma.VectorSrc, %arg24: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSrc)
      %u20r, %u20s:16 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss.tbuf_tmp0_D_0_0", kUnitId = 20 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.ControlSink, %arg7: !plasma.VectorSrc, %arg8: !plasma.ControlSink, %arg9: !plasma.ControlSink, %arg10: !plasma.VectorSink, %arg11: !plasma.ControlSink, %arg12: !plasma.VectorSrc, %arg13: !plasma.ControlSink, %arg14: !plasma.ControlSink, %arg15: !plasma.VectorSink, %arg16: !plasma.ControlSink, %arg17: !plasma.VectorSrc, %arg18: !plasma.ControlSink, %arg19: !plasma.VectorSrc, %arg20: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSink, !plasma.VectorSink, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.VectorSrc, !plasma.ControlSink)
      %u21r, %u21s:2 = plasma.unit.Pmu attributes {kName = "LogregTorchSamba.partition_1_0_.tbuf1a_1_0_90_D_0_0", kUnitId = 21 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u22r, %u22s:2 = plasma.unit.Pmu attributes {kName = "gbuf1a_1_0_80_head1_neck0_data_pmu0", kUnitId = 22 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u23r, %u23s:3 = plasma.unit.Pmu attributes {kName = "gbuf1a_1_0_81_head1_neck0_data_pmu0", kUnitId = 23 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSrc)
      %u24r, %u24s:2 = plasma.unit.Pmu attributes {kName = "gbuf1a_1_0_82_head1_neck0_data_pmu0", kUnitId = 24 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u25r, %u25s:5 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PCU", kUnitId = 25 : i64}  {
      ^bb0(%arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSrc, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink)
      %u26r, %u26s:3 = plasma.unit.Pmu attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_0_PMU", kUnitId = 26 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.VectorSrc)
      %u27r, %u27s:5 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_1_PCU", kUnitId = 27 : i64}  {
      ^bb0(%arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSrc, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink)
      %u28r, %u28s:5 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_2_PCU", kUnitId = 28 : i64}  {
      ^bb0(%arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSrc, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink)
      %u29r, %u29s:5 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__linear_bwd_weight_grad_a_gemm_0_0_3_PCU", kUnitId = 29 : i64}  {
      ^bb0(%arg5: !plasma.ControlSink, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSink, %arg8: !plasma.VectorSrc, %arg9: !plasma.ControlSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.ControlSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink)
      %u30r, %u30s:2 = plasma.unit.Pmu attributes {kName = "gbuf1a_1_0_83_head1_neck0_data_pmu0", kUnitId = 30 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u31r, %u31s:4 = plasma.unit.Pmu attributes {kName = "gbuf1a_1_0_83_head1_neck0_write_fronting_pmu0", kUnitId = 31 : i64}  {
      ^bb0(%arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSrc, %arg8: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSrc, !plasma.ControlSrc)
      %u32r, %u32s:4 = plasma.unit.Pmu attributes {kName = "s1.fronting_pmu_load_group_8", kUnitId = 32 : i64}  {
      ^bb0(%arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.ControlSink, %arg8: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ControlSink, !plasma.ScalarSink)
      %0 = "plasma.load.Dram"(%arg0) {kOffChipLayout = !plasma.TL<1x10xbf16:RVRM:64>, kOnChipLayout = !plasma.TL<1x10xbf16:RVCM:64>} : (!plasma.TLMemRef<!plasma.TL<1x10xbf16:RVRM:64>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%0, %u14s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %1 = "plasma.load.Dram"(%arg1) {kOffChipLayout = !plasma.TL<1xsi16:RVRM>, kOnChipLayout = !plasma.TL<1xsi16:RVRM:64>} : (!plasma.TLMemRef<!plasma.TL<1xsi16:RVRM:64>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%1, %u16s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %2 = "plasma.load.Dram"(%arg2) {kOffChipLayout = !plasma.TL<1xbf16:RVRM>, kOnChipLayout = !plasma.TL<1xbf16:RVRM:64>} : (!plasma.TLMemRef<!plasma.TL<1xbf16:RVRM:64>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%2, %u17s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %3 = "plasma.load.Dram"(%arg3) {kOffChipLayout = !plasma.TL<784x1xbf16:CVRM:64>, kOnChipLayout = !plasma.TL<784x1xbf16:CVRM:64>} : (!plasma.TLMemRef<!plasma.TL<784x1xbf16:CVRM:64>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%3, %u32s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %4 = "plasma.store.Dram"(%arg4) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<784x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<10x784xbf16:CVRM:64>,0,W>) -> !plasma.VectorSink
      "plasma.Connection"(%u30s#1, %4) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u14s#0, %u15s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u15s#1, %u18s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u16s#1, %u19s#16) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u17s#1, %u19s#15) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u18s#1, %u19s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u19s#19, %u19s#1) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#3, %u19s#6) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#8, %u19s#10) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#12, %u19s#17) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#2, %u20s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u19s#3, %u20s#3) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#19, %u20s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#19, %u20s#6) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#7, %u20s#5) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u19s#8, %u20s#8) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#19, %u20s#9) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#8, %u20s#11) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#12, %u20s#15) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#11, %u20s#10) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u19s#12, %u20s#13) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#19, %u20s#1) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#12, %u16s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#12, %u17s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#19, %u18s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#3, %u18s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#8, %u18s#3) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u19s#18, %u21s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u20s#2, %u19s#5) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u20s#7, %u19s#9) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u20s#12, %u19s#13) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u20s#14, %u19s#14) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u21s#1, %u22s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u22s#1, %u26s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u23s#1, %u24s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u23s#2, %u32s#2) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u24s#1, %u25s#2) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u25s#3, %u31s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u26s#1, %u25s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u26s#2, %u27s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u31s#1, %u30s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u31s#2, %u25s#0) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#2, %u27s#0) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#2, %u28s#0) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#2, %u29s#0) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#3, %u25s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#3, %u27s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#3, %u28s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u31s#3, %u29s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u32s#0, %u23s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.view.TemplateHierarchy  {
        plasma.SuperNode @input_buf_1_0_92  {
          "plasma.BindUnit"(%u14r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_76  {
          "plasma.BindUnit"(%u15r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_77  {
          "plasma.BindUnit"(%u16r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_78  {
          "plasma.BindUnit"(%u17r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @tbuf1a_1_0_79  {
          "plasma.BindUnit"(%u18r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__criterion__crossentropyloss_bwd_loss  {
          plasma.SuperNode @tbuf_tmp0  {
            "plasma.BindUnit"(%u20r) : (!plasma.Unitref) -> ()
          }
          plasma.SuperNode @tcompute0  {
            "plasma.BindUnit"(%u19r) : (!plasma.Unitref) -> ()
            plasma.SuperNode @tcompute0 {}
          }
        }
        plasma.SuperNode @tbuf1a_1_0_90  {
          "plasma.BindUnit"(%u21r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_80  {
          "plasma.BindUnit"(%u22r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_81  {
          "plasma.BindUnit"(%u23r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @gbuf1a_1_0_82  {
          "plasma.BindUnit"(%u24r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @logreg__lin_layer__linear_bwd_weight_grad_a  {
          "plasma.BindUnit"(%u25r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u26r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u27r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u28r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u29r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @W_Buf {}
          plasma.SuperNode @logreg__lin_layer__linear_bwd_weight_grad_a_rowcolpargemm_0  {
            plasma.SuperNode @gemm {}
            plasma.SuperNode @gemm {}
            plasma.SuperNode @gemm {}
            plasma.SuperNode @gemm {}
          }
        }
        plasma.SuperNode @gbuf1a_1_0_83  {
          "plasma.BindUnit"(%u30r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u31r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s1.fronting_pmu_load_group_8  {
          "plasma.BindUnit"(%u32r) : (!plasma.Unitref) -> ()
        }
      }
      plasma.view.PhysicalAssignment @main {}
    }
  }
  plasma.Section @s2 attributes {kControlBlockId = 2 : i64}  {
    plasma.Chip @c0 attributes {kControlBlockId = 0 : i64, type = (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> ()}  {
    ^bb0(%arg0: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg1: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>, %arg2: !plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>):  // no predecessors
      %u33r, %u33s:6 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PCU", kUnitId = 33 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSink, %arg5: !plasma.VectorSink, %arg6: !plasma.VectorSrc, %arg7: !plasma.ControlSink, %arg8: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSrc)
      %u34r, %u34s:5 = plasma.unit.Pmu attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_mw_pcu10_PMU", kUnitId = 34 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc, %arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSrc)
      %u35r, %u35s:5 = plasma.unit.Pcu attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PCU", kUnitId = 35 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSink, %arg5: !plasma.VectorSrc, %arg6: !plasma.ControlSink, %arg7: !plasma.ControlSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSink, !plasma.VectorSrc, !plasma.ControlSink, !plasma.ControlSrc)
      %u36r, %u36s:5 = plasma.unit.Pmu attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_w_pcu20_PMU", kUnitId = 36 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc, %arg5: !plasma.VectorSrc, %arg6: !plasma.VectorSink, %arg7: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc, !plasma.VectorSrc, !plasma.VectorSink, !plasma.VectorSrc)
      %u37r, %u37s:2 = plasma.unit.Pmu attributes {kName = "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_OptimizerSGD_dw0", kUnitId = 37 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u38r, %u38s:3 = plasma.unit.Pmu attributes {kName = "s2.fronting_pmu_load_group_2", kUnitId = 38 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.VectorSink, %arg5: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u39r, %u39s:3 = plasma.unit.Pmu attributes {kName = "s2.fronting_pmu_load_group_6", kUnitId = 39 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.VectorSink, %arg5: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u40r, %u40s:3 = plasma.unit.Pmu attributes {kName = "s2.fronting_pmu_load_group_5", kUnitId = 40 : i64}  {
      ^bb0(%arg3: !plasma.VectorSrc, %arg4: !plasma.VectorSink, %arg5: !plasma.ScalarSink):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSrc, !plasma.VectorSink, !plasma.ScalarSink)
      %u41r, %u41s:2 = plasma.unit.Pmu attributes {kName = "s2.backing_pmu_group_2_logreg__lin_layer__weight_2_0_48", kUnitId = 41 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %u42r, %u42s:2 = plasma.unit.Pmu attributes {kName = "s2.backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49", kUnitId = 42 : i64}  {
      ^bb0(%arg3: !plasma.VectorSink, %arg4: !plasma.VectorSrc):  // no predecessors
      } : () -> (!plasma.Unitref, !plasma.VectorSink, !plasma.VectorSrc)
      %0 = "plasma.load.Dram"(%arg0) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<256x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%0, %u38s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %1 = "plasma.load.Dram"(%arg1) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<256x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%1, %u39s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %2 = "plasma.load.Dram"(%arg2) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<256x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> !plasma.VectorSrc
      "plasma.Connection"(%2, %u40s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %3 = "plasma.store.Dram"(%arg0) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<784x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> !plasma.VectorSink
      "plasma.Connection"(%u41s#1, %3) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      %4 = "plasma.store.Dram"(%arg2) {kOffChipLayout = !plasma.TL<784x64xui8:RVRM>, kOnChipLayout = !plasma.TL<784x64xui8:RVRM>} : (!plasma.TLMemRef<!plasma.TL<25088xbf16:RVRM>,0,R>) -> !plasma.VectorSink
      "plasma.Connection"(%u42s#1, %4) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u33s#3, %u34s#3) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u33s#5, %u33s#4) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u34s#1, %u33s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u34s#2, %u35s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u34s#4, %u42s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u35s#2, %u36s#3) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u35s#4, %u35s#3) : (!plasma.ControlSrc, !plasma.ControlSink) -> ()
      "plasma.Connection"(%u36s#1, %u33s#2) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u36s#2, %u35s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u36s#4, %u41s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u37s#1, %u33s#1) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u38s#0, %u36s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u39s#0, %u37s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      "plasma.Connection"(%u40s#0, %u34s#0) : (!plasma.VectorSrc, !plasma.VectorSink) -> ()
      plasma.view.TemplateHierarchy  {
        plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt  {
          "plasma.BindUnit"(%u33r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u34r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u35r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u36r) : (!plasma.Unitref) -> ()
          "plasma.BindUnit"(%u37r) : (!plasma.Unitref) -> ()
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_W_Buf {}
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_DW_Buf {}
          plasma.SuperNode @logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_MW_Buf {}
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_2  {
          "plasma.BindUnit"(%u38r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_6  {
          "plasma.BindUnit"(%u39r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.fronting_pmu_load_group_5  {
          "plasma.BindUnit"(%u40r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_2_logreg__lin_layer__weight_2_0_48  {
          "plasma.BindUnit"(%u41r) : (!plasma.Unitref) -> ()
        }
        plasma.SuperNode @s2.backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49  {
          "plasma.BindUnit"(%u42r) : (!plasma.Unitref) -> ()
        }
      }
      plasma.view.PhysicalAssignment @main {}
    }
  }
}
