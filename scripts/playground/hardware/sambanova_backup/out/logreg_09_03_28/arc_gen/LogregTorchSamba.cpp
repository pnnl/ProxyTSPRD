/**
 * Copyright © 2021 by SambaNova Systems, Inc. Disclosure, reproduction,
 * reverse engineering, or any other use made without the advance written
 * permission of SambaNova Systems, Inc. is unauthorized and strictly
 * prohibited. All rights of ownership and enforcement are reserved.
 */
/**
 * NOTE: This is an auto-generated file.
 * Please use caution if you need to make modifications.
 */

#include "LogregTorchSamba.h"

#include <queue>

#include "Util/LayoutsUtility.h"

namespace prism {
namespace plasma {
namespace arc {
LogregTorchSamba::LogregTorchSamba(const std::string &name, const SuperNode *parent, mlir::rail::RAIL *rail, Params params, int64_t section_id):
  SuperNode(name, parent, mlir::rail::RAIL::plasma()), params_(params) {
    /** Dram layout for P2P Channels **/
    
    /** Section node construction **/
    if (section_id == 0) {
        construct_section0();
    }
    if (section_id == 1) {
        construct_section1();
    }
    if (section_id == 2) {
        construct_section2();
    }
}

void LogregTorchSamba::construct_section0() {
    bool layouts_match = true;
    /** Section 0, Chip 0 **/
    partition_0_0_ = create_node<SuperNode>("partition_0_0_", this, plasma_);
    
    partition_0_0_->set_section_latency(3.568250e-05);
    NBuffer::Params nbuf1a_0_0_71_params;
    nbuf1a_0_0_71_params.head1_stage_reversed = true;
    nbuf1a_0_0_71_params.head_1_depth = 1;
    nbuf1a_0_0_71_params.layout = params_.image_0_0_25.at_address(0);
    nbuf1a_0_0_71_params.load_from_dram = true;
    nbuf1a_0_0_71_ = create_node<NBuffer>("nbuf1a_0_0_71", partition_0_0_, plasma_, nbuf1a_0_0_71_params);
    nbuf1a_0_0_71_->set_mac_id("");
    nbuf1a_0_0_71_->set_mac_latency(-1.000000e+00);
    
    GemmSubnet::Params logreg__lin_layer__linear_params;
    logreg__lin_layer__linear_params.batch_size = 1;
    logreg__lin_layer__linear_params.bias_mode = GemmSubnet::BiasMode::kNoBias;
    logreg__lin_layer__linear_params.box_layout = true;
    logreg__lin_layer__linear_params.box_layout_bias_placement = false;
    logreg__lin_layer__linear_params.box_layout_max_height = 64;
    logreg__lin_layer__linear_params.box_layout_max_width = 4;
    logreg__lin_layer__linear_params.box_per_wbuf_split = false;
    logreg__lin_layer__linear_params.enable_instrumentation = false;
    logreg__lin_layer__linear_params.external_output = true;
    logreg__lin_layer__linear_params.fwd_gemm_wbuf_external_load = false;
    logreg__lin_layer__linear_params.fwd_prop_a = params_.logreg__lin_layer__weight_0_0_24.with_vector_transpose(true);
    logreg__lin_layer__linear_params.fwd_prop_b = nbuf1a_0_0_71_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    logreg__lin_layer__linear_params.integrated_bias = false;
    logreg__lin_layer__linear_params.integrated_relu = false;
    logreg__lin_layer__linear_params.maximum_fwd_b_fanout = 32;
    logreg__lin_layer__linear_params.no_reload_bias = false;
    logreg__lin_layer__linear_params.no_reload_weight = false;
    logreg__lin_layer__linear_params.num_compute_units = 1;
    logreg__lin_layer__linear_params.set_exclusive_routes = false;
    logreg__lin_layer__linear_params.stream_into_wbuf = false;
    logreg__lin_layer__linear_params.strnd = false;
    logreg__lin_layer__linear_params.strnd_seed = 1;
    logreg__lin_layer__linear_params.subnet_type = SubnetType::kForward;
    logreg__lin_layer__linear_params.use_wbuf_for_bias = false;
    logreg__lin_layer__linear_params.use_wbuf_transpose_atom_move = false;
    logreg__lin_layer__linear_params.wbuf_split = false;
    logreg__lin_layer__linear_ = create_node<GemmSubnet>("logreg__lin_layer__linear", partition_0_0_, plasma_, logreg__lin_layer__linear_params);
    logreg__lin_layer__linear_->set_mac_id("logreg__lin_layer__linear");
    logreg__lin_layer__linear_->set_mac_latency(8.620000e+02);
    
    GBuffer::Params gbuf1a_0_0_70_params;
    gbuf1a_0_0_70_params.head1_linear = true;
    gbuf1a_0_0_70_params.head_1_depth = 1;
    gbuf1a_0_0_70_params.layout = logreg__lin_layer__linear_->result_layout().at_address(0);
    gbuf1a_0_0_70_params.num_iterations = 1;
    gbuf1a_0_0_70_ = create_node<GBuffer>("gbuf1a_0_0_70", partition_0_0_, plasma_, gbuf1a_0_0_70_params);
    gbuf1a_0_0_70_->set_mac_id("");
    gbuf1a_0_0_70_->set_mac_latency(-1.000000e+00);
    
    Transpose::Params transpose_0_0_88_params;
    transpose_0_0_88_params.depth = 1;
    transpose_0_0_88_params.layout = gbuf1a_0_0_70_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    transpose_0_0_88_params.transpose_type = Transpose::kLogical;
    transpose_0_0_88_ = create_node<Transpose>("transpose_0_0_88", partition_0_0_, plasma_, transpose_0_0_88_params);
    transpose_0_0_88_->set_mac_id("");
    transpose_0_0_88_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf1a_0_0_72_params;
    gbuf1a_0_0_72_params.head1_linear = false;
    gbuf1a_0_0_72_params.head_1_depth = 1;
    gbuf1a_0_0_72_params.head_1_transposed = true;
    gbuf1a_0_0_72_params.layout = transpose_0_0_88_->result_layout().at_address(0);
    gbuf1a_0_0_72_params.num_iterations = 1;
    gbuf1a_0_0_72_ = create_node<GBuffer>("gbuf1a_0_0_72", partition_0_0_, plasma_, gbuf1a_0_0_72_params);
    gbuf1a_0_0_72_->set_mac_id("");
    gbuf1a_0_0_72_->set_mac_latency(-1.000000e+00);
    
    Buf::Params output_buf_0_0_91_params;
    output_buf_0_0_91_params.layout = gbuf1a_0_0_72_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    output_buf_0_0_91_params.depth = 1;
    output_buf_0_0_91_ = create_node<Buf>("output_buf_0_0_91", partition_0_0_, plasma_, output_buf_0_0_91_params);
    
    PermuteView::Params permute_view_0_0_67_params;
    permute_view_0_0_67_params.input_layout = transpose_0_0_88_->result_layout().at_address(0);
    permute_view_0_0_67_params.permute = {1, 0};
    permute_view_0_0_67_ = create_node<PermuteView>("permute_view_0_0_67", partition_0_0_, plasma_, permute_view_0_0_67_params);
    permute_view_0_0_67_->set_mac_id("");
    permute_view_0_0_67_->set_mac_latency(-1.000000e+00);
    
    TBuffer::Params tbuf1a_0_0_73_params;
    tbuf1a_0_0_73_params.buffer_depth = 1;
    tbuf1a_0_0_73_params.layout = params_.label_0_0_29;
    tbuf1a_0_0_73_ = create_node<TBuffer>("tbuf1a_0_0_73", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_73_params);
    tbuf1a_0_0_73_->set_mac_id("");
    tbuf1a_0_0_73_->set_mac_latency(-1.000000e+00);
    
    TBuffer::Params tbuf1a_0_0_74_params;
    tbuf1a_0_0_74_params.buffer_depth = 1;
    tbuf1a_0_0_74_params.layout = permute_view_0_0_67_->result_layout();
    tbuf1a_0_0_74_ = create_node<TBuffer>("tbuf1a_0_0_74", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_74_params);
    tbuf1a_0_0_74_->set_mac_id("");
    tbuf1a_0_0_74_->set_mac_latency(-1.000000e+00);
    
    RAILCrossEntropy::Params logreg__criterion__crossentropyloss_params;
    logreg__criterion__crossentropyloss_params.batch_size = 1;
    logreg__criterion__crossentropyloss_params.c_par = 1;
    logreg__criterion__crossentropyloss_params.class_by_sample = 1;
    logreg__criterion__crossentropyloss_params.ignore_class = -1;
    logreg__criterion__crossentropyloss_params.input_x_layout = tbuf1a_0_0_74_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_params.input_y_layout = tbuf1a_0_0_73_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_params.no_tbuf_tmp = 0;
    logreg__criterion__crossentropyloss_params.reduction_mode = RAILCrossEntropy::kRaw;
    logreg__criterion__crossentropyloss_params.use_extra_pcu = 0;
    logreg__criterion__crossentropyloss_params.use_y_copy = 1;
    logreg__criterion__crossentropyloss_params.y_filtering_in_output = 0;
    logreg__criterion__crossentropyloss_params.y_filtering_in_tcompute = 1;
    logreg__criterion__crossentropyloss_ = create_node<RAILCrossEntropy>("logreg__criterion__crossentropyloss", partition_0_0_, LOC, mlir::rail::RAIL::rail, logreg__criterion__crossentropyloss_params);
    logreg__criterion__crossentropyloss_->set_mac_id("logreg__criterion__crossentropyloss");
    logreg__criterion__crossentropyloss_->set_mac_latency(4.820000e+02);
    
    TBuffer::Params tbuf1a_0_0_75_params;
    tbuf1a_0_0_75_params.buffer_depth = 1;
    tbuf1a_0_0_75_params.layout = logreg__criterion__crossentropyloss_->result_layout().at_address(0);
    tbuf1a_0_0_75_ = create_node<TBuffer>("tbuf1a_0_0_75", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_75_params);
    tbuf1a_0_0_75_->set_mac_id("");
    tbuf1a_0_0_75_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<SuperNode>("partition_1_0_", this, plasma_);
    
    partition_1_0_->set_section_latency(3.599367e-05);
    Buf::Params input_buf_1_0_92_params;
    input_buf_1_0_92_params.layout = params_.logreg__lin_layer__linear__outputs__0_1_0_34.at_address(0);
    input_buf_1_0_92_params.depth = 1;
    input_buf_1_0_92_ = create_node<Buf>("input_buf_1_0_92", partition_1_0_, plasma_, input_buf_1_0_92_params);
    
    GBuffer::Params gbuf1a_1_0_76_params;
    gbuf1a_1_0_76_params.head1_linear = false;
    gbuf1a_1_0_76_params.head_1_depth = 2;
    gbuf1a_1_0_76_params.head_1_transposed = true;
    gbuf1a_1_0_76_params.layout = input_buf_1_0_92_->result_layout().at_address(0);
    gbuf1a_1_0_76_params.num_iterations = 1;
    gbuf1a_1_0_76_ = create_node<GBuffer>("gbuf1a_1_0_76", partition_1_0_, plasma_, gbuf1a_1_0_76_params);
    gbuf1a_1_0_76_->set_mac_id("");
    gbuf1a_1_0_76_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params permute_view_1_0_68_params;
    permute_view_1_0_68_params.input_layout = gbuf1a_1_0_76_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    permute_view_1_0_68_params.permute = {1, 0};
    permute_view_1_0_68_ = create_node<PermuteView>("permute_view_1_0_68", partition_1_0_, plasma_, permute_view_1_0_68_params);
    permute_view_1_0_68_->set_mac_id("");
    permute_view_1_0_68_->set_mac_latency(-1.000000e+00);
    
    TBuffer::Params tbuf1a_1_0_77_params;
    tbuf1a_1_0_77_params.buffer_depth = 1;
    tbuf1a_1_0_77_params.layout = params_.label_1_0_35;
    tbuf1a_1_0_77_ = create_node<TBuffer>("tbuf1a_1_0_77", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_77_params);
    tbuf1a_1_0_77_->set_mac_id("");
    tbuf1a_1_0_77_->set_mac_latency(-1.000000e+00);
    
    TBuffer::Params tbuf1a_1_0_78_params;
    tbuf1a_1_0_78_params.buffer_depth = 1;
    tbuf1a_1_0_78_params.layout = params_.logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36;
    tbuf1a_1_0_78_ = create_node<TBuffer>("tbuf1a_1_0_78", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_78_params);
    tbuf1a_1_0_78_->set_mac_id("");
    tbuf1a_1_0_78_->set_mac_latency(-1.000000e+00);
    
    TBuffer::Params tbuf1a_1_0_79_params;
    tbuf1a_1_0_79_params.buffer_depth = 1;
    tbuf1a_1_0_79_params.layout = permute_view_1_0_68_->result_layout();
    tbuf1a_1_0_79_ = create_node<TBuffer>("tbuf1a_1_0_79", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_79_params);
    tbuf1a_1_0_79_->set_mac_id("");
    tbuf1a_1_0_79_->set_mac_latency(-1.000000e+00);
    
    RAILCrossEntropyGrad::Params logreg__criterion__crossentropyloss_bwd_loss_params;
    logreg__criterion__crossentropyloss_bwd_loss_params.batch_size = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.c_par = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.class_by_sample = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.ignore_class = -1;
    logreg__criterion__crossentropyloss_bwd_loss_params.input_loss_layout = tbuf1a_1_0_78_->param().layout->at_address(0).at_address(0).with_logical_shape({1}).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_params.input_x_layout = tbuf1a_1_0_79_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_params.input_y_layout = tbuf1a_1_0_77_->param().layout->at_address(0).at_address(0).with_logical_shape({1}).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_ = create_node<RAILCrossEntropyGrad>("logreg__criterion__crossentropyloss_bwd_loss", partition_1_0_, LOC, mlir::rail::RAIL::rail, logreg__criterion__crossentropyloss_bwd_loss_params);
    logreg__criterion__crossentropyloss_bwd_loss_->set_mac_id("logreg__criterion__crossentropyloss_bwd_loss");
    logreg__criterion__crossentropyloss_bwd_loss_->set_mac_latency(1.140000e+02);
    
    TBuffer::Params tbuf1a_1_0_90_params;
    tbuf1a_1_0_90_params.buffer_depth = 1;
    tbuf1a_1_0_90_params.layout = logreg__criterion__crossentropyloss_bwd_loss_->result_layout().at_address(0);
    tbuf1a_1_0_90_ = create_node<TBuffer>("tbuf1a_1_0_90", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_90_params);
    tbuf1a_1_0_90_->set_mac_id("");
    tbuf1a_1_0_90_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf1a_1_0_80_params;
    gbuf1a_1_0_80_params.head1_linear = false;
    gbuf1a_1_0_80_params.head_1_depth = 1;
    gbuf1a_1_0_80_params.head_1_transposed = true;
    gbuf1a_1_0_80_params.layout = tbuf1a_1_0_90_->param().layout->at_address(0).at_address(0);
    gbuf1a_1_0_80_params.num_iterations = 1;
    gbuf1a_1_0_80_ = create_node<GBuffer>("gbuf1a_1_0_80", partition_1_0_, plasma_, gbuf1a_1_0_80_params);
    gbuf1a_1_0_80_->set_mac_id("");
    gbuf1a_1_0_80_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params permute_view_1_0_69_params;
    permute_view_1_0_69_params.input_layout = gbuf1a_1_0_80_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    permute_view_1_0_69_params.permute = {1, 0};
    permute_view_1_0_69_ = create_node<PermuteView>("permute_view_1_0_69", partition_1_0_, plasma_, permute_view_1_0_69_params);
    permute_view_1_0_69_->set_mac_id("");
    permute_view_1_0_69_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params logreg__lin_layer__linear_t_output0_bwd_params;
    logreg__lin_layer__linear_t_output0_bwd_params.input_layout = permute_view_1_0_69_->result_layout();
    logreg__lin_layer__linear_t_output0_bwd_params.permute = {1, 0};
    logreg__lin_layer__linear_t_output0_bwd_ = create_node<PermuteView>("logreg__lin_layer__linear_t_output0_bwd", partition_1_0_, plasma_, logreg__lin_layer__linear_t_output0_bwd_params);
    logreg__lin_layer__linear_t_output0_bwd_->set_mac_id("logreg__lin_layer__linear_t_output0_bwd");
    logreg__lin_layer__linear_t_output0_bwd_->set_mac_latency(0.000000e+00);
    
    GBuffer::Params gbuf1a_1_0_81_params;
    gbuf1a_1_0_81_params.enable_fronting_pmu = true;
    gbuf1a_1_0_81_params.head1_linear = false;
    gbuf1a_1_0_81_params.head_1_depth = 1;
    gbuf1a_1_0_81_params.head_1_transposed = true;
    gbuf1a_1_0_81_params.layout = params_.image_1_0_39.at_address(0);
    gbuf1a_1_0_81_params.loaded_by_broadcast = false;
    gbuf1a_1_0_81_params.num_iterations = 1;
    gbuf1a_1_0_81_ = create_node<GBuffer>("gbuf1a_1_0_81", partition_1_0_, plasma_, gbuf1a_1_0_81_params);
    gbuf1a_1_0_81_->set_mac_id("");
    gbuf1a_1_0_81_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf1a_1_0_82_params;
    gbuf1a_1_0_82_params.head1_linear = false;
    gbuf1a_1_0_82_params.head_1_depth = 1;
    gbuf1a_1_0_82_params.layout = gbuf1a_1_0_81_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_82_params.num_iterations = 1;
    gbuf1a_1_0_82_ = create_node<GBuffer>("gbuf1a_1_0_82", partition_1_0_, plasma_, gbuf1a_1_0_82_params);
    gbuf1a_1_0_82_->set_mac_id("");
    gbuf1a_1_0_82_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params logreg__lin_layer__linear_bwd_weight_grad_a_params;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.A_layout = logreg__lin_layer__linear_t_output0_bwd_->result_layout().with_vector_transpose(true);
    logreg__lin_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf1a_1_0_82_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    logreg__lin_layer__linear_bwd_weight_grad_a_params.batch_size = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.batch_size_b = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.box_layout = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.box_per_partition = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.connected_to_accumulator = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.enable_gradient = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.enable_seqID_pacing_interval = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.exclusive_vc_a = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.external_input_a = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.maximum_fwd_b_fanout = 32;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_col_compute_units = 4;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_partitions = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_row_compute_units = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.output_gbuf = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.partition_start_delay = 10;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.seqID_base = 0;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.set_exclusive_routes = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.streaming_col_par = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.use_wbuf_transpose_atom_move = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_ = create_node<BigGemm>("logreg__lin_layer__linear_bwd_weight_grad_a", partition_1_0_, plasma_, logreg__lin_layer__linear_bwd_weight_grad_a_params);
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_mac_id("logreg__lin_layer__linear_bwd_weight");
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_mac_latency(1.255000e+03);
    
    GBuffer::Params gbuf1a_1_0_83_params;
    gbuf1a_1_0_83_params.head1_ctrl_flow_enable = true;
    gbuf1a_1_0_83_params.head1_linear = false;
    gbuf1a_1_0_83_params.head1_streaming_window = true;
    gbuf1a_1_0_83_params.head_1_depth = 1;
    gbuf1a_1_0_83_params.layout = logreg__lin_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_1_0_83_params.num_iterations = 1;
    gbuf1a_1_0_83_params.write_group_layouts = {logreg__lin_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::kOutput)};
    gbuf1a_1_0_83_params.write_group_partitions = {logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions()};
    gbuf1a_1_0_83_ = create_node<GBuffer>("gbuf1a_1_0_83", partition_1_0_, plasma_, gbuf1a_1_0_83_params);
    gbuf1a_1_0_83_->set_mac_id("");
    gbuf1a_1_0_83_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section2() {
    bool layouts_match = true;
    /** Section 2, Chip 0 **/
    partition_2_0_ = create_node<SuperNode>("partition_2_0_", this, plasma_);
    
    partition_2_0_->set_section_latency(3.558413e-05);
    OptimizerSGD::Params logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.box_layout = true;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.decay = 0.0003;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.layout_dw = params_.logreg__lin_layer__weight__grad_2_0_45;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.layout_mw = params_.logreg__lin_layer__weight__sgd0__momentum_2_0_46;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.layout_w = params_.logreg__lin_layer__weight_2_0_44;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.lr = 0.0015;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.mixp = false;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.momentum = 0;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params);
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_mac_id("logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt");
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("UnknownFileName":0:0): tlir.Buffer
    nbuf1a_0_0_71_->configure_node();
    PmuSetupWrite nbuf1a_0_0_71_wr_params = {};
    nbuf1a_0_0_71_->configure_wr(nbuf1a_0_0_71_wr_params);
    PmuSetupRead nbuf1a_0_0_71_rd1_params1 = logreg__lin_layer__linear_->input_read_params(GemmSubnet::kFwdPropB);
    nbuf1a_0_0_71_->configure_rd_head_1(nbuf1a_0_0_71_rd1_params1, {1});
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    logreg__lin_layer__linear_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    logreg__lin_layer__linear_->set_op_name("tlir.Linear");
    logreg__lin_layer__linear_->configure();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_70_wr_params = logreg__lin_layer__linear_->write_params(GemmSubnet::kFwdPropOutput);
    gbuf1a_0_0_70_->configure_wr(gbuf1a_0_0_70_wr_params);
    PmuSetupRead gbuf1a_0_0_70_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_70_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of transpose_0_0_88");
    gbuf1a_0_0_70_->configure_rd_head_1(gbuf1a_0_0_70_rd1_params0, {1});
    gbuf1a_0_0_70_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Transpose
    transpose_0_0_88_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    transpose_0_0_88_->set_op_name("tlir.Transpose");
    transpose_0_0_88_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_72_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_72_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of transpose_0_0_88");
    gbuf1a_0_0_72_wr_params.is_transpose = true;
    gbuf1a_0_0_72_->configure_wr(gbuf1a_0_0_72_wr_params);
    PmuSetupRead gbuf1a_0_0_72_rd1_params0 = {};
    gbuf1a_0_0_72_rd1_params0.is_transpose = true;
    gbuf1a_0_0_72_->configure_rd_head_1(gbuf1a_0_0_72_rd1_params0, {1});
    gbuf1a_0_0_72_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.OutputBuffer
    output_buf_0_0_91_->configure_node();
    PmuSetupWrite output_buf_0_0_91_wr_params;
    output_buf_0_0_91_wr_params.vectors_in_column = ceiling(gbuf1a_0_0_72_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0).physical_shape().at(1), gbuf1a_0_0_72_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0).vector_elements());
    output_buf_0_0_91_wr_params.deinterleave = true;
    output_buf_0_0_91_wr_params.mode = PmuMode(PmuModeType::kNbuff, 1);
    output_buf_0_0_91_->write(output_buf_0_0_91_wr_params);
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    permute_view_0_0_67_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    permute_view_0_0_67_->set_op_name("tlir.PermuteView");
    permute_view_0_0_67_->configure_node();
    
    // loc("UnknownFileName":0:0): tlir.Buffer
    tbuf1a_0_0_73_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_0_0_73_, params_.label_dram_in));
;
    tbuf1a_0_0_73_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kInputY));
    tbuf1a_0_0_73_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    tbuf1a_0_0_74_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    tbuf1a_0_0_74_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kInputX));
    tbuf1a_0_0_74_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.CrossEntropy
    logreg__criterion__crossentropyloss_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    logreg__criterion__crossentropyloss_->set_op_name("tlir.CrossEntropy");
    logreg__criterion__crossentropyloss_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    tbuf1a_0_0_75_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kOutput));
    tbuf1a_0_0_75_->add_context(BackingPmu::get_tbuf_contexts(BackingPmu::kInput, tbuf1a_0_0_75_, params_.logreg__criterion__crossentropyloss__outputs__0_dram_out));
    tbuf1a_0_0_75_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    nbuf1a_0_0_71_->finalize();
    logreg__lin_layer__linear_->finalize();
    gbuf1a_0_0_70_->finalize();
    transpose_0_0_88_->finalize();
    gbuf1a_0_0_72_->finalize();
    output_buf_0_0_91_->finalize();
    permute_view_0_0_67_->finalize();
    tbuf1a_0_0_73_->finalize();
    tbuf1a_0_0_74_->finalize();
    logreg__criterion__crossentropyloss_->finalize();
    tbuf1a_0_0_75_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("UnknownFileName":0:0): tlir.Buffer
    connect_by_interface(get_connect_interface(nbuf1a_0_0_71_->output_list(NBuffer::Output::kHead1Buffer)), logreg__lin_layer__linear_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    connect_by_interface(logreg__lin_layer__linear_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_70_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf1a_0_0_70_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), transpose_0_0_88_->get_connect_interface(Transpose::kDefaultInput, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Transpose
    connect_by_interface(transpose_0_0_88_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_0_0_72_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf1a_0_0_72_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), output_buf_0_0_91_->get_connect_interface(Buf::Input::kInput, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.OutputBuffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    connect_by_interface(transpose_0_0_88_->get_connect_interface(Transpose::kDefaultOutput, false), tbuf1a_0_0_74_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // loc("UnknownFileName":0:0): tlir.Buffer
    connect_by_interface(tbuf1a_0_0_73_->get_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kInputY),TBufferContext::Output::kDataOutput, false), logreg__criterion__crossentropyloss_->get_connect_interface(RAILCrossEntropy::IO::kInputY, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(tbuf1a_0_0_74_->get_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kInputX),TBufferContext::Output::kDataOutput, false), logreg__criterion__crossentropyloss_->get_connect_interface(RAILCrossEntropy::IO::kInputX, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.CrossEntropy
    connect_by_interface(logreg__criterion__crossentropyloss_->get_connect_interface(RAILCrossEntropy::IO::kOutput, false), tbuf1a_0_0_75_->get_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kOutput),TBufferContext::Input::kDataInput, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input logreg__lin_layer__weight_0_0_24 uses a weight buffer
    add_node_input(kimage_0_0_25, nbuf1a_0_0_71_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(klabel_0_0_29, tbuf1a_0_0_73_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput).front(),TBufferContext::Input::kDataInput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(klogreg__lin_layer__linear_t_output0_tensor, output_buf_0_0_91_->output_list(Buf::Output::kOutput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Exclusive Routes 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Partitions 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    auto *partition_placement = plasma_->create_condition<PartitionPlacement>();
    Partition partition_0_0 {0, 0};
    partition_placement->assign_units(partition_0_0, {output_buf_0_0_91_->pmu()});
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Result Layouts
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Enable Argins
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Global Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    mlir::rail::RAIL::rail->global_compile(partition_0_0_, partition_0_0, 0);
    
}

void LogregTorchSamba::configure_section1() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.InputBuffer
    input_buf_1_0_92_->configure_node();
    PmuSetupRead input_buf_1_0_92_read_params;
    input_buf_1_0_92_read_params.vectors_in_column = ceiling(params_.logreg__lin_layer__linear__outputs__0_1_0_34.at_address(0).physical_shape().at(1), params_.logreg__lin_layer__linear__outputs__0_1_0_34.at_address(0).vector_elements());
    input_buf_1_0_92_read_params.deinterleave = true;
    input_buf_1_0_92_->read(input_buf_1_0_92_read_params);
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_76_wr_params = {};
    gbuf1a_1_0_76_wr_params.is_transpose = true;
    gbuf1a_1_0_76_->configure_wr(gbuf1a_1_0_76_wr_params);
    PmuSetupRead gbuf1a_1_0_76_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_76_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_1_0_68");
    gbuf1a_1_0_76_rd1_params0.is_transpose = true;
    gbuf1a_1_0_76_->configure_rd_head_1(gbuf1a_1_0_76_rd1_params0, {1});
    gbuf1a_1_0_76_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    permute_view_1_0_68_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    permute_view_1_0_68_->set_op_name("tlir.PermuteView");
    permute_view_1_0_68_->configure_node();
    
    // loc("UnknownFileName":0:0): tlir.Buffer
    tbuf1a_1_0_77_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_1_0_77_, params_.label_dram_in));
;
    tbuf1a_1_0_77_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputY));
    tbuf1a_1_0_77_->configure_node();
    
    // loc("UnknownFileName":0:0): tlir.Buffer
    tbuf1a_1_0_78_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_1_0_78_, params_.logreg__criterion__crossentropyloss__outputs__0__grad_dram_in));
;
    tbuf1a_1_0_78_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputLoss));
    tbuf1a_1_0_78_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    tbuf1a_1_0_79_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    tbuf1a_1_0_79_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputX));
    tbuf1a_1_0_79_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.CrossEntropyGrad
    logreg__criterion__crossentropyloss_bwd_loss_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    logreg__criterion__crossentropyloss_bwd_loss_->set_op_name("tlir.CrossEntropyGrad");
    logreg__criterion__crossentropyloss_bwd_loss_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    tbuf1a_1_0_90_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kOutput));
    tbuf1a_1_0_90_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    tbuf1a_1_0_90_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_80_wr_params = {};
    gbuf1a_1_0_80_wr_params.is_transpose = true;
    gbuf1a_1_0_80_->configure_wr(gbuf1a_1_0_80_wr_params);
    PmuSetupRead gbuf1a_1_0_80_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_80_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_1_0_69");
    gbuf1a_1_0_80_rd1_params0.is_transpose = true;
    gbuf1a_1_0_80_->configure_rd_head_1(gbuf1a_1_0_80_rd1_params0, {1});
    gbuf1a_1_0_80_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    permute_view_1_0_69_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    permute_view_1_0_69_->set_op_name("tlir.PermuteView");
    permute_view_1_0_69_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    logreg__lin_layer__linear_t_output0_bwd_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    logreg__lin_layer__linear_t_output0_bwd_->set_op_name("tlir.PermuteView");
    logreg__lin_layer__linear_t_output0_bwd_->configure_node();
    
    // loc("UnknownFileName":0:0): tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_81_wr_params = {};
    gbuf1a_1_0_81_wr_params.is_transpose = true;
    gbuf1a_1_0_81_->configure_wr(gbuf1a_1_0_81_wr_params);
    PmuSetupRead gbuf1a_1_0_81_rd1_params0 = {};
    gbuf1a_1_0_81_rd1_params0.is_transpose = true;
    gbuf1a_1_0_81_->configure_rd_head_1(gbuf1a_1_0_81_rd1_params0, {1});
    gbuf1a_1_0_81_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_82_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_82_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 1 of gbuf1a_1_0_81");
    gbuf1a_1_0_82_->configure_wr(gbuf1a_1_0_82_wr_params);
    PmuSetupRead gbuf1a_1_0_82_rd1_params1 = logreg__lin_layer__linear_bwd_weight_grad_a_->input_nbuf_read_params(BigGemm::kB);
    gbuf1a_1_0_82_->configure_rd_head_1(gbuf1a_1_0_82_rd1_params1, {1});
    gbuf1a_1_0_82_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.Linear");
    logreg__lin_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_83_wr_params = logreg__lin_layer__linear_bwd_weight_grad_a_->write_params(BigGemm::kOutput);
    gbuf1a_1_0_83_->configure_wr(gbuf1a_1_0_83_wr_params);
    PmuSetupRead gbuf1a_1_0_83_rd1_params1 = {};
    gbuf1a_1_0_83_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_83_->configure_rd_head_1(gbuf1a_1_0_83_rd1_params1, {1});
    gbuf1a_1_0_83_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    input_buf_1_0_92_->finalize();
    gbuf1a_1_0_76_->finalize();
    permute_view_1_0_68_->finalize();
    tbuf1a_1_0_77_->finalize();
    tbuf1a_1_0_78_->finalize();
    tbuf1a_1_0_79_->finalize();
    logreg__criterion__crossentropyloss_bwd_loss_->finalize();
    tbuf1a_1_0_90_->finalize();
    gbuf1a_1_0_80_->finalize();
    permute_view_1_0_69_->finalize();
    logreg__lin_layer__linear_t_output0_bwd_->finalize();
    gbuf1a_1_0_81_->finalize();
    gbuf1a_1_0_82_->finalize();
    logreg__lin_layer__linear_bwd_weight_grad_a_->finalize();
    gbuf1a_1_0_83_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.InputBuffer
    connect_by_interface(get_connect_interface(input_buf_1_0_92_->output_list(Buf::Output::kOutput)), gbuf1a_1_0_76_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_76_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), tbuf1a_1_0_79_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // loc("UnknownFileName":0:0): tlir.Buffer
    connect_by_interface(tbuf1a_1_0_77_->get_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputY),TBufferContext::Output::kDataOutput, false), logreg__criterion__crossentropyloss_bwd_loss_->get_connect_interface(RAILCrossEntropyGrad::kInputY, true));
    // loc("UnknownFileName":0:0): tlir.Buffer
    connect_by_interface(tbuf1a_1_0_78_->get_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputLoss),TBufferContext::Output::kDataOutput, false), logreg__criterion__crossentropyloss_bwd_loss_->get_connect_interface(RAILCrossEntropyGrad::kInputLoss, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(tbuf1a_1_0_79_->get_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputX),TBufferContext::Output::kDataOutput, false), logreg__criterion__crossentropyloss_bwd_loss_->get_connect_interface(RAILCrossEntropyGrad::kInputX, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.CrossEntropyGrad
    connect_by_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_connect_interface(RAILCrossEntropyGrad::IO::kOutput, false), tbuf1a_1_0_90_->get_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kOutput),TBufferContext::Input::kDataInput, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(tbuf1a_1_0_90_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf1a_1_0_80_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_80_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), logreg__lin_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // loc("UnknownFileName":0:0): tlir.Buffer
    connect_by_interface(gbuf1a_1_0_81_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_82_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    std::vector<DataSink *> logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks = {};
    for (auto sink : logreg__lin_layer__linear_bwd_weight_grad_a_->input_list(BigGemm::kB)) {
        logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas = {};
    logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas.push_back(logreg__lin_layer__linear_bwd_weight_grad_a_->get_connect_schema());
    connect_with_schema(gbuf1a_1_0_82_->output_list(GBuffer::Output::kHead1Buffer), logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks, std::move(logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions(); ++p) {
            connect_m_to_n(logreg__lin_layer__linear_bwd_weight_grad_a_->output_list(BigGemm::get_partition_output(p)), gbuf1a_1_0_83_->input_list(gbuf1a_1_0_83_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    { // Connect partitioned output control
        for(size_t p = 0; p < logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_1_0_83_->ctrl_output(gbuf1a_1_0_83_->get_pacing_wr_done(0, p)), logreg__lin_layer__linear_bwd_weight_grad_a_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (logreg__lin_layer__linear_bwd_weight_grad_a_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_1_0_83_->ctrl_output(gbuf1a_1_0_83_->get_fronting_rd_done(0, p)), logreg__lin_layer__linear_bwd_weight_grad_a_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        logreg__lin_layer__linear_bwd_weight_grad_a_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(klogreg__lin_layer__linear__outputs__0_1_0_34, input_buf_1_0_92_->input_list(Buf::Input::kInput));
    add_node_input(klabel_1_0_35, tbuf1a_1_0_77_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput).front(),TBufferContext::Input::kDataInput));
    add_node_input(klogreg__criterion__crossentropyloss__outputs__0__grad_1_0_36, tbuf1a_1_0_78_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput).front(),TBufferContext::Input::kDataInput));
    add_node_input(kimage_1_0_39, gbuf1a_1_0_81_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(klogreg__lin_layer__linear_bwd_weight_tensor, gbuf1a_1_0_83_->output_list(GBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Exclusive Routes 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Partitions 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    auto *partition_placement = plasma_->create_condition<PartitionPlacement>();
    Partition partition_1_0 {0, 1};
    partition_placement->assign_units(partition_1_0, {input_buf_1_0_92_->pmu()});
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Result Layouts
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Enable Argins
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Global Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    mlir::rail::RAIL::rail->global_compile(partition_1_0_, partition_1_0, 0);
    
}

void LogregTorchSamba::configure_section2() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("logreg__lin_layer__weight":0:0): tlir.SGD
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_source_context("logreg__lin_layer__weight:0:0");
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("logreg__lin_layer__weight":0:0): tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input logreg__lin_layer__weight_2_0_44 uses a weight buffer
    // Input logreg__lin_layer__weight__grad_2_0_45 uses a weight buffer
    // Input logreg__lin_layer__weight__sgd0__momentum_2_0_46 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Outputlogreg__lin_layer__weight_2_0_48 uses a weight buffer
    // Outputlogreg__lin_layer__weight__sgd0__momentum_2_0_49 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Exclusive Routes 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Partitions 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    auto *partition_placement = plasma_->create_condition<PartitionPlacement>();
    Partition partition_2_0 {0, 2};
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Result Layouts
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Enable Argins
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    prism::plasma::ArgInEnableInfo logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_lr_enable_info;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_lr_enable_info.alias_name = "lr";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_momentum_enable_info;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_momentum_enable_info.alias_name = "momentum";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_decay_enable_info;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_decay_enable_info.alias_name = "weight_decay";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Global Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    mlir::rail::RAIL::rail->global_compile(partition_2_0_, partition_2_0, 0);
    
}

void LogregTorchSamba::configure(int64_t section_id) {
/** Section node configuration **/
    if (section_id == 0) {
        configure_section0();
    }
    if (section_id == 1) {
        configure_section1();
    }
    if (section_id == 2) {
        configure_section2();
    }
}

SuperNode* LogregTorchSamba::get_node(NodeEnum node_enum) {
    switch(node_enum){ 
        case kgbuf1a_0_0_70: return gbuf1a_0_0_70_;
        case kgbuf1a_0_0_72: return gbuf1a_0_0_72_;
        case ktbuf1a_0_0_73: return tbuf1a_0_0_73_;
        case ktbuf1a_0_0_74: return tbuf1a_0_0_74_;
        case ktbuf1a_0_0_75: return tbuf1a_0_0_75_;
        case kgbuf1a_1_0_76: return gbuf1a_1_0_76_;
        case ktbuf1a_1_0_77: return tbuf1a_1_0_77_;
        case ktbuf1a_1_0_78: return tbuf1a_1_0_78_;
        case ktbuf1a_1_0_79: return tbuf1a_1_0_79_;
        case ktbuf1a_1_0_90: return tbuf1a_1_0_90_;
        case kgbuf1a_1_0_80: return gbuf1a_1_0_80_;
        case kgbuf1a_1_0_81: return gbuf1a_1_0_81_;
        case kgbuf1a_1_0_82: return gbuf1a_1_0_82_;
        case klogreg__lin_layer__linear_bwd_weight_grad_a: return logreg__lin_layer__linear_bwd_weight_grad_a_;
        case kgbuf1a_1_0_83: return gbuf1a_1_0_83_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism

