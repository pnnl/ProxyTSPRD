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
LogregTorchSamba::LogregTorchSamba(const std::string &name, SuperNode *parent, mlir::rail::RAIL *rail, Params params, int64_t section_id):
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
    if (section_id == 3) {
        construct_section3();
    }
}

void LogregTorchSamba::construct_section0() {
    bool layouts_match = true;
    /** Section 0, Chip 0 **/
    partition_0_0_ = create_node<PartitionNode>("partition_0_0_", this, plasma_, 0, 0);
    mlir::rail::RAIL::rail->create_section(partition_0_0_);
    
    partition_0_0_->set_section_latency(5.052257e-05);
    GBuffer::Params gbuf1a_0_0_93_params;
    gbuf1a_0_0_93_params.enable_fronting_pmu = true;
    gbuf1a_0_0_93_params.head1_linear = false;
    gbuf1a_0_0_93_params.head1_p2p = false;
    gbuf1a_0_0_93_params.head_1_depth = 1;
    gbuf1a_0_0_93_params.layout = params_.image_0_0_30;
    gbuf1a_0_0_93_params.loaded_by_broadcast = false;
    gbuf1a_0_0_93_params.num_iterations = 1;
    gbuf1a_0_0_93_ = create_node<GBuffer>("gbuf1a_0_0_93", partition_0_0_, plasma_, gbuf1a_0_0_93_params);
    gbuf1a_0_0_93_->set_tile_id(-1);
    gbuf1a_0_0_93_->set_die_id(-1);
    gbuf1a_0_0_93_->set_mac_id("default_93");
    gbuf1a_0_0_93_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_93_->set_metapipe_iterations({1});
    gbuf1a_0_0_93_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params logreg__lin_layer__linear_params;
    logreg__lin_layer__linear_params.A_layout = params_.logreg__lin_layer__weight_0_0_29.with_vector_transpose(true);
    logreg__lin_layer__linear_params.B_layout = gbuf1a_0_0_93_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    logreg__lin_layer__linear_params.batch_size = 1;
    logreg__lin_layer__linear_params.batch_size_b = 1;
    logreg__lin_layer__linear_params.box_layout = true;
    logreg__lin_layer__linear_params.box_per_partition = true;
    logreg__lin_layer__linear_params.connected_to_accumulator = false;
    logreg__lin_layer__linear_params.dbl_width = false;
    logreg__lin_layer__linear_params.disable_write_fronting_pmu = false;
    logreg__lin_layer__linear_params.dotproduct_gemm = false;
    logreg__lin_layer__linear_params.dotproduct_gemm_bf16_output = false;
    logreg__lin_layer__linear_params.enable_gradient = false;
    logreg__lin_layer__linear_params.enable_seqID_pacing_interval = true;
    logreg__lin_layer__linear_params.exclusive_vc_a = false;
    logreg__lin_layer__linear_params.external_input_a = false;
    logreg__lin_layer__linear_params.external_output_buffer = true;
    logreg__lin_layer__linear_params.maximum_fwd_b_fanout = 32;
    logreg__lin_layer__linear_params.no_reload_weight = false;
    logreg__lin_layer__linear_params.num_col_compute_units = 4;
    logreg__lin_layer__linear_params.num_partitions = 1;
    logreg__lin_layer__linear_params.num_row_compute_units = 1;
    logreg__lin_layer__linear_params.seqID_base = 0;
    logreg__lin_layer__linear_params.set_exclusive_routes = false;
    logreg__lin_layer__linear_params.streaming_col_par = false;
    logreg__lin_layer__linear_params.use_wbuf_transpose_atom_move = false;
    logreg__lin_layer__linear_params.wbuf_split = false;
    logreg__lin_layer__linear_params.write_done_used = false;
    logreg__lin_layer__linear_ = create_node<BigGemm>("logreg__lin_layer__linear", partition_0_0_, plasma_, logreg__lin_layer__linear_params);
    logreg__lin_layer__linear_->set_tile_id(-1);
    logreg__lin_layer__linear_->set_die_id(-1);
    logreg__lin_layer__linear_->set_mac_id("logreg__lin_layer__linear");
    logreg__lin_layer__linear_->set_mac_latency(1.837200e+04);
    logreg__lin_layer__linear_->set_metapipe_iterations({1});
    logreg__lin_layer__linear_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_92_params;
    gbuf1a_0_0_92_params.head1_linear = true;
    gbuf1a_0_0_92_params.head1_p2p = false;
    gbuf1a_0_0_92_params.head_1_depth = 1;
    gbuf1a_0_0_92_params.layout = logreg__lin_layer__linear_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_0_0_92_params.num_iterations = 1;
    gbuf1a_0_0_92_params.write_group_layouts = {logreg__lin_layer__linear_->result_layouts(BigGemm::kOutput)};
    gbuf1a_0_0_92_params.write_group_partitions = {logreg__lin_layer__linear_->num_partitions()};
    gbuf1a_0_0_92_ = create_node<GBuffer>("gbuf1a_0_0_92", partition_0_0_, plasma_, gbuf1a_0_0_92_params);
    gbuf1a_0_0_92_->set_tile_id(-1);
    gbuf1a_0_0_92_->set_die_id(-1);
    gbuf1a_0_0_92_->set_mac_id("default_92");
    gbuf1a_0_0_92_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_92_->set_metapipe_iterations({1});
    gbuf1a_0_0_92_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_0_0_112_params;
    transpose_0_0_112_params.depth = 1;
    transpose_0_0_112_params.layout = gbuf1a_0_0_92_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    transpose_0_0_112_params.transpose_type = Transpose::kLogical;
    transpose_0_0_112_ = create_node<Transpose>("transpose_0_0_112", partition_0_0_, plasma_, transpose_0_0_112_params);
    transpose_0_0_112_->set_tile_id(-1);
    transpose_0_0_112_->set_die_id(-1);
    transpose_0_0_112_->set_mac_id("default_112");
    transpose_0_0_112_->set_mac_latency(-1.000000e+00);
    transpose_0_0_112_->set_metapipe_iterations({1});
    transpose_0_0_112_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_0_0_109_params;
    transpose_0_0_109_params.depth = 1;
    transpose_0_0_109_params.layout = transpose_0_0_112_->result_layout().at_address(0);
    transpose_0_0_109_params.transpose_type = Transpose::kPhysical;
    transpose_0_0_109_ = create_node<Transpose>("transpose_0_0_109", partition_0_0_, plasma_, transpose_0_0_109_params);
    transpose_0_0_109_->set_tile_id(-1);
    transpose_0_0_109_->set_die_id(-1);
    transpose_0_0_109_->set_mac_id("default_109");
    transpose_0_0_109_->set_mac_latency(-1.000000e+00);
    transpose_0_0_109_->set_metapipe_iterations({1});
    transpose_0_0_109_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_94_params;
    gbuf1a_0_0_94_params.head1_linear = false;
    gbuf1a_0_0_94_params.head1_p2p = false;
    gbuf1a_0_0_94_params.head_1_depth = 1;
    gbuf1a_0_0_94_params.layout = transpose_0_0_109_->result_layout().at_address(0);
    gbuf1a_0_0_94_params.num_iterations = 1;
    gbuf1a_0_0_94_ = create_node<GBuffer>("gbuf1a_0_0_94", partition_0_0_, plasma_, gbuf1a_0_0_94_params);
    gbuf1a_0_0_94_->set_tile_id(-1);
    gbuf1a_0_0_94_->set_die_id(-1);
    gbuf1a_0_0_94_->set_mac_id("default_94");
    gbuf1a_0_0_94_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_94_->set_metapipe_iterations({1});
    gbuf1a_0_0_94_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_0_0_75_params;
    permute_view_0_0_75_params.input_layout = transpose_0_0_112_->result_layout().at_address(0);
    permute_view_0_0_75_params.permute = {1, 0};
    permute_view_0_0_75_ = create_node<PermuteView>("permute_view_0_0_75", partition_0_0_, plasma_, permute_view_0_0_75_params);
    permute_view_0_0_75_->set_tile_id(-1);
    permute_view_0_0_75_->set_die_id(-1);
    permute_view_0_0_75_->set_mac_id("default_66");
    permute_view_0_0_75_->set_mac_latency(-1.000000e+00);
    permute_view_0_0_75_->set_metapipe_iterations({1});
    permute_view_0_0_75_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_0_0_95_params;
    tbuf1a_0_0_95_params.buffer_depth = 1;
    tbuf1a_0_0_95_params.layout = params_.label_0_0_34;
    tbuf1a_0_0_95_ = create_node<TBuffer>("tbuf1a_0_0_95", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_95_params);
    tbuf1a_0_0_95_->set_tile_id(-1);
    tbuf1a_0_0_95_->set_die_id(-1);
    tbuf1a_0_0_95_->set_mac_id("default_95");
    tbuf1a_0_0_95_->set_mac_latency(-1.000000e+00);
    tbuf1a_0_0_95_->set_metapipe_iterations({1});
    tbuf1a_0_0_95_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_0_0_96_params;
    tbuf1a_0_0_96_params.buffer_depth = 1;
    tbuf1a_0_0_96_params.layout = permute_view_0_0_75_->result_layout();
    tbuf1a_0_0_96_ = create_node<TBuffer>("tbuf1a_0_0_96", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_96_params);
    tbuf1a_0_0_96_->set_tile_id(-1);
    tbuf1a_0_0_96_->set_die_id(-1);
    tbuf1a_0_0_96_->set_mac_id("default_96");
    tbuf1a_0_0_96_->set_mac_latency(-1.000000e+00);
    tbuf1a_0_0_96_->set_metapipe_iterations({1});
    tbuf1a_0_0_96_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    RAILCrossEntropy::Params logreg__criterion__crossentropyloss_params;
    logreg__criterion__crossentropyloss_params.batch_size = 1;
    logreg__criterion__crossentropyloss_params.c_par = 1;
    logreg__criterion__crossentropyloss_params.class_by_sample = 1;
    logreg__criterion__crossentropyloss_params.input_x_layout = tbuf1a_0_0_96_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_params.input_y_layout = tbuf1a_0_0_95_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_params.no_tbuf_tmp = 0;
    logreg__criterion__crossentropyloss_params.reduction_mode = RAILCrossEntropy::kRaw;
    logreg__criterion__crossentropyloss_params.use_extra_pcu = 0;
    logreg__criterion__crossentropyloss_params.use_y_copy = 1;
    logreg__criterion__crossentropyloss_params.y_filtering_in_output = 0;
    logreg__criterion__crossentropyloss_params.y_filtering_in_tcompute = 1;
    logreg__criterion__crossentropyloss_ = create_node<RAILCrossEntropy>("logreg__criterion__crossentropyloss", partition_0_0_, LOC, mlir::rail::RAIL::rail, logreg__criterion__crossentropyloss_params);
    logreg__criterion__crossentropyloss_->set_tile_id(-1);
    logreg__criterion__crossentropyloss_->set_die_id(-1);
    logreg__criterion__crossentropyloss_->set_mac_id("logreg__criterion__crossentropyloss");
    logreg__criterion__crossentropyloss_->set_mac_latency(1.233000e+03);
    logreg__criterion__crossentropyloss_->set_metapipe_iterations({1});
    logreg__criterion__crossentropyloss_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_0_0_97_params;
    tbuf1a_0_0_97_params.buffer_depth = 1;
    tbuf1a_0_0_97_params.layout = logreg__criterion__crossentropyloss_->result_layout().at_address(0);
    tbuf1a_0_0_97_ = create_node<TBuffer>("tbuf1a_0_0_97", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_97_params);
    tbuf1a_0_0_97_->set_tile_id(-1);
    tbuf1a_0_0_97_->set_die_id(-1);
    tbuf1a_0_0_97_->set_mac_id("default_97");
    tbuf1a_0_0_97_->set_mac_latency(-1.000000e+00);
    tbuf1a_0_0_97_->set_metapipe_iterations({1});
    tbuf1a_0_0_97_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<PartitionNode>("partition_1_0_", this, plasma_, 1, 0);
    mlir::rail::RAIL::rail->create_section(partition_1_0_);
    
    partition_1_0_->set_section_latency(5.085606e-05);
    GBuffer::Params gbuf1a_1_0_98_params;
    gbuf1a_1_0_98_params.enable_fronting_pmu = true;
    gbuf1a_1_0_98_params.head1_linear = false;
    gbuf1a_1_0_98_params.head1_p2p = false;
    gbuf1a_1_0_98_params.head_1_depth = 1;
    gbuf1a_1_0_98_params.head_1_transposed = true;
    gbuf1a_1_0_98_params.layout = params_.logreg__lin_layer__linear__outputs__0_1_0_39.at_address(0);
    gbuf1a_1_0_98_params.loaded_by_broadcast = false;
    gbuf1a_1_0_98_params.num_iterations = 1;
    gbuf1a_1_0_98_params.write_vector_transposed = true;
    gbuf1a_1_0_98_ = create_node<GBuffer>("gbuf1a_1_0_98", partition_1_0_, plasma_, gbuf1a_1_0_98_params);
    gbuf1a_1_0_98_->set_tile_id(-1);
    gbuf1a_1_0_98_->set_die_id(-1);
    gbuf1a_1_0_98_->set_mac_id("default_98");
    gbuf1a_1_0_98_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_98_->set_metapipe_iterations({1});
    gbuf1a_1_0_98_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_1_0_76_params;
    permute_view_1_0_76_params.input_layout = gbuf1a_1_0_98_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    permute_view_1_0_76_params.permute = {1, 0};
    permute_view_1_0_76_ = create_node<PermuteView>("permute_view_1_0_76", partition_1_0_, plasma_, permute_view_1_0_76_params);
    permute_view_1_0_76_->set_tile_id(-1);
    permute_view_1_0_76_->set_die_id(-1);
    permute_view_1_0_76_->set_mac_id("default_68");
    permute_view_1_0_76_->set_mac_latency(-1.000000e+00);
    permute_view_1_0_76_->set_metapipe_iterations({1});
    permute_view_1_0_76_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_99_params;
    tbuf1a_1_0_99_params.buffer_depth = 1;
    tbuf1a_1_0_99_params.layout = params_.label_1_0_40;
    tbuf1a_1_0_99_ = create_node<TBuffer>("tbuf1a_1_0_99", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_99_params);
    tbuf1a_1_0_99_->set_tile_id(-1);
    tbuf1a_1_0_99_->set_die_id(-1);
    tbuf1a_1_0_99_->set_mac_id("default_99");
    tbuf1a_1_0_99_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_99_->set_metapipe_iterations({1});
    tbuf1a_1_0_99_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_100_params;
    tbuf1a_1_0_100_params.buffer_depth = 1;
    tbuf1a_1_0_100_params.layout = params_.logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41;
    tbuf1a_1_0_100_ = create_node<TBuffer>("tbuf1a_1_0_100", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_100_params);
    tbuf1a_1_0_100_->set_tile_id(-1);
    tbuf1a_1_0_100_->set_die_id(-1);
    tbuf1a_1_0_100_->set_mac_id("default_100");
    tbuf1a_1_0_100_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_100_->set_metapipe_iterations({1});
    tbuf1a_1_0_100_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_101_params;
    tbuf1a_1_0_101_params.buffer_depth = 1;
    tbuf1a_1_0_101_params.layout = permute_view_1_0_76_->result_layout();
    tbuf1a_1_0_101_ = create_node<TBuffer>("tbuf1a_1_0_101", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_101_params);
    tbuf1a_1_0_101_->set_tile_id(-1);
    tbuf1a_1_0_101_->set_die_id(-1);
    tbuf1a_1_0_101_->set_mac_id("default_101");
    tbuf1a_1_0_101_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_101_->set_metapipe_iterations({1});
    tbuf1a_1_0_101_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    RAILCrossEntropyGrad::Params logreg__criterion__crossentropyloss_bwd_loss_params;
    logreg__criterion__crossentropyloss_bwd_loss_params.batch_size = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.c_par = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.class_by_sample = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.input_loss_layout = tbuf1a_1_0_100_->param().layout->at_address(0).at_address(0).with_logical_shape({500}).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_params.input_x_layout = tbuf1a_1_0_101_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_params.input_y_layout = tbuf1a_1_0_99_->param().layout->at_address(0).at_address(0).with_logical_shape({500}).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_ = create_node<RAILCrossEntropyGrad>("logreg__criterion__crossentropyloss_bwd_loss", partition_1_0_, LOC, mlir::rail::RAIL::rail, logreg__criterion__crossentropyloss_bwd_loss_params);
    logreg__criterion__crossentropyloss_bwd_loss_->set_tile_id(-1);
    logreg__criterion__crossentropyloss_bwd_loss_->set_die_id(-1);
    logreg__criterion__crossentropyloss_bwd_loss_->set_mac_id("logreg__criterion__crossentropyloss_bwd_loss");
    logreg__criterion__crossentropyloss_bwd_loss_->set_mac_latency(1.050000e+03);
    logreg__criterion__crossentropyloss_bwd_loss_->set_metapipe_iterations({1});
    logreg__criterion__crossentropyloss_bwd_loss_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_114_params;
    tbuf1a_1_0_114_params.buffer_depth = 1;
    tbuf1a_1_0_114_params.layout = logreg__criterion__crossentropyloss_bwd_loss_->result_layout().at_address(0);
    tbuf1a_1_0_114_ = create_node<TBuffer>("tbuf1a_1_0_114", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_114_params);
    tbuf1a_1_0_114_->set_tile_id(-1);
    tbuf1a_1_0_114_->set_die_id(-1);
    tbuf1a_1_0_114_->set_mac_id("default_114");
    tbuf1a_1_0_114_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_114_->set_metapipe_iterations({1});
    tbuf1a_1_0_114_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_102_params;
    gbuf1a_1_0_102_params.head1_linear = false;
    gbuf1a_1_0_102_params.head1_p2p = false;
    gbuf1a_1_0_102_params.head_1_depth = 1;
    gbuf1a_1_0_102_params.head_1_transposed = true;
    gbuf1a_1_0_102_params.layout = tbuf1a_1_0_114_->param().layout->at_address(0).at_address(0);
    gbuf1a_1_0_102_params.num_iterations = 1;
    gbuf1a_1_0_102_ = create_node<GBuffer>("gbuf1a_1_0_102", partition_1_0_, plasma_, gbuf1a_1_0_102_params);
    gbuf1a_1_0_102_->set_tile_id(-1);
    gbuf1a_1_0_102_->set_die_id(-1);
    gbuf1a_1_0_102_->set_mac_id("default_102");
    gbuf1a_1_0_102_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_102_->set_metapipe_iterations({1});
    gbuf1a_1_0_102_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_1_0_77_params;
    permute_view_1_0_77_params.input_layout = gbuf1a_1_0_102_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    permute_view_1_0_77_params.permute = {1, 0};
    permute_view_1_0_77_ = create_node<PermuteView>("permute_view_1_0_77", partition_1_0_, plasma_, permute_view_1_0_77_params);
    permute_view_1_0_77_->set_tile_id(-1);
    permute_view_1_0_77_->set_die_id(-1);
    permute_view_1_0_77_->set_mac_id("default_70");
    permute_view_1_0_77_->set_mac_latency(-1.000000e+00);
    permute_view_1_0_77_->set_metapipe_iterations({1});
    permute_view_1_0_77_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_103_params;
    gbuf1a_1_0_103_params.enable_fronting_pmu = true;
    gbuf1a_1_0_103_params.head1_linear = true;
    gbuf1a_1_0_103_params.head1_p2p = false;
    gbuf1a_1_0_103_params.head_1_depth = 1;
    gbuf1a_1_0_103_params.layout = params_.logreg__lin_layer__linear__outputs__0__grad_1_0_43.at_address(0);
    gbuf1a_1_0_103_params.loaded_by_broadcast = false;
    gbuf1a_1_0_103_params.num_iterations = 1;
    gbuf1a_1_0_103_params.write_vector_transposed = true;
    gbuf1a_1_0_103_ = create_node<GBuffer>("gbuf1a_1_0_103", partition_1_0_, plasma_, gbuf1a_1_0_103_params);
    gbuf1a_1_0_103_->set_tile_id(-1);
    gbuf1a_1_0_103_->set_die_id(-1);
    gbuf1a_1_0_103_->set_mac_id("default_103");
    gbuf1a_1_0_103_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_103_->set_metapipe_iterations({1});
    gbuf1a_1_0_103_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    AddN::Params logreg__lin_layer__linear_t_output0_bwd_addn0_params;
    logreg__lin_layer__linear_t_output0_bwd_addn0_params.layout_input = permute_view_1_0_77_->result_layout();
    logreg__lin_layer__linear_t_output0_bwd_addn0_params.num_of_inputs = 2;
    logreg__lin_layer__linear_t_output0_bwd_addn0_ = create_node<AddN>("logreg__lin_layer__linear_t_output0_bwd_addn0", partition_1_0_, plasma_, logreg__lin_layer__linear_t_output0_bwd_addn0_params);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_tile_id(-1);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_die_id(-1);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_mac_id("logreg__lin_layer__linear_t_output0_bwd_addn0");
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_mac_latency(1.300000e+02);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_metapipe_iterations({1});
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params logreg__lin_layer__linear_t_output0_bwd_params;
    logreg__lin_layer__linear_t_output0_bwd_params.input_layout = logreg__lin_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0);
    logreg__lin_layer__linear_t_output0_bwd_params.permute = {1, 0};
    logreg__lin_layer__linear_t_output0_bwd_ = create_node<PermuteView>("logreg__lin_layer__linear_t_output0_bwd", partition_1_0_, plasma_, logreg__lin_layer__linear_t_output0_bwd_params);
    logreg__lin_layer__linear_t_output0_bwd_->set_tile_id(-1);
    logreg__lin_layer__linear_t_output0_bwd_->set_die_id(-1);
    logreg__lin_layer__linear_t_output0_bwd_->set_mac_id("logreg__lin_layer__linear_t_output0_bwd");
    logreg__lin_layer__linear_t_output0_bwd_->set_mac_latency(0.000000e+00);
    logreg__lin_layer__linear_t_output0_bwd_->set_metapipe_iterations({1});
    logreg__lin_layer__linear_t_output0_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_104_params;
    gbuf1a_1_0_104_params.enable_fronting_pmu = true;
    gbuf1a_1_0_104_params.head1_linear = false;
    gbuf1a_1_0_104_params.head1_p2p = false;
    gbuf1a_1_0_104_params.head_1_depth = 1;
    gbuf1a_1_0_104_params.head_1_transposed = true;
    gbuf1a_1_0_104_params.layout = params_.image_1_0_46.at_address(0);
    gbuf1a_1_0_104_params.loaded_by_broadcast = false;
    gbuf1a_1_0_104_params.num_iterations = 1;
    gbuf1a_1_0_104_ = create_node<GBuffer>("gbuf1a_1_0_104", partition_1_0_, plasma_, gbuf1a_1_0_104_params);
    gbuf1a_1_0_104_->set_tile_id(-1);
    gbuf1a_1_0_104_->set_die_id(-1);
    gbuf1a_1_0_104_->set_mac_id("default_104");
    gbuf1a_1_0_104_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_104_->set_metapipe_iterations({1});
    gbuf1a_1_0_104_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_105_params;
    gbuf1a_1_0_105_params.head1_linear = false;
    gbuf1a_1_0_105_params.head1_p2p = false;
    gbuf1a_1_0_105_params.head_1_depth = 1;
    gbuf1a_1_0_105_params.layout = gbuf1a_1_0_104_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_105_params.num_iterations = 1;
    gbuf1a_1_0_105_ = create_node<GBuffer>("gbuf1a_1_0_105", partition_1_0_, plasma_, gbuf1a_1_0_105_params);
    gbuf1a_1_0_105_->set_tile_id(-1);
    gbuf1a_1_0_105_->set_die_id(-1);
    gbuf1a_1_0_105_->set_mac_id("default_105");
    gbuf1a_1_0_105_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_105_->set_metapipe_iterations({1});
    gbuf1a_1_0_105_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params logreg__lin_layer__linear_bwd_weight_grad_a_params;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.A_layout = logreg__lin_layer__linear_t_output0_bwd_->result_layout().with_vector_transpose(true);
    logreg__lin_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf1a_1_0_105_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    logreg__lin_layer__linear_bwd_weight_grad_a_params.batch_size = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.batch_size_b = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.box_layout = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.box_per_partition = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.connected_to_accumulator = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.dbl_width = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.disable_write_fronting_pmu = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.dotproduct_gemm = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.dotproduct_gemm_bf16_output = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.enable_gradient = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.enable_seqID_pacing_interval = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.exclusive_vc_a = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.external_input_a = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.external_output_buffer = true;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.maximum_fwd_b_fanout = 32;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_col_compute_units = 4;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_partitions = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_row_compute_units = 1;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.seqID_base = 0;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.set_exclusive_routes = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.streaming_col_par = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.use_wbuf_transpose_atom_move = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.wbuf_split = false;
    logreg__lin_layer__linear_bwd_weight_grad_a_ = create_node<BigGemm>("logreg__lin_layer__linear_bwd_weight_grad_a", partition_1_0_, plasma_, logreg__lin_layer__linear_bwd_weight_grad_a_params);
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_tile_id(-1);
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_die_id(-1);
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_mac_id("logreg__lin_layer__linear_bwd_weight");
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_mac_latency(1.884600e+04);
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_metapipe_iterations({1});
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_106_params;
    gbuf1a_1_0_106_params.head1_linear = false;
    gbuf1a_1_0_106_params.head1_p2p = false;
    gbuf1a_1_0_106_params.head_1_depth = 1;
    gbuf1a_1_0_106_params.layout = logreg__lin_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_1_0_106_params.num_iterations = 1;
    gbuf1a_1_0_106_params.write_group_layouts = {logreg__lin_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::kOutput)};
    gbuf1a_1_0_106_params.write_group_partitions = {logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions()};
    gbuf1a_1_0_106_ = create_node<GBuffer>("gbuf1a_1_0_106", partition_1_0_, plasma_, gbuf1a_1_0_106_params);
    gbuf1a_1_0_106_->set_tile_id(-1);
    gbuf1a_1_0_106_->set_die_id(-1);
    gbuf1a_1_0_106_->set_mac_id("default_106");
    gbuf1a_1_0_106_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_106_->set_metapipe_iterations({1});
    gbuf1a_1_0_106_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section2() {
    bool layouts_match = true;
    /** Section 2, Chip 0 **/
    partition_2_0_ = create_node<PartitionNode>("partition_2_0_", this, plasma_, 2, 0);
    mlir::rail::RAIL::rail->create_section(partition_2_0_);
    
    partition_2_0_->set_section_latency(3.573016e-05);
    OptimizerSGD::Params logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.box_layout = true;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.layout_dw = params_.logreg__lin_layer__weight__grad_2_0_52;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.layout_mw = params_.logreg__lin_layer__weight__sgd0__momentum_2_0_53;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.layout_w = params_.logreg__lin_layer__weight_2_0_51;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.mixp = true;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_params);
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_tile_id(-1);
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_die_id(-1);
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_mac_id("logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt");
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_metapipe_iterations({1});
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section3() {
    bool layouts_match = true;
    /** Section 3, Chip 0 **/
    partition_3_0_ = create_node<PartitionNode>("partition_3_0_", this, plasma_, 3, 0);
    mlir::rail::RAIL::rail->create_section(partition_3_0_);
    
    partition_3_0_->set_section_latency(-1.000000e+00);
    GBuffer::Params gbuf2a_3_0_115_params;
    gbuf2a_3_0_115_params.enable_fronting_pmu = true;
    gbuf2a_3_0_115_params.head1_ctrl_flow_enable = true;
    gbuf2a_3_0_115_params.head1_linear = true;
    gbuf2a_3_0_115_params.head1_p2p = false;
    gbuf2a_3_0_115_params.head1_streaming_window = true;
    gbuf2a_3_0_115_params.head_1_depth = 2;
    gbuf2a_3_0_115_params.layout = params_.accum_dummy_0_3_0_84.at_address(0);
    gbuf2a_3_0_115_params.loaded_by_broadcast = false;
    gbuf2a_3_0_115_params.num_head1_rd_en = 2;
    gbuf2a_3_0_115_params.num_iterations = 2;
    gbuf2a_3_0_115_ = create_node<GBuffer>("gbuf2a_3_0_115", partition_3_0_, plasma_, gbuf2a_3_0_115_params);
    gbuf2a_3_0_115_->set_tile_id(-1);
    gbuf2a_3_0_115_->set_die_id(-1);
    gbuf2a_3_0_115_->set_mac_id("default_115");
    gbuf2a_3_0_115_->set_mac_latency(-1.000000e+00);
    gbuf2a_3_0_115_->set_metapipe_iterations({2});
    gbuf2a_3_0_115_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    GBuffer::Params gbuf2a_3_0_116_params;
    gbuf2a_3_0_116_params.enable_fronting_pmu = true;
    gbuf2a_3_0_116_params.head1_ctrl_flow_enable = true;
    gbuf2a_3_0_116_params.head1_linear = true;
    gbuf2a_3_0_116_params.head1_p2p = false;
    gbuf2a_3_0_116_params.head1_streaming_window = true;
    gbuf2a_3_0_116_params.head_1_depth = 2;
    gbuf2a_3_0_116_params.layout = params_.accum_dummy_0_reduce_buf_3_0_85.at_address(0);
    gbuf2a_3_0_116_params.loaded_by_broadcast = false;
    gbuf2a_3_0_116_params.num_head1_rd_en = 2;
    gbuf2a_3_0_116_params.num_iterations = 2;
    gbuf2a_3_0_116_ = create_node<GBuffer>("gbuf2a_3_0_116", partition_3_0_, plasma_, gbuf2a_3_0_116_params);
    gbuf2a_3_0_116_->set_tile_id(-1);
    gbuf2a_3_0_116_->set_die_id(-1);
    gbuf2a_3_0_116_->set_mac_id("default_116");
    gbuf2a_3_0_116_->set_mac_latency(-1.000000e+00);
    gbuf2a_3_0_116_->set_metapipe_iterations({2});
    gbuf2a_3_0_116_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    BinaryOps::Params add_3_0_86_params;
    add_3_0_86_params.layout_a = gbuf2a_3_0_115_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    add_3_0_86_params.layout_b = gbuf2a_3_0_116_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    add_3_0_86_params.op = node_constants::TemplateOpcodes::kAdd;
    add_3_0_86_params.streaming_a = true;
    add_3_0_86_params.streaming_b = true;
    add_3_0_86_ = create_node<BinaryOps>("add_3_0_86", partition_3_0_, plasma_, add_3_0_86_params);
    add_3_0_86_->set_tile_id(-1);
    add_3_0_86_->set_die_id(-1);
    add_3_0_86_->set_mac_id("default_86");
    add_3_0_86_->set_mac_latency(-1.000000e+00);
    add_3_0_86_->set_metapipe_iterations({2});
    add_3_0_86_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    Scale::Params scale_3_0_87_params;
    scale_3_0_87_params.argin_value = 1.000000e+00;
    scale_3_0_87_params.batch_size = 2;
    scale_3_0_87_params.conditional_scaling = false;
    scale_3_0_87_params.layout_a = add_3_0_86_->result_layout().at_address(0);
    scale_3_0_87_params.using_input_b = false;
    scale_3_0_87_ = create_node<Scale>("scale_3_0_87", partition_3_0_, plasma_, scale_3_0_87_params);
    scale_3_0_87_->set_tile_id(-1);
    scale_3_0_87_->set_die_id(-1);
    scale_3_0_87_->set_mac_id("default_87");
    scale_3_0_87_->set_mac_latency(-1.000000e+00);
    scale_3_0_87_->set_metapipe_iterations({2});
    scale_3_0_87_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    GBuffer::Params gbuf2a_3_0_107_params;
    gbuf2a_3_0_107_params.head1_linear = false;
    gbuf2a_3_0_107_params.head1_p2p = false;
    gbuf2a_3_0_107_params.head_1_depth = 2;
    gbuf2a_3_0_107_params.layout = scale_3_0_87_->result_layout().at_address(0);
    gbuf2a_3_0_107_params.num_iterations = 2;
    gbuf2a_3_0_107_ = create_node<GBuffer>("gbuf2a_3_0_107", partition_3_0_, plasma_, gbuf2a_3_0_107_params);
    gbuf2a_3_0_107_->set_tile_id(-1);
    gbuf2a_3_0_107_->set_die_id(-1);
    gbuf2a_3_0_107_->set_mac_id("default_107");
    gbuf2a_3_0_107_->set_mac_latency(-1.000000e+00);
    gbuf2a_3_0_107_->set_metapipe_iterations({2});
    gbuf2a_3_0_107_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_93_wr_params = {};
    gbuf1a_0_0_93_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_93_->configure_wr(gbuf1a_0_0_93_wr_params);
    PmuSetupRead gbuf1a_0_0_93_rd1_params1 = logreg__lin_layer__linear_->read_params(BigGemm::kB);
    gbuf1a_0_0_93_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_93_->configure_rd_head_1(gbuf1a_0_0_93_rd1_params1, {1});
    gbuf1a_0_0_93_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    logreg__lin_layer__linear_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_->set_op_name("tlir.Linear");
    logreg__lin_layer__linear_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_92_wr_params = logreg__lin_layer__linear_->write_params(BigGemm::kOutput);
    gbuf1a_0_0_92_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_92_->configure_wr(gbuf1a_0_0_92_wr_params);
    PmuSetupRead gbuf1a_0_0_92_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_92_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of transpose_0_0_112");
    gbuf1a_0_0_92_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_92_->configure_rd_head_1(gbuf1a_0_0_92_rd1_params0, {1});
    gbuf1a_0_0_92_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    transpose_0_0_112_->set_source_context("overrides.py:1355:0");
    transpose_0_0_112_->set_op_name("tlir.Transpose");
    transpose_0_0_112_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    transpose_0_0_109_->set_source_context("overrides.py:1355:0");
    transpose_0_0_109_->set_op_name("tlir.Transpose");
    transpose_0_0_109_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_94_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_94_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of transpose_0_0_109");
    gbuf1a_0_0_94_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_94_->configure_wr(gbuf1a_0_0_94_wr_params);
    PmuSetupRead gbuf1a_0_0_94_rd1_params1 = {};
    gbuf1a_0_0_94_rd1_params1.interleave = true;
    gbuf1a_0_0_94_rd1_params1.vectors_in_column = transpose_0_0_109_->result_layout().at_address(0).chunk_vectors();
    gbuf1a_0_0_94_rd1_params1.interleave_size = transpose_0_0_109_->result_layout().at_address(0).physical_shape()[0];
    gbuf1a_0_0_94_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_94_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_94_->configure_rd_head_1(gbuf1a_0_0_94_rd1_params1, {1});
    gbuf1a_0_0_94_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    permute_view_0_0_75_->set_source_context("overrides.py:1355:0");
    permute_view_0_0_75_->set_op_name("tlir.PermuteView");
    permute_view_0_0_75_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    tbuf1a_0_0_95_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_0_0_95_, params_.label_dram_in));
;
    for (auto ctx : tbuf1a_0_0_95_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_0_0_95_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kInputY));
    for (auto ctx : tbuf1a_0_0_95_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_0_0_95_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_0_0_96_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf1a_0_0_96_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_0_0_96_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kInputX));
    for (auto ctx : tbuf1a_0_0_96_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_0_0_96_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    logreg__criterion__crossentropyloss_->set_source_context("overrides.py:1355:0");
    logreg__criterion__crossentropyloss_->set_op_name("tlir.CrossEntropy");
    logreg__criterion__crossentropyloss_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_0_0_97_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kOutput));
    for (auto ctx : tbuf1a_0_0_97_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_0_0_97_->add_context(BackingPmu::get_tbuf_contexts(BackingPmu::kInput, tbuf1a_0_0_97_, params_.logreg__criterion__crossentropyloss__outputs__0_dram_out));
    for (auto ctx : tbuf1a_0_0_97_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{});
    }
    tbuf1a_0_0_97_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_0_0_95_->get_rail_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kInputY),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_->get_rail_connect_interface(RAILCrossEntropy::IO::kInputY));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_0_0_96_->get_rail_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kInputX),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_->get_rail_connect_interface(RAILCrossEntropy::IO::kInputX));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    RAILConnectInterface::connect_by_interface(logreg__criterion__crossentropyloss_->get_rail_connect_interface(RAILCrossEntropy::IO::kOutput), tbuf1a_0_0_97_->get_rail_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kOutput),TBufferContext::Input::kDataInput));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_0_0_)), "RAIL compilation failed for section 0!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_0_0_, 0)), "RAIL global compile failed for section 0!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_0_0_93_->finalize();
    logreg__lin_layer__linear_->finalize();
    gbuf1a_0_0_92_->finalize();
    transpose_0_0_112_->finalize();
    transpose_0_0_109_->finalize();
    gbuf1a_0_0_94_->finalize();
    permute_view_0_0_75_->finalize();
    tbuf1a_0_0_95_->finalize();
    tbuf1a_0_0_96_->finalize();
    logreg__criterion__crossentropyloss_->finalize();
    tbuf1a_0_0_97_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    std::vector<DataSink *> logreg__lin_layer__linear_schema_sinks = {};
    for (auto sink : logreg__lin_layer__linear_->input_list(BigGemm::kB)) {
        logreg__lin_layer__linear_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> logreg__lin_layer__linear_connect_schemas = {};
    logreg__lin_layer__linear_connect_schemas.push_back(logreg__lin_layer__linear_->get_connect_schema());
    connect_with_schema(gbuf1a_0_0_93_->output_list(GBuffer::Output::kHead1Buffer), logreg__lin_layer__linear_schema_sinks, std::move(logreg__lin_layer__linear_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < logreg__lin_layer__linear_->num_partitions(); ++p) {
            connect_m_to_n(logreg__lin_layer__linear_->output_list(BigGemm::get_partition_output(p)), gbuf1a_0_0_92_->input_list(gbuf1a_0_0_92_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_92_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), transpose_0_0_112_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    connect_by_interface(transpose_0_0_112_->get_connect_interface(Transpose::kDefaultOutput, false), transpose_0_0_109_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    connect_by_interface(transpose_0_0_109_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_0_0_94_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(transpose_0_0_112_->get_connect_interface(Transpose::kDefaultOutput, false), tbuf1a_0_0_96_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    { // Connect partitioned output control
        for(size_t p = 0; p < logreg__lin_layer__linear_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_0_0_92_->ctrl_output(gbuf1a_0_0_92_->get_pacing_wr_done(0, p)), logreg__lin_layer__linear_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (logreg__lin_layer__linear_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_0_0_92_->ctrl_output(gbuf1a_0_0_92_->get_fronting_rd_done(0, p)), logreg__lin_layer__linear_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        logreg__lin_layer__linear_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input logreg__lin_layer__weight_0_0_29 uses a weight buffer
    add_node_input(kimage_0_0_30, gbuf1a_0_0_93_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(klabel_0_0_34, tbuf1a_0_0_95_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(klogreg__lin_layer__linear_t_output0_tensor, gbuf1a_0_0_94_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Result Layouts
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Enable Argins
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
}

void LogregTorchSamba::configure_section1() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_98_wr_params = {};
    gbuf1a_1_0_98_wr_params.is_transpose = true;
    gbuf1a_1_0_98_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_98_->configure_wr(gbuf1a_1_0_98_wr_params);
    PmuSetupRead gbuf1a_1_0_98_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_98_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_1_0_76");
    gbuf1a_1_0_98_rd1_params0.is_transpose = true;
    gbuf1a_1_0_98_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_98_->configure_rd_head_1(gbuf1a_1_0_98_rd1_params0, {1});
    gbuf1a_1_0_98_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    permute_view_1_0_76_->set_source_context("overrides.py:1355:0");
    permute_view_1_0_76_->set_op_name("tlir.PermuteView");
    permute_view_1_0_76_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    tbuf1a_1_0_99_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_1_0_99_, params_.label_dram_in));
;
    for (auto ctx : tbuf1a_1_0_99_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_99_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputY));
    for (auto ctx : tbuf1a_1_0_99_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_99_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    tbuf1a_1_0_100_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_1_0_100_, params_.logreg__criterion__crossentropyloss__outputs__0__grad_dram_in));
;
    for (auto ctx : tbuf1a_1_0_100_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_100_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputLoss));
    for (auto ctx : tbuf1a_1_0_100_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_100_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_1_0_101_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf1a_1_0_101_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_101_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputX));
    for (auto ctx : tbuf1a_1_0_101_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_101_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    logreg__criterion__crossentropyloss_bwd_loss_->set_source_context("overrides.py:1355:0");
    logreg__criterion__crossentropyloss_bwd_loss_->set_op_name("tlir.CrossEntropyGrad");
    logreg__criterion__crossentropyloss_bwd_loss_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_1_0_114_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kOutput));
    for (auto ctx : tbuf1a_1_0_114_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_114_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx : tbuf1a_1_0_114_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_114_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_102_wr_params = {};
    gbuf1a_1_0_102_wr_params.is_transpose = true;
    gbuf1a_1_0_102_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_102_->configure_wr(gbuf1a_1_0_102_wr_params);
    PmuSetupRead gbuf1a_1_0_102_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_102_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_1_0_77");
    gbuf1a_1_0_102_rd1_params0.is_transpose = true;
    gbuf1a_1_0_102_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_102_->configure_rd_head_1(gbuf1a_1_0_102_rd1_params0, {1});
    gbuf1a_1_0_102_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    permute_view_1_0_77_->set_source_context("overrides.py:1355:0");
    permute_view_1_0_77_->set_op_name("tlir.PermuteView");
    permute_view_1_0_77_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_103_wr_params = {};
    gbuf1a_1_0_103_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_103_->configure_wr(gbuf1a_1_0_103_wr_params);
    PmuSetupRead gbuf1a_1_0_103_rd1_params1 = {};
    SN_ASSERT(gbuf1a_1_0_103_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of logreg__lin_layer__linear_t_output0_bwd_addn0");
    gbuf1a_1_0_103_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_103_->configure_rd_head_1(gbuf1a_1_0_103_rd1_params1, {1});
    gbuf1a_1_0_103_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_op_name("tlir.AddN");
    logreg__lin_layer__linear_t_output0_bwd_addn0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    logreg__lin_layer__linear_t_output0_bwd_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_t_output0_bwd_->set_op_name("tlir.PermuteView");
    logreg__lin_layer__linear_t_output0_bwd_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_104_wr_params = {};
    gbuf1a_1_0_104_wr_params.is_transpose = true;
    gbuf1a_1_0_104_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_104_->configure_wr(gbuf1a_1_0_104_wr_params);
    PmuSetupRead gbuf1a_1_0_104_rd1_params0 = {};
    gbuf1a_1_0_104_rd1_params0.is_transpose = true;
    gbuf1a_1_0_104_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_104_->configure_rd_head_1(gbuf1a_1_0_104_rd1_params0, {1});
    gbuf1a_1_0_104_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_105_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_105_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 1 of gbuf1a_1_0_104");
    gbuf1a_1_0_105_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_105_->configure_wr(gbuf1a_1_0_105_wr_params);
    PmuSetupRead gbuf1a_1_0_105_rd1_params1 = logreg__lin_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kB);
    gbuf1a_1_0_105_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_105_->configure_rd_head_1(gbuf1a_1_0_105_rd1_params1, {1});
    gbuf1a_1_0_105_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.Linear");
    logreg__lin_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_106_wr_params = logreg__lin_layer__linear_bwd_weight_grad_a_->write_params(BigGemm::kOutput);
    gbuf1a_1_0_106_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_106_->configure_wr(gbuf1a_1_0_106_wr_params);
    PmuSetupRead gbuf1a_1_0_106_rd1_params1 = {};
    gbuf1a_1_0_106_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_106_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_106_->configure_rd_head_1(gbuf1a_1_0_106_rd1_params1, {1});
    gbuf1a_1_0_106_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_1_0_99_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputY),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::kInputY));
    // UnknownFileName:0:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_1_0_100_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputLoss),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::kInputLoss));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_1_0_101_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputX),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::kInputX));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    RAILConnectInterface::connect_by_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::IO::kOutput), tbuf1a_1_0_114_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kOutput),TBufferContext::Input::kDataInput));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_1_0_)), "RAIL compilation failed for section 1!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_1_0_, 0)), "RAIL global compile failed for section 1!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_1_0_98_->finalize();
    permute_view_1_0_76_->finalize();
    tbuf1a_1_0_99_->finalize();
    tbuf1a_1_0_100_->finalize();
    tbuf1a_1_0_101_->finalize();
    logreg__criterion__crossentropyloss_bwd_loss_->finalize();
    tbuf1a_1_0_114_->finalize();
    gbuf1a_1_0_102_->finalize();
    permute_view_1_0_77_->finalize();
    gbuf1a_1_0_103_->finalize();
    logreg__lin_layer__linear_t_output0_bwd_addn0_->finalize();
    logreg__lin_layer__linear_t_output0_bwd_->finalize();
    gbuf1a_1_0_104_->finalize();
    gbuf1a_1_0_105_->finalize();
    logreg__lin_layer__linear_bwd_weight_grad_a_->finalize();
    gbuf1a_1_0_106_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_98_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), tbuf1a_1_0_101_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // UnknownFileName:0:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(tbuf1a_1_0_114_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf1a_1_0_102_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_102_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), logreg__lin_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, true));
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_103_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), logreg__lin_layer__linear_t_output0_bwd_addn0_->get_connect_interface(1, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(logreg__lin_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), logreg__lin_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_104_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_105_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks = {};
    for (auto sink : logreg__lin_layer__linear_bwd_weight_grad_a_->input_list(BigGemm::kB)) {
        logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas = {};
    logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas.push_back(logreg__lin_layer__linear_bwd_weight_grad_a_->get_connect_schema());
    connect_with_schema(gbuf1a_1_0_105_->output_list(GBuffer::Output::kHead1Buffer), logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks, std::move(logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions(); ++p) {
            connect_m_to_n(logreg__lin_layer__linear_bwd_weight_grad_a_->output_list(BigGemm::get_partition_output(p)), gbuf1a_1_0_106_->input_list(gbuf1a_1_0_106_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    { // Connect partitioned output control
        for(size_t p = 0; p < logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_1_0_106_->ctrl_output(gbuf1a_1_0_106_->get_pacing_wr_done(0, p)), logreg__lin_layer__linear_bwd_weight_grad_a_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (logreg__lin_layer__linear_bwd_weight_grad_a_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_1_0_106_->ctrl_output(gbuf1a_1_0_106_->get_fronting_rd_done(0, p)), logreg__lin_layer__linear_bwd_weight_grad_a_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
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
    add_node_input(klogreg__lin_layer__linear__outputs__0_1_0_39, gbuf1a_1_0_98_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(klabel_1_0_40, tbuf1a_1_0_99_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(klogreg__criterion__crossentropyloss__outputs__0__grad_1_0_41, tbuf1a_1_0_100_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(klogreg__lin_layer__linear__outputs__0__grad_1_0_43, gbuf1a_1_0_103_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kimage_1_0_46, gbuf1a_1_0_104_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(klogreg__lin_layer__linear_bwd_weight_tensor, gbuf1a_1_0_106_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Result Layouts
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Enable Argins
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
}

void LogregTorchSamba::configure_section2() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg__lin_layer__weight:0:0: tlir.SGD
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_source_context("logreg__lin_layer__weight:0:0");
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg__lin_layer__weight:0:0: tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_2_0_)), "RAIL compilation failed for section 2!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_2_0_, 0)), "RAIL global compile failed for section 2!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg__lin_layer__weight:0:0: tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input logreg__lin_layer__weight_2_0_51 uses a weight buffer
    // Input logreg__lin_layer__weight__grad_2_0_52 uses a weight buffer
    // Input logreg__lin_layer__weight__sgd0__momentum_2_0_53 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Outputlogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor uses a weight buffer
    // Outputlogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1 uses a weight buffer
    
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
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    
}

void LogregTorchSamba::configure_section3() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // <unknown location>: tlir.Buffer
    PmuSetupWrite gbuf2a_3_0_115_wr_params = {};
    gbuf2a_3_0_115_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_115_->configure_wr(gbuf2a_3_0_115_wr_params);
    PmuSetupRead gbuf2a_3_0_115_rd1_params0 = add_3_0_86_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2a_3_0_115_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of add_3_0_86");
    gbuf2a_3_0_115_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_115_->configure_rd_head_1(gbuf2a_3_0_115_rd1_params0, {2, 2});
    gbuf2a_3_0_115_->configure_node();
    
    // <unknown location>: tlir.Buffer
    PmuSetupWrite gbuf2a_3_0_116_wr_params = {};
    gbuf2a_3_0_116_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_116_->configure_wr(gbuf2a_3_0_116_wr_params);
    PmuSetupRead gbuf2a_3_0_116_rd1_params1 = add_3_0_86_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf2a_3_0_116_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of add_3_0_86");
    gbuf2a_3_0_116_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_116_->configure_rd_head_1(gbuf2a_3_0_116_rd1_params1, {2, 2});
    gbuf2a_3_0_116_->configure_node();
    
    // <unknown location>: tlir.AddV2
    add_3_0_86_->set_source_context("<unknown location>");
    add_3_0_86_->set_op_name("tlir.AddV2");
    add_3_0_86_->configure_node();
    
    // <unknown location>: tlir.Scale
    scale_3_0_87_->set_source_context("<unknown location>");
    scale_3_0_87_->set_op_name("tlir.Scale");
    scale_3_0_87_->configure_node();
    
    // <unknown location>: tlir.Buffer
    PmuSetupWrite gbuf2a_3_0_107_wr_params = {};
    SN_ASSERT(gbuf2a_3_0_107_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of scale_3_0_87");
    gbuf2a_3_0_107_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_107_->configure_wr(gbuf2a_3_0_107_wr_params);
    PmuSetupRead gbuf2a_3_0_107_rd1_params1 = {};
    gbuf2a_3_0_107_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_3_0_107_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_107_->configure_rd_head_1(gbuf2a_3_0_107_rd1_params1, {1});
    gbuf2a_3_0_107_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // <unknown location>: tlir.Buffer
    // <unknown location>: tlir.Buffer
    // <unknown location>: tlir.AddV2
    // <unknown location>: tlir.Scale
    // <unknown location>: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_3_0_)), "RAIL compilation failed for section 3!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_3_0_, 0)), "RAIL global compile failed for section 3!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2a_3_0_115_->finalize();
    gbuf2a_3_0_116_->finalize();
    add_3_0_86_->finalize();
    scale_3_0_87_->finalize();
    gbuf2a_3_0_107_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // <unknown location>: tlir.Buffer
    connect_by_interface(gbuf2a_3_0_115_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), add_3_0_86_->get_connect_interface(BinaryOps::Input::kA, true));
    // <unknown location>: tlir.Buffer
    connect_by_interface(gbuf2a_3_0_116_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), add_3_0_86_->get_connect_interface(BinaryOps::Input::kB, true));
    // <unknown location>: tlir.AddV2
    connect_by_interface(add_3_0_86_->get_connect_interface(BinaryOps::Output::kOut, false), scale_3_0_87_->get_connect_interface(Scale::Input::kA, true));
    // <unknown location>: tlir.Scale
    connect_by_interface(scale_3_0_87_->get_connect_interface(Scale::Output::kA_SCALED, false), gbuf2a_3_0_107_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // <unknown location>: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2a_3_0_115_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_3_0_107_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_3_0_115_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_3_0_107_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_3_0_115_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_3_0_116_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_3_0_107_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_3_0_116_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_3_0_107_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_3_0_116_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_3_0_107_->set_arc_stage_buffer();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kaccum_dummy_0_3_0_84, gbuf2a_3_0_115_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kaccum_dummy_0_reduce_buf_3_0_85, gbuf2a_3_0_116_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kaccum_dummy_0_3_0_88, gbuf2a_3_0_107_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    Partition partition_3_0 {0, 3};
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Result Layouts
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Enable Argins
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    prism::plasma::ArgInEnableInfo scale_3_0_87_argin_scale_factor__enable_info;
    scale_3_0_87_argin_scale_factor__enable_info.argin_annotation = ArgInOption::Annotation::kDPReduceScale;
    scale_3_0_87_argin_scale_factor__enable_info.argin_list_name = "argin_scale_factor_";
    scale_3_0_87_argin_scale_factor__enable_info.alias_name = "dp_scale_factor_0";
    scale_3_0_87_->argin_enable_list_.push_back(scale_3_0_87_argin_scale_factor__enable_info);
    
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
    if (section_id == 3) {
        configure_section3();
    }
}

SuperNode* LogregTorchSamba::get_node(NodeEnum node_enum) {
    switch(node_enum){ 
        case kgbuf1a_0_0_93: return gbuf1a_0_0_93_;
        case klogreg__lin_layer__linear: return logreg__lin_layer__linear_;
        case kgbuf1a_0_0_92: return gbuf1a_0_0_92_;
        case kgbuf1a_0_0_94: return gbuf1a_0_0_94_;
        case ktbuf1a_0_0_95: return tbuf1a_0_0_95_;
        case ktbuf1a_0_0_96: return tbuf1a_0_0_96_;
        case ktbuf1a_0_0_97: return tbuf1a_0_0_97_;
        case kgbuf1a_1_0_98: return gbuf1a_1_0_98_;
        case ktbuf1a_1_0_99: return tbuf1a_1_0_99_;
        case ktbuf1a_1_0_100: return tbuf1a_1_0_100_;
        case ktbuf1a_1_0_101: return tbuf1a_1_0_101_;
        case ktbuf1a_1_0_114: return tbuf1a_1_0_114_;
        case kgbuf1a_1_0_102: return gbuf1a_1_0_102_;
        case kgbuf1a_1_0_103: return gbuf1a_1_0_103_;
        case kgbuf1a_1_0_104: return gbuf1a_1_0_104_;
        case kgbuf1a_1_0_105: return gbuf1a_1_0_105_;
        case klogreg__lin_layer__linear_bwd_weight_grad_a: return logreg__lin_layer__linear_bwd_weight_grad_a_;
        case kgbuf1a_1_0_106: return gbuf1a_1_0_106_;
        case kgbuf2a_3_0_115: return gbuf2a_3_0_115_;
        case kgbuf2a_3_0_116: return gbuf2a_3_0_116_;
        case kgbuf2a_3_0_107: return gbuf2a_3_0_107_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism

