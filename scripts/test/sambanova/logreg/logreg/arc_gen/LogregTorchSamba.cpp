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
}

void LogregTorchSamba::construct_section0() {
    bool layouts_match = true;
    /** Section 0, Chip 0 **/
    partition_0_0_ = create_node<PartitionNode>("partition_0_0_", this, plasma_, 0, 0);
    mlir::rail::RAIL::rail->create_section(partition_0_0_);
    
    partition_0_0_->set_section_latency(3.606413e-05);
    GBuffer::Params gbuf1a_0_0_79_params;
    gbuf1a_0_0_79_params.enable_fronting_pmu = true;
    gbuf1a_0_0_79_params.head1_linear = false;
    gbuf1a_0_0_79_params.head1_p2p = false;
    gbuf1a_0_0_79_params.head_1_depth = 1;
    gbuf1a_0_0_79_params.layout = params_.image_0_0_30;
    gbuf1a_0_0_79_params.loaded_by_broadcast = false;
    gbuf1a_0_0_79_params.num_iterations = 1;
    gbuf1a_0_0_79_ = create_node<GBuffer>("gbuf1a_0_0_79", partition_0_0_, plasma_, gbuf1a_0_0_79_params);
    gbuf1a_0_0_79_->set_tile_id(-1);
    gbuf1a_0_0_79_->set_die_id(-1);
    gbuf1a_0_0_79_->set_mac_id("default_79");
    gbuf1a_0_0_79_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_79_->set_metapipe_iterations({1});
    gbuf1a_0_0_79_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
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
    logreg__lin_layer__linear_params.fwd_prop_a = params_.logreg__lin_layer__weight_0_0_29.with_vector_transpose(true);
    logreg__lin_layer__linear_params.fwd_prop_b = gbuf1a_0_0_79_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
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
    logreg__lin_layer__linear_->set_tile_id(-1);
    logreg__lin_layer__linear_->set_die_id(-1);
    logreg__lin_layer__linear_->set_mac_id("logreg__lin_layer__linear");
    logreg__lin_layer__linear_->set_mac_latency(8.620000e+02);
    logreg__lin_layer__linear_->set_metapipe_iterations({1});
    logreg__lin_layer__linear_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_78_params;
    gbuf1a_0_0_78_params.head1_linear = true;
    gbuf1a_0_0_78_params.head1_p2p = false;
    gbuf1a_0_0_78_params.head_1_depth = 1;
    gbuf1a_0_0_78_params.layout = logreg__lin_layer__linear_->result_layout().at_address(0);
    gbuf1a_0_0_78_params.num_iterations = 1;
    gbuf1a_0_0_78_ = create_node<GBuffer>("gbuf1a_0_0_78", partition_0_0_, plasma_, gbuf1a_0_0_78_params);
    gbuf1a_0_0_78_->set_tile_id(-1);
    gbuf1a_0_0_78_->set_die_id(-1);
    gbuf1a_0_0_78_->set_mac_id("default_78");
    gbuf1a_0_0_78_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_78_->set_metapipe_iterations({1});
    gbuf1a_0_0_78_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_0_0_97_params;
    transpose_0_0_97_params.depth = 1;
    transpose_0_0_97_params.layout = gbuf1a_0_0_78_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    transpose_0_0_97_params.transpose_type = Transpose::kLogical;
    transpose_0_0_97_ = create_node<Transpose>("transpose_0_0_97", partition_0_0_, plasma_, transpose_0_0_97_params);
    transpose_0_0_97_->set_tile_id(-1);
    transpose_0_0_97_->set_die_id(-1);
    transpose_0_0_97_->set_mac_id("default_97");
    transpose_0_0_97_->set_mac_latency(-1.000000e+00);
    transpose_0_0_97_->set_metapipe_iterations({1});
    transpose_0_0_97_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_0_0_94_params;
    transpose_0_0_94_params.depth = 1;
    transpose_0_0_94_params.layout = transpose_0_0_97_->result_layout().at_address(0);
    transpose_0_0_94_params.transpose_type = Transpose::kPhysical;
    transpose_0_0_94_ = create_node<Transpose>("transpose_0_0_94", partition_0_0_, plasma_, transpose_0_0_94_params);
    transpose_0_0_94_->set_tile_id(-1);
    transpose_0_0_94_->set_die_id(-1);
    transpose_0_0_94_->set_mac_id("default_94");
    transpose_0_0_94_->set_mac_latency(-1.000000e+00);
    transpose_0_0_94_->set_metapipe_iterations({1});
    transpose_0_0_94_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_80_params;
    gbuf1a_0_0_80_params.head1_linear = false;
    gbuf1a_0_0_80_params.head1_p2p = false;
    gbuf1a_0_0_80_params.head_1_depth = 1;
    gbuf1a_0_0_80_params.layout = transpose_0_0_94_->result_layout().at_address(0);
    gbuf1a_0_0_80_params.num_iterations = 1;
    gbuf1a_0_0_80_ = create_node<GBuffer>("gbuf1a_0_0_80", partition_0_0_, plasma_, gbuf1a_0_0_80_params);
    gbuf1a_0_0_80_->set_tile_id(-1);
    gbuf1a_0_0_80_->set_die_id(-1);
    gbuf1a_0_0_80_->set_mac_id("default_80");
    gbuf1a_0_0_80_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_80_->set_metapipe_iterations({1});
    gbuf1a_0_0_80_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_0_0_75_params;
    permute_view_0_0_75_params.input_layout = transpose_0_0_97_->result_layout().at_address(0);
    permute_view_0_0_75_params.permute = {1, 0};
    permute_view_0_0_75_ = create_node<PermuteView>("permute_view_0_0_75", partition_0_0_, plasma_, permute_view_0_0_75_params);
    permute_view_0_0_75_->set_tile_id(-1);
    permute_view_0_0_75_->set_die_id(-1);
    permute_view_0_0_75_->set_mac_id("default_66");
    permute_view_0_0_75_->set_mac_latency(-1.000000e+00);
    permute_view_0_0_75_->set_metapipe_iterations({1});
    permute_view_0_0_75_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_0_0_81_params;
    tbuf1a_0_0_81_params.buffer_depth = 1;
    tbuf1a_0_0_81_params.layout = params_.label_0_0_34;
    tbuf1a_0_0_81_ = create_node<TBuffer>("tbuf1a_0_0_81", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_81_params);
    tbuf1a_0_0_81_->set_tile_id(-1);
    tbuf1a_0_0_81_->set_die_id(-1);
    tbuf1a_0_0_81_->set_mac_id("default_81");
    tbuf1a_0_0_81_->set_mac_latency(-1.000000e+00);
    tbuf1a_0_0_81_->set_metapipe_iterations({1});
    tbuf1a_0_0_81_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_0_0_82_params;
    tbuf1a_0_0_82_params.buffer_depth = 1;
    tbuf1a_0_0_82_params.layout = permute_view_0_0_75_->result_layout();
    tbuf1a_0_0_82_ = create_node<TBuffer>("tbuf1a_0_0_82", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_82_params);
    tbuf1a_0_0_82_->set_tile_id(-1);
    tbuf1a_0_0_82_->set_die_id(-1);
    tbuf1a_0_0_82_->set_mac_id("default_82");
    tbuf1a_0_0_82_->set_mac_latency(-1.000000e+00);
    tbuf1a_0_0_82_->set_metapipe_iterations({1});
    tbuf1a_0_0_82_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    RAILCrossEntropy::Params logreg__criterion__crossentropyloss_params;
    logreg__criterion__crossentropyloss_params.batch_size = 1;
    logreg__criterion__crossentropyloss_params.c_par = 1;
    logreg__criterion__crossentropyloss_params.class_by_sample = 1;
    logreg__criterion__crossentropyloss_params.input_x_layout = tbuf1a_0_0_82_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_params.input_y_layout = tbuf1a_0_0_81_->param().layout->at_address(0).at_address(0);
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
    logreg__criterion__crossentropyloss_->set_mac_latency(4.820000e+02);
    logreg__criterion__crossentropyloss_->set_metapipe_iterations({1});
    logreg__criterion__crossentropyloss_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_0_0_83_params;
    tbuf1a_0_0_83_params.buffer_depth = 1;
    tbuf1a_0_0_83_params.layout = logreg__criterion__crossentropyloss_->result_layout().at_address(0);
    tbuf1a_0_0_83_ = create_node<TBuffer>("tbuf1a_0_0_83", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_0_0_83_params);
    tbuf1a_0_0_83_->set_tile_id(-1);
    tbuf1a_0_0_83_->set_die_id(-1);
    tbuf1a_0_0_83_->set_mac_id("default_83");
    tbuf1a_0_0_83_->set_mac_latency(-1.000000e+00);
    tbuf1a_0_0_83_->set_metapipe_iterations({1});
    tbuf1a_0_0_83_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<PartitionNode>("partition_1_0_", this, plasma_, 1, 0);
    mlir::rail::RAIL::rail->create_section(partition_1_0_);
    
    partition_1_0_->set_section_latency(3.757345e-05);
    GBuffer::Params gbuf1a_1_0_84_params;
    gbuf1a_1_0_84_params.enable_fronting_pmu = true;
    gbuf1a_1_0_84_params.head1_linear = false;
    gbuf1a_1_0_84_params.head1_p2p = false;
    gbuf1a_1_0_84_params.head_1_depth = 1;
    gbuf1a_1_0_84_params.head_1_transposed = true;
    gbuf1a_1_0_84_params.layout = params_.logreg__lin_layer__linear__outputs__0_1_0_39.at_address(0);
    gbuf1a_1_0_84_params.loaded_by_broadcast = false;
    gbuf1a_1_0_84_params.num_iterations = 1;
    gbuf1a_1_0_84_params.write_vector_transposed = true;
    gbuf1a_1_0_84_ = create_node<GBuffer>("gbuf1a_1_0_84", partition_1_0_, plasma_, gbuf1a_1_0_84_params);
    gbuf1a_1_0_84_->set_tile_id(-1);
    gbuf1a_1_0_84_->set_die_id(-1);
    gbuf1a_1_0_84_->set_mac_id("default_84");
    gbuf1a_1_0_84_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_84_->set_metapipe_iterations({1});
    gbuf1a_1_0_84_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_1_0_76_params;
    permute_view_1_0_76_params.input_layout = gbuf1a_1_0_84_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    permute_view_1_0_76_params.permute = {1, 0};
    permute_view_1_0_76_ = create_node<PermuteView>("permute_view_1_0_76", partition_1_0_, plasma_, permute_view_1_0_76_params);
    permute_view_1_0_76_->set_tile_id(-1);
    permute_view_1_0_76_->set_die_id(-1);
    permute_view_1_0_76_->set_mac_id("default_68");
    permute_view_1_0_76_->set_mac_latency(-1.000000e+00);
    permute_view_1_0_76_->set_metapipe_iterations({1});
    permute_view_1_0_76_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_85_params;
    tbuf1a_1_0_85_params.buffer_depth = 1;
    tbuf1a_1_0_85_params.layout = params_.label_1_0_40;
    tbuf1a_1_0_85_ = create_node<TBuffer>("tbuf1a_1_0_85", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_85_params);
    tbuf1a_1_0_85_->set_tile_id(-1);
    tbuf1a_1_0_85_->set_die_id(-1);
    tbuf1a_1_0_85_->set_mac_id("default_85");
    tbuf1a_1_0_85_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_85_->set_metapipe_iterations({1});
    tbuf1a_1_0_85_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_86_params;
    tbuf1a_1_0_86_params.buffer_depth = 1;
    tbuf1a_1_0_86_params.layout = params_.logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41;
    tbuf1a_1_0_86_ = create_node<TBuffer>("tbuf1a_1_0_86", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_86_params);
    tbuf1a_1_0_86_->set_tile_id(-1);
    tbuf1a_1_0_86_->set_die_id(-1);
    tbuf1a_1_0_86_->set_mac_id("default_86");
    tbuf1a_1_0_86_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_86_->set_metapipe_iterations({1});
    tbuf1a_1_0_86_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_87_params;
    tbuf1a_1_0_87_params.buffer_depth = 1;
    tbuf1a_1_0_87_params.layout = permute_view_1_0_76_->result_layout();
    tbuf1a_1_0_87_ = create_node<TBuffer>("tbuf1a_1_0_87", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_87_params);
    tbuf1a_1_0_87_->set_tile_id(-1);
    tbuf1a_1_0_87_->set_die_id(-1);
    tbuf1a_1_0_87_->set_mac_id("default_87");
    tbuf1a_1_0_87_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_87_->set_metapipe_iterations({1});
    tbuf1a_1_0_87_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    RAILCrossEntropyGrad::Params logreg__criterion__crossentropyloss_bwd_loss_params;
    logreg__criterion__crossentropyloss_bwd_loss_params.batch_size = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.c_par = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.class_by_sample = 1;
    logreg__criterion__crossentropyloss_bwd_loss_params.input_loss_layout = tbuf1a_1_0_86_->param().layout->at_address(0).at_address(0).with_logical_shape({1}).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_params.input_x_layout = tbuf1a_1_0_87_->param().layout->at_address(0).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_params.input_y_layout = tbuf1a_1_0_85_->param().layout->at_address(0).at_address(0).with_logical_shape({1}).at_address(0);
    logreg__criterion__crossentropyloss_bwd_loss_ = create_node<RAILCrossEntropyGrad>("logreg__criterion__crossentropyloss_bwd_loss", partition_1_0_, LOC, mlir::rail::RAIL::rail, logreg__criterion__crossentropyloss_bwd_loss_params);
    logreg__criterion__crossentropyloss_bwd_loss_->set_tile_id(-1);
    logreg__criterion__crossentropyloss_bwd_loss_->set_die_id(-1);
    logreg__criterion__crossentropyloss_bwd_loss_->set_mac_id("logreg__criterion__crossentropyloss_bwd_loss");
    logreg__criterion__crossentropyloss_bwd_loss_->set_mac_latency(1.140000e+02);
    logreg__criterion__crossentropyloss_bwd_loss_->set_metapipe_iterations({1});
    logreg__criterion__crossentropyloss_bwd_loss_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1a_1_0_99_params;
    tbuf1a_1_0_99_params.buffer_depth = 1;
    tbuf1a_1_0_99_params.layout = logreg__criterion__crossentropyloss_bwd_loss_->result_layout().at_address(0);
    tbuf1a_1_0_99_ = create_node<TBuffer>("tbuf1a_1_0_99", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1a_1_0_99_params);
    tbuf1a_1_0_99_->set_tile_id(-1);
    tbuf1a_1_0_99_->set_die_id(-1);
    tbuf1a_1_0_99_->set_mac_id("default_99");
    tbuf1a_1_0_99_->set_mac_latency(-1.000000e+00);
    tbuf1a_1_0_99_->set_metapipe_iterations({1});
    tbuf1a_1_0_99_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_88_params;
    gbuf1a_1_0_88_params.head1_linear = false;
    gbuf1a_1_0_88_params.head1_p2p = false;
    gbuf1a_1_0_88_params.head_1_depth = 1;
    gbuf1a_1_0_88_params.head_1_transposed = true;
    gbuf1a_1_0_88_params.layout = tbuf1a_1_0_99_->param().layout->at_address(0).at_address(0);
    gbuf1a_1_0_88_params.num_iterations = 1;
    gbuf1a_1_0_88_ = create_node<GBuffer>("gbuf1a_1_0_88", partition_1_0_, plasma_, gbuf1a_1_0_88_params);
    gbuf1a_1_0_88_->set_tile_id(-1);
    gbuf1a_1_0_88_->set_die_id(-1);
    gbuf1a_1_0_88_->set_mac_id("default_88");
    gbuf1a_1_0_88_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_88_->set_metapipe_iterations({1});
    gbuf1a_1_0_88_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_1_0_77_params;
    permute_view_1_0_77_params.input_layout = gbuf1a_1_0_88_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    permute_view_1_0_77_params.permute = {1, 0};
    permute_view_1_0_77_ = create_node<PermuteView>("permute_view_1_0_77", partition_1_0_, plasma_, permute_view_1_0_77_params);
    permute_view_1_0_77_->set_tile_id(-1);
    permute_view_1_0_77_->set_die_id(-1);
    permute_view_1_0_77_->set_mac_id("default_70");
    permute_view_1_0_77_->set_mac_latency(-1.000000e+00);
    permute_view_1_0_77_->set_metapipe_iterations({1});
    permute_view_1_0_77_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_89_params;
    gbuf1a_1_0_89_params.enable_fronting_pmu = true;
    gbuf1a_1_0_89_params.head1_linear = true;
    gbuf1a_1_0_89_params.head1_p2p = false;
    gbuf1a_1_0_89_params.head_1_depth = 1;
    gbuf1a_1_0_89_params.layout = params_.logreg__lin_layer__linear__outputs__0__grad_1_0_43.at_address(0);
    gbuf1a_1_0_89_params.loaded_by_broadcast = false;
    gbuf1a_1_0_89_params.num_iterations = 1;
    gbuf1a_1_0_89_params.write_vector_transposed = true;
    gbuf1a_1_0_89_ = create_node<GBuffer>("gbuf1a_1_0_89", partition_1_0_, plasma_, gbuf1a_1_0_89_params);
    gbuf1a_1_0_89_->set_tile_id(-1);
    gbuf1a_1_0_89_->set_die_id(-1);
    gbuf1a_1_0_89_->set_mac_id("default_89");
    gbuf1a_1_0_89_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_89_->set_metapipe_iterations({1});
    gbuf1a_1_0_89_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    AddN::Params logreg__lin_layer__linear_t_output0_bwd_addn0_params;
    logreg__lin_layer__linear_t_output0_bwd_addn0_params.layout_input = permute_view_1_0_77_->result_layout();
    logreg__lin_layer__linear_t_output0_bwd_addn0_params.num_of_inputs = 2;
    logreg__lin_layer__linear_t_output0_bwd_addn0_ = create_node<AddN>("logreg__lin_layer__linear_t_output0_bwd_addn0", partition_1_0_, plasma_, logreg__lin_layer__linear_t_output0_bwd_addn0_params);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_tile_id(-1);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_die_id(-1);
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_mac_id("logreg__lin_layer__linear_t_output0_bwd_addn0");
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_mac_latency(0.000000e+00);
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
    
    GBuffer::Params gbuf1a_1_0_90_params;
    gbuf1a_1_0_90_params.enable_fronting_pmu = true;
    gbuf1a_1_0_90_params.head1_linear = false;
    gbuf1a_1_0_90_params.head1_p2p = false;
    gbuf1a_1_0_90_params.head_1_depth = 1;
    gbuf1a_1_0_90_params.head_1_transposed = true;
    gbuf1a_1_0_90_params.layout = params_.image_1_0_46.at_address(0);
    gbuf1a_1_0_90_params.loaded_by_broadcast = false;
    gbuf1a_1_0_90_params.num_iterations = 1;
    gbuf1a_1_0_90_ = create_node<GBuffer>("gbuf1a_1_0_90", partition_1_0_, plasma_, gbuf1a_1_0_90_params);
    gbuf1a_1_0_90_->set_tile_id(-1);
    gbuf1a_1_0_90_->set_die_id(-1);
    gbuf1a_1_0_90_->set_mac_id("default_90");
    gbuf1a_1_0_90_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_90_->set_metapipe_iterations({1});
    gbuf1a_1_0_90_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_91_params;
    gbuf1a_1_0_91_params.head1_linear = false;
    gbuf1a_1_0_91_params.head1_p2p = false;
    gbuf1a_1_0_91_params.head_1_depth = 1;
    gbuf1a_1_0_91_params.layout = gbuf1a_1_0_90_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_91_params.num_iterations = 1;
    gbuf1a_1_0_91_ = create_node<GBuffer>("gbuf1a_1_0_91", partition_1_0_, plasma_, gbuf1a_1_0_91_params);
    gbuf1a_1_0_91_->set_tile_id(-1);
    gbuf1a_1_0_91_->set_die_id(-1);
    gbuf1a_1_0_91_->set_mac_id("default_91");
    gbuf1a_1_0_91_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_91_->set_metapipe_iterations({1});
    gbuf1a_1_0_91_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params logreg__lin_layer__linear_bwd_weight_grad_a_params;
    logreg__lin_layer__linear_bwd_weight_grad_a_params.A_layout = logreg__lin_layer__linear_t_output0_bwd_->result_layout().with_vector_transpose(true);
    logreg__lin_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf1a_1_0_91_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
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
    logreg__lin_layer__linear_bwd_weight_grad_a_params.num_col_compute_units = 2;
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
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_mac_latency(3.136000e+03);
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_metapipe_iterations({1});
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_92_params;
    gbuf1a_1_0_92_params.head1_linear = false;
    gbuf1a_1_0_92_params.head1_p2p = false;
    gbuf1a_1_0_92_params.head_1_depth = 1;
    gbuf1a_1_0_92_params.layout = logreg__lin_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_1_0_92_params.num_iterations = 1;
    gbuf1a_1_0_92_params.write_group_layouts = {logreg__lin_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::kOutput)};
    gbuf1a_1_0_92_params.write_group_partitions = {logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions()};
    gbuf1a_1_0_92_ = create_node<GBuffer>("gbuf1a_1_0_92", partition_1_0_, plasma_, gbuf1a_1_0_92_params);
    gbuf1a_1_0_92_->set_tile_id(-1);
    gbuf1a_1_0_92_->set_die_id(-1);
    gbuf1a_1_0_92_->set_mac_id("default_92");
    gbuf1a_1_0_92_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_92_->set_metapipe_iterations({1});
    gbuf1a_1_0_92_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
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


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_79_wr_params = {};
    gbuf1a_0_0_79_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_79_->configure_wr(gbuf1a_0_0_79_wr_params);
    PmuSetupRead gbuf1a_0_0_79_rd1_params1 = logreg__lin_layer__linear_->input_read_params(GemmSubnet::kFwdPropB);
    gbuf1a_0_0_79_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_79_->configure_rd_head_1(gbuf1a_0_0_79_rd1_params1, {1});
    gbuf1a_0_0_79_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    logreg__lin_layer__linear_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_->set_op_name("tlir.Linear");
    logreg__lin_layer__linear_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_78_wr_params = logreg__lin_layer__linear_->write_params(GemmSubnet::kFwdPropOutput);
    gbuf1a_0_0_78_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_78_->configure_wr(gbuf1a_0_0_78_wr_params);
    PmuSetupRead gbuf1a_0_0_78_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_78_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of transpose_0_0_97");
    gbuf1a_0_0_78_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_78_->configure_rd_head_1(gbuf1a_0_0_78_rd1_params0, {1});
    gbuf1a_0_0_78_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    transpose_0_0_97_->set_source_context("overrides.py:1355:0");
    transpose_0_0_97_->set_op_name("tlir.Transpose");
    transpose_0_0_97_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    transpose_0_0_94_->set_source_context("overrides.py:1355:0");
    transpose_0_0_94_->set_op_name("tlir.Transpose");
    transpose_0_0_94_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_80_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_80_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of transpose_0_0_94");
    gbuf1a_0_0_80_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_80_->configure_wr(gbuf1a_0_0_80_wr_params);
    PmuSetupRead gbuf1a_0_0_80_rd1_params1 = {};
    gbuf1a_0_0_80_rd1_params1.interleave = true;
    gbuf1a_0_0_80_rd1_params1.vectors_in_column = transpose_0_0_94_->result_layout().at_address(0).chunk_vectors();
    gbuf1a_0_0_80_rd1_params1.interleave_size = transpose_0_0_94_->result_layout().at_address(0).physical_shape()[0];
    gbuf1a_0_0_80_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_80_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_80_->configure_rd_head_1(gbuf1a_0_0_80_rd1_params1, {1});
    gbuf1a_0_0_80_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    permute_view_0_0_75_->set_source_context("overrides.py:1355:0");
    permute_view_0_0_75_->set_op_name("tlir.PermuteView");
    permute_view_0_0_75_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    tbuf1a_0_0_81_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_0_0_81_, params_.label_dram_in));
;
    for (auto ctx : tbuf1a_0_0_81_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_0_0_81_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kInputY));
    for (auto ctx : tbuf1a_0_0_81_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_0_0_81_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_0_0_82_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf1a_0_0_82_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_0_0_82_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kInputX));
    for (auto ctx : tbuf1a_0_0_82_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_0_0_82_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    logreg__criterion__crossentropyloss_->set_source_context("overrides.py:1355:0");
    logreg__criterion__crossentropyloss_->set_op_name("tlir.CrossEntropy");
    logreg__criterion__crossentropyloss_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_0_0_83_->add_context(logreg__criterion__crossentropyloss_->get_tbuf_contexts(RAILCrossEntropy::IO::kOutput));
    for (auto ctx : tbuf1a_0_0_83_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_0_0_83_->add_context(BackingPmu::get_tbuf_contexts(BackingPmu::kInput, tbuf1a_0_0_83_, params_.logreg__criterion__crossentropyloss__outputs__0_dram_out));
    for (auto ctx : tbuf1a_0_0_83_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{});
    }
    tbuf1a_0_0_83_->configure_node();
    
    
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
    RAILConnectInterface::connect_by_interface(tbuf1a_0_0_81_->get_rail_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kInputY),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_->get_rail_connect_interface(RAILCrossEntropy::IO::kInputY));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_0_0_82_->get_rail_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kInputX),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_->get_rail_connect_interface(RAILCrossEntropy::IO::kInputX));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    RAILConnectInterface::connect_by_interface(logreg__criterion__crossentropyloss_->get_rail_connect_interface(RAILCrossEntropy::IO::kOutput), tbuf1a_0_0_83_->get_rail_connect_interface(logreg__criterion__crossentropyloss_->get_tbuf_ctx_names(RAILCrossEntropy::IO::kOutput),TBufferContext::Input::kDataInput));
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
    gbuf1a_0_0_79_->finalize();
    logreg__lin_layer__linear_->finalize();
    gbuf1a_0_0_78_->finalize();
    transpose_0_0_97_->finalize();
    transpose_0_0_94_->finalize();
    gbuf1a_0_0_80_->finalize();
    permute_view_0_0_75_->finalize();
    tbuf1a_0_0_81_->finalize();
    tbuf1a_0_0_82_->finalize();
    logreg__criterion__crossentropyloss_->finalize();
    tbuf1a_0_0_83_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_79_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), logreg__lin_layer__linear_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    connect_by_interface(logreg__lin_layer__linear_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_78_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_78_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), transpose_0_0_97_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    connect_by_interface(transpose_0_0_97_->get_connect_interface(Transpose::kDefaultOutput, false), transpose_0_0_94_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    connect_by_interface(transpose_0_0_94_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_0_0_80_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(transpose_0_0_97_->get_connect_interface(Transpose::kDefaultOutput, false), tbuf1a_0_0_82_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input logreg__lin_layer__weight_0_0_29 uses a weight buffer
    add_node_input(kimage_0_0_30, gbuf1a_0_0_79_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(klabel_0_0_34, tbuf1a_0_0_81_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(klogreg__lin_layer__linear_t_output0_tensor, gbuf1a_0_0_80_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    PmuSetupWrite gbuf1a_1_0_84_wr_params = {};
    gbuf1a_1_0_84_wr_params.is_transpose = true;
    gbuf1a_1_0_84_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_84_->configure_wr(gbuf1a_1_0_84_wr_params);
    PmuSetupRead gbuf1a_1_0_84_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_84_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_1_0_76");
    gbuf1a_1_0_84_rd1_params0.is_transpose = true;
    gbuf1a_1_0_84_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_84_->configure_rd_head_1(gbuf1a_1_0_84_rd1_params0, {1});
    gbuf1a_1_0_84_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    permute_view_1_0_76_->set_source_context("overrides.py:1355:0");
    permute_view_1_0_76_->set_op_name("tlir.PermuteView");
    permute_view_1_0_76_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    tbuf1a_1_0_85_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_1_0_85_, params_.label_dram_in));
;
    for (auto ctx : tbuf1a_1_0_85_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_85_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputY));
    for (auto ctx : tbuf1a_1_0_85_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_85_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    tbuf1a_1_0_86_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1a_1_0_86_, params_.logreg__criterion__crossentropyloss__outputs__0__grad_dram_in));
;
    for (auto ctx : tbuf1a_1_0_86_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_86_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputLoss));
    for (auto ctx : tbuf1a_1_0_86_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_86_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_1_0_87_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf1a_1_0_87_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_87_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kInputX));
    for (auto ctx : tbuf1a_1_0_87_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_87_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    logreg__criterion__crossentropyloss_bwd_loss_->set_source_context("overrides.py:1355:0");
    logreg__criterion__crossentropyloss_bwd_loss_->set_op_name("tlir.CrossEntropyGrad");
    logreg__criterion__crossentropyloss_bwd_loss_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf1a_1_0_99_->add_context(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_contexts(RAILCrossEntropyGrad::IO::kOutput));
    for (auto ctx : tbuf1a_1_0_99_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1a_1_0_99_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx : tbuf1a_1_0_99_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1a_1_0_99_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_88_wr_params = {};
    gbuf1a_1_0_88_wr_params.is_transpose = true;
    gbuf1a_1_0_88_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_88_->configure_wr(gbuf1a_1_0_88_wr_params);
    PmuSetupRead gbuf1a_1_0_88_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_88_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_1_0_77");
    gbuf1a_1_0_88_rd1_params0.is_transpose = true;
    gbuf1a_1_0_88_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_88_->configure_rd_head_1(gbuf1a_1_0_88_rd1_params0, {1});
    gbuf1a_1_0_88_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    permute_view_1_0_77_->set_source_context("overrides.py:1355:0");
    permute_view_1_0_77_->set_op_name("tlir.PermuteView");
    permute_view_1_0_77_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_89_wr_params = {};
    gbuf1a_1_0_89_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_89_->configure_wr(gbuf1a_1_0_89_wr_params);
    PmuSetupRead gbuf1a_1_0_89_rd1_params1 = {};
    SN_ASSERT(gbuf1a_1_0_89_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of logreg__lin_layer__linear_t_output0_bwd_addn0");
    gbuf1a_1_0_89_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_89_->configure_rd_head_1(gbuf1a_1_0_89_rd1_params1, {1});
    gbuf1a_1_0_89_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_t_output0_bwd_addn0_->set_op_name("tlir.AddN");
    logreg__lin_layer__linear_t_output0_bwd_addn0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    logreg__lin_layer__linear_t_output0_bwd_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_t_output0_bwd_->set_op_name("tlir.PermuteView");
    logreg__lin_layer__linear_t_output0_bwd_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_90_wr_params = {};
    gbuf1a_1_0_90_wr_params.is_transpose = true;
    gbuf1a_1_0_90_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_90_->configure_wr(gbuf1a_1_0_90_wr_params);
    PmuSetupRead gbuf1a_1_0_90_rd1_params0 = {};
    gbuf1a_1_0_90_rd1_params0.is_transpose = true;
    gbuf1a_1_0_90_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_90_->configure_rd_head_1(gbuf1a_1_0_90_rd1_params0, {1});
    gbuf1a_1_0_90_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_91_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_91_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 1 of gbuf1a_1_0_90");
    gbuf1a_1_0_91_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_91_->configure_wr(gbuf1a_1_0_91_wr_params);
    PmuSetupRead gbuf1a_1_0_91_rd1_params1 = logreg__lin_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kB);
    gbuf1a_1_0_91_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_91_->configure_rd_head_1(gbuf1a_1_0_91_rd1_params1, {1});
    gbuf1a_1_0_91_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_source_context("overrides.py:1355:0");
    logreg__lin_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.Linear");
    logreg__lin_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_92_wr_params = logreg__lin_layer__linear_bwd_weight_grad_a_->write_params(BigGemm::kOutput);
    gbuf1a_1_0_92_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_92_->configure_wr(gbuf1a_1_0_92_wr_params);
    PmuSetupRead gbuf1a_1_0_92_rd1_params1 = {};
    gbuf1a_1_0_92_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_92_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_92_->configure_rd_head_1(gbuf1a_1_0_92_rd1_params1, {1});
    gbuf1a_1_0_92_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_1_0_85_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputY),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::kInputY));
    // UnknownFileName:0:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_1_0_86_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputLoss),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::kInputLoss));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(tbuf1a_1_0_87_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kInputX),TBufferContext::Output::kDataOutput), logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::kInputX));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    RAILConnectInterface::connect_by_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_rail_connect_interface(RAILCrossEntropyGrad::IO::kOutput), tbuf1a_1_0_99_->get_rail_connect_interface(logreg__criterion__crossentropyloss_bwd_loss_->get_tbuf_ctx_names(RAILCrossEntropyGrad::IO::kOutput),TBufferContext::Input::kDataInput));
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
    gbuf1a_1_0_84_->finalize();
    permute_view_1_0_76_->finalize();
    tbuf1a_1_0_85_->finalize();
    tbuf1a_1_0_86_->finalize();
    tbuf1a_1_0_87_->finalize();
    logreg__criterion__crossentropyloss_bwd_loss_->finalize();
    tbuf1a_1_0_99_->finalize();
    gbuf1a_1_0_88_->finalize();
    permute_view_1_0_77_->finalize();
    gbuf1a_1_0_89_->finalize();
    logreg__lin_layer__linear_t_output0_bwd_addn0_->finalize();
    logreg__lin_layer__linear_t_output0_bwd_->finalize();
    gbuf1a_1_0_90_->finalize();
    gbuf1a_1_0_91_->finalize();
    logreg__lin_layer__linear_bwd_weight_grad_a_->finalize();
    gbuf1a_1_0_92_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_84_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), tbuf1a_1_0_87_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // UnknownFileName:0:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(tbuf1a_1_0_99_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf1a_1_0_88_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_88_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), logreg__lin_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, true));
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_89_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), logreg__lin_layer__linear_t_output0_bwd_addn0_->get_connect_interface(1, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(logreg__lin_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), logreg__lin_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_90_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_91_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks = {};
    for (auto sink : logreg__lin_layer__linear_bwd_weight_grad_a_->input_list(BigGemm::kB)) {
        logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas = {};
    logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas.push_back(logreg__lin_layer__linear_bwd_weight_grad_a_->get_connect_schema());
    connect_with_schema(gbuf1a_1_0_91_->output_list(GBuffer::Output::kHead1Buffer), logreg__lin_layer__linear_bwd_weight_grad_a_schema_sinks, std::move(logreg__lin_layer__linear_bwd_weight_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions(); ++p) {
            connect_m_to_n(logreg__lin_layer__linear_bwd_weight_grad_a_->output_list(BigGemm::get_partition_output(p)), gbuf1a_1_0_92_->input_list(gbuf1a_1_0_92_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    { // Connect partitioned output control
        for(size_t p = 0; p < logreg__lin_layer__linear_bwd_weight_grad_a_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_1_0_92_->ctrl_output(gbuf1a_1_0_92_->get_pacing_wr_done(0, p)), logreg__lin_layer__linear_bwd_weight_grad_a_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (logreg__lin_layer__linear_bwd_weight_grad_a_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_1_0_92_->ctrl_output(gbuf1a_1_0_92_->get_fronting_rd_done(0, p)), logreg__lin_layer__linear_bwd_weight_grad_a_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
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
    add_node_input(klogreg__lin_layer__linear__outputs__0_1_0_39, gbuf1a_1_0_84_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(klabel_1_0_40, tbuf1a_1_0_85_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(klogreg__criterion__crossentropyloss__outputs__0__grad_1_0_41, tbuf1a_1_0_86_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(klogreg__lin_layer__linear__outputs__0__grad_1_0_43, gbuf1a_1_0_89_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kimage_1_0_46, gbuf1a_1_0_90_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(klogreg__lin_layer__linear_bwd_weight_tensor, gbuf1a_1_0_92_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    
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
        case kgbuf1a_0_0_79: return gbuf1a_0_0_79_;
        case kgbuf1a_0_0_78: return gbuf1a_0_0_78_;
        case kgbuf1a_0_0_80: return gbuf1a_0_0_80_;
        case ktbuf1a_0_0_81: return tbuf1a_0_0_81_;
        case ktbuf1a_0_0_82: return tbuf1a_0_0_82_;
        case ktbuf1a_0_0_83: return tbuf1a_0_0_83_;
        case kgbuf1a_1_0_84: return gbuf1a_1_0_84_;
        case ktbuf1a_1_0_85: return tbuf1a_1_0_85_;
        case ktbuf1a_1_0_86: return tbuf1a_1_0_86_;
        case ktbuf1a_1_0_87: return tbuf1a_1_0_87_;
        case ktbuf1a_1_0_99: return tbuf1a_1_0_99_;
        case kgbuf1a_1_0_88: return gbuf1a_1_0_88_;
        case kgbuf1a_1_0_89: return gbuf1a_1_0_89_;
        case kgbuf1a_1_0_90: return gbuf1a_1_0_90_;
        case kgbuf1a_1_0_91: return gbuf1a_1_0_91_;
        case klogreg__lin_layer__linear_bwd_weight_grad_a: return logreg__lin_layer__linear_bwd_weight_grad_a_;
        case kgbuf1a_1_0_92: return gbuf1a_1_0_92_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism

