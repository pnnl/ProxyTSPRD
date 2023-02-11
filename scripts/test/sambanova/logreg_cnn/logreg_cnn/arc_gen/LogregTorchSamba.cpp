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
    
    partition_0_0_->set_section_latency(5.686609e-05);
    GBuffer::Params gbuf1a_0_0_430_params;
    gbuf1a_0_0_430_params.enable_fronting_pmu = true;
    gbuf1a_0_0_430_params.head1_linear = true;
    gbuf1a_0_0_430_params.head1_p2p = false;
    gbuf1a_0_0_430_params.head_1_depth = 1;
    gbuf1a_0_0_430_params.layout = params_.ptconvcnn__conv_layer__weight_0_0_99;
    gbuf1a_0_0_430_params.loaded_by_broadcast = false;
    gbuf1a_0_0_430_params.num_iterations = 1;
    gbuf1a_0_0_430_ = create_node<GBuffer>("gbuf1a_0_0_430", partition_0_0_, plasma_, gbuf1a_0_0_430_params);
    gbuf1a_0_0_430_->set_tile_id(-1);
    gbuf1a_0_0_430_->set_die_id(-1);
    gbuf1a_0_0_430_->set_mac_id("default_430");
    gbuf1a_0_0_430_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_430_->set_metapipe_iterations({1});
    gbuf1a_0_0_430_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Realign::Params realign_0_0_412_params;
    realign_0_0_412_params.depth = 4;
    realign_0_0_412_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).vector_align();
    realign_0_0_412_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2);
    realign_0_0_412_params.upstream_pacing = true;
    realign_0_0_412_params.upstream_pacing_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).vector_align().with_logical_shape({128, 3}).at_address(0);
    realign_0_0_412_ = create_node<Realign>("realign_0_0_412", partition_0_0_, plasma_, realign_0_0_412_params);
    realign_0_0_412_->set_tile_id(-1);
    realign_0_0_412_->set_die_id(-1);
    realign_0_0_412_->set_mac_id("default_412");
    realign_0_0_412_->set_mac_latency(-1.000000e+00);
    realign_0_0_412_->set_metapipe_iterations({1});
    realign_0_0_412_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_395_params;
    gbuf1a_0_0_395_params.head1_linear = true;
    gbuf1a_0_0_395_params.head1_p2p = false;
    gbuf1a_0_0_395_params.head_1_depth = 1;
    gbuf1a_0_0_395_params.layout = realign_0_0_412_->result_layout().at_address(0);
    gbuf1a_0_0_395_params.num_iterations = 1;
    gbuf1a_0_0_395_ = create_node<GBuffer>("gbuf1a_0_0_395", partition_0_0_, plasma_, gbuf1a_0_0_395_params);
    gbuf1a_0_0_395_->set_tile_id(-1);
    gbuf1a_0_0_395_->set_die_id(-1);
    gbuf1a_0_0_395_->set_mac_id("default_395");
    gbuf1a_0_0_395_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_395_->set_metapipe_iterations({1});
    gbuf1a_0_0_395_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__reshape_1_params;
    ptconvcnn__conv_layer__reshape_1_params.input_layout = gbuf1a_0_0_395_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__conv_layer__reshape_1_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    ptconvcnn__conv_layer__reshape_1_params.reshape = {256, 136, 3, 1};
    ptconvcnn__conv_layer__reshape_1_ = create_node<ReshapeView>("ptconvcnn__conv_layer__reshape_1", partition_0_0_, plasma_, ptconvcnn__conv_layer__reshape_1_params);
    ptconvcnn__conv_layer__reshape_1_->set_tile_id(-1);
    ptconvcnn__conv_layer__reshape_1_->set_die_id(-1);
    ptconvcnn__conv_layer__reshape_1_->set_mac_id("ptconvcnn__conv_layer__reshape_1");
    ptconvcnn__conv_layer__reshape_1_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__reshape_1_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__reshape_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Realign::Params realign_0_0_413_params;
    realign_0_0_413_params.depth = 1;
    realign_0_0_413_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    realign_0_0_413_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3).vector_align();
    realign_0_0_413_ = create_node<Realign>("realign_0_0_413", partition_0_0_, plasma_, realign_0_0_413_params);
    realign_0_0_413_->set_tile_id(-1);
    realign_0_0_413_->set_die_id(-1);
    realign_0_0_413_->set_mac_id("default_413");
    realign_0_0_413_->set_mac_latency(-1.000000e+00);
    realign_0_0_413_->set_metapipe_iterations({1});
    realign_0_0_413_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBufferPermute::Params ptconvcnn__conv_layer__conv2d_weight_permute_params;
    ptconvcnn__conv_layer__conv2d_weight_permute_params.input_is_vector_transposed = false;
    ptconvcnn__conv_layer__conv2d_weight_permute_params.input_layout = realign_0_0_413_->result_layout().at_address(0);
    ptconvcnn__conv_layer__conv2d_weight_permute_params.permutation = {2, 3, 1, 0};
    ptconvcnn__conv_layer__conv2d_weight_permute_ = create_node<TBufferPermute>("ptconvcnn__conv_layer__conv2d_weight_permute", partition_0_0_, plasma_, ptconvcnn__conv_layer__conv2d_weight_permute_params);
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_tile_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_die_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_mac_id("ptconvcnn__conv_layer__conv2d_weight_permute");
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    VectorTranspose::Params vector_transpose_0_0_414_params;
    vector_transpose_0_0_414_params.depth = 1;
    vector_transpose_0_0_414_params.input_is_vector_transposed = true;
    vector_transpose_0_0_414_params.layout = ptconvcnn__conv_layer__conv2d_weight_permute_->result_layout().at_address(0);
    vector_transpose_0_0_414_ = create_node<VectorTranspose>("vector_transpose_0_0_414", partition_0_0_, plasma_, vector_transpose_0_0_414_params);
    vector_transpose_0_0_414_->set_tile_id(-1);
    vector_transpose_0_0_414_->set_die_id(-1);
    vector_transpose_0_0_414_->set_mac_id("default_414");
    vector_transpose_0_0_414_->set_mac_latency(-1.000000e+00);
    vector_transpose_0_0_414_->set_metapipe_iterations({1});
    vector_transpose_0_0_414_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__conv2d_weight_reshape_params;
    ptconvcnn__conv_layer__conv2d_weight_reshape_params.input_layout = vector_transpose_0_0_414_->result_layout().at_address(0);
    ptconvcnn__conv_layer__conv2d_weight_reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {408, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    ptconvcnn__conv_layer__conv2d_weight_reshape_params.reshape = {408, 256};
    ptconvcnn__conv_layer__conv2d_weight_reshape_ = create_node<ReshapeView>("ptconvcnn__conv_layer__conv2d_weight_reshape", partition_0_0_, plasma_, ptconvcnn__conv_layer__conv2d_weight_reshape_params);
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_tile_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_die_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_mac_id("ptconvcnn__conv_layer__conv2d_weight_reshape");
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_437_params;
    gbuf2a_0_0_437_params.head1_linear = false;
    gbuf2a_0_0_437_params.head1_p2p = false;
    gbuf2a_0_0_437_params.head_1_depth = 2;
    gbuf2a_0_0_437_params.head_1_transposed = true;
    gbuf2a_0_0_437_params.layout = ptconvcnn__conv_layer__conv2d_weight_reshape_->result_layout().with_vector_transpose_flipped();
    gbuf2a_0_0_437_params.num_iterations = 1;
    gbuf2a_0_0_437_ = create_node<GBuffer>("gbuf2a_0_0_437", partition_0_0_, plasma_, gbuf2a_0_0_437_params);
    gbuf2a_0_0_437_->set_tile_id(-1);
    gbuf2a_0_0_437_->set_die_id(-1);
    gbuf2a_0_0_437_->set_mac_id("default_437");
    gbuf2a_0_0_437_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_437_->set_metapipe_iterations({1});
    gbuf2a_0_0_437_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf2u_0_0_197_params;
    tbuf2u_0_0_197_params.buffer_depth = 2;
    tbuf2u_0_0_197_params.layout = params_.inp_window_0_0_268.at_address(0);
    tbuf2u_0_0_197_ = create_node<TBuffer>("tbuf2u_0_0_197", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_0_0_197_params);
    tbuf2u_0_0_197_->set_tile_id(-1);
    tbuf2u_0_0_197_->set_die_id(-1);
    tbuf2u_0_0_197_->set_mac_id("default_197");
    tbuf2u_0_0_197_->set_mac_latency(-1.000000e+00);
    tbuf2u_0_0_197_->set_metapipe_iterations({1});
    tbuf2u_0_0_197_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1u_0_0_198_params;
    tbuf1u_0_0_198_params.buffer_depth = 1;
    tbuf1u_0_0_198_params.layout = params_.inp_window_slice_1_0_0_102.at_address(0);
    tbuf1u_0_0_198_ = create_node<TBuffer>("tbuf1u_0_0_198", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1u_0_0_198_params);
    tbuf1u_0_0_198_->set_tile_id(-1);
    tbuf1u_0_0_198_->set_die_id(-1);
    tbuf1u_0_0_198_->set_mac_id("default_198");
    tbuf1u_0_0_198_->set_mac_latency(-1.000000e+00);
    tbuf1u_0_0_198_->set_metapipe_iterations({1});
    tbuf1u_0_0_198_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    RAILIndex::Params ptconvcnn__lambda_layer__indexselect_params;
    ptconvcnn__lambda_layer__indexselect_params.index_dim = 0;
    ptconvcnn__lambda_layer__indexselect_params.index_tensor_layout = tbuf1u_0_0_198_->param().layout->at_address(0).at_address(0);
    ptconvcnn__lambda_layer__indexselect_params.lut_tensor_layout = tbuf2u_0_0_197_->param().layout->at_address(0).at_address(0);
    ptconvcnn__lambda_layer__indexselect_params.read_zeros_outside_range = true;
    ptconvcnn__lambda_layer__indexselect_ = create_node<RAILIndex>("ptconvcnn__lambda_layer__indexselect", partition_0_0_, LOC, mlir::rail::RAIL::rail, ptconvcnn__lambda_layer__indexselect_params);
    ptconvcnn__lambda_layer__indexselect_->set_tile_id(-1);
    ptconvcnn__lambda_layer__indexselect_->set_die_id(-1);
    ptconvcnn__lambda_layer__indexselect_->set_mac_id("ptconvcnn__lambda_layer__indexselect");
    ptconvcnn__lambda_layer__indexselect_->set_mac_latency(1.100000e+01);
    ptconvcnn__lambda_layer__indexselect_->set_metapipe_iterations({1});
    ptconvcnn__lambda_layer__indexselect_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf2u_0_0_202_params;
    tbuf2u_0_0_202_params.buffer_depth = 2;
    tbuf2u_0_0_202_params.layout = PermuteView::permute_layout(ptconvcnn__lambda_layer__indexselect_->result_layout().at_address(0), {1, 0});
    tbuf2u_0_0_202_ = create_node<TBuffer>("tbuf2u_0_0_202", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_0_0_202_params);
    tbuf2u_0_0_202_->set_tile_id(-1);
    tbuf2u_0_0_202_->set_die_id(-1);
    tbuf2u_0_0_202_->set_mac_id("default_202");
    tbuf2u_0_0_202_->set_mac_latency(-1.000000e+00);
    tbuf2u_0_0_202_->set_metapipe_iterations({1});
    tbuf2u_0_0_202_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__reshape_params;
    ptconvcnn__conv_layer__reshape_params.input_layout = tbuf2u_0_0_202_->param().layout->at_address(0).at_address(0);
    ptconvcnn__conv_layer__reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvcnn__conv_layer__reshape_params.reshape = {136, 3, 1};
    ptconvcnn__conv_layer__reshape_ = create_node<ReshapeView>("ptconvcnn__conv_layer__reshape", partition_0_0_, plasma_, ptconvcnn__conv_layer__reshape_params);
    ptconvcnn__conv_layer__reshape_->set_tile_id(-1);
    ptconvcnn__conv_layer__reshape_->set_die_id(-1);
    ptconvcnn__conv_layer__reshape_->set_mac_id("ptconvcnn__conv_layer__reshape");
    ptconvcnn__conv_layer__reshape_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__reshape_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__reshape_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_0_0_204_params;
    gbuf2u_0_0_204_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_204_params.head1_linear = false;
    gbuf2u_0_0_204_params.head1_p2p = false;
    gbuf2u_0_0_204_params.head1_streaming_window = true;
    gbuf2u_0_0_204_params.head_1_depth = 2;
    gbuf2u_0_0_204_params.layout = ptconvcnn__conv_layer__reshape_->result_layout();
    gbuf2u_0_0_204_params.num_head1_rd_en = 2;
    gbuf2u_0_0_204_params.num_iterations = 1;
    gbuf2u_0_0_204_ = create_node<GBuffer>("gbuf2u_0_0_204", partition_0_0_, plasma_, gbuf2u_0_0_204_params);
    gbuf2u_0_0_204_->set_tile_id(-1);
    gbuf2u_0_0_204_->set_die_id(-1);
    gbuf2u_0_0_204_->set_mac_id("default_204");
    gbuf2u_0_0_204_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_204_->set_metapipe_iterations({1});
    gbuf2u_0_0_204_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ListBuffer::Params lbuf1a_0_0_396_params;
    lbuf1a_0_0_396_params.allow_oob = false;
    lbuf1a_0_0_396_params.allow_overflow = false;
    lbuf1a_0_0_396_params.base_list_tile_counters = 0;
    lbuf1a_0_0_396_params.base_max = {1, 96, 5, 32};
    lbuf1a_0_0_396_params.base_mult = {0, 0, 64, 0};
    lbuf1a_0_0_396_params.base_stride = {1, 32, 1, 1};
    lbuf1a_0_0_396_params.batch_size = 1;
    lbuf1a_0_0_396_params.channels = 136;
    lbuf1a_0_0_396_params.depth2col = true;
    lbuf1a_0_0_396_params.enable_fronting_pmu = true;
    lbuf1a_0_0_396_params.filter_area = 3;
    lbuf1a_0_0_396_params.head1_linear = false;
    lbuf1a_0_0_396_params.head1_p2p = false;
    lbuf1a_0_0_396_params.head_1_depth = 1;
    lbuf1a_0_0_396_params.layout = params_.ptconvcnn__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_386;
    lbuf1a_0_0_396_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    lbuf1a_0_0_396_params.length_fixed = 32;
    lbuf1a_0_0_396_params.list_length = 96;
    lbuf1a_0_0_396_params.list_tiles = 1;
    lbuf1a_0_0_396_params.list_type = ListBuffer::kElement;
    lbuf1a_0_0_396_params.loaded_by_broadcast = false;
    lbuf1a_0_0_396_params.num_iterations = 1;
    lbuf1a_0_0_396_params.offset_list_tile_counters = 0;
    lbuf1a_0_0_396_params.offset_max = {1, 96, 5, 32};
    lbuf1a_0_0_396_params.offset_mult = {0, 1, 0, 1};
    lbuf1a_0_0_396_params.offset_stride = {1, 32, 1, 1};
    lbuf1a_0_0_396_params.permute = true;
    lbuf1a_0_0_396_params.use_tile_counter = false;
    lbuf1a_0_0_396_ = create_node<ListBuffer>("lbuf1a_0_0_396", partition_0_0_, plasma_, lbuf1a_0_0_396_params);
    lbuf1a_0_0_396_->set_tile_id(-1);
    lbuf1a_0_0_396_->set_die_id(-1);
    lbuf1a_0_0_396_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    lbuf1a_0_0_396_->set_mac_latency(-1.000000e+00);
    lbuf1a_0_0_396_->set_metapipe_iterations({1});
    lbuf1a_0_0_396_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ScatterBuffer::Params sbuf2u_0_0_295_params;
    sbuf2u_0_0_295_params.element = true;
    sbuf2u_0_0_295_params.head1_linear = true;
    sbuf2u_0_0_295_params.head1_p2p = false;
    sbuf2u_0_0_295_params.head_1_depth = 2;
    sbuf2u_0_0_295_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf2u_0_0_295_params.length_fixed = 32;
    sbuf2u_0_0_295_params.num_iterations = 1;
    sbuf2u_0_0_295_params.pace_shape = {32, 408};
    sbuf2u_0_0_295_params.paced = true;
    sbuf2u_0_0_295_params.read_group_packed_vectors = 480;
    sbuf2u_0_0_295_params.streaming = true;
    sbuf2u_0_0_295_params.streaming_transpose_shape = {136, 96};
    sbuf2u_0_0_295_params.write_group_unpacked_vectors = 480;
    sbuf2u_0_0_295_params.write_total_unpacked_vectors = 480;
    sbuf2u_0_0_295_ = create_node<ScatterBuffer>("sbuf2u_0_0_295", partition_0_0_, plasma_, sbuf2u_0_0_295_params);
    sbuf2u_0_0_295_->set_tile_id(-1);
    sbuf2u_0_0_295_->set_die_id(-1);
    sbuf2u_0_0_295_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    sbuf2u_0_0_295_->set_mac_latency(-1.000000e+00);
    sbuf2u_0_0_295_->set_metapipe_iterations({1});
    sbuf2u_0_0_295_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    KernelGBuffer::Params split_kernel_gbuf_0_0_296_params;
    split_kernel_gbuf_0_0_296_params.M = 1;
    split_kernel_gbuf_0_0_296_params.column_par = 44;
    split_kernel_gbuf_0_0_296_params.head_1_depth = 1;
    split_kernel_gbuf_0_0_296_params.int_column_par = 2;
    split_kernel_gbuf_0_0_296_params.layout = gbuf2a_0_0_437_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    split_kernel_gbuf_0_0_296_params.num_sub_iters = 1;
    split_kernel_gbuf_0_0_296_ = create_node<KernelGBuffer>("split_kernel_gbuf_0_0_296", partition_0_0_, plasma_, split_kernel_gbuf_0_0_296_params);
    split_kernel_gbuf_0_0_296_->set_tile_id(-1);
    split_kernel_gbuf_0_0_296_->set_die_id(-1);
    split_kernel_gbuf_0_0_296_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    split_kernel_gbuf_0_0_296_->set_mac_latency(-1.000000e+00);
    split_kernel_gbuf_0_0_296_->set_metapipe_iterations({1});
    split_kernel_gbuf_0_0_296_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_297_params;
    biggemm_0_0_297_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_297_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 0)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_297_params.batch_size = 1;
    biggemm_0_0_297_params.batch_size_b = 1;
    biggemm_0_0_297_params.box_layout = true;
    biggemm_0_0_297_params.box_per_partition = false;
    biggemm_0_0_297_params.concat_group = true;
    biggemm_0_0_297_params.concat_group_par = 4;
    biggemm_0_0_297_params.connected_to_accumulator = false;
    biggemm_0_0_297_params.dbl_width = false;
    biggemm_0_0_297_params.disable_write_fronting_pmu = false;
    biggemm_0_0_297_params.dotproduct_gemm = false;
    biggemm_0_0_297_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_297_params.enable_gradient = false;
    biggemm_0_0_297_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_297_params.exclusive_vc_a = false;
    biggemm_0_0_297_params.external_input_a = true;
    biggemm_0_0_297_params.external_output_buffer = true;
    biggemm_0_0_297_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_297_params.num_col_compute_units = 2;
    biggemm_0_0_297_params.num_partitions = 1;
    biggemm_0_0_297_params.num_row_compute_units = 1;
    biggemm_0_0_297_params.seqID_base = 0;
    biggemm_0_0_297_params.set_exclusive_routes = false;
    biggemm_0_0_297_params.streaming_col_par = true;
    biggemm_0_0_297_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_297_params.wbuf_split = false;
    biggemm_0_0_297_params.write_done_used = false;
    biggemm_0_0_297_ = create_node<BigGemm>("biggemm_0_0_297", partition_0_0_, plasma_, biggemm_0_0_297_params);
    biggemm_0_0_297_->set_tile_id(-1);
    biggemm_0_0_297_->set_die_id(-1);
    biggemm_0_0_297_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_297_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_297_->set_metapipe_iterations({1});
    biggemm_0_0_297_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_298_params;
    biggemm_0_0_298_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_298_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 1)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_298_params.batch_size = 1;
    biggemm_0_0_298_params.batch_size_b = 1;
    biggemm_0_0_298_params.box_layout = true;
    biggemm_0_0_298_params.box_per_partition = false;
    biggemm_0_0_298_params.concat_group = true;
    biggemm_0_0_298_params.concat_group_par = 4;
    biggemm_0_0_298_params.connected_to_accumulator = false;
    biggemm_0_0_298_params.dbl_width = false;
    biggemm_0_0_298_params.disable_write_fronting_pmu = false;
    biggemm_0_0_298_params.dotproduct_gemm = false;
    biggemm_0_0_298_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_298_params.enable_gradient = false;
    biggemm_0_0_298_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_298_params.exclusive_vc_a = false;
    biggemm_0_0_298_params.external_input_a = true;
    biggemm_0_0_298_params.external_output_buffer = true;
    biggemm_0_0_298_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_298_params.num_col_compute_units = 2;
    biggemm_0_0_298_params.num_partitions = 1;
    biggemm_0_0_298_params.num_row_compute_units = 1;
    biggemm_0_0_298_params.seqID_base = 12;
    biggemm_0_0_298_params.set_exclusive_routes = false;
    biggemm_0_0_298_params.streaming_col_par = true;
    biggemm_0_0_298_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_298_params.wbuf_split = false;
    biggemm_0_0_298_params.write_done_used = false;
    biggemm_0_0_298_ = create_node<BigGemm>("biggemm_0_0_298", partition_0_0_, plasma_, biggemm_0_0_298_params);
    biggemm_0_0_298_->set_tile_id(-1);
    biggemm_0_0_298_->set_die_id(-1);
    biggemm_0_0_298_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_298_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_298_->set_metapipe_iterations({1});
    biggemm_0_0_298_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_299_params;
    biggemm_0_0_299_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_299_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 2)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_299_params.batch_size = 1;
    biggemm_0_0_299_params.batch_size_b = 1;
    biggemm_0_0_299_params.box_layout = true;
    biggemm_0_0_299_params.box_per_partition = false;
    biggemm_0_0_299_params.concat_group = true;
    biggemm_0_0_299_params.concat_group_par = 4;
    biggemm_0_0_299_params.connected_to_accumulator = false;
    biggemm_0_0_299_params.dbl_width = false;
    biggemm_0_0_299_params.disable_write_fronting_pmu = false;
    biggemm_0_0_299_params.dotproduct_gemm = false;
    biggemm_0_0_299_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_299_params.enable_gradient = false;
    biggemm_0_0_299_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_299_params.exclusive_vc_a = false;
    biggemm_0_0_299_params.external_input_a = true;
    biggemm_0_0_299_params.external_output_buffer = true;
    biggemm_0_0_299_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_299_params.num_col_compute_units = 2;
    biggemm_0_0_299_params.num_partitions = 1;
    biggemm_0_0_299_params.num_row_compute_units = 1;
    biggemm_0_0_299_params.seqID_base = 24;
    biggemm_0_0_299_params.set_exclusive_routes = false;
    biggemm_0_0_299_params.streaming_col_par = true;
    biggemm_0_0_299_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_299_params.wbuf_split = false;
    biggemm_0_0_299_params.write_done_used = false;
    biggemm_0_0_299_ = create_node<BigGemm>("biggemm_0_0_299", partition_0_0_, plasma_, biggemm_0_0_299_params);
    biggemm_0_0_299_->set_tile_id(-1);
    biggemm_0_0_299_->set_die_id(-1);
    biggemm_0_0_299_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_299_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_299_->set_metapipe_iterations({1});
    biggemm_0_0_299_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_300_params;
    biggemm_0_0_300_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_300_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 3)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_300_params.batch_size = 1;
    biggemm_0_0_300_params.batch_size_b = 1;
    biggemm_0_0_300_params.box_layout = true;
    biggemm_0_0_300_params.box_per_partition = false;
    biggemm_0_0_300_params.concat_group = true;
    biggemm_0_0_300_params.concat_group_par = 4;
    biggemm_0_0_300_params.connected_to_accumulator = false;
    biggemm_0_0_300_params.dbl_width = false;
    biggemm_0_0_300_params.disable_write_fronting_pmu = false;
    biggemm_0_0_300_params.dotproduct_gemm = false;
    biggemm_0_0_300_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_300_params.enable_gradient = false;
    biggemm_0_0_300_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_300_params.exclusive_vc_a = false;
    biggemm_0_0_300_params.external_input_a = true;
    biggemm_0_0_300_params.external_output_buffer = true;
    biggemm_0_0_300_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_300_params.num_col_compute_units = 2;
    biggemm_0_0_300_params.num_partitions = 1;
    biggemm_0_0_300_params.num_row_compute_units = 1;
    biggemm_0_0_300_params.seqID_base = 36;
    biggemm_0_0_300_params.set_exclusive_routes = false;
    biggemm_0_0_300_params.streaming_col_par = true;
    biggemm_0_0_300_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_300_params.wbuf_split = false;
    biggemm_0_0_300_params.write_done_used = false;
    biggemm_0_0_300_ = create_node<BigGemm>("biggemm_0_0_300", partition_0_0_, plasma_, biggemm_0_0_300_params);
    biggemm_0_0_300_->set_tile_id(-1);
    biggemm_0_0_300_->set_die_id(-1);
    biggemm_0_0_300_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_300_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_300_->set_metapipe_iterations({1});
    biggemm_0_0_300_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_301_params;
    biggemm_0_0_301_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_301_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 4)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_301_params.batch_size = 1;
    biggemm_0_0_301_params.batch_size_b = 1;
    biggemm_0_0_301_params.box_layout = true;
    biggemm_0_0_301_params.box_per_partition = false;
    biggemm_0_0_301_params.concat_group = true;
    biggemm_0_0_301_params.concat_group_par = 4;
    biggemm_0_0_301_params.connected_to_accumulator = false;
    biggemm_0_0_301_params.dbl_width = false;
    biggemm_0_0_301_params.disable_write_fronting_pmu = false;
    biggemm_0_0_301_params.dotproduct_gemm = false;
    biggemm_0_0_301_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_301_params.enable_gradient = false;
    biggemm_0_0_301_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_301_params.exclusive_vc_a = false;
    biggemm_0_0_301_params.external_input_a = true;
    biggemm_0_0_301_params.external_output_buffer = true;
    biggemm_0_0_301_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_301_params.num_col_compute_units = 2;
    biggemm_0_0_301_params.num_partitions = 1;
    biggemm_0_0_301_params.num_row_compute_units = 1;
    biggemm_0_0_301_params.seqID_base = 0;
    biggemm_0_0_301_params.set_exclusive_routes = false;
    biggemm_0_0_301_params.streaming_col_par = true;
    biggemm_0_0_301_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_301_params.wbuf_split = false;
    biggemm_0_0_301_params.write_done_used = false;
    biggemm_0_0_301_ = create_node<BigGemm>("biggemm_0_0_301", partition_0_0_, plasma_, biggemm_0_0_301_params);
    biggemm_0_0_301_->set_tile_id(-1);
    biggemm_0_0_301_->set_die_id(-1);
    biggemm_0_0_301_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_301_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_301_->set_metapipe_iterations({1});
    biggemm_0_0_301_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_302_params;
    biggemm_0_0_302_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_302_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 5)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_302_params.batch_size = 1;
    biggemm_0_0_302_params.batch_size_b = 1;
    biggemm_0_0_302_params.box_layout = true;
    biggemm_0_0_302_params.box_per_partition = false;
    biggemm_0_0_302_params.concat_group = true;
    biggemm_0_0_302_params.concat_group_par = 4;
    biggemm_0_0_302_params.connected_to_accumulator = false;
    biggemm_0_0_302_params.dbl_width = false;
    biggemm_0_0_302_params.disable_write_fronting_pmu = false;
    biggemm_0_0_302_params.dotproduct_gemm = false;
    biggemm_0_0_302_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_302_params.enable_gradient = false;
    biggemm_0_0_302_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_302_params.exclusive_vc_a = false;
    biggemm_0_0_302_params.external_input_a = true;
    biggemm_0_0_302_params.external_output_buffer = true;
    biggemm_0_0_302_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_302_params.num_col_compute_units = 2;
    biggemm_0_0_302_params.num_partitions = 1;
    biggemm_0_0_302_params.num_row_compute_units = 1;
    biggemm_0_0_302_params.seqID_base = 12;
    biggemm_0_0_302_params.set_exclusive_routes = false;
    biggemm_0_0_302_params.streaming_col_par = true;
    biggemm_0_0_302_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_302_params.wbuf_split = false;
    biggemm_0_0_302_params.write_done_used = false;
    biggemm_0_0_302_ = create_node<BigGemm>("biggemm_0_0_302", partition_0_0_, plasma_, biggemm_0_0_302_params);
    biggemm_0_0_302_->set_tile_id(-1);
    biggemm_0_0_302_->set_die_id(-1);
    biggemm_0_0_302_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_302_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_302_->set_metapipe_iterations({1});
    biggemm_0_0_302_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_303_params;
    biggemm_0_0_303_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_303_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 6)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_303_params.batch_size = 1;
    biggemm_0_0_303_params.batch_size_b = 1;
    biggemm_0_0_303_params.box_layout = true;
    biggemm_0_0_303_params.box_per_partition = false;
    biggemm_0_0_303_params.concat_group = true;
    biggemm_0_0_303_params.concat_group_par = 4;
    biggemm_0_0_303_params.connected_to_accumulator = false;
    biggemm_0_0_303_params.dbl_width = false;
    biggemm_0_0_303_params.disable_write_fronting_pmu = false;
    biggemm_0_0_303_params.dotproduct_gemm = false;
    biggemm_0_0_303_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_303_params.enable_gradient = false;
    biggemm_0_0_303_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_303_params.exclusive_vc_a = false;
    biggemm_0_0_303_params.external_input_a = true;
    biggemm_0_0_303_params.external_output_buffer = true;
    biggemm_0_0_303_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_303_params.num_col_compute_units = 2;
    biggemm_0_0_303_params.num_partitions = 1;
    biggemm_0_0_303_params.num_row_compute_units = 1;
    biggemm_0_0_303_params.seqID_base = 24;
    biggemm_0_0_303_params.set_exclusive_routes = false;
    biggemm_0_0_303_params.streaming_col_par = true;
    biggemm_0_0_303_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_303_params.wbuf_split = false;
    biggemm_0_0_303_params.write_done_used = false;
    biggemm_0_0_303_ = create_node<BigGemm>("biggemm_0_0_303", partition_0_0_, plasma_, biggemm_0_0_303_params);
    biggemm_0_0_303_->set_tile_id(-1);
    biggemm_0_0_303_->set_die_id(-1);
    biggemm_0_0_303_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_303_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_303_->set_metapipe_iterations({1});
    biggemm_0_0_303_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_304_params;
    biggemm_0_0_304_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_304_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 7)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_304_params.batch_size = 1;
    biggemm_0_0_304_params.batch_size_b = 1;
    biggemm_0_0_304_params.box_layout = true;
    biggemm_0_0_304_params.box_per_partition = false;
    biggemm_0_0_304_params.concat_group = true;
    biggemm_0_0_304_params.concat_group_par = 4;
    biggemm_0_0_304_params.connected_to_accumulator = false;
    biggemm_0_0_304_params.dbl_width = false;
    biggemm_0_0_304_params.disable_write_fronting_pmu = false;
    biggemm_0_0_304_params.dotproduct_gemm = false;
    biggemm_0_0_304_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_304_params.enable_gradient = false;
    biggemm_0_0_304_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_304_params.exclusive_vc_a = false;
    biggemm_0_0_304_params.external_input_a = true;
    biggemm_0_0_304_params.external_output_buffer = true;
    biggemm_0_0_304_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_304_params.num_col_compute_units = 2;
    biggemm_0_0_304_params.num_partitions = 1;
    biggemm_0_0_304_params.num_row_compute_units = 1;
    biggemm_0_0_304_params.seqID_base = 36;
    biggemm_0_0_304_params.set_exclusive_routes = false;
    biggemm_0_0_304_params.streaming_col_par = true;
    biggemm_0_0_304_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_304_params.wbuf_split = false;
    biggemm_0_0_304_params.write_done_used = false;
    biggemm_0_0_304_ = create_node<BigGemm>("biggemm_0_0_304", partition_0_0_, plasma_, biggemm_0_0_304_params);
    biggemm_0_0_304_->set_tile_id(-1);
    biggemm_0_0_304_->set_die_id(-1);
    biggemm_0_0_304_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_304_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_304_->set_metapipe_iterations({1});
    biggemm_0_0_304_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_305_params;
    biggemm_0_0_305_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_305_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 8)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_305_params.batch_size = 1;
    biggemm_0_0_305_params.batch_size_b = 1;
    biggemm_0_0_305_params.box_layout = true;
    biggemm_0_0_305_params.box_per_partition = false;
    biggemm_0_0_305_params.concat_group = true;
    biggemm_0_0_305_params.concat_group_par = 4;
    biggemm_0_0_305_params.connected_to_accumulator = false;
    biggemm_0_0_305_params.dbl_width = false;
    biggemm_0_0_305_params.disable_write_fronting_pmu = false;
    biggemm_0_0_305_params.dotproduct_gemm = false;
    biggemm_0_0_305_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_305_params.enable_gradient = false;
    biggemm_0_0_305_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_305_params.exclusive_vc_a = false;
    biggemm_0_0_305_params.external_input_a = true;
    biggemm_0_0_305_params.external_output_buffer = true;
    biggemm_0_0_305_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_305_params.num_col_compute_units = 2;
    biggemm_0_0_305_params.num_partitions = 1;
    biggemm_0_0_305_params.num_row_compute_units = 1;
    biggemm_0_0_305_params.seqID_base = 0;
    biggemm_0_0_305_params.set_exclusive_routes = false;
    biggemm_0_0_305_params.streaming_col_par = true;
    biggemm_0_0_305_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_305_params.wbuf_split = false;
    biggemm_0_0_305_params.write_done_used = false;
    biggemm_0_0_305_ = create_node<BigGemm>("biggemm_0_0_305", partition_0_0_, plasma_, biggemm_0_0_305_params);
    biggemm_0_0_305_->set_tile_id(-1);
    biggemm_0_0_305_->set_die_id(-1);
    biggemm_0_0_305_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_305_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_305_->set_metapipe_iterations({1});
    biggemm_0_0_305_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_306_params;
    biggemm_0_0_306_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_306_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 9)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_306_params.batch_size = 1;
    biggemm_0_0_306_params.batch_size_b = 1;
    biggemm_0_0_306_params.box_layout = true;
    biggemm_0_0_306_params.box_per_partition = false;
    biggemm_0_0_306_params.concat_group = true;
    biggemm_0_0_306_params.concat_group_par = 4;
    biggemm_0_0_306_params.connected_to_accumulator = false;
    biggemm_0_0_306_params.dbl_width = false;
    biggemm_0_0_306_params.disable_write_fronting_pmu = false;
    biggemm_0_0_306_params.dotproduct_gemm = false;
    biggemm_0_0_306_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_306_params.enable_gradient = false;
    biggemm_0_0_306_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_306_params.exclusive_vc_a = false;
    biggemm_0_0_306_params.external_input_a = true;
    biggemm_0_0_306_params.external_output_buffer = true;
    biggemm_0_0_306_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_306_params.num_col_compute_units = 2;
    biggemm_0_0_306_params.num_partitions = 1;
    biggemm_0_0_306_params.num_row_compute_units = 1;
    biggemm_0_0_306_params.seqID_base = 12;
    biggemm_0_0_306_params.set_exclusive_routes = false;
    biggemm_0_0_306_params.streaming_col_par = true;
    biggemm_0_0_306_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_306_params.wbuf_split = false;
    biggemm_0_0_306_params.write_done_used = false;
    biggemm_0_0_306_ = create_node<BigGemm>("biggemm_0_0_306", partition_0_0_, plasma_, biggemm_0_0_306_params);
    biggemm_0_0_306_->set_tile_id(-1);
    biggemm_0_0_306_->set_die_id(-1);
    biggemm_0_0_306_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_306_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_306_->set_metapipe_iterations({1});
    biggemm_0_0_306_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_307_params;
    biggemm_0_0_307_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_307_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 10)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_307_params.batch_size = 1;
    biggemm_0_0_307_params.batch_size_b = 1;
    biggemm_0_0_307_params.box_layout = true;
    biggemm_0_0_307_params.box_per_partition = false;
    biggemm_0_0_307_params.concat_group = true;
    biggemm_0_0_307_params.concat_group_par = 4;
    biggemm_0_0_307_params.connected_to_accumulator = false;
    biggemm_0_0_307_params.dbl_width = false;
    biggemm_0_0_307_params.disable_write_fronting_pmu = false;
    biggemm_0_0_307_params.dotproduct_gemm = false;
    biggemm_0_0_307_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_307_params.enable_gradient = false;
    biggemm_0_0_307_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_307_params.exclusive_vc_a = false;
    biggemm_0_0_307_params.external_input_a = true;
    biggemm_0_0_307_params.external_output_buffer = true;
    biggemm_0_0_307_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_307_params.num_col_compute_units = 2;
    biggemm_0_0_307_params.num_partitions = 1;
    biggemm_0_0_307_params.num_row_compute_units = 1;
    biggemm_0_0_307_params.seqID_base = 24;
    biggemm_0_0_307_params.set_exclusive_routes = false;
    biggemm_0_0_307_params.streaming_col_par = true;
    biggemm_0_0_307_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_307_params.wbuf_split = false;
    biggemm_0_0_307_params.write_done_used = false;
    biggemm_0_0_307_ = create_node<BigGemm>("biggemm_0_0_307", partition_0_0_, plasma_, biggemm_0_0_307_params);
    biggemm_0_0_307_->set_tile_id(-1);
    biggemm_0_0_307_->set_die_id(-1);
    biggemm_0_0_307_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_307_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_307_->set_metapipe_iterations({1});
    biggemm_0_0_307_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_308_params;
    biggemm_0_0_308_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_308_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 11)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_308_params.batch_size = 1;
    biggemm_0_0_308_params.batch_size_b = 1;
    biggemm_0_0_308_params.box_layout = true;
    biggemm_0_0_308_params.box_per_partition = false;
    biggemm_0_0_308_params.concat_group = true;
    biggemm_0_0_308_params.concat_group_par = 4;
    biggemm_0_0_308_params.connected_to_accumulator = false;
    biggemm_0_0_308_params.dbl_width = false;
    biggemm_0_0_308_params.disable_write_fronting_pmu = false;
    biggemm_0_0_308_params.dotproduct_gemm = false;
    biggemm_0_0_308_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_308_params.enable_gradient = false;
    biggemm_0_0_308_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_308_params.exclusive_vc_a = false;
    biggemm_0_0_308_params.external_input_a = true;
    biggemm_0_0_308_params.external_output_buffer = true;
    biggemm_0_0_308_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_308_params.num_col_compute_units = 2;
    biggemm_0_0_308_params.num_partitions = 1;
    biggemm_0_0_308_params.num_row_compute_units = 1;
    biggemm_0_0_308_params.seqID_base = 36;
    biggemm_0_0_308_params.set_exclusive_routes = false;
    biggemm_0_0_308_params.streaming_col_par = true;
    biggemm_0_0_308_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_308_params.wbuf_split = false;
    biggemm_0_0_308_params.write_done_used = false;
    biggemm_0_0_308_ = create_node<BigGemm>("biggemm_0_0_308", partition_0_0_, plasma_, biggemm_0_0_308_params);
    biggemm_0_0_308_->set_tile_id(-1);
    biggemm_0_0_308_->set_die_id(-1);
    biggemm_0_0_308_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_308_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_308_->set_metapipe_iterations({1});
    biggemm_0_0_308_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_309_params;
    biggemm_0_0_309_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_309_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 12)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_309_params.batch_size = 1;
    biggemm_0_0_309_params.batch_size_b = 1;
    biggemm_0_0_309_params.box_layout = true;
    biggemm_0_0_309_params.box_per_partition = false;
    biggemm_0_0_309_params.concat_group = true;
    biggemm_0_0_309_params.concat_group_par = 4;
    biggemm_0_0_309_params.connected_to_accumulator = false;
    biggemm_0_0_309_params.dbl_width = false;
    biggemm_0_0_309_params.disable_write_fronting_pmu = false;
    biggemm_0_0_309_params.dotproduct_gemm = false;
    biggemm_0_0_309_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_309_params.enable_gradient = false;
    biggemm_0_0_309_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_309_params.exclusive_vc_a = false;
    biggemm_0_0_309_params.external_input_a = true;
    biggemm_0_0_309_params.external_output_buffer = true;
    biggemm_0_0_309_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_309_params.num_col_compute_units = 2;
    biggemm_0_0_309_params.num_partitions = 1;
    biggemm_0_0_309_params.num_row_compute_units = 1;
    biggemm_0_0_309_params.seqID_base = 0;
    biggemm_0_0_309_params.set_exclusive_routes = false;
    biggemm_0_0_309_params.streaming_col_par = true;
    biggemm_0_0_309_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_309_params.wbuf_split = false;
    biggemm_0_0_309_params.write_done_used = false;
    biggemm_0_0_309_ = create_node<BigGemm>("biggemm_0_0_309", partition_0_0_, plasma_, biggemm_0_0_309_params);
    biggemm_0_0_309_->set_tile_id(-1);
    biggemm_0_0_309_->set_die_id(-1);
    biggemm_0_0_309_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_309_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_309_->set_metapipe_iterations({1});
    biggemm_0_0_309_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_310_params;
    biggemm_0_0_310_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_310_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 13)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_310_params.batch_size = 1;
    biggemm_0_0_310_params.batch_size_b = 1;
    biggemm_0_0_310_params.box_layout = true;
    biggemm_0_0_310_params.box_per_partition = false;
    biggemm_0_0_310_params.concat_group = true;
    biggemm_0_0_310_params.concat_group_par = 4;
    biggemm_0_0_310_params.connected_to_accumulator = false;
    biggemm_0_0_310_params.dbl_width = false;
    biggemm_0_0_310_params.disable_write_fronting_pmu = false;
    biggemm_0_0_310_params.dotproduct_gemm = false;
    biggemm_0_0_310_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_310_params.enable_gradient = false;
    biggemm_0_0_310_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_310_params.exclusive_vc_a = false;
    biggemm_0_0_310_params.external_input_a = true;
    biggemm_0_0_310_params.external_output_buffer = true;
    biggemm_0_0_310_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_310_params.num_col_compute_units = 2;
    biggemm_0_0_310_params.num_partitions = 1;
    biggemm_0_0_310_params.num_row_compute_units = 1;
    biggemm_0_0_310_params.seqID_base = 12;
    biggemm_0_0_310_params.set_exclusive_routes = false;
    biggemm_0_0_310_params.streaming_col_par = true;
    biggemm_0_0_310_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_310_params.wbuf_split = false;
    biggemm_0_0_310_params.write_done_used = false;
    biggemm_0_0_310_ = create_node<BigGemm>("biggemm_0_0_310", partition_0_0_, plasma_, biggemm_0_0_310_params);
    biggemm_0_0_310_->set_tile_id(-1);
    biggemm_0_0_310_->set_die_id(-1);
    biggemm_0_0_310_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_310_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_310_->set_metapipe_iterations({1});
    biggemm_0_0_310_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_311_params;
    biggemm_0_0_311_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_311_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 14)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_311_params.batch_size = 1;
    biggemm_0_0_311_params.batch_size_b = 1;
    biggemm_0_0_311_params.box_layout = true;
    biggemm_0_0_311_params.box_per_partition = false;
    biggemm_0_0_311_params.concat_group = true;
    biggemm_0_0_311_params.concat_group_par = 4;
    biggemm_0_0_311_params.connected_to_accumulator = false;
    biggemm_0_0_311_params.dbl_width = false;
    biggemm_0_0_311_params.disable_write_fronting_pmu = false;
    biggemm_0_0_311_params.dotproduct_gemm = false;
    biggemm_0_0_311_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_311_params.enable_gradient = false;
    biggemm_0_0_311_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_311_params.exclusive_vc_a = false;
    biggemm_0_0_311_params.external_input_a = true;
    biggemm_0_0_311_params.external_output_buffer = true;
    biggemm_0_0_311_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_311_params.num_col_compute_units = 2;
    biggemm_0_0_311_params.num_partitions = 1;
    biggemm_0_0_311_params.num_row_compute_units = 1;
    biggemm_0_0_311_params.seqID_base = 24;
    biggemm_0_0_311_params.set_exclusive_routes = false;
    biggemm_0_0_311_params.streaming_col_par = true;
    biggemm_0_0_311_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_311_params.wbuf_split = false;
    biggemm_0_0_311_params.write_done_used = false;
    biggemm_0_0_311_ = create_node<BigGemm>("biggemm_0_0_311", partition_0_0_, plasma_, biggemm_0_0_311_params);
    biggemm_0_0_311_->set_tile_id(-1);
    biggemm_0_0_311_->set_die_id(-1);
    biggemm_0_0_311_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_311_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_311_->set_metapipe_iterations({1});
    biggemm_0_0_311_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_312_params;
    biggemm_0_0_312_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_312_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 15)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_312_params.batch_size = 1;
    biggemm_0_0_312_params.batch_size_b = 1;
    biggemm_0_0_312_params.box_layout = true;
    biggemm_0_0_312_params.box_per_partition = false;
    biggemm_0_0_312_params.concat_group = true;
    biggemm_0_0_312_params.concat_group_par = 4;
    biggemm_0_0_312_params.connected_to_accumulator = false;
    biggemm_0_0_312_params.dbl_width = false;
    biggemm_0_0_312_params.disable_write_fronting_pmu = false;
    biggemm_0_0_312_params.dotproduct_gemm = false;
    biggemm_0_0_312_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_312_params.enable_gradient = false;
    biggemm_0_0_312_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_312_params.exclusive_vc_a = false;
    biggemm_0_0_312_params.external_input_a = true;
    biggemm_0_0_312_params.external_output_buffer = true;
    biggemm_0_0_312_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_312_params.num_col_compute_units = 2;
    biggemm_0_0_312_params.num_partitions = 1;
    biggemm_0_0_312_params.num_row_compute_units = 1;
    biggemm_0_0_312_params.seqID_base = 36;
    biggemm_0_0_312_params.set_exclusive_routes = false;
    biggemm_0_0_312_params.streaming_col_par = true;
    biggemm_0_0_312_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_312_params.wbuf_split = false;
    biggemm_0_0_312_params.write_done_used = false;
    biggemm_0_0_312_ = create_node<BigGemm>("biggemm_0_0_312", partition_0_0_, plasma_, biggemm_0_0_312_params);
    biggemm_0_0_312_->set_tile_id(-1);
    biggemm_0_0_312_->set_die_id(-1);
    biggemm_0_0_312_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_312_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_312_->set_metapipe_iterations({1});
    biggemm_0_0_312_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_313_params;
    biggemm_0_0_313_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_313_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 16)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_313_params.batch_size = 1;
    biggemm_0_0_313_params.batch_size_b = 1;
    biggemm_0_0_313_params.box_layout = true;
    biggemm_0_0_313_params.box_per_partition = false;
    biggemm_0_0_313_params.concat_group = true;
    biggemm_0_0_313_params.concat_group_par = 4;
    biggemm_0_0_313_params.connected_to_accumulator = false;
    biggemm_0_0_313_params.dbl_width = false;
    biggemm_0_0_313_params.disable_write_fronting_pmu = false;
    biggemm_0_0_313_params.dotproduct_gemm = false;
    biggemm_0_0_313_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_313_params.enable_gradient = false;
    biggemm_0_0_313_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_313_params.exclusive_vc_a = false;
    biggemm_0_0_313_params.external_input_a = true;
    biggemm_0_0_313_params.external_output_buffer = true;
    biggemm_0_0_313_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_313_params.num_col_compute_units = 2;
    biggemm_0_0_313_params.num_partitions = 1;
    biggemm_0_0_313_params.num_row_compute_units = 1;
    biggemm_0_0_313_params.seqID_base = 0;
    biggemm_0_0_313_params.set_exclusive_routes = false;
    biggemm_0_0_313_params.streaming_col_par = true;
    biggemm_0_0_313_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_313_params.wbuf_split = false;
    biggemm_0_0_313_params.write_done_used = false;
    biggemm_0_0_313_ = create_node<BigGemm>("biggemm_0_0_313", partition_0_0_, plasma_, biggemm_0_0_313_params);
    biggemm_0_0_313_->set_tile_id(-1);
    biggemm_0_0_313_->set_die_id(-1);
    biggemm_0_0_313_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_313_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_313_->set_metapipe_iterations({1});
    biggemm_0_0_313_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_314_params;
    biggemm_0_0_314_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_314_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 17)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_314_params.batch_size = 1;
    biggemm_0_0_314_params.batch_size_b = 1;
    biggemm_0_0_314_params.box_layout = true;
    biggemm_0_0_314_params.box_per_partition = false;
    biggemm_0_0_314_params.concat_group = true;
    biggemm_0_0_314_params.concat_group_par = 4;
    biggemm_0_0_314_params.connected_to_accumulator = false;
    biggemm_0_0_314_params.dbl_width = false;
    biggemm_0_0_314_params.disable_write_fronting_pmu = false;
    biggemm_0_0_314_params.dotproduct_gemm = false;
    biggemm_0_0_314_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_314_params.enable_gradient = false;
    biggemm_0_0_314_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_314_params.exclusive_vc_a = false;
    biggemm_0_0_314_params.external_input_a = true;
    biggemm_0_0_314_params.external_output_buffer = true;
    biggemm_0_0_314_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_314_params.num_col_compute_units = 2;
    biggemm_0_0_314_params.num_partitions = 1;
    biggemm_0_0_314_params.num_row_compute_units = 1;
    biggemm_0_0_314_params.seqID_base = 12;
    biggemm_0_0_314_params.set_exclusive_routes = false;
    biggemm_0_0_314_params.streaming_col_par = true;
    biggemm_0_0_314_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_314_params.wbuf_split = false;
    biggemm_0_0_314_params.write_done_used = false;
    biggemm_0_0_314_ = create_node<BigGemm>("biggemm_0_0_314", partition_0_0_, plasma_, biggemm_0_0_314_params);
    biggemm_0_0_314_->set_tile_id(-1);
    biggemm_0_0_314_->set_die_id(-1);
    biggemm_0_0_314_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_314_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_314_->set_metapipe_iterations({1});
    biggemm_0_0_314_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_315_params;
    biggemm_0_0_315_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_315_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 18)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_315_params.batch_size = 1;
    biggemm_0_0_315_params.batch_size_b = 1;
    biggemm_0_0_315_params.box_layout = true;
    biggemm_0_0_315_params.box_per_partition = false;
    biggemm_0_0_315_params.concat_group = true;
    biggemm_0_0_315_params.concat_group_par = 4;
    biggemm_0_0_315_params.connected_to_accumulator = false;
    biggemm_0_0_315_params.dbl_width = false;
    biggemm_0_0_315_params.disable_write_fronting_pmu = false;
    biggemm_0_0_315_params.dotproduct_gemm = false;
    biggemm_0_0_315_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_315_params.enable_gradient = false;
    biggemm_0_0_315_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_315_params.exclusive_vc_a = false;
    biggemm_0_0_315_params.external_input_a = true;
    biggemm_0_0_315_params.external_output_buffer = true;
    biggemm_0_0_315_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_315_params.num_col_compute_units = 2;
    biggemm_0_0_315_params.num_partitions = 1;
    biggemm_0_0_315_params.num_row_compute_units = 1;
    biggemm_0_0_315_params.seqID_base = 24;
    biggemm_0_0_315_params.set_exclusive_routes = false;
    biggemm_0_0_315_params.streaming_col_par = true;
    biggemm_0_0_315_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_315_params.wbuf_split = false;
    biggemm_0_0_315_params.write_done_used = false;
    biggemm_0_0_315_ = create_node<BigGemm>("biggemm_0_0_315", partition_0_0_, plasma_, biggemm_0_0_315_params);
    biggemm_0_0_315_->set_tile_id(-1);
    biggemm_0_0_315_->set_die_id(-1);
    biggemm_0_0_315_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_315_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_315_->set_metapipe_iterations({1});
    biggemm_0_0_315_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_316_params;
    biggemm_0_0_316_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_316_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 19)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_316_params.batch_size = 1;
    biggemm_0_0_316_params.batch_size_b = 1;
    biggemm_0_0_316_params.box_layout = true;
    biggemm_0_0_316_params.box_per_partition = false;
    biggemm_0_0_316_params.concat_group = true;
    biggemm_0_0_316_params.concat_group_par = 4;
    biggemm_0_0_316_params.connected_to_accumulator = false;
    biggemm_0_0_316_params.dbl_width = false;
    biggemm_0_0_316_params.disable_write_fronting_pmu = false;
    biggemm_0_0_316_params.dotproduct_gemm = false;
    biggemm_0_0_316_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_316_params.enable_gradient = false;
    biggemm_0_0_316_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_316_params.exclusive_vc_a = false;
    biggemm_0_0_316_params.external_input_a = true;
    biggemm_0_0_316_params.external_output_buffer = true;
    biggemm_0_0_316_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_316_params.num_col_compute_units = 2;
    biggemm_0_0_316_params.num_partitions = 1;
    biggemm_0_0_316_params.num_row_compute_units = 1;
    biggemm_0_0_316_params.seqID_base = 36;
    biggemm_0_0_316_params.set_exclusive_routes = false;
    biggemm_0_0_316_params.streaming_col_par = true;
    biggemm_0_0_316_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_316_params.wbuf_split = false;
    biggemm_0_0_316_params.write_done_used = false;
    biggemm_0_0_316_ = create_node<BigGemm>("biggemm_0_0_316", partition_0_0_, plasma_, biggemm_0_0_316_params);
    biggemm_0_0_316_->set_tile_id(-1);
    biggemm_0_0_316_->set_die_id(-1);
    biggemm_0_0_316_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_316_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_316_->set_metapipe_iterations({1});
    biggemm_0_0_316_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_317_params;
    biggemm_0_0_317_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_317_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 20)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_317_params.batch_size = 1;
    biggemm_0_0_317_params.batch_size_b = 1;
    biggemm_0_0_317_params.box_layout = true;
    biggemm_0_0_317_params.box_per_partition = false;
    biggemm_0_0_317_params.concat_group = true;
    biggemm_0_0_317_params.concat_group_par = 2;
    biggemm_0_0_317_params.connected_to_accumulator = false;
    biggemm_0_0_317_params.dbl_width = false;
    biggemm_0_0_317_params.disable_write_fronting_pmu = false;
    biggemm_0_0_317_params.dotproduct_gemm = false;
    biggemm_0_0_317_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_317_params.enable_gradient = false;
    biggemm_0_0_317_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_317_params.exclusive_vc_a = false;
    biggemm_0_0_317_params.external_input_a = true;
    biggemm_0_0_317_params.external_output_buffer = true;
    biggemm_0_0_317_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_317_params.num_col_compute_units = 2;
    biggemm_0_0_317_params.num_partitions = 1;
    biggemm_0_0_317_params.num_row_compute_units = 1;
    biggemm_0_0_317_params.seqID_base = 0;
    biggemm_0_0_317_params.set_exclusive_routes = false;
    biggemm_0_0_317_params.streaming_col_par = true;
    biggemm_0_0_317_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_317_params.wbuf_split = false;
    biggemm_0_0_317_params.write_done_used = false;
    biggemm_0_0_317_ = create_node<BigGemm>("biggemm_0_0_317", partition_0_0_, plasma_, biggemm_0_0_317_params);
    biggemm_0_0_317_->set_tile_id(-1);
    biggemm_0_0_317_->set_die_id(-1);
    biggemm_0_0_317_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_317_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_317_->set_metapipe_iterations({1});
    biggemm_0_0_317_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_0_0_318_params;
    biggemm_0_0_318_params.A_layout = sbuf2u_0_0_295_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_318_params.B_layout = split_kernel_gbuf_0_0_296_->result_layout(GBuffer::get_head_output(1, 21)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_318_params.batch_size = 1;
    biggemm_0_0_318_params.batch_size_b = 1;
    biggemm_0_0_318_params.box_layout = true;
    biggemm_0_0_318_params.box_per_partition = false;
    biggemm_0_0_318_params.concat_group = true;
    biggemm_0_0_318_params.concat_group_par = 2;
    biggemm_0_0_318_params.connected_to_accumulator = false;
    biggemm_0_0_318_params.dbl_width = false;
    biggemm_0_0_318_params.disable_write_fronting_pmu = false;
    biggemm_0_0_318_params.dotproduct_gemm = false;
    biggemm_0_0_318_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_318_params.enable_gradient = false;
    biggemm_0_0_318_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_318_params.exclusive_vc_a = false;
    biggemm_0_0_318_params.external_input_a = true;
    biggemm_0_0_318_params.external_output_buffer = true;
    biggemm_0_0_318_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_318_params.num_col_compute_units = 2;
    biggemm_0_0_318_params.num_partitions = 1;
    biggemm_0_0_318_params.num_row_compute_units = 1;
    biggemm_0_0_318_params.seqID_base = 12;
    biggemm_0_0_318_params.set_exclusive_routes = false;
    biggemm_0_0_318_params.streaming_col_par = true;
    biggemm_0_0_318_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_318_params.wbuf_split = false;
    biggemm_0_0_318_params.write_done_used = false;
    biggemm_0_0_318_ = create_node<BigGemm>("biggemm_0_0_318", partition_0_0_, plasma_, biggemm_0_0_318_params);
    biggemm_0_0_318_->set_tile_id(-1);
    biggemm_0_0_318_->set_die_id(-1);
    biggemm_0_0_318_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    biggemm_0_0_318_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_318_->set_metapipe_iterations({1});
    biggemm_0_0_318_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_0_0_321_params;
    gbuf2u_0_0_321_params.allow_pob = false;
    gbuf2u_0_0_321_params.concat = GBuffer::kConcatN;
    gbuf2u_0_0_321_params.fronting_group = 4;
    gbuf2u_0_0_321_params.fronting_group_int_col_par_vectors = 12;
    gbuf2u_0_0_321_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_321_params.head1_linear = true;
    gbuf2u_0_0_321_params.head1_p2p = false;
    gbuf2u_0_0_321_params.head1_streaming_window = true;
    gbuf2u_0_0_321_params.head_1_depth = 2;
    gbuf2u_0_0_321_params.layout = biggemm_0_0_297_->result_layout(BigGemm::kOutput).at_address(0).with_logical_shape({1, 256}).at_address(0);
    gbuf2u_0_0_321_params.num_head1_rd_en = 2;
    gbuf2u_0_0_321_params.num_iterations = 1;
    gbuf2u_0_0_321_params.write_group_layouts = {biggemm_0_0_297_->result_layouts(BigGemm::kOutput), biggemm_0_0_298_->result_layouts(BigGemm::kOutput), biggemm_0_0_299_->result_layouts(BigGemm::kOutput), biggemm_0_0_300_->result_layouts(BigGemm::kOutput), biggemm_0_0_301_->result_layouts(BigGemm::kOutput), biggemm_0_0_302_->result_layouts(BigGemm::kOutput), biggemm_0_0_303_->result_layouts(BigGemm::kOutput), biggemm_0_0_304_->result_layouts(BigGemm::kOutput), biggemm_0_0_305_->result_layouts(BigGemm::kOutput), biggemm_0_0_306_->result_layouts(BigGemm::kOutput), biggemm_0_0_307_->result_layouts(BigGemm::kOutput), biggemm_0_0_308_->result_layouts(BigGemm::kOutput), biggemm_0_0_309_->result_layouts(BigGemm::kOutput), biggemm_0_0_310_->result_layouts(BigGemm::kOutput), biggemm_0_0_311_->result_layouts(BigGemm::kOutput), biggemm_0_0_312_->result_layouts(BigGemm::kOutput), biggemm_0_0_313_->result_layouts(BigGemm::kOutput), biggemm_0_0_314_->result_layouts(BigGemm::kOutput), biggemm_0_0_315_->result_layouts(BigGemm::kOutput), biggemm_0_0_316_->result_layouts(BigGemm::kOutput), biggemm_0_0_317_->result_layouts(BigGemm::kOutput), biggemm_0_0_318_->result_layouts(BigGemm::kOutput)};
    gbuf2u_0_0_321_params.write_group_partitions = {biggemm_0_0_297_->num_partitions(), biggemm_0_0_298_->num_partitions(), biggemm_0_0_299_->num_partitions(), biggemm_0_0_300_->num_partitions(), biggemm_0_0_301_->num_partitions(), biggemm_0_0_302_->num_partitions(), biggemm_0_0_303_->num_partitions(), biggemm_0_0_304_->num_partitions(), biggemm_0_0_305_->num_partitions(), biggemm_0_0_306_->num_partitions(), biggemm_0_0_307_->num_partitions(), biggemm_0_0_308_->num_partitions(), biggemm_0_0_309_->num_partitions(), biggemm_0_0_310_->num_partitions(), biggemm_0_0_311_->num_partitions(), biggemm_0_0_312_->num_partitions(), biggemm_0_0_313_->num_partitions(), biggemm_0_0_314_->num_partitions(), biggemm_0_0_315_->num_partitions(), biggemm_0_0_316_->num_partitions(), biggemm_0_0_317_->num_partitions(), biggemm_0_0_318_->num_partitions()};
    gbuf2u_0_0_321_params.write_layouts_spread = true;
    gbuf2u_0_0_321_params.write_time_concat = true;
    gbuf2u_0_0_321_params.write_time_concat_slices = {12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 4};
    gbuf2u_0_0_321_ = create_node<GBuffer>("gbuf2u_0_0_321", partition_0_0_, plasma_, gbuf2u_0_0_321_params);
    gbuf2u_0_0_321_->set_tile_id(-1);
    gbuf2u_0_0_321_->set_die_id(-1);
    gbuf2u_0_0_321_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    gbuf2u_0_0_321_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_321_->set_metapipe_iterations({1});
    gbuf2u_0_0_321_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BiasTransposeAdd::Params bias_transpose_add_0_0_322_params;
    bias_transpose_add_0_0_322_params.batch_size = 1;
    bias_transpose_add_0_0_322_params.bias_layout = params_.ptconvcnn__conv_layer__bias_0_0_110.at_address(0);
    bias_transpose_add_0_0_322_params.input_layout = gbuf2u_0_0_321_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    bias_transpose_add_0_0_322_ = create_node<BiasTransposeAdd>("bias_transpose_add_0_0_322", partition_0_0_, plasma_, bias_transpose_add_0_0_322_params);
    bias_transpose_add_0_0_322_->set_tile_id(-1);
    bias_transpose_add_0_0_322_->set_die_id(-1);
    bias_transpose_add_0_0_322_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    bias_transpose_add_0_0_322_->set_mac_latency(-1.000000e+00);
    bias_transpose_add_0_0_322_->set_metapipe_iterations({1});
    bias_transpose_add_0_0_322_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    StreamingTranspose::Params streaming_transpose_0_0_323_params;
    streaming_transpose_0_0_323_params.cvrm_to_dvdm3d_atom_wise_transpose = true;
    streaming_transpose_0_0_323_params.dvdm_image_h = 1;
    streaming_transpose_0_0_323_params.dvdm_image_w = 1;
    streaming_transpose_0_0_323_params.image_layout = bias_transpose_add_0_0_322_->result_layout().at_address(0);
    streaming_transpose_0_0_323_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::CVRM_To_DVDM;
    streaming_transpose_0_0_323_ = create_node<StreamingTranspose>("streaming_transpose_0_0_323", partition_0_0_, plasma_, streaming_transpose_0_0_323_params);
    streaming_transpose_0_0_323_->set_tile_id(-1);
    streaming_transpose_0_0_323_->set_die_id(-1);
    streaming_transpose_0_0_323_->set_mac_id("ptconvcnn__conv_layer__conv2d");
    streaming_transpose_0_0_323_->set_mac_latency(-1.000000e+00);
    streaming_transpose_0_0_323_->set_metapipe_iterations({1});
    streaming_transpose_0_0_323_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_0_0_206_params;
    gbuf2u_0_0_206_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_206_params.head1_linear = true;
    gbuf2u_0_0_206_params.head1_p2p = false;
    gbuf2u_0_0_206_params.head1_streaming_window = true;
    gbuf2u_0_0_206_params.head_1_depth = 2;
    gbuf2u_0_0_206_params.layout = streaming_transpose_0_0_323_->result_layout().at_address(0);
    gbuf2u_0_0_206_params.num_head1_rd_en = 4;
    gbuf2u_0_0_206_params.num_iterations = 1;
    gbuf2u_0_0_206_ = create_node<GBuffer>("gbuf2u_0_0_206", partition_0_0_, plasma_, gbuf2u_0_0_206_params);
    gbuf2u_0_0_206_->set_tile_id(-1);
    gbuf2u_0_0_206_->set_die_id(-1);
    gbuf2u_0_0_206_->set_mac_id("default_206");
    gbuf2u_0_0_206_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_206_->set_metapipe_iterations({1});
    gbuf2u_0_0_206_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__reshape_2_params;
    ptconvcnn__conv_layer__reshape_2_params.input_layout = gbuf2u_0_0_206_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__conv_layer__reshape_2_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    ptconvcnn__conv_layer__reshape_2_params.reshape = {256, 1};
    ptconvcnn__conv_layer__reshape_2_ = create_node<ReshapeView>("ptconvcnn__conv_layer__reshape_2", partition_0_0_, plasma_, ptconvcnn__conv_layer__reshape_2_params);
    ptconvcnn__conv_layer__reshape_2_->set_tile_id(-1);
    ptconvcnn__conv_layer__reshape_2_->set_die_id(-1);
    ptconvcnn__conv_layer__reshape_2_->set_mac_id("ptconvcnn__conv_layer__reshape_2");
    ptconvcnn__conv_layer__reshape_2_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__reshape_2_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__reshape_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_0_0_208_params;
    gbuf2u_0_0_208_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_208_params.head1_linear = false;
    gbuf2u_0_0_208_params.head1_p2p = false;
    gbuf2u_0_0_208_params.head_1_depth = 2;
    gbuf2u_0_0_208_params.layout = ptconvcnn__conv_layer__reshape_2_->result_layout();
    gbuf2u_0_0_208_params.num_head1_rd_en = 2;
    gbuf2u_0_0_208_params.num_iterations = 1;
    gbuf2u_0_0_208_ = create_node<GBuffer>("gbuf2u_0_0_208", partition_0_0_, plasma_, gbuf2u_0_0_208_params);
    gbuf2u_0_0_208_->set_tile_id(-1);
    gbuf2u_0_0_208_->set_die_id(-1);
    gbuf2u_0_0_208_->set_mac_id("default_208");
    gbuf2u_0_0_208_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_208_->set_metapipe_iterations({1});
    gbuf2u_0_0_208_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params ptconvcnn__dense_layer__linear_params;
    ptconvcnn__dense_layer__linear_params.A_layout = params_.ptconvcnn__dense_layer__weight_0_0_114.with_vector_transpose(true);
    ptconvcnn__dense_layer__linear_params.B_layout = gbuf2u_0_0_208_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvcnn__dense_layer__linear_params.batch_size = 1;
    ptconvcnn__dense_layer__linear_params.batch_size_b = 1;
    ptconvcnn__dense_layer__linear_params.box_layout = true;
    ptconvcnn__dense_layer__linear_params.box_per_partition = true;
    ptconvcnn__dense_layer__linear_params.connected_to_accumulator = false;
    ptconvcnn__dense_layer__linear_params.dbl_width = false;
    ptconvcnn__dense_layer__linear_params.disable_write_fronting_pmu = false;
    ptconvcnn__dense_layer__linear_params.dotproduct_gemm = false;
    ptconvcnn__dense_layer__linear_params.dotproduct_gemm_bf16_output = false;
    ptconvcnn__dense_layer__linear_params.enable_gradient = false;
    ptconvcnn__dense_layer__linear_params.enable_seqID_pacing_interval = true;
    ptconvcnn__dense_layer__linear_params.exclusive_vc_a = false;
    ptconvcnn__dense_layer__linear_params.external_input_a = false;
    ptconvcnn__dense_layer__linear_params.external_output_buffer = true;
    ptconvcnn__dense_layer__linear_params.maximum_fwd_b_fanout = 32;
    ptconvcnn__dense_layer__linear_params.no_reload_weight = false;
    ptconvcnn__dense_layer__linear_params.num_col_compute_units = 1;
    ptconvcnn__dense_layer__linear_params.num_partitions = 4;
    ptconvcnn__dense_layer__linear_params.num_row_compute_units = 32;
    ptconvcnn__dense_layer__linear_params.seqID_base = 0;
    ptconvcnn__dense_layer__linear_params.set_exclusive_routes = false;
    ptconvcnn__dense_layer__linear_params.streaming_col_par = false;
    ptconvcnn__dense_layer__linear_params.use_wbuf_transpose_atom_move = false;
    ptconvcnn__dense_layer__linear_params.wbuf_split = false;
    ptconvcnn__dense_layer__linear_params.write_done_used = false;
    ptconvcnn__dense_layer__linear_ = create_node<BigGemm>("ptconvcnn__dense_layer__linear", partition_0_0_, plasma_, ptconvcnn__dense_layer__linear_params);
    ptconvcnn__dense_layer__linear_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_->set_mac_id("ptconvcnn__dense_layer__linear");
    ptconvcnn__dense_layer__linear_->set_mac_latency(4.570000e+02);
    ptconvcnn__dense_layer__linear_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_393_params;
    gbuf1a_0_0_393_params.head1_linear = true;
    gbuf1a_0_0_393_params.head1_p2p = false;
    gbuf1a_0_0_393_params.head_1_depth = 1;
    gbuf1a_0_0_393_params.layout = ptconvcnn__dense_layer__linear_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_0_0_393_params.num_iterations = 1;
    gbuf1a_0_0_393_params.write_group_layouts = {ptconvcnn__dense_layer__linear_->result_layouts(BigGemm::kOutput)};
    gbuf1a_0_0_393_params.write_group_partitions = {ptconvcnn__dense_layer__linear_->num_partitions()};
    gbuf1a_0_0_393_ = create_node<GBuffer>("gbuf1a_0_0_393", partition_0_0_, plasma_, gbuf1a_0_0_393_params);
    gbuf1a_0_0_393_->set_tile_id(-1);
    gbuf1a_0_0_393_->set_die_id(-1);
    gbuf1a_0_0_393_->set_mac_id("default_393");
    gbuf1a_0_0_393_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_393_->set_metapipe_iterations({1});
    gbuf1a_0_0_393_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BiasAdd::Params bias_add_0_0_390_params;
    bias_add_0_0_390_params.batch_size = 1;
    bias_add_0_0_390_params.layout_bias = params_.ptconvcnn__dense_layer__bias_0_0_115;
    bias_add_0_0_390_params.layout_input = {gbuf1a_0_0_393_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0)};
    bias_add_0_0_390_params.no_reload_bias = false;
    bias_add_0_0_390_params.wbuf_split = false;
    bias_add_0_0_390_ = create_node<BiasAdd>("bias_add_0_0_390", partition_0_0_, plasma_, bias_add_0_0_390_params);
    bias_add_0_0_390_->set_tile_id(-1);
    bias_add_0_0_390_->set_die_id(-1);
    bias_add_0_0_390_->set_mac_id("default_390");
    bias_add_0_0_390_->set_mac_latency(-1.000000e+00);
    bias_add_0_0_390_->set_metapipe_iterations({1});
    bias_add_0_0_390_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_0_0_210_params;
    gbuf2u_0_0_210_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_210_params.head1_linear = true;
    gbuf2u_0_0_210_params.head1_p2p = false;
    gbuf2u_0_0_210_params.head1_streaming_window = true;
    gbuf2u_0_0_210_params.head_1_depth = 2;
    gbuf2u_0_0_210_params.layout = bias_add_0_0_390_->result_layout(BiasAdd::Output::kOutput).at_address(0);
    gbuf2u_0_0_210_params.num_head1_rd_en = 2;
    gbuf2u_0_0_210_params.num_iterations = 1;
    gbuf2u_0_0_210_ = create_node<GBuffer>("gbuf2u_0_0_210", partition_0_0_, plasma_, gbuf2u_0_0_210_params);
    gbuf2u_0_0_210_->set_tile_id(-1);
    gbuf2u_0_0_210_->set_die_id(-1);
    gbuf2u_0_0_210_->set_mac_id("default_210");
    gbuf2u_0_0_210_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_210_->set_metapipe_iterations({1});
    gbuf2u_0_0_210_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    LayoutCast::Params layout_cast_0_0_438_params;
    layout_cast_0_0_438_params.checked = false;
    layout_cast_0_0_438_params.input_layout = gbuf2u_0_0_210_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    layout_cast_0_0_438_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 0).vector_align();
    layout_cast_0_0_438_ = create_node<LayoutCast>("layout_cast_0_0_438", partition_0_0_, plasma_, layout_cast_0_0_438_params);
    layout_cast_0_0_438_->set_tile_id(-1);
    layout_cast_0_0_438_->set_die_id(-1);
    layout_cast_0_0_438_->set_mac_id("default_438");
    layout_cast_0_0_438_->set_mac_latency(-1.000000e+00);
    layout_cast_0_0_438_->set_metapipe_iterations({1});
    layout_cast_0_0_438_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvcnn__dense_layer__linear_t_output0_params;
    ptconvcnn__dense_layer__linear_t_output0_params.input_layout = layout_cast_0_0_438_->result_layout();
    ptconvcnn__dense_layer__linear_t_output0_params.permute = {1, 0};
    ptconvcnn__dense_layer__linear_t_output0_ = create_node<PermuteView>("ptconvcnn__dense_layer__linear_t_output0", partition_0_0_, plasma_, ptconvcnn__dense_layer__linear_t_output0_params);
    ptconvcnn__dense_layer__linear_t_output0_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_t_output0_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_t_output0_->set_mac_id("ptconvcnn__dense_layer__linear_t_output0");
    ptconvcnn__dense_layer__linear_t_output0_->set_mac_latency(0.000000e+00);
    ptconvcnn__dense_layer__linear_t_output0_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_t_output0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_440_params;
    gbuf2a_0_0_440_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_440_params.head0_linear = true;
    gbuf2a_0_0_440_params.head0_p2p = false;
    gbuf2a_0_0_440_params.head0_streaming_window = true;
    gbuf2a_0_0_440_params.head1_ctrl_flow_enable = true;
    gbuf2a_0_0_440_params.head1_linear = true;
    gbuf2a_0_0_440_params.head1_p2p = false;
    gbuf2a_0_0_440_params.head1_streaming_window = true;
    gbuf2a_0_0_440_params.head_0_depth = 2;
    gbuf2a_0_0_440_params.head_1_depth = 2;
    gbuf2a_0_0_440_params.layout = ptconvcnn__dense_layer__linear_t_output0_->result_layout();
    gbuf2a_0_0_440_params.num_head0_rd_en = 2;
    gbuf2a_0_0_440_params.num_head1_rd_en = 2;
    gbuf2a_0_0_440_params.num_iterations = 1;
    gbuf2a_0_0_440_ = create_node<GBuffer>("gbuf2a_0_0_440", partition_0_0_, plasma_, gbuf2a_0_0_440_params);
    gbuf2a_0_0_440_->set_tile_id(-1);
    gbuf2a_0_0_440_->set_die_id(-1);
    gbuf2a_0_0_440_->set_mac_id("default_440");
    gbuf2a_0_0_440_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_440_->set_metapipe_iterations({1});
    gbuf2a_0_0_440_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__reshape_params;
    ptconvcnn__reshape_params.input_layout = gbuf2a_0_0_440_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvcnn__reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0}, 0).vector_align();
    ptconvcnn__reshape_params.reshape = {4080};
    ptconvcnn__reshape_ = create_node<ReshapeView>("ptconvcnn__reshape", partition_0_0_, plasma_, ptconvcnn__reshape_params);
    ptconvcnn__reshape_->set_tile_id(-1);
    ptconvcnn__reshape_->set_die_id(-1);
    ptconvcnn__reshape_->set_mac_id("ptconvcnn__reshape");
    ptconvcnn__reshape_->set_mac_latency(1.300000e+01);
    ptconvcnn__reshape_->set_metapipe_iterations({1});
    ptconvcnn__reshape_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__view_params;
    ptconvcnn__view_params.input_layout = gbuf2a_0_0_440_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__view_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).align({{-2,64}});
    ptconvcnn__view_params.reshape = {30, 136};
    ptconvcnn__view_ = create_node<ReshapeView>("ptconvcnn__view", partition_0_0_, plasma_, ptconvcnn__view_params);
    ptconvcnn__view_->set_tile_id(-1);
    ptconvcnn__view_->set_die_id(-1);
    ptconvcnn__view_->set_mac_id("ptconvcnn__view");
    ptconvcnn__view_->set_mac_latency(1.300000e+01);
    ptconvcnn__view_->set_metapipe_iterations({1});
    ptconvcnn__view_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_397_params;
    gbuf2a_0_0_397_params.head1_linear = false;
    gbuf2a_0_0_397_params.head1_p2p = false;
    gbuf2a_0_0_397_params.head_1_depth = 2;
    gbuf2a_0_0_397_params.layout = ptconvcnn__conv_layer__reshape_2_->result_layout();
    gbuf2a_0_0_397_params.num_iterations = 1;
    gbuf2a_0_0_397_ = create_node<GBuffer>("gbuf2a_0_0_397", partition_0_0_, plasma_, gbuf2a_0_0_397_params);
    gbuf2a_0_0_397_->set_tile_id(-1);
    gbuf2a_0_0_397_->set_die_id(-1);
    gbuf2a_0_0_397_->set_mac_id("default_397");
    gbuf2a_0_0_397_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_397_->set_metapipe_iterations({1});
    gbuf2a_0_0_397_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_441_params;
    gbuf2a_0_0_441_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_441_params.head0_linear = true;
    gbuf2a_0_0_441_params.head0_p2p = false;
    gbuf2a_0_0_441_params.head0_streaming_window = true;
    gbuf2a_0_0_441_params.head1_linear = false;
    gbuf2a_0_0_441_params.head1_p2p = false;
    gbuf2a_0_0_441_params.head_0_depth = 2;
    gbuf2a_0_0_441_params.head_1_depth = 2;
    gbuf2a_0_0_441_params.layout = ptconvcnn__reshape_->result_layout();
    gbuf2a_0_0_441_params.num_head0_rd_en = 2;
    gbuf2a_0_0_441_params.num_iterations = 1;
    gbuf2a_0_0_441_ = create_node<GBuffer>("gbuf2a_0_0_441", partition_0_0_, plasma_, gbuf2a_0_0_441_params);
    gbuf2a_0_0_441_->set_tile_id(-1);
    gbuf2a_0_0_441_->set_die_id(-1);
    gbuf2a_0_0_441_->set_mac_id("default_441");
    gbuf2a_0_0_441_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_441_->set_metapipe_iterations({1});
    gbuf2a_0_0_441_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_399_params;
    gbuf2a_0_0_399_params.head1_linear = false;
    gbuf2a_0_0_399_params.head1_p2p = false;
    gbuf2a_0_0_399_params.head_1_depth = 2;
    gbuf2a_0_0_399_params.layout = ptconvcnn__view_->result_layout();
    gbuf2a_0_0_399_params.num_iterations = 1;
    gbuf2a_0_0_399_ = create_node<GBuffer>("gbuf2a_0_0_399", partition_0_0_, plasma_, gbuf2a_0_0_399_params);
    gbuf2a_0_0_399_->set_tile_id(-1);
    gbuf2a_0_0_399_->set_die_id(-1);
    gbuf2a_0_0_399_->set_mac_id("default_399");
    gbuf2a_0_0_399_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_399_->set_metapipe_iterations({1});
    gbuf2a_0_0_399_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_432_params;
    gbuf2a_0_0_432_params.head1_linear = true;
    gbuf2a_0_0_432_params.head1_p2p = false;
    gbuf2a_0_0_432_params.head_1_depth = 2;
    gbuf2a_0_0_432_params.layout = gbuf2a_0_0_441_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0).with_logical_shape({1, 4080}).at_address(0);
    gbuf2a_0_0_432_params.num_iterations = 1;
    gbuf2a_0_0_432_ = create_node<GBuffer>("gbuf2a_0_0_432", partition_0_0_, plasma_, gbuf2a_0_0_432_params);
    gbuf2a_0_0_432_->set_tile_id(-1);
    gbuf2a_0_0_432_->set_die_id(-1);
    gbuf2a_0_0_432_->set_mac_id("default_432");
    gbuf2a_0_0_432_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_432_->set_metapipe_iterations({1});
    gbuf2a_0_0_432_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_431_params;
    gbuf1a_0_0_431_params.enable_fronting_pmu = true;
    gbuf1a_0_0_431_params.head1_linear = true;
    gbuf1a_0_0_431_params.head1_p2p = false;
    gbuf1a_0_0_431_params.head_1_depth = 1;
    gbuf1a_0_0_431_params.layout = params_.out_window_0_0_104.at_address(0);
    gbuf1a_0_0_431_params.loaded_by_broadcast = false;
    gbuf1a_0_0_431_params.num_iterations = 1;
    gbuf1a_0_0_431_ = create_node<GBuffer>("gbuf1a_0_0_431", partition_0_0_, plasma_, gbuf1a_0_0_431_params);
    gbuf1a_0_0_431_->set_tile_id(-1);
    gbuf1a_0_0_431_->set_die_id(-1);
    gbuf1a_0_0_431_->set_mac_id("default_431");
    gbuf1a_0_0_431_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_431_->set_metapipe_iterations({1});
    gbuf1a_0_0_431_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Realign::Params realign_0_0_418_params;
    realign_0_0_418_params.depth = 4;
    realign_0_0_418_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2);
    realign_0_0_418_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).align({{-2,64}});
    realign_0_0_418_params.upstream_pacing = true;
    realign_0_0_418_params.upstream_pacing_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).with_logical_shape({1, 30, 136}).at_address(0);
    realign_0_0_418_ = create_node<Realign>("realign_0_0_418", partition_0_0_, plasma_, realign_0_0_418_params);
    realign_0_0_418_->set_tile_id(-1);
    realign_0_0_418_->set_die_id(-1);
    realign_0_0_418_->set_mac_id("default_418");
    realign_0_0_418_->set_mac_latency(-1.000000e+00);
    realign_0_0_418_->set_metapipe_iterations({1});
    realign_0_0_418_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_400_params;
    gbuf1a_0_0_400_params.head1_linear = true;
    gbuf1a_0_0_400_params.head1_p2p = false;
    gbuf1a_0_0_400_params.head_1_depth = 1;
    gbuf1a_0_0_400_params.layout = realign_0_0_418_->result_layout().at_address(0);
    gbuf1a_0_0_400_params.num_iterations = 1;
    gbuf1a_0_0_400_ = create_node<GBuffer>("gbuf1a_0_0_400", partition_0_0_, plasma_, gbuf1a_0_0_400_params);
    gbuf1a_0_0_400_->set_tile_id(-1);
    gbuf1a_0_0_400_->set_die_id(-1);
    gbuf1a_0_0_400_->set_mac_id("default_400");
    gbuf1a_0_0_400_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_400_->set_metapipe_iterations({1});
    gbuf1a_0_0_400_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__reshape_1_params;
    ptconvcnn__reshape_1_params.input_layout = gbuf1a_0_0_400_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__reshape_1_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    ptconvcnn__reshape_1_params.reshape = {1, 4080};
    ptconvcnn__reshape_1_ = create_node<ReshapeView>("ptconvcnn__reshape_1", partition_0_0_, plasma_, ptconvcnn__reshape_1_params);
    ptconvcnn__reshape_1_->set_tile_id(-1);
    ptconvcnn__reshape_1_->set_die_id(-1);
    ptconvcnn__reshape_1_->set_mac_id("ptconvcnn__reshape_1");
    ptconvcnn__reshape_1_->set_mac_latency(1.300000e+01);
    ptconvcnn__reshape_1_->set_metapipe_iterations({1});
    ptconvcnn__reshape_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BinaryOps::Params sub_0_0_330_params;
    sub_0_0_330_params.layout_a = gbuf2a_0_0_432_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    sub_0_0_330_params.layout_b = ptconvcnn__reshape_1_->result_layout();
    sub_0_0_330_params.op = node_constants::TemplateOpcodes::kSub;
    sub_0_0_330_params.streaming_a = true;
    sub_0_0_330_params.streaming_b = true;
    sub_0_0_330_ = create_node<BinaryOps>("sub_0_0_330", partition_0_0_, plasma_, sub_0_0_330_params);
    sub_0_0_330_->set_tile_id(-1);
    sub_0_0_330_->set_die_id(-1);
    sub_0_0_330_->set_mac_id("default_70");
    sub_0_0_330_->set_mac_latency(3.190000e+02);
    sub_0_0_330_->set_metapipe_iterations({1});
    sub_0_0_330_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_442_params;
    gbuf1a_0_0_442_params.head0_linear = true;
    gbuf1a_0_0_442_params.head0_p2p = false;
    gbuf1a_0_0_442_params.head1_linear = true;
    gbuf1a_0_0_442_params.head1_p2p = false;
    gbuf1a_0_0_442_params.head_0_depth = 1;
    gbuf1a_0_0_442_params.head_1_depth = 1;
    gbuf1a_0_0_442_params.layout = sub_0_0_330_->result_layout().at_address(0);
    gbuf1a_0_0_442_params.num_iterations = 1;
    gbuf1a_0_0_442_ = create_node<GBuffer>("gbuf1a_0_0_442", partition_0_0_, plasma_, gbuf1a_0_0_442_params);
    gbuf1a_0_0_442_->set_tile_id(-1);
    gbuf1a_0_0_442_->set_die_id(-1);
    gbuf1a_0_0_442_->set_mac_id("default_442");
    gbuf1a_0_0_442_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_442_->set_metapipe_iterations({1});
    gbuf1a_0_0_442_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BinaryOps::Params mul_0_0_331_params;
    mul_0_0_331_params.layout_a = gbuf1a_0_0_442_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    mul_0_0_331_params.layout_b = gbuf1a_0_0_442_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    mul_0_0_331_params.op = node_constants::TemplateOpcodes::kMul;
    mul_0_0_331_params.streaming_a = true;
    mul_0_0_331_params.streaming_b = true;
    mul_0_0_331_ = create_node<BinaryOps>("mul_0_0_331", partition_0_0_, plasma_, mul_0_0_331_params);
    mul_0_0_331_->set_tile_id(-1);
    mul_0_0_331_->set_die_id(-1);
    mul_0_0_331_->set_mac_id("default_71");
    mul_0_0_331_->set_mac_latency(3.190000e+02);
    mul_0_0_331_->set_metapipe_iterations({1});
    mul_0_0_331_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    MeanUnalign::Params mean_unalign_0_0_332_params;
    mean_unalign_0_0_332_params.layout = mul_0_0_331_->result_layout().at_address(0);
    mean_unalign_0_0_332_params.op = node_constants::TemplateOpcodes::kMeanUnalign;
    mean_unalign_0_0_332_params.streaming = true;
    mean_unalign_0_0_332_ = create_node<MeanUnalign>("mean_unalign_0_0_332", partition_0_0_, plasma_, mean_unalign_0_0_332_params);
    mean_unalign_0_0_332_->set_tile_id(-1);
    mean_unalign_0_0_332_->set_die_id(-1);
    mean_unalign_0_0_332_->set_mac_id("default_72");
    mean_unalign_0_0_332_->set_mac_latency(3.190000e+02);
    mean_unalign_0_0_332_->set_metapipe_iterations({1});
    mean_unalign_0_0_332_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_401_params;
    gbuf1a_0_0_401_params.head1_linear = false;
    gbuf1a_0_0_401_params.head1_p2p = false;
    gbuf1a_0_0_401_params.head_1_depth = 1;
    gbuf1a_0_0_401_params.layout = mean_unalign_0_0_332_->result_layout().at_address(0);
    gbuf1a_0_0_401_params.num_iterations = 1;
    gbuf1a_0_0_401_ = create_node<GBuffer>("gbuf1a_0_0_401", partition_0_0_, plasma_, gbuf1a_0_0_401_params);
    gbuf1a_0_0_401_->set_tile_id(-1);
    gbuf1a_0_0_401_->set_die_id(-1);
    gbuf1a_0_0_401_->set_mac_id("default_401");
    gbuf1a_0_0_401_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_401_->set_metapipe_iterations({1});
    gbuf1a_0_0_401_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<PartitionNode>("partition_1_0_", this, plasma_, 1, 0);
    mlir::rail::RAIL::rail->create_section(partition_1_0_);
    
    partition_1_0_->set_section_latency(7.827415e-05);
    GBuffer::Params gbuf2u_1_0_226_params;
    gbuf2u_1_0_226_params.enable_fronting_pmu = true;
    gbuf2u_1_0_226_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_226_params.head1_linear = true;
    gbuf2u_1_0_226_params.head1_p2p = false;
    gbuf2u_1_0_226_params.head1_streaming_window = true;
    gbuf2u_1_0_226_params.head_1_depth = 2;
    gbuf2u_1_0_226_params.layout = params_.ptconvcnn__view__outputs__0__grad_1_0_269.at_address(0);
    gbuf2u_1_0_226_params.loaded_by_broadcast = false;
    gbuf2u_1_0_226_params.num_head1_rd_en = 4;
    gbuf2u_1_0_226_params.num_iterations = 1;
    gbuf2u_1_0_226_ = create_node<GBuffer>("gbuf2u_1_0_226", partition_1_0_, plasma_, gbuf2u_1_0_226_params);
    gbuf2u_1_0_226_->set_tile_id(-1);
    gbuf2u_1_0_226_->set_die_id(-1);
    gbuf2u_1_0_226_->set_mac_id("default_226");
    gbuf2u_1_0_226_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_226_->set_metapipe_iterations({1});
    gbuf2u_1_0_226_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__view_bwd_params;
    ptconvcnn__view_bwd_params.input_layout = gbuf2u_1_0_226_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__view_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    ptconvcnn__view_bwd_params.reshape = {1, 4080};
    ptconvcnn__view_bwd_ = create_node<ReshapeView>("ptconvcnn__view_bwd", partition_1_0_, plasma_, ptconvcnn__view_bwd_params);
    ptconvcnn__view_bwd_->set_tile_id(-1);
    ptconvcnn__view_bwd_->set_die_id(-1);
    ptconvcnn__view_bwd_->set_mac_id("ptconvcnn__view_bwd");
    ptconvcnn__view_bwd_->set_mac_latency(1.300000e+01);
    ptconvcnn__view_bwd_->set_metapipe_iterations({1});
    ptconvcnn__view_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_229_params;
    gbuf2u_1_0_229_params.enable_fronting_pmu = true;
    gbuf2u_1_0_229_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_229_params.head1_linear = true;
    gbuf2u_1_0_229_params.head1_p2p = false;
    gbuf2u_1_0_229_params.head_1_depth = 2;
    gbuf2u_1_0_229_params.layout = params_.out_window_1_0_270.at_address(0);
    gbuf2u_1_0_229_params.loaded_by_broadcast = false;
    gbuf2u_1_0_229_params.num_head1_rd_en = 2;
    gbuf2u_1_0_229_params.num_iterations = 1;
    gbuf2u_1_0_229_ = create_node<GBuffer>("gbuf2u_1_0_229", partition_1_0_, plasma_, gbuf2u_1_0_229_params);
    gbuf2u_1_0_229_->set_tile_id(-1);
    gbuf2u_1_0_229_->set_die_id(-1);
    gbuf2u_1_0_229_->set_mac_id("default_229");
    gbuf2u_1_0_229_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_229_->set_metapipe_iterations({1});
    gbuf2u_1_0_229_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__reshape_1_recompute__params;
    ptconvcnn__reshape_1_recompute__params.input_layout = gbuf2u_1_0_229_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__reshape_1_recompute__params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0}, 0).vector_align();
    ptconvcnn__reshape_1_recompute__params.reshape = {4080};
    ptconvcnn__reshape_1_recompute__ = create_node<ReshapeView>("ptconvcnn__reshape_1_recompute_", partition_1_0_, plasma_, ptconvcnn__reshape_1_recompute__params);
    ptconvcnn__reshape_1_recompute__->set_tile_id(-1);
    ptconvcnn__reshape_1_recompute__->set_die_id(-1);
    ptconvcnn__reshape_1_recompute__->set_mac_id("ptconvcnn__reshape_1_recompute_");
    ptconvcnn__reshape_1_recompute__->set_mac_latency(1.300000e+01);
    ptconvcnn__reshape_1_recompute__->set_metapipe_iterations({1});
    ptconvcnn__reshape_1_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_232_params;
    gbuf2u_1_0_232_params.enable_fronting_pmu = true;
    gbuf2u_1_0_232_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_232_params.head1_linear = true;
    gbuf2u_1_0_232_params.head1_p2p = false;
    gbuf2u_1_0_232_params.head_1_depth = 2;
    gbuf2u_1_0_232_params.layout = params_.ptconvcnn__reshape0_used_by_ptconvcnn__criterion__mseloss_bwd_sub_1_0_271.at_address(0);
    gbuf2u_1_0_232_params.loaded_by_broadcast = false;
    gbuf2u_1_0_232_params.num_head1_rd_en = 2;
    gbuf2u_1_0_232_params.num_iterations = 1;
    gbuf2u_1_0_232_ = create_node<GBuffer>("gbuf2u_1_0_232", partition_1_0_, plasma_, gbuf2u_1_0_232_params);
    gbuf2u_1_0_232_->set_tile_id(-1);
    gbuf2u_1_0_232_->set_die_id(-1);
    gbuf2u_1_0_232_->set_mac_id("default_232");
    gbuf2u_1_0_232_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_232_->set_metapipe_iterations({1});
    gbuf2u_1_0_232_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BinaryOps::Params ptconvcnn__criterion__mseloss_bwd_sub_params;
    ptconvcnn__criterion__mseloss_bwd_sub_params.layout_a = gbuf2u_1_0_232_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__criterion__mseloss_bwd_sub_params.layout_b = ptconvcnn__reshape_1_recompute__->result_layout();
    ptconvcnn__criterion__mseloss_bwd_sub_params.op = node_constants::TemplateOpcodes::kSub;
    ptconvcnn__criterion__mseloss_bwd_sub_params.streaming_a = true;
    ptconvcnn__criterion__mseloss_bwd_sub_params.streaming_b = true;
    ptconvcnn__criterion__mseloss_bwd_sub_ = create_node<BinaryOps>("ptconvcnn__criterion__mseloss_bwd_sub", partition_1_0_, plasma_, ptconvcnn__criterion__mseloss_bwd_sub_params);
    ptconvcnn__criterion__mseloss_bwd_sub_->set_tile_id(-1);
    ptconvcnn__criterion__mseloss_bwd_sub_->set_die_id(-1);
    ptconvcnn__criterion__mseloss_bwd_sub_->set_mac_id("ptconvcnn__criterion__mseloss_bwd");
    ptconvcnn__criterion__mseloss_bwd_sub_->set_mac_latency(1.060000e+02);
    ptconvcnn__criterion__mseloss_bwd_sub_->set_metapipe_iterations({1});
    ptconvcnn__criterion__mseloss_bwd_sub_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Scale::Params scale_1_0_339_params;
    scale_1_0_339_params.argin_value = 4.920959e-04;
    scale_1_0_339_params.batch_size = 1;
    scale_1_0_339_params.conditional_scaling = false;
    scale_1_0_339_params.layout_a = ptconvcnn__criterion__mseloss_bwd_sub_->result_layout().at_address(0);
    scale_1_0_339_params.using_input_b = false;
    scale_1_0_339_ = create_node<Scale>("scale_1_0_339", partition_1_0_, plasma_, scale_1_0_339_params);
    scale_1_0_339_->set_tile_id(-1);
    scale_1_0_339_->set_die_id(-1);
    scale_1_0_339_->set_mac_id("default_75");
    scale_1_0_339_->set_mac_latency(1.060000e+02);
    scale_1_0_339_->set_metapipe_iterations({1});
    scale_1_0_339_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Scale::Params scale_1_0_340_params;
    scale_1_0_340_params.batch_size = 1;
    scale_1_0_340_params.conditional_scaling = false;
    scale_1_0_340_params.layout_a = scale_1_0_339_->result_layout().at_address(0);
    scale_1_0_340_params.layout_b = params_.ptconvcnn__criterion__mseloss__outputs__0__grad_1_0_135.at_address(0);
    scale_1_0_340_params.using_input_b = true;
    scale_1_0_340_ = create_node<Scale>("scale_1_0_340", partition_1_0_, plasma_, scale_1_0_340_params);
    scale_1_0_340_->set_tile_id(-1);
    scale_1_0_340_->set_die_id(-1);
    scale_1_0_340_->set_mac_id("default_76");
    scale_1_0_340_->set_mac_latency(1.060000e+02);
    scale_1_0_340_->set_metapipe_iterations({1});
    scale_1_0_340_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_237_params;
    gbuf2u_1_0_237_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_237_params.head1_linear = true;
    gbuf2u_1_0_237_params.head1_p2p = false;
    gbuf2u_1_0_237_params.head1_streaming_window = true;
    gbuf2u_1_0_237_params.head_1_depth = 2;
    gbuf2u_1_0_237_params.layout = scale_1_0_340_->result_layout().at_address(0);
    gbuf2u_1_0_237_params.num_head1_rd_en = 4;
    gbuf2u_1_0_237_params.num_iterations = 1;
    gbuf2u_1_0_237_ = create_node<GBuffer>("gbuf2u_1_0_237", partition_1_0_, plasma_, gbuf2u_1_0_237_params);
    gbuf2u_1_0_237_->set_tile_id(-1);
    gbuf2u_1_0_237_->set_die_id(-1);
    gbuf2u_1_0_237_->set_mac_id("default_237");
    gbuf2u_1_0_237_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_237_->set_metapipe_iterations({1});
    gbuf2u_1_0_237_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__reshape_bwd_params;
    ptconvcnn__reshape_bwd_params.input_layout = gbuf2u_1_0_237_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__reshape_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvcnn__reshape_bwd_params.reshape = {1, 4080};
    ptconvcnn__reshape_bwd_ = create_node<ReshapeView>("ptconvcnn__reshape_bwd", partition_1_0_, plasma_, ptconvcnn__reshape_bwd_params);
    ptconvcnn__reshape_bwd_->set_tile_id(-1);
    ptconvcnn__reshape_bwd_->set_die_id(-1);
    ptconvcnn__reshape_bwd_->set_mac_id("ptconvcnn__reshape_bwd");
    ptconvcnn__reshape_bwd_->set_mac_latency(1.300000e+01);
    ptconvcnn__reshape_bwd_->set_metapipe_iterations({1});
    ptconvcnn__reshape_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    LayoutCast::Params layout_cast_1_0_439_params;
    layout_cast_1_0_439_params.checked = false;
    layout_cast_1_0_439_params.input_layout = ptconvcnn__view_bwd_->result_layout();
    layout_cast_1_0_439_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    layout_cast_1_0_439_ = create_node<LayoutCast>("layout_cast_1_0_439", partition_1_0_, plasma_, layout_cast_1_0_439_params);
    layout_cast_1_0_439_->set_tile_id(-1);
    layout_cast_1_0_439_->set_die_id(-1);
    layout_cast_1_0_439_->set_mac_id("default_439");
    layout_cast_1_0_439_->set_mac_latency(-1.000000e+00);
    layout_cast_1_0_439_->set_metapipe_iterations({1});
    layout_cast_1_0_439_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    AddN::Params ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_params;
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_params.layout_input = ptconvcnn__reshape_bwd_->result_layout();
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_params.num_of_inputs = 2;
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_ = create_node<AddN>("ptconvcnn__dense_layer__linear_t_output0_bwd_addn0", partition_1_0_, plasma_, ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_params);
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_mac_id("ptconvcnn__dense_layer__linear_t_output0_bwd_addn0");
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_mac_latency(1.060000e+02);
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_244_params;
    gbuf2u_1_0_244_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_244_params.head1_linear = false;
    gbuf2u_1_0_244_params.head1_p2p = false;
    gbuf2u_1_0_244_params.head_1_depth = 2;
    gbuf2u_1_0_244_params.layout = PermuteView::permute_layout(ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0), {1, 0});
    gbuf2u_1_0_244_params.num_head1_rd_en = 2;
    gbuf2u_1_0_244_params.num_iterations = 1;
    gbuf2u_1_0_244_ = create_node<GBuffer>("gbuf2u_1_0_244", partition_1_0_, plasma_, gbuf2u_1_0_244_params);
    gbuf2u_1_0_244_->set_tile_id(-1);
    gbuf2u_1_0_244_->set_die_id(-1);
    gbuf2u_1_0_244_->set_mac_id("default_244");
    gbuf2u_1_0_244_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_244_->set_metapipe_iterations({1});
    gbuf2u_1_0_244_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_402_params;
    gbuf1a_1_0_402_params.enable_fronting_pmu = true;
    gbuf1a_1_0_402_params.head1_linear = false;
    gbuf1a_1_0_402_params.head1_p2p = false;
    gbuf1a_1_0_402_params.head_1_depth = 1;
    gbuf1a_1_0_402_params.head_1_transposed = true;
    gbuf1a_1_0_402_params.layout = params_.ptconvcnn__dense_layer__weight_1_0_344.at_address(0);
    gbuf1a_1_0_402_params.loaded_by_broadcast = false;
    gbuf1a_1_0_402_params.num_iterations = 1;
    gbuf1a_1_0_402_ = create_node<GBuffer>("gbuf1a_1_0_402", partition_1_0_, plasma_, gbuf1a_1_0_402_params);
    gbuf1a_1_0_402_->set_tile_id(-1);
    gbuf1a_1_0_402_->set_die_id(-1);
    gbuf1a_1_0_402_->set_mac_id("default_402");
    gbuf1a_1_0_402_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_402_->set_metapipe_iterations({1});
    gbuf1a_1_0_402_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.A_layout = gbuf1a_1_0_402_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.B_layout = gbuf2u_1_0_244_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.batch_size = 1;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.batch_size_b = 1;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.box_layout = true;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.box_per_partition = true;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.connected_to_accumulator = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.dbl_width = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.disable_write_fronting_pmu = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.dotproduct_gemm = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.dotproduct_gemm_bf16_output = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.enable_gradient = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.enable_seqID_pacing_interval = true;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.exclusive_vc_a = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.external_input_a = true;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.external_output_buffer = true;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.no_reload_weight = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.num_col_compute_units = 1;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.num_partitions = 1;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.num_row_compute_units = 8;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.seqID_base = 0;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.set_exclusive_routes = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.streaming_col_par = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.use_wbuf_transpose_atom_move = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params.wbuf_split = false;
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_ = create_node<BigGemm>("ptconvcnn__dense_layer__linear_bwd_loss_grad_b", partition_1_0_, plasma_, ptconvcnn__dense_layer__linear_bwd_loss_grad_b_params);
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_mac_id("ptconvcnn__dense_layer__linear_bwd_loss");
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_mac_latency(4.367000e+03);
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_247_params;
    gbuf2u_1_0_247_params.enable_fronting_pmu = true;
    gbuf2u_1_0_247_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_247_params.head1_linear = false;
    gbuf2u_1_0_247_params.head1_p2p = false;
    gbuf2u_1_0_247_params.head_1_depth = 2;
    gbuf2u_1_0_247_params.head_1_transposed = true;
    gbuf2u_1_0_247_params.layout = params_.ptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_1_0_272.at_address(0);
    gbuf2u_1_0_247_params.loaded_by_broadcast = false;
    gbuf2u_1_0_247_params.num_head1_rd_en = 2;
    gbuf2u_1_0_247_params.num_iterations = 1;
    gbuf2u_1_0_247_params.write_vector_transposed = true;
    gbuf2u_1_0_247_ = create_node<GBuffer>("gbuf2u_1_0_247", partition_1_0_, plasma_, gbuf2u_1_0_247_params);
    gbuf2u_1_0_247_->set_tile_id(-1);
    gbuf2u_1_0_247_->set_die_id(-1);
    gbuf2u_1_0_247_->set_mac_id("default_247");
    gbuf2u_1_0_247_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_247_->set_metapipe_iterations({1});
    gbuf2u_1_0_247_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_248_params;
    gbuf2u_1_0_248_params.head0_ctrl_flow_enable = true;
    gbuf2u_1_0_248_params.head0_linear = true;
    gbuf2u_1_0_248_params.head0_p2p = false;
    gbuf2u_1_0_248_params.head0_streaming_window = true;
    gbuf2u_1_0_248_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_248_params.head1_linear = true;
    gbuf2u_1_0_248_params.head1_p2p = false;
    gbuf2u_1_0_248_params.head1_streaming_window = true;
    gbuf2u_1_0_248_params.head_0_depth = 2;
    gbuf2u_1_0_248_params.head_1_depth = 2;
    gbuf2u_1_0_248_params.layout = PermuteView::permute_layout(ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0), {1, 0});
    gbuf2u_1_0_248_params.num_head0_rd_en = 1;
    gbuf2u_1_0_248_params.num_head1_rd_en = 1;
    gbuf2u_1_0_248_params.num_iterations = 1;
    gbuf2u_1_0_248_ = create_node<GBuffer>("gbuf2u_1_0_248", partition_1_0_, plasma_, gbuf2u_1_0_248_params);
    gbuf2u_1_0_248_->set_tile_id(-1);
    gbuf2u_1_0_248_->set_die_id(-1);
    gbuf2u_1_0_248_->set_mac_id("default_248");
    gbuf2u_1_0_248_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_248_->set_metapipe_iterations({1});
    gbuf2u_1_0_248_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.A_layout = gbuf2u_1_0_248_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf2u_1_0_247_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.accum_direct_dram_store = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.batch_size = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.box_accum_tail_pmu = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.box_layout = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.box_output_pmu = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.box_per_partition = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.broadcast_hydra = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.connected_to_accumulator = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.dotproduct_gemm = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient_bias = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient_buf_sz = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.enable_instrumentation = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.exclusive_vc_a = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.external_accumulator = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.external_bias_accumulator = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.external_input_a = true;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.fused_gradient_bias_en = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.is_streaming_output = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.num_col_compute_units = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.num_partitions = 32;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.num_row_compute_units = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.optimized_accum = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params.set_exclusive_routes = false;
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_ = create_node<BigGemm>("ptconvcnn__dense_layer__linear_bwd_weight_grad_a", partition_1_0_, plasma_, ptconvcnn__dense_layer__linear_bwd_weight_grad_a_params);
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_mac_id("ptconvcnn__dense_layer__linear_bwd_weight");
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_mac_latency(4.096000e+03);
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_250_params;
    gbuf2u_1_0_250_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_250_params.head1_linear = true;
    gbuf2u_1_0_250_params.head1_p2p = false;
    gbuf2u_1_0_250_params.head1_streaming_window = true;
    gbuf2u_1_0_250_params.head_1_depth = 2;
    gbuf2u_1_0_250_params.layout = ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf2u_1_0_250_params.num_head1_rd_en = 2;
    gbuf2u_1_0_250_params.num_iterations = 1;
    gbuf2u_1_0_250_params.write_group_layouts = {ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_250_params.write_group_partitions = {ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->num_partitions()};
    gbuf2u_1_0_250_ = create_node<GBuffer>("gbuf2u_1_0_250", partition_1_0_, plasma_, gbuf2u_1_0_250_params);
    gbuf2u_1_0_250_->set_tile_id(-1);
    gbuf2u_1_0_250_->set_die_id(-1);
    gbuf2u_1_0_250_->set_mac_id("default_250");
    gbuf2u_1_0_250_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_250_->set_metapipe_iterations({1});
    gbuf2u_1_0_250_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__reshape_2_bwd_params;
    ptconvcnn__conv_layer__reshape_2_bwd_params.input_layout = gbuf2u_1_0_250_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvcnn__conv_layer__reshape_2_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvcnn__conv_layer__reshape_2_bwd_params.reshape = {256, 1, 1};
    ptconvcnn__conv_layer__reshape_2_bwd_ = create_node<ReshapeView>("ptconvcnn__conv_layer__reshape_2_bwd", partition_1_0_, plasma_, ptconvcnn__conv_layer__reshape_2_bwd_params);
    ptconvcnn__conv_layer__reshape_2_bwd_->set_tile_id(-1);
    ptconvcnn__conv_layer__reshape_2_bwd_->set_die_id(-1);
    ptconvcnn__conv_layer__reshape_2_bwd_->set_mac_id("ptconvcnn__conv_layer__reshape_2_bwd");
    ptconvcnn__conv_layer__reshape_2_bwd_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__reshape_2_bwd_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__reshape_2_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf2u_1_0_253_params;
    tbuf2u_1_0_253_params.buffer_depth = 2;
    tbuf2u_1_0_253_params.layout = params_.inp_window_1_0_273.at_address(0);
    tbuf2u_1_0_253_ = create_node<TBuffer>("tbuf2u_1_0_253", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_253_params);
    tbuf2u_1_0_253_->set_tile_id(-1);
    tbuf2u_1_0_253_->set_die_id(-1);
    tbuf2u_1_0_253_->set_mac_id("default_253");
    tbuf2u_1_0_253_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_253_->set_metapipe_iterations({1});
    tbuf2u_1_0_253_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf1u_1_0_254_params;
    tbuf1u_1_0_254_params.buffer_depth = 1;
    tbuf1u_1_0_254_params.layout = params_.inp_window_slice_1_1_0_148.at_address(0);
    tbuf1u_1_0_254_ = create_node<TBuffer>("tbuf1u_1_0_254", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1u_1_0_254_params);
    tbuf1u_1_0_254_->set_tile_id(-1);
    tbuf1u_1_0_254_->set_die_id(-1);
    tbuf1u_1_0_254_->set_mac_id("default_254");
    tbuf1u_1_0_254_->set_mac_latency(-1.000000e+00);
    tbuf1u_1_0_254_->set_metapipe_iterations({1});
    tbuf1u_1_0_254_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    RAILIndex::Params ptconvcnn__lambda_layer__indexselect_recompute__params;
    ptconvcnn__lambda_layer__indexselect_recompute__params.index_dim = 0;
    ptconvcnn__lambda_layer__indexselect_recompute__params.index_tensor_layout = tbuf1u_1_0_254_->param().layout->at_address(0).at_address(0);
    ptconvcnn__lambda_layer__indexselect_recompute__params.lut_tensor_layout = tbuf2u_1_0_253_->param().layout->at_address(0).at_address(0);
    ptconvcnn__lambda_layer__indexselect_recompute__params.read_zeros_outside_range = true;
    ptconvcnn__lambda_layer__indexselect_recompute__ = create_node<RAILIndex>("ptconvcnn__lambda_layer__indexselect_recompute_", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvcnn__lambda_layer__indexselect_recompute__params);
    ptconvcnn__lambda_layer__indexselect_recompute__->set_tile_id(-1);
    ptconvcnn__lambda_layer__indexselect_recompute__->set_die_id(-1);
    ptconvcnn__lambda_layer__indexselect_recompute__->set_mac_id("ptconvcnn__lambda_layer__indexselect_recompute_");
    ptconvcnn__lambda_layer__indexselect_recompute__->set_mac_latency(1.100000e+01);
    ptconvcnn__lambda_layer__indexselect_recompute__->set_metapipe_iterations({1});
    ptconvcnn__lambda_layer__indexselect_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBuffer::Params tbuf2u_1_0_258_params;
    tbuf2u_1_0_258_params.buffer_depth = 2;
    tbuf2u_1_0_258_params.layout = PermuteView::permute_layout(ptconvcnn__lambda_layer__indexselect_recompute__->result_layout().at_address(0), {1, 0});
    tbuf2u_1_0_258_ = create_node<TBuffer>("tbuf2u_1_0_258", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_258_params);
    tbuf2u_1_0_258_->set_tile_id(-1);
    tbuf2u_1_0_258_->set_die_id(-1);
    tbuf2u_1_0_258_->set_mac_id("default_258");
    tbuf2u_1_0_258_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_258_->set_metapipe_iterations({1});
    tbuf2u_1_0_258_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__reshape_recompute__params;
    ptconvcnn__conv_layer__reshape_recompute__params.input_layout = tbuf2u_1_0_258_->param().layout->at_address(0).at_address(0);
    ptconvcnn__conv_layer__reshape_recompute__params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvcnn__conv_layer__reshape_recompute__params.reshape = {136, 3, 1};
    ptconvcnn__conv_layer__reshape_recompute__ = create_node<ReshapeView>("ptconvcnn__conv_layer__reshape_recompute_", partition_1_0_, plasma_, ptconvcnn__conv_layer__reshape_recompute__params);
    ptconvcnn__conv_layer__reshape_recompute__->set_tile_id(-1);
    ptconvcnn__conv_layer__reshape_recompute__->set_die_id(-1);
    ptconvcnn__conv_layer__reshape_recompute__->set_mac_id("ptconvcnn__conv_layer__reshape_recompute_");
    ptconvcnn__conv_layer__reshape_recompute__->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__reshape_recompute__->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__reshape_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_1_0_443_params;
    gbuf2a_1_0_443_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_443_params.head0_linear = false;
    gbuf2a_1_0_443_params.head0_p2p = false;
    gbuf2a_1_0_443_params.head0_streaming_window = true;
    gbuf2a_1_0_443_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_443_params.head1_linear = false;
    gbuf2a_1_0_443_params.head1_p2p = false;
    gbuf2a_1_0_443_params.head1_streaming_window = true;
    gbuf2a_1_0_443_params.head_0_depth = 2;
    gbuf2a_1_0_443_params.head_1_depth = 2;
    gbuf2a_1_0_443_params.layout = ptconvcnn__conv_layer__reshape_2_bwd_->result_layout();
    gbuf2a_1_0_443_params.num_head0_rd_en = 2;
    gbuf2a_1_0_443_params.num_head1_rd_en = 2;
    gbuf2a_1_0_443_params.num_iterations = 1;
    gbuf2a_1_0_443_ = create_node<GBuffer>("gbuf2a_1_0_443", partition_1_0_, plasma_, gbuf2a_1_0_443_params);
    gbuf2a_1_0_443_->set_tile_id(-1);
    gbuf2a_1_0_443_->set_die_id(-1);
    gbuf2a_1_0_443_->set_mac_id("default_443");
    gbuf2a_1_0_443_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_443_->set_metapipe_iterations({1});
    gbuf2a_1_0_443_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    StreamingTranspose::Params streaming_transpose_1_0_365_params;
    streaming_transpose_1_0_365_params.dvdm_to_cvrm_atom_wise_transpose = true;
    streaming_transpose_1_0_365_params.image_layout = gbuf2a_1_0_443_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    streaming_transpose_1_0_365_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::DVDM_TO_CVRM;
    streaming_transpose_1_0_365_ = create_node<StreamingTranspose>("streaming_transpose_1_0_365", partition_1_0_, plasma_, streaming_transpose_1_0_365_params);
    streaming_transpose_1_0_365_->set_tile_id(-1);
    streaming_transpose_1_0_365_->set_die_id(-1);
    streaming_transpose_1_0_365_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    streaming_transpose_1_0_365_->set_mac_latency(-1.000000e+00);
    streaming_transpose_1_0_365_->set_metapipe_iterations({1});
    streaming_transpose_1_0_365_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_366_params;
    gbuf2u_1_0_366_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_366_params.head1_linear = false;
    gbuf2u_1_0_366_params.head1_p2p = false;
    gbuf2u_1_0_366_params.head1_streaming_window = true;
    gbuf2u_1_0_366_params.head_1_depth = 2;
    gbuf2u_1_0_366_params.layout = ptconvcnn__conv_layer__reshape_recompute__->result_layout();
    gbuf2u_1_0_366_params.num_head1_rd_en = 2;
    gbuf2u_1_0_366_params.num_iterations = 1;
    gbuf2u_1_0_366_params.overlapped_split = true;
    gbuf2u_1_0_366_params.overlapped_split_base = 0;
    gbuf2u_1_0_366_params.overlapped_split_bound = 4;
    gbuf2u_1_0_366_params.overlapped_split_parts = 3;
    gbuf2u_1_0_366_params.overlapped_split_stride = 5;
    gbuf2u_1_0_366_ = create_node<GBuffer>("gbuf2u_1_0_366", partition_1_0_, plasma_, gbuf2u_1_0_366_params);
    gbuf2u_1_0_366_->set_tile_id(-1);
    gbuf2u_1_0_366_->set_die_id(-1);
    gbuf2u_1_0_366_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    gbuf2u_1_0_366_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_366_->set_metapipe_iterations({1});
    gbuf2u_1_0_366_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ListBuffer::Params lbuf1a_1_0_405_params;
    lbuf1a_1_0_405_params.allow_oob = true;
    lbuf1a_1_0_405_params.allow_overflow = false;
    lbuf1a_1_0_405_params.base_list_tile_counters = 0;
    lbuf1a_1_0_405_params.base_max = {320, 3, 1};
    lbuf1a_1_0_405_params.base_mult = {1, 0, 0};
    lbuf1a_1_0_405_params.base_stride = {64, 1, 1};
    lbuf1a_1_0_405_params.batch_size = 1;
    lbuf1a_1_0_405_params.depth2col = false;
    lbuf1a_1_0_405_params.enable_fronting_pmu = true;
    lbuf1a_1_0_405_params.filter_area = 0;
    lbuf1a_1_0_405_params.head1_linear = false;
    lbuf1a_1_0_405_params.head1_p2p = false;
    lbuf1a_1_0_405_params.head_1_depth = 1;
    lbuf1a_1_0_405_params.layout = params_.ptconvcnn__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_388;
    lbuf1a_1_0_405_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    lbuf1a_1_0_405_params.length_fixed = 32;
    lbuf1a_1_0_405_params.list_length = 3;
    lbuf1a_1_0_405_params.list_tiles = 1;
    lbuf1a_1_0_405_params.list_type = ListBuffer::kElement;
    lbuf1a_1_0_405_params.loaded_by_broadcast = true;
    lbuf1a_1_0_405_params.num_iterations = 1;
    lbuf1a_1_0_405_params.offset_list_tile_counters = 0;
    lbuf1a_1_0_405_params.offset_max = {160, 3};
    lbuf1a_1_0_405_params.offset_mult = {0, 1};
    lbuf1a_1_0_405_params.offset_stride = {32, 1};
    lbuf1a_1_0_405_params.overlapped_split = true;
    lbuf1a_1_0_405_params.overlapped_split_base = 0;
    lbuf1a_1_0_405_params.overlapped_split_bound = 4;
    lbuf1a_1_0_405_params.overlapped_split_parts = 3;
    lbuf1a_1_0_405_params.overlapped_split_stride = 5;
    lbuf1a_1_0_405_params.permute = false;
    lbuf1a_1_0_405_params.use_tile_counter = false;
    lbuf1a_1_0_405_ = create_node<ListBuffer>("lbuf1a_1_0_405", partition_1_0_, plasma_, lbuf1a_1_0_405_params);
    lbuf1a_1_0_405_->set_tile_id(-1);
    lbuf1a_1_0_405_->set_die_id(-1);
    lbuf1a_1_0_405_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    lbuf1a_1_0_405_->set_mac_latency(-1.000000e+00);
    lbuf1a_1_0_405_->set_metapipe_iterations({1});
    lbuf1a_1_0_405_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ScatterBuffer::Params sbuf2u_1_0_369_params;
    sbuf2u_1_0_369_params.element = true;
    sbuf2u_1_0_369_params.head1_linear = true;
    sbuf2u_1_0_369_params.head1_p2p = false;
    sbuf2u_1_0_369_params.head_1_depth = 2;
    sbuf2u_1_0_369_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {480, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf2u_1_0_369_params.length_fixed = 32;
    sbuf2u_1_0_369_params.num_iterations = 1;
    sbuf2u_1_0_369_params.pace_shape = {32, 1};
    sbuf2u_1_0_369_params.paced = true;
    sbuf2u_1_0_369_params.read_group_packed_vectors = 15;
    sbuf2u_1_0_369_params.streaming = true;
    sbuf2u_1_0_369_params.write_group_unpacked_vectors = 15;
    sbuf2u_1_0_369_params.write_total_unpacked_vectors = 15;
    sbuf2u_1_0_369_ = create_node<ScatterBuffer>("sbuf2u_1_0_369", partition_1_0_, plasma_, sbuf2u_1_0_369_params);
    sbuf2u_1_0_369_->set_tile_id(-1);
    sbuf2u_1_0_369_->set_die_id(-1);
    sbuf2u_1_0_369_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    sbuf2u_1_0_369_->set_mac_latency(-1.000000e+00);
    sbuf2u_1_0_369_->set_metapipe_iterations({1});
    sbuf2u_1_0_369_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    KernelGBuffer::Params split_kernel_gbuf_1_0_370_params;
    split_kernel_gbuf_1_0_370_params.M = 480;
    split_kernel_gbuf_1_0_370_params.column_par = 8;
    split_kernel_gbuf_1_0_370_params.head_1_depth = 2;
    split_kernel_gbuf_1_0_370_params.int_column_par = 2;
    split_kernel_gbuf_1_0_370_params.layout = streaming_transpose_1_0_365_->result_layout().at_address(0);
    split_kernel_gbuf_1_0_370_params.num_sub_iters = 6;
    split_kernel_gbuf_1_0_370_ = create_node<KernelGBuffer>("split_kernel_gbuf_1_0_370", partition_1_0_, plasma_, split_kernel_gbuf_1_0_370_params);
    split_kernel_gbuf_1_0_370_->set_tile_id(-1);
    split_kernel_gbuf_1_0_370_->set_die_id(-1);
    split_kernel_gbuf_1_0_370_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    split_kernel_gbuf_1_0_370_->set_mac_latency(-1.000000e+00);
    split_kernel_gbuf_1_0_370_->set_metapipe_iterations({1});
    split_kernel_gbuf_1_0_370_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_1_0_371_params;
    biggemm_1_0_371_params.A_layout = sbuf2u_1_0_369_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_371_params.B_layout = split_kernel_gbuf_1_0_370_->result_layout(GBuffer::get_head_output(1, 0)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_371_params.batch_size = 1;
    biggemm_1_0_371_params.batch_size_b = 1;
    biggemm_1_0_371_params.box_layout = true;
    biggemm_1_0_371_params.box_per_partition = false;
    biggemm_1_0_371_params.concat_group = true;
    biggemm_1_0_371_params.concat_group_par = 4;
    biggemm_1_0_371_params.connected_to_accumulator = false;
    biggemm_1_0_371_params.dbl_width = false;
    biggemm_1_0_371_params.disable_write_fronting_pmu = false;
    biggemm_1_0_371_params.dotproduct_gemm = false;
    biggemm_1_0_371_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_371_params.enable_gradient = false;
    biggemm_1_0_371_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_371_params.exclusive_vc_a = false;
    biggemm_1_0_371_params.external_input_a = true;
    biggemm_1_0_371_params.external_output_buffer = true;
    biggemm_1_0_371_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_371_params.num_col_compute_units = 2;
    biggemm_1_0_371_params.num_partitions = 1;
    biggemm_1_0_371_params.num_row_compute_units = 1;
    biggemm_1_0_371_params.seqID_base = 0;
    biggemm_1_0_371_params.set_exclusive_routes = false;
    biggemm_1_0_371_params.streaming_col_par = true;
    biggemm_1_0_371_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_371_params.wbuf_split = false;
    biggemm_1_0_371_params.write_done_used = false;
    biggemm_1_0_371_ = create_node<BigGemm>("biggemm_1_0_371", partition_1_0_, plasma_, biggemm_1_0_371_params);
    biggemm_1_0_371_->set_tile_id(-1);
    biggemm_1_0_371_->set_die_id(-1);
    biggemm_1_0_371_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    biggemm_1_0_371_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_371_->set_metapipe_iterations({1});
    biggemm_1_0_371_->set_stage_multiplier(15);
    biggemm_1_0_371_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_1_0_372_params;
    biggemm_1_0_372_params.A_layout = sbuf2u_1_0_369_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_372_params.B_layout = split_kernel_gbuf_1_0_370_->result_layout(GBuffer::get_head_output(1, 1)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_372_params.batch_size = 1;
    biggemm_1_0_372_params.batch_size_b = 1;
    biggemm_1_0_372_params.box_layout = true;
    biggemm_1_0_372_params.box_per_partition = false;
    biggemm_1_0_372_params.concat_group = true;
    biggemm_1_0_372_params.concat_group_par = 4;
    biggemm_1_0_372_params.connected_to_accumulator = false;
    biggemm_1_0_372_params.dbl_width = false;
    biggemm_1_0_372_params.disable_write_fronting_pmu = false;
    biggemm_1_0_372_params.dotproduct_gemm = false;
    biggemm_1_0_372_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_372_params.enable_gradient = false;
    biggemm_1_0_372_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_372_params.exclusive_vc_a = false;
    biggemm_1_0_372_params.external_input_a = true;
    biggemm_1_0_372_params.external_output_buffer = true;
    biggemm_1_0_372_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_372_params.num_col_compute_units = 2;
    biggemm_1_0_372_params.num_partitions = 1;
    biggemm_1_0_372_params.num_row_compute_units = 1;
    biggemm_1_0_372_params.seqID_base = 72;
    biggemm_1_0_372_params.set_exclusive_routes = false;
    biggemm_1_0_372_params.streaming_col_par = true;
    biggemm_1_0_372_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_372_params.wbuf_split = false;
    biggemm_1_0_372_params.write_done_used = false;
    biggemm_1_0_372_ = create_node<BigGemm>("biggemm_1_0_372", partition_1_0_, plasma_, biggemm_1_0_372_params);
    biggemm_1_0_372_->set_tile_id(-1);
    biggemm_1_0_372_->set_die_id(-1);
    biggemm_1_0_372_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    biggemm_1_0_372_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_372_->set_metapipe_iterations({1});
    biggemm_1_0_372_->set_stage_multiplier(15);
    biggemm_1_0_372_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_1_0_373_params;
    biggemm_1_0_373_params.A_layout = sbuf2u_1_0_369_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_373_params.B_layout = split_kernel_gbuf_1_0_370_->result_layout(GBuffer::get_head_output(1, 2)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_373_params.batch_size = 1;
    biggemm_1_0_373_params.batch_size_b = 1;
    biggemm_1_0_373_params.box_layout = true;
    biggemm_1_0_373_params.box_per_partition = false;
    biggemm_1_0_373_params.concat_group = true;
    biggemm_1_0_373_params.concat_group_par = 4;
    biggemm_1_0_373_params.connected_to_accumulator = false;
    biggemm_1_0_373_params.dbl_width = false;
    biggemm_1_0_373_params.disable_write_fronting_pmu = false;
    biggemm_1_0_373_params.dotproduct_gemm = false;
    biggemm_1_0_373_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_373_params.enable_gradient = false;
    biggemm_1_0_373_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_373_params.exclusive_vc_a = false;
    biggemm_1_0_373_params.external_input_a = true;
    biggemm_1_0_373_params.external_output_buffer = true;
    biggemm_1_0_373_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_373_params.num_col_compute_units = 2;
    biggemm_1_0_373_params.num_partitions = 1;
    biggemm_1_0_373_params.num_row_compute_units = 1;
    biggemm_1_0_373_params.seqID_base = 144;
    biggemm_1_0_373_params.set_exclusive_routes = false;
    biggemm_1_0_373_params.streaming_col_par = true;
    biggemm_1_0_373_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_373_params.wbuf_split = false;
    biggemm_1_0_373_params.write_done_used = false;
    biggemm_1_0_373_ = create_node<BigGemm>("biggemm_1_0_373", partition_1_0_, plasma_, biggemm_1_0_373_params);
    biggemm_1_0_373_->set_tile_id(-1);
    biggemm_1_0_373_->set_die_id(-1);
    biggemm_1_0_373_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    biggemm_1_0_373_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_373_->set_metapipe_iterations({1});
    biggemm_1_0_373_->set_stage_multiplier(15);
    biggemm_1_0_373_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params biggemm_1_0_374_params;
    biggemm_1_0_374_params.A_layout = sbuf2u_1_0_369_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_374_params.B_layout = split_kernel_gbuf_1_0_370_->result_layout(GBuffer::get_head_output(1, 3)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_374_params.batch_size = 1;
    biggemm_1_0_374_params.batch_size_b = 1;
    biggemm_1_0_374_params.box_layout = true;
    biggemm_1_0_374_params.box_per_partition = false;
    biggemm_1_0_374_params.concat_group = true;
    biggemm_1_0_374_params.concat_group_par = 4;
    biggemm_1_0_374_params.connected_to_accumulator = false;
    biggemm_1_0_374_params.dbl_width = false;
    biggemm_1_0_374_params.disable_write_fronting_pmu = false;
    biggemm_1_0_374_params.dotproduct_gemm = false;
    biggemm_1_0_374_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_374_params.enable_gradient = false;
    biggemm_1_0_374_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_374_params.exclusive_vc_a = false;
    biggemm_1_0_374_params.external_input_a = true;
    biggemm_1_0_374_params.external_output_buffer = true;
    biggemm_1_0_374_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_374_params.num_col_compute_units = 2;
    biggemm_1_0_374_params.num_partitions = 1;
    biggemm_1_0_374_params.num_row_compute_units = 1;
    biggemm_1_0_374_params.seqID_base = 216;
    biggemm_1_0_374_params.set_exclusive_routes = false;
    biggemm_1_0_374_params.streaming_col_par = true;
    biggemm_1_0_374_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_374_params.wbuf_split = false;
    biggemm_1_0_374_params.write_done_used = false;
    biggemm_1_0_374_ = create_node<BigGemm>("biggemm_1_0_374", partition_1_0_, plasma_, biggemm_1_0_374_params);
    biggemm_1_0_374_->set_tile_id(-1);
    biggemm_1_0_374_->set_die_id(-1);
    biggemm_1_0_374_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    biggemm_1_0_374_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_374_->set_metapipe_iterations({1});
    biggemm_1_0_374_->set_stage_multiplier(15);
    biggemm_1_0_374_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_376_params;
    gbuf2u_1_0_376_params.allow_pob = false;
    gbuf2u_1_0_376_params.concat = GBuffer::kConcatN;
    gbuf2u_1_0_376_params.fronting_group = 4;
    gbuf2u_1_0_376_params.fronting_group_int_col_par_vectors = 72;
    gbuf2u_1_0_376_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_376_params.head1_linear = true;
    gbuf2u_1_0_376_params.head1_p2p = false;
    gbuf2u_1_0_376_params.head_1_depth = 2;
    gbuf2u_1_0_376_params.layout = biggemm_1_0_371_->result_layout(BigGemm::kOutput).at_address(0).with_logical_shape({480, 256}).at_address(0);
    gbuf2u_1_0_376_params.num_head1_rd_en = 1;
    gbuf2u_1_0_376_params.num_iterations = 1;
    gbuf2u_1_0_376_params.write_group_layouts = {biggemm_1_0_371_->result_layouts(BigGemm::kOutput), biggemm_1_0_372_->result_layouts(BigGemm::kOutput), biggemm_1_0_373_->result_layouts(BigGemm::kOutput), biggemm_1_0_374_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_376_params.write_group_partitions = {biggemm_1_0_371_->num_partitions(), biggemm_1_0_372_->num_partitions(), biggemm_1_0_373_->num_partitions(), biggemm_1_0_374_->num_partitions()};
    gbuf2u_1_0_376_params.write_layouts_spread = true;
    gbuf2u_1_0_376_params.write_time_concat = true;
    gbuf2u_1_0_376_params.write_time_concat_slices = {72, 72, 72, 40};
    gbuf2u_1_0_376_ = create_node<GBuffer>("gbuf2u_1_0_376", partition_1_0_, plasma_, gbuf2u_1_0_376_params);
    gbuf2u_1_0_376_->set_tile_id(-1);
    gbuf2u_1_0_376_->set_die_id(-1);
    gbuf2u_1_0_376_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    gbuf2u_1_0_376_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_376_->set_metapipe_iterations({1});
    gbuf2u_1_0_376_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BiasTransposeGrad::Params bias_transpose_grad_1_0_378_params;
    bias_transpose_grad_1_0_378_params.loss_layout = gbuf2a_1_0_443_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    bias_transpose_grad_1_0_378_ = create_node<BiasTransposeGrad>("bias_transpose_grad_1_0_378", partition_1_0_, plasma_, bias_transpose_grad_1_0_378_params);
    bias_transpose_grad_1_0_378_->set_tile_id(-1);
    bias_transpose_grad_1_0_378_->set_die_id(-1);
    bias_transpose_grad_1_0_378_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    bias_transpose_grad_1_0_378_->set_mac_latency(-1.000000e+00);
    bias_transpose_grad_1_0_378_->set_metapipe_iterations({1});
    bias_transpose_grad_1_0_378_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_1_0_406_params;
    gbuf2a_1_0_406_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_406_params.head1_linear = true;
    gbuf2a_1_0_406_params.head1_p2p = false;
    gbuf2a_1_0_406_params.head_1_depth = 2;
    gbuf2a_1_0_406_params.layout = bias_transpose_grad_1_0_378_->result_layout().at_address(0);
    gbuf2a_1_0_406_params.num_head1_rd_en = 1;
    gbuf2a_1_0_406_params.num_iterations = 1;
    gbuf2a_1_0_406_ = create_node<GBuffer>("gbuf2a_1_0_406", partition_1_0_, plasma_, gbuf2a_1_0_406_params);
    gbuf2a_1_0_406_->set_tile_id(-1);
    gbuf2a_1_0_406_->set_die_id(-1);
    gbuf2a_1_0_406_->set_mac_id("default_406");
    gbuf2a_1_0_406_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_406_->set_metapipe_iterations({1});
    gbuf2a_1_0_406_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_379_params;
    reshape_1_0_379_params.input_layout = gbuf2a_1_0_406_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    reshape_1_0_379_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    reshape_1_0_379_params.reshape = {256, 1};
    reshape_1_0_379_ = create_node<ReshapeView>("reshape_1_0_379", partition_1_0_, plasma_, reshape_1_0_379_params);
    reshape_1_0_379_->set_tile_id(-1);
    reshape_1_0_379_->set_die_id(-1);
    reshape_1_0_379_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    reshape_1_0_379_->set_mac_latency(-1.000000e+00);
    reshape_1_0_379_->set_metapipe_iterations({1});
    reshape_1_0_379_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    LayoutCast::Params layout_cast_1_0_380_params;
    layout_cast_1_0_380_params.checked = false;
    layout_cast_1_0_380_params.input_layout = reshape_1_0_379_->result_layout();
    layout_cast_1_0_380_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    layout_cast_1_0_380_ = create_node<LayoutCast>("layout_cast_1_0_380", partition_1_0_, plasma_, layout_cast_1_0_380_params);
    layout_cast_1_0_380_->set_tile_id(-1);
    layout_cast_1_0_380_->set_die_id(-1);
    layout_cast_1_0_380_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    layout_cast_1_0_380_->set_mac_latency(-1.000000e+00);
    layout_cast_1_0_380_->set_metapipe_iterations({1});
    layout_cast_1_0_380_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ParAccum::Params ptconvcnn__dense_layer__linear_bwd_weight_accum_params;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.acc_stoc_rnd = false;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.acc_stoc_rnd_seed = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.accum_version = "3";
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.dram_store = true;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.iter_per_accum = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.layout = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.num_accums = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.optimized_biggemm = false;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.partitions = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.read_credit = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_params.rvrm_init_output_layout = false;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_ = create_node<ParAccum>("ptconvcnn__dense_layer__linear_bwd_weight_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvcnn__dense_layer__linear_bwd_weight_accum_params);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_mac_id("ptconvcnn__dense_layer__linear_bwd_weight");
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_mac_latency(-1.000000e+00);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ParAccum::Params ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.acc_stoc_rnd = false;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.acc_stoc_rnd_seed = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.accum_version = "3";
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.dram_store = true;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.iter_per_accum = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.layout = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.num_accums = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.optimized_biggemm = false;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.partitions = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.read_credit = 1;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params.rvrm_init_output_layout = false;
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_ = create_node<ParAccum>("ptconvcnn__dense_layer__linear_bwd_weight_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvcnn__dense_layer__linear_bwd_weight_accum_1_params);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_tile_id(-1);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_die_id(-1);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_mac_id("ptconvcnn__dense_layer__linear_bwd_weight");
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_mac_latency(-1.000000e+00);
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ParAccum::Params ptconvcnn__conv_layer__conv2d_bwd_accum_params;
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.acc_stoc_rnd = false;
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.acc_stoc_rnd_seed = 43690;
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.accum_version = "3";
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.dram_store = false;
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.iter_per_accum = 1;
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.layout = gbuf2u_1_0_376_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({480, 256}).at_address(0);
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.num_accums = 1;
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.partitions = {gbuf2u_1_0_376_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0)};
    ptconvcnn__conv_layer__conv2d_bwd_accum_params.rvrm_init_output_layout = false;
    ptconvcnn__conv_layer__conv2d_bwd_accum_ = create_node<ParAccum>("ptconvcnn__conv_layer__conv2d_bwd_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvcnn__conv_layer__conv2d_bwd_accum_params);
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_tile_id(-1);
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_die_id(-1);
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_mac_latency(-1.000000e+00);
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ParAccum::Params ptconvcnn__conv_layer__conv2d_bwd_accum_1_params;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.acc_stoc_rnd = false;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.acc_stoc_rnd_seed = 43690;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.accum_version = "3";
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.dram_store = true;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.iter_per_accum = 1;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.layout = layout_cast_1_0_380_->result_layout();
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.num_accums = 1;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.partitions = {layout_cast_1_0_380_->result_layout()};
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.read_credit = 1;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_params.rvrm_init_output_layout = false;
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_ = create_node<ParAccum>("ptconvcnn__conv_layer__conv2d_bwd_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvcnn__conv_layer__conv2d_bwd_accum_1_params);
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_tile_id(-1);
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_die_id(-1);
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_mac_id("ptconvcnn__conv_layer__conv2d_bwd");
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_mac_latency(-1.000000e+00);
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2u_1_0_157_params;
    gbuf2u_1_0_157_params.head1_linear = false;
    gbuf2u_1_0_157_params.head1_p2p = false;
    gbuf2u_1_0_157_params.head_1_depth = 2;
    gbuf2u_1_0_157_params.layout = ptconvcnn__conv_layer__conv2d_bwd_accum_->result_layout(ParAccum::kOut).at_address(0);
    gbuf2u_1_0_157_params.num_iterations = 1;
    gbuf2u_1_0_157_ = create_node<GBuffer>("gbuf2u_1_0_157", partition_1_0_, plasma_, gbuf2u_1_0_157_params);
    gbuf2u_1_0_157_->set_tile_id(-1);
    gbuf2u_1_0_157_->set_die_id(-1);
    gbuf2u_1_0_157_->set_mac_id("default_157");
    gbuf2u_1_0_157_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_157_->set_metapipe_iterations({1});
    gbuf2u_1_0_157_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ListBuffer::Params lbuf1a_1_0_407_params;
    lbuf1a_1_0_407_params.allow_oob = false;
    lbuf1a_1_0_407_params.allow_overflow = false;
    lbuf1a_1_0_407_params.base_list_tile_counters = 0;
    lbuf1a_1_0_407_params.base_max = {1, 13, 256, 3};
    lbuf1a_1_0_407_params.base_mult = {0, 0, 64, 0};
    lbuf1a_1_0_407_params.base_stride = {1, 1, 1, 1};
    lbuf1a_1_0_407_params.batch_size = 1;
    lbuf1a_1_0_407_params.depth2col = false;
    lbuf1a_1_0_407_params.enable_fronting_pmu = true;
    lbuf1a_1_0_407_params.filter_area = 0;
    lbuf1a_1_0_407_params.head1_linear = false;
    lbuf1a_1_0_407_params.head1_p2p = false;
    lbuf1a_1_0_407_params.head_1_depth = 1;
    lbuf1a_1_0_407_params.layout = params_.gather_gradient_output_reshape_id1__gather_list_1_0_387;
    lbuf1a_1_0_407_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {480, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    lbuf1a_1_0_407_params.length_fixed = 0;
    lbuf1a_1_0_407_params.list_length = 39;
    lbuf1a_1_0_407_params.list_tiles = 1;
    lbuf1a_1_0_407_params.list_type = ListBuffer::kElement;
    lbuf1a_1_0_407_params.loaded_by_broadcast = true;
    lbuf1a_1_0_407_params.num_iterations = 1;
    lbuf1a_1_0_407_params.offset_list_tile_counters = 0;
    lbuf1a_1_0_407_params.offset_max = {1, 13, 256, 3};
    lbuf1a_1_0_407_params.offset_mult = {0, 3, 0, 1};
    lbuf1a_1_0_407_params.offset_stride = {1, 1, 1, 1};
    lbuf1a_1_0_407_params.permute = false;
    lbuf1a_1_0_407_params.use_tile_counter = false;
    lbuf1a_1_0_407_ = create_node<ListBuffer>("lbuf1a_1_0_407", partition_1_0_, plasma_, lbuf1a_1_0_407_params);
    lbuf1a_1_0_407_->set_tile_id(-1);
    lbuf1a_1_0_407_->set_die_id(-1);
    lbuf1a_1_0_407_->set_mac_id("default_159");
    lbuf1a_1_0_407_->set_mac_latency(-1.000000e+00);
    lbuf1a_1_0_407_->set_metapipe_iterations({1});
    lbuf1a_1_0_407_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ScatterBuffer::Params sbuf1a_1_0_408_params;
    sbuf1a_1_0_408_params.element = true;
    sbuf1a_1_0_408_params.head1_linear = true;
    sbuf1a_1_0_408_params.head1_p2p = false;
    sbuf1a_1_0_408_params.head_1_depth = 1;
    sbuf1a_1_0_408_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {408, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf1a_1_0_408_params.length_fixed = 0;
    sbuf1a_1_0_408_params.num_iterations = 1;
    sbuf1a_1_0_408_params.read_group_packed_vectors = 13;
    sbuf1a_1_0_408_params.read_total_packed_vectors = 3328;
    sbuf1a_1_0_408_params.streaming = true;
    sbuf1a_1_0_408_params.write_group_unpacked_vectors = 39;
    sbuf1a_1_0_408_params.write_total_unpacked_vectors = 9984;
    sbuf1a_1_0_408_ = create_node<ScatterBuffer>("sbuf1a_1_0_408", partition_1_0_, plasma_, sbuf1a_1_0_408_params);
    sbuf1a_1_0_408_->set_tile_id(-1);
    sbuf1a_1_0_408_->set_die_id(-1);
    sbuf1a_1_0_408_->set_mac_id("default_408");
    sbuf1a_1_0_408_->set_mac_latency(-1.000000e+00);
    sbuf1a_1_0_408_->set_metapipe_iterations({1});
    sbuf1a_1_0_408_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    VectorTranspose::Params vector_transpose_1_0_426_params;
    vector_transpose_1_0_426_params.depth = 1;
    vector_transpose_1_0_426_params.input_is_vector_transposed = true;
    vector_transpose_1_0_426_params.layout = sbuf1a_1_0_408_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0);
    vector_transpose_1_0_426_ = create_node<VectorTranspose>("vector_transpose_1_0_426", partition_1_0_, plasma_, vector_transpose_1_0_426_params);
    vector_transpose_1_0_426_->set_tile_id(-1);
    vector_transpose_1_0_426_->set_die_id(-1);
    vector_transpose_1_0_426_->set_mac_id("default_426");
    vector_transpose_1_0_426_->set_mac_latency(-1.000000e+00);
    vector_transpose_1_0_426_->set_metapipe_iterations({1});
    vector_transpose_1_0_426_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_1_0_424_params;
    permute_view_1_0_424_params.input_layout = vector_transpose_1_0_426_->result_layout().at_address(0);
    permute_view_1_0_424_params.permute = {1, 0};
    permute_view_1_0_424_ = create_node<PermuteView>("permute_view_1_0_424", partition_1_0_, plasma_, permute_view_1_0_424_params);
    permute_view_1_0_424_->set_tile_id(-1);
    permute_view_1_0_424_->set_die_id(-1);
    permute_view_1_0_424_->set_mac_id("default_424");
    permute_view_1_0_424_->set_mac_latency(-1.000000e+00);
    permute_view_1_0_424_->set_metapipe_iterations({1});
    permute_view_1_0_424_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Realign::Params realign_1_0_427_params;
    realign_1_0_427_params.depth = 1;
    realign_1_0_427_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    realign_1_0_427_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1);
    realign_1_0_427_ = create_node<Realign>("realign_1_0_427", partition_1_0_, plasma_, realign_1_0_427_params);
    realign_1_0_427_->set_tile_id(-1);
    realign_1_0_427_->set_die_id(-1);
    realign_1_0_427_->set_mac_id("default_427");
    realign_1_0_427_->set_mac_latency(-1.000000e+00);
    realign_1_0_427_->set_metapipe_iterations({1});
    realign_1_0_427_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_params;
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_params.input_layout = realign_1_0_427_->result_layout().at_address(0);
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 3, 1, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_params.reshape = {256, 3, 1, 136};
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_ = create_node<ReshapeView>("ptconvcnn__conv_layer__conv2d_weight_reshape_bwd", partition_1_0_, plasma_, ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_params);
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_tile_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_die_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_mac_id("ptconvcnn__conv_layer__conv2d_weight_reshape_bwd");
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Realign::Params realign_1_0_428_params;
    realign_1_0_428_params.depth = 1;
    realign_1_0_428_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 3, 1, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    realign_1_0_428_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 3, 1, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3).vector_align();
    realign_1_0_428_ = create_node<Realign>("realign_1_0_428", partition_1_0_, plasma_, realign_1_0_428_params);
    realign_1_0_428_->set_tile_id(-1);
    realign_1_0_428_->set_die_id(-1);
    realign_1_0_428_->set_mac_id("default_428");
    realign_1_0_428_->set_mac_latency(-1.000000e+00);
    realign_1_0_428_->set_metapipe_iterations({1});
    realign_1_0_428_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBufferPermute::Params permute_1_0_425_params;
    permute_1_0_425_params.input_is_vector_transposed = false;
    permute_1_0_425_params.input_layout = realign_1_0_428_->result_layout().at_address(0);
    permute_1_0_425_params.permutation = {1, 2, 3, 0};
    permute_1_0_425_ = create_node<TBufferPermute>("permute_1_0_425", partition_1_0_, plasma_, permute_1_0_425_params);
    permute_1_0_425_->set_tile_id(-1);
    permute_1_0_425_->set_die_id(-1);
    permute_1_0_425_->set_mac_id("default_425");
    permute_1_0_425_->set_mac_latency(-1.000000e+00);
    permute_1_0_425_->set_metapipe_iterations({1});
    permute_1_0_425_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_429_params;
    transpose_1_0_429_params.depth = 1;
    transpose_1_0_429_params.layout = permute_1_0_425_->result_layout().at_address(0);
    transpose_1_0_429_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_429_ = create_node<Transpose>("transpose_1_0_429", partition_1_0_, plasma_, transpose_1_0_429_params);
    transpose_1_0_429_->set_tile_id(-1);
    transpose_1_0_429_->set_die_id(-1);
    transpose_1_0_429_->set_mac_id("default_429");
    transpose_1_0_429_->set_mac_latency(-1.000000e+00);
    transpose_1_0_429_->set_metapipe_iterations({1});
    transpose_1_0_429_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    TBufferPermute::Params ptconvcnn__conv_layer__conv2d_weight_permute_bwd_params;
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_params.input_is_vector_transposed = true;
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_params.input_layout = transpose_1_0_429_->result_layout().at_address(0);
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_params.permutation = {3, 2, 0, 1};
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_ = create_node<TBufferPermute>("ptconvcnn__conv_layer__conv2d_weight_permute_bwd", partition_1_0_, plasma_, ptconvcnn__conv_layer__conv2d_weight_permute_bwd_params);
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_tile_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_die_id(-1);
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_mac_id("ptconvcnn__conv_layer__conv2d_weight_permute_bwd");
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvcnn__conv_layer__reshape_1_bwd_params;
    ptconvcnn__conv_layer__reshape_1_bwd_params.input_layout = ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->result_layout().at_address(0);
    ptconvcnn__conv_layer__reshape_1_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).vector_align();
    ptconvcnn__conv_layer__reshape_1_bwd_params.reshape = {256, 136, 3};
    ptconvcnn__conv_layer__reshape_1_bwd_ = create_node<ReshapeView>("ptconvcnn__conv_layer__reshape_1_bwd", partition_1_0_, plasma_, ptconvcnn__conv_layer__reshape_1_bwd_params);
    ptconvcnn__conv_layer__reshape_1_bwd_->set_tile_id(-1);
    ptconvcnn__conv_layer__reshape_1_bwd_->set_die_id(-1);
    ptconvcnn__conv_layer__reshape_1_bwd_->set_mac_id("ptconvcnn__conv_layer__reshape_1_bwd");
    ptconvcnn__conv_layer__reshape_1_bwd_->set_mac_latency(1.300000e+01);
    ptconvcnn__conv_layer__reshape_1_bwd_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__reshape_1_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_409_params;
    gbuf1a_1_0_409_params.head1_linear = false;
    gbuf1a_1_0_409_params.head1_p2p = false;
    gbuf1a_1_0_409_params.head_1_depth = 1;
    gbuf1a_1_0_409_params.layout = ptconvcnn__conv_layer__reshape_1_bwd_->result_layout();
    gbuf1a_1_0_409_params.num_iterations = 1;
    gbuf1a_1_0_409_ = create_node<GBuffer>("gbuf1a_1_0_409", partition_1_0_, plasma_, gbuf1a_1_0_409_params);
    gbuf1a_1_0_409_->set_tile_id(-1);
    gbuf1a_1_0_409_->set_die_id(-1);
    gbuf1a_1_0_409_->set_mac_id("default_409");
    gbuf1a_1_0_409_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_409_->set_metapipe_iterations({1});
    gbuf1a_1_0_409_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section2() {
    bool layouts_match = true;
    /** Section 2, Chip 0 **/
    partition_2_0_ = create_node<PartitionNode>("partition_2_0_", this, plasma_, 2, 0);
    mlir::rail::RAIL::rail->create_section(partition_2_0_);
    
    partition_2_0_->set_section_latency(1.424061e-04);
    OptimizerSGD::Params ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvcnn__dense_layer__weight__grad_2_0_168;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvcnn__dense_layer__weight__sgd0__momentum_2_0_169;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvcnn__dense_layer__weight_2_0_167;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.mixp = true;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_params);
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_tile_id(-1);
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_die_id(-1);
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt");
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvcnn__dense_layer__bias__grad_2_0_174;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvcnn__dense_layer__bias__sgd0__momentum_2_0_175;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvcnn__dense_layer__bias_2_0_173;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.mixp = true;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_params);
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_tile_id(-1);
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_die_id(-1);
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt");
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_metapipe_iterations({1});
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.box_layout = true;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.decay = 3.000000e-04;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.layout_dw = params_.ptconvcnn__conv_layer__bias__grad_2_0_180;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.layout_mw = params_.ptconvcnn__conv_layer__bias__sgd0__momentum_2_0_181;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.layout_w = params_.ptconvcnn__conv_layer__bias_2_0_179;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.lr = 1.500000e-03;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.mixp = true;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.momentum = 0.000000e+00;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params.w_output_interface = false;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_ = create_node<OptimizerSGD>("ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt", partition_2_0_, plasma_, ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_params);
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_tile_id(-1);
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_die_id(-1);
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_mac_id("ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt");
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.box_layout = true;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.decay = 3.000000e-04;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.layout_dw = params_.ptconvcnn__conv_layer__weight__grad_2_0_186;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.layout_mw = params_.ptconvcnn__conv_layer__weight__sgd0__momentum_2_0_187;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.layout_w = params_.ptconvcnn__conv_layer__weight_2_0_185;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.lr = 1.500000e-03;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.mixp = true;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.momentum = 0.000000e+00;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params.w_output_interface = false;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_ = create_node<OptimizerSGD>("ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt", partition_2_0_, plasma_, ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_params);
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_tile_id(-1);
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_die_id(-1);
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_mac_id("ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt");
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_metapipe_iterations({1});
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_430_wr_params = {};
    gbuf1a_0_0_430_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_430_->configure_wr(gbuf1a_0_0_430_wr_params);
    PmuSetupRead gbuf1a_0_0_430_rd1_params0 = realign_0_0_412_->read_params(Realign::kInput);
    SN_ASSERT(gbuf1a_0_0_430_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of realign_0_0_412");
    gbuf1a_0_0_430_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_430_->configure_rd_head_1(gbuf1a_0_0_430_rd1_params0, {1});
    gbuf1a_0_0_430_->configure_node();
    
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Realign
    realign_0_0_412_->set_source_context("py_air.cpp:1543:0");
    realign_0_0_412_->set_op_name("tlir.Realign");
    realign_0_0_412_->configure_node();
    
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_395_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_395_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of realign_0_0_412");
    gbuf1a_0_0_395_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_395_->configure_wr(gbuf1a_0_0_395_wr_params);
    PmuSetupRead gbuf1a_0_0_395_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_395_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__conv_layer__reshape_1");
    gbuf1a_0_0_395_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_395_->configure_rd_head_1(gbuf1a_0_0_395_rd1_params0, {1});
    gbuf1a_0_0_395_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvcnn__conv_layer__reshape_1_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__reshape_1_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__reshape_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    realign_0_0_413_->set_source_context("conv.py:298:0");
    realign_0_0_413_->set_op_name("tlir.Realign");
    realign_0_0_413_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_permute:0:0");
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_op_name("tlir.Permute");
    ptconvcnn__conv_layer__conv2d_weight_permute_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    vector_transpose_0_0_414_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_permute:0:0");
    vector_transpose_0_0_414_->set_op_name("tlir.VectorTranspose");
    vector_transpose_0_0_414_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__conv2d_weight_reshape_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_437_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_437_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__conv2d_weight_reshape");
    gbuf2a_0_0_437_wr_params.is_transpose = true;
    gbuf2a_0_0_437_wr_params.vectors_in_column = ceiling(ptconvcnn__conv_layer__conv2d_weight_reshape_->result_layout().physical_shape().at(1), ptconvcnn__conv_layer__conv2d_weight_reshape_->result_layout().vector_elements());
    gbuf2a_0_0_437_wr_params.interleave = true;
    gbuf2a_0_0_437_wr_params.interleave_size = ptconvcnn__conv_layer__conv2d_weight_reshape_->result_layout().physical_shape().at(0);
    gbuf2a_0_0_437_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_437_->configure_wr(gbuf2a_0_0_437_wr_params);
    PmuSetupRead gbuf2a_0_0_437_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_437_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of split_kernel_gbuf_0_0_296");
    gbuf2a_0_0_437_rd1_params0.is_transpose = true;
    gbuf2a_0_0_437_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_437_->configure_rd_head_1(gbuf2a_0_0_437_rd1_params0, {1});
    gbuf2a_0_0_437_->configure_node();
    
    // logreg_cnn.py:194:0: tlir.Buffer
    tbuf2u_0_0_197_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf2u_0_0_197_, params_.inp_window_dram_in));
;
    for (auto ctx : tbuf2u_0_0_197_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf2u_0_0_197_->add_context(ptconvcnn__lambda_layer__indexselect_->get_tbuf_contexts(RAILIndex::IO::kLutRd));
    for (auto ctx_name : ptconvcnn__lambda_layer__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd))
        tbuf2u_0_0_197_->ctx(ctx_name)->set_read_credits({1, tbuf2u_0_0_202_->param().buffer_depth},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_0_0_197_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf2u_0_0_197_->configure_node();
    
    // logreg_cnn.py:194:0: tlir.Buffer
    tbuf1u_0_0_198_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1u_0_0_198_, params_.inp_window_slice_1_dram_in));
;
    for (auto ctx : tbuf1u_0_0_198_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1u_0_0_198_->add_context(ptconvcnn__lambda_layer__indexselect_->get_tbuf_contexts(RAILIndex::IO::kIndexRd));
    for (auto ctx : tbuf1u_0_0_198_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1u_0_0_198_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    tbuf2u_0_0_202_->view<TBufferPermuteView>(std::vector<int64_t>{{1, 0}})->view<TBufferLayoutView>(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {3, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align())->add_context(ptconvcnn__lambda_layer__indexselect_->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    for (auto ctx : tbuf2u_0_0_202_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf2u_0_0_202_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx_name : std::vector<std::string>{"kDefaultRead1"})
        tbuf2u_0_0_202_->ctx(ctx_name)->set_read_credits({2, 2},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_0_0_202_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf2u_0_0_202_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvcnn__conv_layer__reshape_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__reshape_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__reshape_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    PmuSetupRead sbuf2u_0_0_295_rd1_params0 = biggemm_0_0_297_->read_params(BigGemm::kA);
    SN_ASSERT(sbuf2u_0_0_295_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of biggemm_0_0_297");
    sbuf2u_0_0_295_rd1_params0.buffer_pace_order = true;
    sbuf2u_0_0_295_rd1_params0.buffer_pace_order_credits = biggemm_0_0_297_->wbuf_depth();
    sbuf2u_0_0_295_rd1_params0.buffer_pace_order_vectors = biggemm_0_0_297_->wbuf_vectors();
    sbuf2u_0_0_295_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    sbuf2u_0_0_295_->configure_rd_head_1(sbuf2u_0_0_295_rd1_params0, {1});
    sbuf2u_0_0_295_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    PmuSetupWrite split_kernel_gbuf_0_0_296_wr_params = {};
    split_kernel_gbuf_0_0_296_->configure_wr(split_kernel_gbuf_0_0_296_wr_params);
    split_kernel_gbuf_0_0_296_->set_source_context("BigLinearExternalColPar.cpp:40:0");
    split_kernel_gbuf_0_0_296_->set_op_name("tlir.Split");
    split_kernel_gbuf_0_0_296_->set_batch_size_b(1);
    split_kernel_gbuf_0_0_296_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_297_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_297_->set_op_name("tlir.Linear");
    biggemm_0_0_297_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_298_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_298_->set_op_name("tlir.Linear");
    biggemm_0_0_298_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_299_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_299_->set_op_name("tlir.Linear");
    biggemm_0_0_299_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_300_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_300_->set_op_name("tlir.Linear");
    biggemm_0_0_300_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_301_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_301_->set_op_name("tlir.Linear");
    biggemm_0_0_301_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_302_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_302_->set_op_name("tlir.Linear");
    biggemm_0_0_302_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_303_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_303_->set_op_name("tlir.Linear");
    biggemm_0_0_303_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_304_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_304_->set_op_name("tlir.Linear");
    biggemm_0_0_304_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_305_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_305_->set_op_name("tlir.Linear");
    biggemm_0_0_305_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_306_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_306_->set_op_name("tlir.Linear");
    biggemm_0_0_306_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_307_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_307_->set_op_name("tlir.Linear");
    biggemm_0_0_307_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_308_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_308_->set_op_name("tlir.Linear");
    biggemm_0_0_308_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_309_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_309_->set_op_name("tlir.Linear");
    biggemm_0_0_309_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_310_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_310_->set_op_name("tlir.Linear");
    biggemm_0_0_310_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_311_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_311_->set_op_name("tlir.Linear");
    biggemm_0_0_311_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_312_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_312_->set_op_name("tlir.Linear");
    biggemm_0_0_312_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_313_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_313_->set_op_name("tlir.Linear");
    biggemm_0_0_313_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_314_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_314_->set_op_name("tlir.Linear");
    biggemm_0_0_314_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_315_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_315_->set_op_name("tlir.Linear");
    biggemm_0_0_315_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_316_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_316_->set_op_name("tlir.Linear");
    biggemm_0_0_316_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_317_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_317_->set_op_name("tlir.Linear");
    biggemm_0_0_317_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_318_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_318_->set_op_name("tlir.Linear");
    biggemm_0_0_318_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_321_wr_params = {};
    gbuf2u_0_0_321_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_321_->configure_wr(0, biggemm_0_0_297_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(1, biggemm_0_0_298_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(2, biggemm_0_0_299_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(3, biggemm_0_0_300_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(4, biggemm_0_0_301_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(5, biggemm_0_0_302_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(6, biggemm_0_0_303_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(7, biggemm_0_0_304_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(8, biggemm_0_0_305_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(9, biggemm_0_0_306_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(10, biggemm_0_0_307_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(11, biggemm_0_0_308_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(12, biggemm_0_0_309_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(13, biggemm_0_0_310_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(14, biggemm_0_0_311_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(15, biggemm_0_0_312_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(16, biggemm_0_0_313_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(17, biggemm_0_0_314_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(18, biggemm_0_0_315_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(19, biggemm_0_0_316_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(20, biggemm_0_0_317_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_321_->configure_wr(21, biggemm_0_0_318_->write_params(BigGemm::kOutput));
    PmuSetupRead gbuf2u_0_0_321_rd1_params0 = bias_transpose_add_0_0_322_->read_params(BiasTransposeAdd::kInput);
    SN_ASSERT(gbuf2u_0_0_321_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of bias_transpose_add_0_0_322");
    gbuf2u_0_0_321_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_321_->configure_rd_head_1(gbuf2u_0_0_321_rd1_params0, {2, 2});
    gbuf2u_0_0_321_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    bias_transpose_add_0_0_322_->set_source_context("ConvIm2Col.cpp:298:0");
    bias_transpose_add_0_0_322_->set_op_name("tlir.BiasTransposeAdd");
    bias_transpose_add_0_0_322_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    streaming_transpose_0_0_323_->set_source_context("ConvIm2Col.cpp:371:0");
    streaming_transpose_0_0_323_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_0_0_323_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_206_wr_params = streaming_transpose_0_0_323_->write_params(StreamingTranspose::kHead1Buffer);
    gbuf2u_0_0_206_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_206_->configure_wr(gbuf2u_0_0_206_wr_params);
    PmuSetupRead gbuf2u_0_0_206_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_206_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__conv_layer__reshape_2");
    gbuf2u_0_0_206_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_206_->configure_rd_head_1(gbuf2u_0_0_206_rd1_params0, {2, 2, 2, 2});
    gbuf2u_0_0_206_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvcnn__conv_layer__reshape_2_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__reshape_2_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__reshape_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvcnn__dense_layer__linear_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_->set_op_name("tlir.Linear");
    ptconvcnn__dense_layer__linear_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_393_wr_params = ptconvcnn__dense_layer__linear_->write_params(BigGemm::kOutput);
    gbuf1a_0_0_393_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_393_->configure_wr(gbuf1a_0_0_393_wr_params);
    PmuSetupRead gbuf1a_0_0_393_rd1_params1 = {};
    SN_ASSERT(gbuf1a_0_0_393_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of bias_add_0_0_390");
    gbuf1a_0_0_393_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_393_->configure_rd_head_1(gbuf1a_0_0_393_rd1_params1, {1});
    gbuf1a_0_0_393_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    bias_add_0_0_390_->set_source_context("overrides.py:1355:0");
    bias_add_0_0_390_->set_op_name("tlir.AddBias");
    bias_add_0_0_390_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_210_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_210_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of bias_add_0_0_390");
    gbuf2u_0_0_210_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_210_->configure_wr(gbuf2u_0_0_210_wr_params);
    PmuSetupRead gbuf2u_0_0_210_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_210_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_0_0_438");
    gbuf2u_0_0_210_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_210_->configure_rd_head_1(gbuf2u_0_0_210_rd1_params0, {2, 2});
    gbuf2u_0_0_210_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_0_0_438_->set_source_context("overrides.py:1355:0");
    layout_cast_0_0_438_->set_op_name("tlir.LayoutCast");
    layout_cast_0_0_438_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    ptconvcnn__dense_layer__linear_t_output0_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_t_output0_->set_op_name("tlir.PermuteView");
    ptconvcnn__dense_layer__linear_t_output0_->configure_node();
    
    // logreg_cnn.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_440_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_440_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__dense_layer__linear_t_output0");
    gbuf2a_0_0_440_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_440_->configure_wr(gbuf2a_0_0_440_wr_params);
    PmuSetupRead gbuf2a_0_0_440_rd0_params0 = {};
    SN_ASSERT(gbuf2a_0_0_440_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__reshape");
    gbuf2a_0_0_440_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_440_->configure_rd_head_0(gbuf2a_0_0_440_rd0_params0, {2, 2});
    PmuSetupRead gbuf2a_0_0_440_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_440_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__view");
    gbuf2a_0_0_440_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_440_->configure_rd_head_1(gbuf2a_0_0_440_rd1_params0, {2, 2});
    gbuf2a_0_0_440_->configure_node();
    
    // logreg_cnn.py:222:0: tlir.Reshape
    ptconvcnn__reshape_->set_source_context("logreg_cnn.py:222:0");
    ptconvcnn__reshape_->set_op_name("tlir.Reshape");
    ptconvcnn__reshape_->configure_node();
    
    // logreg_cnn.py:229:0: tlir.Reshape
    ptconvcnn__view_->set_source_context("logreg_cnn.py:229:0");
    ptconvcnn__view_->set_op_name("tlir.Reshape");
    ptconvcnn__view_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_397_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_397_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__reshape_2");
    gbuf2a_0_0_397_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_397_->configure_wr(gbuf2a_0_0_397_wr_params);
    PmuSetupRead gbuf2a_0_0_397_rd1_params1 = {};
    gbuf2a_0_0_397_rd1_params1.interleave = true;
    gbuf2a_0_0_397_rd1_params1.vectors_in_column = ptconvcnn__conv_layer__reshape_2_->result_layout().chunk_vectors();
    gbuf2a_0_0_397_rd1_params1.interleave_size = ptconvcnn__conv_layer__reshape_2_->result_layout().physical_shape()[0];
    gbuf2a_0_0_397_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_397_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_397_->configure_rd_head_1(gbuf2a_0_0_397_rd1_params1, {1});
    gbuf2a_0_0_397_->configure_node();
    
    // logreg_cnn.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_441_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_441_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__reshape");
    gbuf2a_0_0_441_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_441_->configure_wr(gbuf2a_0_0_441_wr_params);
    PmuSetupRead gbuf2a_0_0_441_rd0_params1 = {};
    gbuf2a_0_0_441_rd0_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_441_->configure_rd_head_0(gbuf2a_0_0_441_rd0_params1, {2, 2});
    PmuSetupRead gbuf2a_0_0_441_rd1_params1 = {};
    gbuf2a_0_0_441_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_441_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_441_->configure_rd_head_1(gbuf2a_0_0_441_rd1_params1, {1});
    gbuf2a_0_0_441_->configure_node();
    
    // logreg_cnn.py:229:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_399_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_399_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__view");
    gbuf2a_0_0_399_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_399_->configure_wr(gbuf2a_0_0_399_wr_params);
    PmuSetupRead gbuf2a_0_0_399_rd1_params1 = {};
    gbuf2a_0_0_399_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_399_rd1_params1.backing_pmu_removes_alignment = true;
    gbuf2a_0_0_399_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_399_->configure_rd_head_1(gbuf2a_0_0_399_rd1_params1, {1});
    gbuf2a_0_0_399_->configure_node();
    
    // logreg_cnn.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_432_wr_params = {};
    gbuf2a_0_0_432_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_432_->configure_wr(gbuf2a_0_0_432_wr_params);
    PmuSetupRead gbuf2a_0_0_432_rd1_params0 = sub_0_0_330_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2a_0_0_432_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of sub_0_0_330");
    gbuf2a_0_0_432_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_432_->configure_rd_head_1(gbuf2a_0_0_432_rd1_params0, {1});
    gbuf2a_0_0_432_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_431_wr_params = {};
    gbuf1a_0_0_431_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_431_->configure_wr(gbuf1a_0_0_431_wr_params);
    PmuSetupRead gbuf1a_0_0_431_rd1_params0 = realign_0_0_418_->read_params(Realign::kInput);
    SN_ASSERT(gbuf1a_0_0_431_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of realign_0_0_418");
    gbuf1a_0_0_431_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_431_->configure_rd_head_1(gbuf1a_0_0_431_rd1_params0, {1});
    gbuf1a_0_0_431_->configure_node();
    
    // UnknownFileName:0:0: tlir.Realign
    realign_0_0_418_->set_source_context("UnknownFileName:0:0");
    realign_0_0_418_->set_op_name("tlir.Realign");
    realign_0_0_418_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_400_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_400_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of realign_0_0_418");
    gbuf1a_0_0_400_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_400_->configure_wr(gbuf1a_0_0_400_wr_params);
    PmuSetupRead gbuf1a_0_0_400_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_400_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__reshape_1");
    gbuf1a_0_0_400_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_400_->configure_rd_head_1(gbuf1a_0_0_400_rd1_params0, {1});
    gbuf1a_0_0_400_->configure_node();
    
    // logreg_cnn.py:223:0: tlir.Reshape
    ptconvcnn__reshape_1_->set_source_context("logreg_cnn.py:223:0");
    ptconvcnn__reshape_1_->set_op_name("tlir.Reshape");
    ptconvcnn__reshape_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    sub_0_0_330_->set_source_context("overrides.py:1355:0");
    sub_0_0_330_->set_op_name("tlir.Sub");
    sub_0_0_330_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_442_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_442_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of sub_0_0_330");
    gbuf1a_0_0_442_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_442_->configure_wr(gbuf1a_0_0_442_wr_params);
    PmuSetupRead gbuf1a_0_0_442_rd0_params0 = mul_0_0_331_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_442_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of mul_0_0_331");
    gbuf1a_0_0_442_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_442_->configure_rd_head_0(gbuf1a_0_0_442_rd0_params0, {1});
    PmuSetupRead gbuf1a_0_0_442_rd1_params1 = mul_0_0_331_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_442_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of mul_0_0_331");
    gbuf1a_0_0_442_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_442_->configure_rd_head_1(gbuf1a_0_0_442_rd1_params1, {1});
    gbuf1a_0_0_442_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    mul_0_0_331_->set_source_context("overrides.py:1355:0");
    mul_0_0_331_->set_op_name("tlir.Mul");
    mul_0_0_331_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    mean_unalign_0_0_332_->set_source_context("overrides.py:1355:0");
    mean_unalign_0_0_332_->set_op_name("tlir.MeanAll");
    mean_unalign_0_0_332_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_401_wr_params = mean_unalign_0_0_332_->write_params();
    SN_ASSERT(gbuf1a_0_0_401_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of mean_unalign_0_0_332");
    gbuf1a_0_0_401_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_401_->configure_wr(gbuf1a_0_0_401_wr_params);
    PmuSetupRead gbuf1a_0_0_401_rd1_params1 = {};
    gbuf1a_0_0_401_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_401_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_401_->configure_rd_head_1(gbuf1a_0_0_401_rd1_params1, {1});
    gbuf1a_0_0_401_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg_cnn.py:194:0: tlir.Index
    ptconvcnn__lambda_layer__indexselect_->set_source_context("logreg_cnn.py:194:0");
    ptconvcnn__lambda_layer__indexselect_->set_op_name("tlir.Index");
    ptconvcnn__lambda_layer__indexselect_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_204_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_204_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__reshape");
    gbuf2u_0_0_204_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_204_->configure_wr(gbuf2u_0_0_204_wr_params);
    PmuSetupRead gbuf2u_0_0_204_rd1_params0 = {};
    gbuf2u_0_0_204_rd1_params0.buffer_gather_list = true;
    gbuf2u_0_0_204_rd1_params0.buffer_overflow = false;
    gbuf2u_0_0_204_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_0_0_204_rd1_params0.buffer_gather_max = {1, 96, 5, 32};
    gbuf2u_0_0_204_rd1_params0.buffer_gather_stride = {1, 32, 1, 1};
    gbuf2u_0_0_204_rd1_params0.buffer_gather_mult = {0, 0, 64, 0};
    auto sbuf2u_0_0_295_scatter_control = sbuf2u_0_0_295_->get_pacing_control();
    gbuf2u_0_0_204_rd1_params0.buffer_pace_order  = sbuf2u_0_0_295_scatter_control.enable;
    gbuf2u_0_0_204_rd1_params0.buffer_pace_order_credits = sbuf2u_0_0_295_scatter_control.credits;
    gbuf2u_0_0_204_rd1_params0.buffer_pace_order_vectors = sbuf2u_0_0_295_scatter_control.vectors;
    gbuf2u_0_0_204_rd1_params0.buffer_pace_read_ceiling = sbuf2u_0_0_295_scatter_control.ceiling;
    gbuf2u_0_0_204_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_204_->configure_rd_head_1(gbuf2u_0_0_204_rd1_params0, {2, 2});
    gbuf2u_0_0_204_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_208_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_208_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__reshape_2");
    gbuf2u_0_0_208_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_208_->configure_wr(gbuf2u_0_0_208_wr_params);
    PmuSetupRead gbuf2u_0_0_208_rd1_params1 = ptconvcnn__dense_layer__linear_->read_params(BigGemm::kB);
    gbuf2u_0_0_208_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_0_0_208_->configure_rd_head_1(gbuf2u_0_0_208_rd1_params1, {1, 2});
    gbuf2u_0_0_208_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    lbuf1a_0_0_396_->set_data_buffer(gbuf2u_0_0_204_, 1);
    PmuSetupWrite lbuf1a_0_0_396_wr_params = {};
    lbuf1a_0_0_396_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    lbuf1a_0_0_396_->configure_wr(lbuf1a_0_0_396_wr_params);
    lbuf1a_0_0_396_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Realign
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    // logreg_cnn.py:222:0: tlir.mutable.TemporalConcatBuffer
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Index
    std::unordered_map<int64_t, std::vector<RAILConnectInterface>>ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map = {};
    ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kLutRd, std::vector<RAILConnectInterface> {tbuf2u_0_0_197_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kLutRd),TBufferContext::Output::kDataOutput)}));
    ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kIndexRd, std::vector<RAILConnectInterface> {tbuf1u_0_0_198_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kIndexRd),TBufferContext::Output::kDataOutput)}));
    if (ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_0_0_202_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_0_0_202_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    ptconvcnn__lambda_layer__indexselect_->rail_custom_connect(ptconvcnn__lambda_layer__indexselect_rail_connect_interface_map);
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Gather
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // logreg_cnn.py:222:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Reshape
    // logreg_cnn.py:229:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.mutate.TemporalConcat
    // logreg_cnn.py:229:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Realign
    // UnknownFileName:0:0: tlir.Buffer
    // logreg_cnn.py:223:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    TBuffer::tconnect_m_to_n(tbuf2u_0_0_197_, tbuf2u_0_0_202_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_0_0_197_->ctrl_input_ops(ptconvcnn__lambda_layer__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2u_0_0_197_, tbuf2u_0_0_202_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_0_0_197_->ctrl_input_ops(ptconvcnn__lambda_layer__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn1));
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_0_0_)), "RAIL compilation failed for section 0!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_0_0_, 0)), "RAIL global compile failed for section 0!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_0_0_430_->finalize();
    realign_0_0_412_->finalize();
    gbuf1a_0_0_395_->finalize();
    ptconvcnn__conv_layer__reshape_1_->finalize();
    realign_0_0_413_->finalize();
    ptconvcnn__conv_layer__conv2d_weight_permute_->finalize();
    vector_transpose_0_0_414_->finalize();
    ptconvcnn__conv_layer__conv2d_weight_reshape_->finalize();
    gbuf2a_0_0_437_->finalize();
    tbuf2u_0_0_197_->finalize();
    tbuf1u_0_0_198_->finalize();
    ptconvcnn__lambda_layer__indexselect_->finalize();
    tbuf2u_0_0_202_->finalize();
    ptconvcnn__conv_layer__reshape_->finalize();
    gbuf2u_0_0_204_->finalize();
    lbuf1a_0_0_396_->finalize();
    sbuf2u_0_0_295_->finalize();
    split_kernel_gbuf_0_0_296_->finalize();
    biggemm_0_0_297_->finalize();
    biggemm_0_0_298_->finalize();
    biggemm_0_0_299_->finalize();
    biggemm_0_0_300_->finalize();
    biggemm_0_0_301_->finalize();
    biggemm_0_0_302_->finalize();
    biggemm_0_0_303_->finalize();
    biggemm_0_0_304_->finalize();
    biggemm_0_0_305_->finalize();
    biggemm_0_0_306_->finalize();
    biggemm_0_0_307_->finalize();
    biggemm_0_0_308_->finalize();
    biggemm_0_0_309_->finalize();
    biggemm_0_0_310_->finalize();
    biggemm_0_0_311_->finalize();
    biggemm_0_0_312_->finalize();
    biggemm_0_0_313_->finalize();
    biggemm_0_0_314_->finalize();
    biggemm_0_0_315_->finalize();
    biggemm_0_0_316_->finalize();
    biggemm_0_0_317_->finalize();
    biggemm_0_0_318_->finalize();
    gbuf2u_0_0_321_->finalize();
    bias_transpose_add_0_0_322_->finalize();
    streaming_transpose_0_0_323_->finalize();
    gbuf2u_0_0_206_->finalize();
    ptconvcnn__conv_layer__reshape_2_->finalize();
    gbuf2u_0_0_208_->finalize();
    ptconvcnn__dense_layer__linear_->finalize();
    gbuf1a_0_0_393_->finalize();
    bias_add_0_0_390_->finalize();
    gbuf2u_0_0_210_->finalize();
    layout_cast_0_0_438_->finalize();
    ptconvcnn__dense_layer__linear_t_output0_->finalize();
    gbuf2a_0_0_440_->finalize();
    ptconvcnn__reshape_->finalize();
    ptconvcnn__view_->finalize();
    gbuf2a_0_0_397_->finalize();
    gbuf2a_0_0_441_->finalize();
    gbuf2a_0_0_399_->finalize();
    gbuf2a_0_0_432_->finalize();
    gbuf1a_0_0_431_->finalize();
    realign_0_0_418_->finalize();
    gbuf1a_0_0_400_->finalize();
    ptconvcnn__reshape_1_->finalize();
    sub_0_0_330_->finalize();
    gbuf1a_0_0_442_->finalize();
    mul_0_0_331_->finalize();
    mean_unalign_0_0_332_->finalize();
    gbuf1a_0_0_401_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_430_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), realign_0_0_412_->get_connect_interface(Realign::kInput, true));
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Realign
    connect_by_interface(realign_0_0_412_->get_connect_interface(Realign::kOutput, false), gbuf1a_0_0_395_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(gbuf1a_0_0_395_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), realign_0_0_413_->get_connect_interface(Realign::kInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    connect_by_interface(realign_0_0_413_->get_connect_interface(Realign::kOutput, false), ptconvcnn__conv_layer__conv2d_weight_permute_->get_connect_interface(TBufferPermute::kDefaultInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    connect_by_interface(ptconvcnn__conv_layer__conv2d_weight_permute_->get_connect_interface(TBufferPermute::kDefaultOutput, false), vector_transpose_0_0_414_->get_connect_interface(VectorTranspose::kInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    connect_by_interface(vector_transpose_0_0_414_->get_connect_interface(VectorTranspose::kOutput, false), gbuf2a_0_0_437_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_cnn.py:222:0: tlir.mutable.TemporalConcatBuffer
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_437_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), split_kernel_gbuf_0_0_296_->get_connect_interface(KernelGBuffer::Input::kTailBuffer, true));
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Index
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(tbuf2u_0_0_202_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf2u_0_0_204_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(gbuf2u_0_0_204_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf2u_0_0_295_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    connect_1_to_n(lbuf1a_0_0_396_->output(ListBuffer::kGatherAddress), gbuf2u_0_0_204_->input_list(GBuffer::get_read_scalar_input(1)));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Gather
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_297_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_298_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_299_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_300_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_301_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_302_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_303_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_304_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_305_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_306_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_307_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_308_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_309_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_310_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_311_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_312_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_313_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_314_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_315_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_316_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_317_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_295_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_318_->get_connect_interface(BigGemm::kA, true));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    std::vector<DataSink *> biggemm_0_0_297_schema_sinks = {};
    for (auto sink : biggemm_0_0_297_->input_list(BigGemm::kB)) {
        biggemm_0_0_297_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_297_connect_schemas = {};
    biggemm_0_0_297_connect_schemas.push_back(biggemm_0_0_297_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 0)), biggemm_0_0_297_schema_sinks, std::move(biggemm_0_0_297_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_298_schema_sinks = {};
    for (auto sink : biggemm_0_0_298_->input_list(BigGemm::kB)) {
        biggemm_0_0_298_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_298_connect_schemas = {};
    biggemm_0_0_298_connect_schemas.push_back(biggemm_0_0_298_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 1)), biggemm_0_0_298_schema_sinks, std::move(biggemm_0_0_298_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_299_schema_sinks = {};
    for (auto sink : biggemm_0_0_299_->input_list(BigGemm::kB)) {
        biggemm_0_0_299_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_299_connect_schemas = {};
    biggemm_0_0_299_connect_schemas.push_back(biggemm_0_0_299_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 2)), biggemm_0_0_299_schema_sinks, std::move(biggemm_0_0_299_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_300_schema_sinks = {};
    for (auto sink : biggemm_0_0_300_->input_list(BigGemm::kB)) {
        biggemm_0_0_300_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_300_connect_schemas = {};
    biggemm_0_0_300_connect_schemas.push_back(biggemm_0_0_300_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 3)), biggemm_0_0_300_schema_sinks, std::move(biggemm_0_0_300_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_301_schema_sinks = {};
    for (auto sink : biggemm_0_0_301_->input_list(BigGemm::kB)) {
        biggemm_0_0_301_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_301_connect_schemas = {};
    biggemm_0_0_301_connect_schemas.push_back(biggemm_0_0_301_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 4)), biggemm_0_0_301_schema_sinks, std::move(biggemm_0_0_301_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_302_schema_sinks = {};
    for (auto sink : biggemm_0_0_302_->input_list(BigGemm::kB)) {
        biggemm_0_0_302_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_302_connect_schemas = {};
    biggemm_0_0_302_connect_schemas.push_back(biggemm_0_0_302_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 5)), biggemm_0_0_302_schema_sinks, std::move(biggemm_0_0_302_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_303_schema_sinks = {};
    for (auto sink : biggemm_0_0_303_->input_list(BigGemm::kB)) {
        biggemm_0_0_303_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_303_connect_schemas = {};
    biggemm_0_0_303_connect_schemas.push_back(biggemm_0_0_303_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 6)), biggemm_0_0_303_schema_sinks, std::move(biggemm_0_0_303_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_304_schema_sinks = {};
    for (auto sink : biggemm_0_0_304_->input_list(BigGemm::kB)) {
        biggemm_0_0_304_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_304_connect_schemas = {};
    biggemm_0_0_304_connect_schemas.push_back(biggemm_0_0_304_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 7)), biggemm_0_0_304_schema_sinks, std::move(biggemm_0_0_304_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_305_schema_sinks = {};
    for (auto sink : biggemm_0_0_305_->input_list(BigGemm::kB)) {
        biggemm_0_0_305_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_305_connect_schemas = {};
    biggemm_0_0_305_connect_schemas.push_back(biggemm_0_0_305_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 8)), biggemm_0_0_305_schema_sinks, std::move(biggemm_0_0_305_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_306_schema_sinks = {};
    for (auto sink : biggemm_0_0_306_->input_list(BigGemm::kB)) {
        biggemm_0_0_306_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_306_connect_schemas = {};
    biggemm_0_0_306_connect_schemas.push_back(biggemm_0_0_306_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 9)), biggemm_0_0_306_schema_sinks, std::move(biggemm_0_0_306_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_307_schema_sinks = {};
    for (auto sink : biggemm_0_0_307_->input_list(BigGemm::kB)) {
        biggemm_0_0_307_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_307_connect_schemas = {};
    biggemm_0_0_307_connect_schemas.push_back(biggemm_0_0_307_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 10)), biggemm_0_0_307_schema_sinks, std::move(biggemm_0_0_307_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_308_schema_sinks = {};
    for (auto sink : biggemm_0_0_308_->input_list(BigGemm::kB)) {
        biggemm_0_0_308_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_308_connect_schemas = {};
    biggemm_0_0_308_connect_schemas.push_back(biggemm_0_0_308_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 11)), biggemm_0_0_308_schema_sinks, std::move(biggemm_0_0_308_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_309_schema_sinks = {};
    for (auto sink : biggemm_0_0_309_->input_list(BigGemm::kB)) {
        biggemm_0_0_309_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_309_connect_schemas = {};
    biggemm_0_0_309_connect_schemas.push_back(biggemm_0_0_309_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 12)), biggemm_0_0_309_schema_sinks, std::move(biggemm_0_0_309_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_310_schema_sinks = {};
    for (auto sink : biggemm_0_0_310_->input_list(BigGemm::kB)) {
        biggemm_0_0_310_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_310_connect_schemas = {};
    biggemm_0_0_310_connect_schemas.push_back(biggemm_0_0_310_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 13)), biggemm_0_0_310_schema_sinks, std::move(biggemm_0_0_310_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_311_schema_sinks = {};
    for (auto sink : biggemm_0_0_311_->input_list(BigGemm::kB)) {
        biggemm_0_0_311_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_311_connect_schemas = {};
    biggemm_0_0_311_connect_schemas.push_back(biggemm_0_0_311_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 14)), biggemm_0_0_311_schema_sinks, std::move(biggemm_0_0_311_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_312_schema_sinks = {};
    for (auto sink : biggemm_0_0_312_->input_list(BigGemm::kB)) {
        biggemm_0_0_312_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_312_connect_schemas = {};
    biggemm_0_0_312_connect_schemas.push_back(biggemm_0_0_312_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 15)), biggemm_0_0_312_schema_sinks, std::move(biggemm_0_0_312_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_313_schema_sinks = {};
    for (auto sink : biggemm_0_0_313_->input_list(BigGemm::kB)) {
        biggemm_0_0_313_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_313_connect_schemas = {};
    biggemm_0_0_313_connect_schemas.push_back(biggemm_0_0_313_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 16)), biggemm_0_0_313_schema_sinks, std::move(biggemm_0_0_313_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_314_schema_sinks = {};
    for (auto sink : biggemm_0_0_314_->input_list(BigGemm::kB)) {
        biggemm_0_0_314_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_314_connect_schemas = {};
    biggemm_0_0_314_connect_schemas.push_back(biggemm_0_0_314_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 17)), biggemm_0_0_314_schema_sinks, std::move(biggemm_0_0_314_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_315_schema_sinks = {};
    for (auto sink : biggemm_0_0_315_->input_list(BigGemm::kB)) {
        biggemm_0_0_315_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_315_connect_schemas = {};
    biggemm_0_0_315_connect_schemas.push_back(biggemm_0_0_315_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 18)), biggemm_0_0_315_schema_sinks, std::move(biggemm_0_0_315_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_316_schema_sinks = {};
    for (auto sink : biggemm_0_0_316_->input_list(BigGemm::kB)) {
        biggemm_0_0_316_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_316_connect_schemas = {};
    biggemm_0_0_316_connect_schemas.push_back(biggemm_0_0_316_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 19)), biggemm_0_0_316_schema_sinks, std::move(biggemm_0_0_316_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_317_schema_sinks = {};
    for (auto sink : biggemm_0_0_317_->input_list(BigGemm::kB)) {
        biggemm_0_0_317_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_317_connect_schemas = {};
    biggemm_0_0_317_connect_schemas.push_back(biggemm_0_0_317_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 20)), biggemm_0_0_317_schema_sinks, std::move(biggemm_0_0_317_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_318_schema_sinks = {};
    for (auto sink : biggemm_0_0_318_->input_list(BigGemm::kB)) {
        biggemm_0_0_318_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_318_connect_schemas = {};
    biggemm_0_0_318_connect_schemas.push_back(biggemm_0_0_318_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_296_->output_list(GBuffer::get_head_output(1, 21)), biggemm_0_0_318_schema_sinks, std::move(biggemm_0_0_318_connect_schemas));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_297_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_297_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_298_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_298_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(1, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_299_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_299_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(2, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_300_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_300_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(3, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_301_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_301_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(4, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_302_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_302_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(5, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_303_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_303_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(6, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_304_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_304_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(7, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_305_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_305_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(8, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_306_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_306_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(9, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_307_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_307_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(10, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_308_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_308_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(11, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_309_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_309_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(12, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_310_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_310_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(13, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_311_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_311_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(14, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_312_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_312_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(15, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_313_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_313_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(16, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_314_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_314_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(17, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_315_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_315_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(18, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_316_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_316_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(19, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_317_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_317_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(20, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_318_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_318_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_321_->input_list(gbuf2u_0_0_321_->get_tail_input(21, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    connect_by_interface(gbuf2u_0_0_321_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_transpose_add_0_0_322_->get_connect_interface(BiasTransposeAdd::kInput, true));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    connect_by_interface(bias_transpose_add_0_0_322_->get_connect_interface(BiasTransposeAdd::kOutput, false), streaming_transpose_0_0_323_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    connect_by_interface(streaming_transpose_0_0_323_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), gbuf2u_0_0_206_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(gbuf2u_0_0_206_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_0_0_208_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf2u_0_0_206_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_397_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    { // Connect partitioned input
        for(int64_t i = 0; i < ptconvcnn__dense_layer__linear_->get_b_input_partitions(); ++i) {
            connect_with_schema(gbuf2u_0_0_208_->output(gbuf2u_0_0_208_->get_head_output(1, 0, i)), ptconvcnn__dense_layer__linear_->input_list(ptconvcnn__dense_layer__linear_->get_partition_input(i+1)), ptconvcnn__dense_layer__linear_->get_connect_schema());
        }
    } // End partitioned input
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvcnn__dense_layer__linear_->num_partitions(); ++p) {
            connect_m_to_n(ptconvcnn__dense_layer__linear_->output_list(BigGemm::get_partition_output(p)), gbuf1a_0_0_393_->input_list(gbuf1a_0_0_393_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_393_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_add_0_0_390_->get_connect_interface(BiasAdd::Input::kInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    connect_by_interface(bias_add_0_0_390_->get_connect_interface(BiasAdd::Output::kOutput, false), gbuf2u_0_0_210_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf2u_0_0_210_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_440_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_cnn.py:222:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Reshape
    connect_by_interface(gbuf2a_0_0_440_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), gbuf2a_0_0_441_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_cnn.py:229:0: tlir.Reshape
    connect_by_interface(gbuf2a_0_0_440_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_399_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_441_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), get_connect_interface(gbuf2a_0_0_432_->input_list(GBuffer::Input::kTailBuffer)));
    // logreg_cnn.py:222:0: tlir.mutate.TemporalConcat
    // logreg_cnn.py:229:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_432_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_330_->get_connect_interface(BinaryOps::Input::kA, true));
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_431_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), realign_0_0_418_->get_connect_interface(Realign::kInput, true));
    // UnknownFileName:0:0: tlir.Realign
    connect_by_interface(realign_0_0_418_->get_connect_interface(Realign::kOutput, false), gbuf1a_0_0_400_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // logreg_cnn.py:223:0: tlir.Reshape
    connect_by_interface(gbuf1a_0_0_400_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_330_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    connect_by_interface(sub_0_0_330_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_0_0_442_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_442_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), mul_0_0_331_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_0_0_442_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), mul_0_0_331_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    connect_by_interface(mul_0_0_331_->get_connect_interface(BinaryOps::Output::kOut, false), mean_unalign_0_0_332_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    connect_by_interface(mean_unalign_0_0_332_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_401_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    connect_ctl_1_to_n(realign_0_0_412_->ctrl_output(Realign::kPacingReadDone), gbuf1a_0_0_430_->ctrl_input_list(gbuf1a_0_0_430_->get_pacing_order_enable(1)));
    tbuf2u_0_0_197_->set_arc_stage_buffer();
    tbuf2u_0_0_202_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_204_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_0_0_202_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_204_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_0_0_202_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn1));
    gbuf2u_0_0_204_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_204_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_204_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(sbuf2u_0_0_295_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_0_0_204_->ctrl_input_list(gbuf2u_0_0_204_->get_pacing_order_enable(1)));
    sbuf2u_0_0_295_->set_arc_stage_buffer();
    auto sbuf2u_0_0_295_pacing_order_barrier1 = plasma_->create_barrier({biggemm_0_0_297_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_298_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_299_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_300_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_301_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_302_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_303_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_304_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_305_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_306_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_307_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_308_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_309_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_310_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_311_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_312_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_313_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_314_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_315_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_316_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_317_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_318_->ctrl_output(BigGemm::kRdDoneA)});
    connect_ctl_1_to_n(sbuf2u_0_0_295_pacing_order_barrier1, sbuf2u_0_0_295_->ctrl_input_list(sbuf2u_0_0_295_->get_pacing_order_enable(1)));
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_297_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(0, p)), biggemm_0_0_297_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_297_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(0, p)), biggemm_0_0_297_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_297_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_298_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(1, p)), biggemm_0_0_298_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_298_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(1, p)), biggemm_0_0_298_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_298_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_299_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(2, p)), biggemm_0_0_299_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_299_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(2, p)), biggemm_0_0_299_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_299_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_300_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(3, p)), biggemm_0_0_300_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_300_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(3, p)), biggemm_0_0_300_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_300_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_301_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(4, p)), biggemm_0_0_301_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_301_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(4, p)), biggemm_0_0_301_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_301_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_302_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(5, p)), biggemm_0_0_302_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_302_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(5, p)), biggemm_0_0_302_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_302_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_303_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(6, p)), biggemm_0_0_303_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_303_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(6, p)), biggemm_0_0_303_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_303_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_304_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(7, p)), biggemm_0_0_304_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_304_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(7, p)), biggemm_0_0_304_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_304_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_305_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(8, p)), biggemm_0_0_305_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_305_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(8, p)), biggemm_0_0_305_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_305_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_306_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(9, p)), biggemm_0_0_306_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_306_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(9, p)), biggemm_0_0_306_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_306_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_307_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(10, p)), biggemm_0_0_307_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_307_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(10, p)), biggemm_0_0_307_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_307_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_308_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(11, p)), biggemm_0_0_308_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_308_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(11, p)), biggemm_0_0_308_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_308_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_309_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(12, p)), biggemm_0_0_309_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_309_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(12, p)), biggemm_0_0_309_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_309_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_310_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(13, p)), biggemm_0_0_310_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_310_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(13, p)), biggemm_0_0_310_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_310_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_311_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(14, p)), biggemm_0_0_311_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_311_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(14, p)), biggemm_0_0_311_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_311_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_312_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(15, p)), biggemm_0_0_312_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_312_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(15, p)), biggemm_0_0_312_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_312_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_313_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(16, p)), biggemm_0_0_313_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_313_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(16, p)), biggemm_0_0_313_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_313_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_314_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(17, p)), biggemm_0_0_314_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_314_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(17, p)), biggemm_0_0_314_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_314_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_315_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(18, p)), biggemm_0_0_315_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_315_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(18, p)), biggemm_0_0_315_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_315_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_316_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(19, p)), biggemm_0_0_316_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_316_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(19, p)), biggemm_0_0_316_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_316_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_317_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(20, p)), biggemm_0_0_317_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_317_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(20, p)), biggemm_0_0_317_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_317_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_318_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_pacing_wr_done(21, p)), biggemm_0_0_318_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_318_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_321_->ctrl_output(gbuf2u_0_0_321_->get_fronting_rd_done(21, p)), biggemm_0_0_318_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_318_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_0_0_321_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_206_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_321_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_206_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_321_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_0_0_206_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_208_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_206_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_397_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_206_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_208_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_206_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_0_0_397_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_206_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_0_0_208_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_210_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_208_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_210_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_208_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvcnn__dense_layer__linear_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_0_0_393_->ctrl_output(gbuf1a_0_0_393_->get_pacing_wr_done(0, p)), ptconvcnn__dense_layer__linear_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvcnn__dense_layer__linear_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_0_0_393_->ctrl_output(gbuf1a_0_0_393_->get_fronting_rd_done(0, p)), ptconvcnn__dense_layer__linear_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvcnn__dense_layer__linear_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_0_0_210_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_440_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_210_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_440_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_210_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_0_0_440_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_441_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_440_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_441_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_440_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_399_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_440_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_399_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_440_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_0_0_397_->set_arc_stage_buffer();
    gbuf2a_0_0_441_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_432_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_441_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_432_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_441_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    gbuf2a_0_0_399_->set_arc_stage_buffer();
    connect_ctl_1_to_n(realign_0_0_418_->ctrl_output(Realign::kPacingReadDone), gbuf1a_0_0_431_->ctrl_input_list(gbuf1a_0_0_431_->get_pacing_order_enable(1)));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kptconvcnn__conv_layer__weight_0_0_99, gbuf1a_0_0_430_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_slice_1_0_0_102, tbuf1u_0_0_198_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(kptconvcnn__conv_layer__bias_0_0_110, bias_transpose_add_0_0_322_->input_list(BiasTransposeAdd::kBias));
    // Input ptconvcnn__dense_layer__weight_0_0_114 uses a weight buffer
    // Input ptconvcnn__dense_layer__bias_0_0_115 uses a weight buffer
    add_node_input(kinp_window_0_0_268, tbuf2u_0_0_197_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(kptconvcnn__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_386, lbuf1a_0_0_396_->input_list(ListBuffer::Input::kTailBuffer));
    add_node_input(kout_window_0_0_104, gbuf1a_0_0_431_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_0_0_274, gbuf2a_0_0_397_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvcnn__reshape0_used_by_ptconvcnn__criterion__mseloss_bwd_sub_0_0_275, gbuf2a_0_0_441_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvcnn__view__outputs__0_0_0_276, gbuf2a_0_0_399_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(k_tensor, gbuf1a_0_0_401_->output_list(GBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_0_0_430_->set_placement_hint({1, 0});
    realign_0_0_412_->set_placement_hint({1, 0});
    gbuf1a_0_0_395_->set_placement_hint({1, 0});
    ptconvcnn__conv_layer__reshape_1_->set_placement_hint({1, 0});
    realign_0_0_413_->set_placement_hint({1, 0});
    ptconvcnn__conv_layer__conv2d_weight_permute_->set_placement_hint({1, 0});
    vector_transpose_0_0_414_->set_placement_hint({1, 0});
    ptconvcnn__conv_layer__conv2d_weight_reshape_->set_placement_hint({1, 0});
    gbuf2a_0_0_437_->set_placement_hint({1, 0});
    tbuf2u_0_0_197_->set_placement_hint({1, 0});
    tbuf1u_0_0_198_->set_placement_hint({1, 0});
    ptconvcnn__lambda_layer__indexselect_->set_placement_hint({1, 0});
    tbuf2u_0_0_202_->set_placement_hint({1, 0});
    ptconvcnn__conv_layer__reshape_->set_placement_hint({1, 0});
    gbuf2u_0_0_204_->set_placement_hint({1, 0});
    lbuf1a_0_0_396_->set_placement_hint({1, 0});
    sbuf2u_0_0_295_->set_placement_hint({1, 0});
    split_kernel_gbuf_0_0_296_->set_placement_hint({1, 0});
    biggemm_0_0_297_->set_placement_hint({1, 0});
    biggemm_0_0_298_->set_placement_hint({1, 0});
    biggemm_0_0_299_->set_placement_hint({1, 0});
    biggemm_0_0_300_->set_placement_hint({1, 0});
    biggemm_0_0_301_->set_placement_hint({1, 0});
    biggemm_0_0_302_->set_placement_hint({1, 0});
    biggemm_0_0_303_->set_placement_hint({1, 0});
    biggemm_0_0_304_->set_placement_hint({1, 0});
    biggemm_0_0_305_->set_placement_hint({1, 0});
    biggemm_0_0_306_->set_placement_hint({1, 0});
    biggemm_0_0_307_->set_placement_hint({1, 0});
    biggemm_0_0_308_->set_placement_hint({1, 0});
    biggemm_0_0_309_->set_placement_hint({1, 0});
    biggemm_0_0_310_->set_placement_hint({1, 0});
    biggemm_0_0_311_->set_placement_hint({1, 0});
    biggemm_0_0_312_->set_placement_hint({1, 0});
    biggemm_0_0_313_->set_placement_hint({1, 0});
    biggemm_0_0_314_->set_placement_hint({1, 0});
    biggemm_0_0_315_->set_placement_hint({1, 0});
    biggemm_0_0_316_->set_placement_hint({1, 0});
    biggemm_0_0_317_->set_placement_hint({1, 0});
    biggemm_0_0_318_->set_placement_hint({1, 0});
    gbuf2u_0_0_321_->set_placement_hint({1, 0});
    bias_transpose_add_0_0_322_->set_placement_hint({1, 0});
    streaming_transpose_0_0_323_->set_placement_hint({1, 0});
    gbuf2u_0_0_206_->set_placement_hint({1, 0});
    ptconvcnn__conv_layer__reshape_2_->set_placement_hint({1, 0});
    gbuf2u_0_0_208_->set_placement_hint({1, 0});
    ptconvcnn__dense_layer__linear_->set_placement_hint({1, 0});
    gbuf1a_0_0_393_->set_placement_hint({1, 0});
    bias_add_0_0_390_->set_placement_hint({1, 0});
    gbuf2u_0_0_210_->set_placement_hint({1, 0});
    layout_cast_0_0_438_->set_placement_hint({1, 0});
    ptconvcnn__dense_layer__linear_t_output0_->set_placement_hint({1, 0});
    gbuf2a_0_0_440_->set_placement_hint({1, 0});
    ptconvcnn__reshape_->set_placement_hint({1, 0});
    ptconvcnn__view_->set_placement_hint({1, 0});
    gbuf2a_0_0_397_->set_placement_hint({1, 0});
    gbuf2a_0_0_441_->set_placement_hint({1, 0});
    gbuf2a_0_0_399_->set_placement_hint({1, 0});
    
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
    // logreg_cnn.py:229:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_226_wr_params = {};
    gbuf2u_1_0_226_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_226_->configure_wr(gbuf2u_1_0_226_wr_params);
    PmuSetupRead gbuf2u_1_0_226_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_226_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__view_bwd");
    gbuf2u_1_0_226_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_226_->configure_rd_head_1(gbuf2u_1_0_226_rd1_params0, {2, 2, 2, 2});
    gbuf2u_1_0_226_->configure_node();
    
    // logreg_cnn.py:229:0: tlir.Reshape
    ptconvcnn__view_bwd_->set_source_context("logreg_cnn.py:229:0");
    ptconvcnn__view_bwd_->set_op_name("tlir.Reshape");
    ptconvcnn__view_bwd_->configure_node();
    
    // logreg_cnn.py:223:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_229_wr_params = {};
    gbuf2u_1_0_229_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_229_->configure_wr(gbuf2u_1_0_229_wr_params);
    PmuSetupRead gbuf2u_1_0_229_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_229_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__reshape_1_recompute_");
    gbuf2u_1_0_229_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_229_->configure_rd_head_1(gbuf2u_1_0_229_rd1_params0, {1, 2});
    gbuf2u_1_0_229_->configure_node();
    
    // logreg_cnn.py:223:0: tlir.Reshape
    ptconvcnn__reshape_1_recompute__->set_source_context("logreg_cnn.py:223:0");
    ptconvcnn__reshape_1_recompute__->set_op_name("tlir.Reshape");
    ptconvcnn__reshape_1_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_232_wr_params = {};
    gbuf2u_1_0_232_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_232_->configure_wr(gbuf2u_1_0_232_wr_params);
    PmuSetupRead gbuf2u_1_0_232_rd1_params0 = ptconvcnn__criterion__mseloss_bwd_sub_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2u_1_0_232_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__criterion__mseloss_bwd_sub");
    gbuf2u_1_0_232_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_232_->configure_rd_head_1(gbuf2u_1_0_232_rd1_params0, {1, 2});
    gbuf2u_1_0_232_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    ptconvcnn__criterion__mseloss_bwd_sub_->set_source_context("overrides.py:1355:0");
    ptconvcnn__criterion__mseloss_bwd_sub_->set_op_name("tlir.Sub");
    ptconvcnn__criterion__mseloss_bwd_sub_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    scale_1_0_339_->set_source_context("overrides.py:1355:0");
    scale_1_0_339_->set_op_name("tlir.Scale");
    scale_1_0_339_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    scale_1_0_340_->set_source_context("overrides.py:1355:0");
    scale_1_0_340_->set_op_name("tlir.Scale");
    scale_1_0_340_->configure_node();
    
    // logreg_cnn.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_237_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_237_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of scale_1_0_340");
    gbuf2u_1_0_237_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_237_->configure_wr(gbuf2u_1_0_237_wr_params);
    PmuSetupRead gbuf2u_1_0_237_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_237_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__reshape_bwd");
    gbuf2u_1_0_237_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_237_->configure_rd_head_1(gbuf2u_1_0_237_rd1_params0, {2, 2, 2, 2});
    gbuf2u_1_0_237_->configure_node();
    
    // logreg_cnn.py:222:0: tlir.Reshape
    ptconvcnn__reshape_bwd_->set_source_context("logreg_cnn.py:222:0");
    ptconvcnn__reshape_bwd_->set_op_name("tlir.Reshape");
    ptconvcnn__reshape_bwd_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_1_0_439_->set_source_context("overrides.py:1355:0");
    layout_cast_1_0_439_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_439_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_op_name("tlir.AddN");
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_244_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_244_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_244_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_244_->configure_wr(gbuf2u_1_0_244_wr_params);
    PmuSetupRead gbuf2u_1_0_244_rd1_params1 = ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->read_params(BigGemm::kB);
    gbuf2u_1_0_244_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_244_->configure_rd_head_1(gbuf2u_1_0_244_rd1_params1, {1, 2});
    gbuf2u_1_0_244_->configure_node();
    
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_402_wr_params = {};
    gbuf1a_1_0_402_wr_params.is_transpose = true;
    gbuf1a_1_0_402_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_402_->configure_wr(gbuf1a_1_0_402_wr_params);
    PmuSetupRead gbuf1a_1_0_402_rd1_params0 = ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->read_params(BigGemm::kA);
    gbuf1a_1_0_402_rd1_params0.is_transpose = true;
    gbuf1a_1_0_402_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_402_->configure_rd_head_1(gbuf1a_1_0_402_rd1_params0, {1});
    gbuf1a_1_0_402_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_op_name("tlir.Linear");
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_247_wr_params = {};
    gbuf2u_1_0_247_wr_params.is_transpose = true;
    gbuf2u_1_0_247_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_247_->configure_wr(gbuf2u_1_0_247_wr_params);
    PmuSetupRead gbuf2u_1_0_247_rd1_params1 = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kB);
    gbuf2u_1_0_247_rd1_params1.is_transpose = true;
    gbuf2u_1_0_247_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_247_->configure_rd_head_1(gbuf2u_1_0_247_rd1_params1, {1, 1});
    gbuf2u_1_0_247_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_248_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_248_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_248_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_248_->configure_wr(gbuf2u_1_0_248_wr_params);
    PmuSetupRead gbuf2u_1_0_248_rd0_params2 = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2u_1_0_248_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_248_->configure_rd_head_0(gbuf2u_1_0_248_rd0_params2, {1});
    PmuSetupRead gbuf2u_1_0_248_rd1_params0 = ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kA);
    gbuf2u_1_0_248_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_248_->configure_rd_head_1(gbuf2u_1_0_248_rd1_params0, {ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->wbuf_depth()});
    gbuf2u_1_0_248_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_250_wr_params = ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->write_params(BigGemm::kOutput);
    gbuf2u_1_0_250_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_250_->configure_wr(gbuf2u_1_0_250_wr_params);
    PmuSetupRead gbuf2u_1_0_250_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_250_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvcnn__conv_layer__reshape_2_bwd");
    gbuf2u_1_0_250_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_250_->configure_rd_head_1(gbuf2u_1_0_250_rd1_params0, {2, 2});
    gbuf2u_1_0_250_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvcnn__conv_layer__reshape_2_bwd_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__reshape_2_bwd_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__reshape_2_bwd_->configure_node();
    
    // logreg_cnn.py:194:0: tlir.Buffer
    tbuf2u_1_0_253_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf2u_1_0_253_, params_.inp_window_dram_in));
;
    for (auto ctx : tbuf2u_1_0_253_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf2u_1_0_253_->add_context(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kLutRd));
    for (auto ctx_name : ptconvcnn__lambda_layer__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd))
        tbuf2u_1_0_253_->ctx(ctx_name)->set_read_credits({1, tbuf2u_1_0_258_->param().buffer_depth},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_1_0_253_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf2u_1_0_253_->configure_node();
    
    // logreg_cnn.py:194:0: tlir.Buffer
    tbuf1u_1_0_254_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1u_1_0_254_, params_.inp_window_slice_1_dram_in));
;
    for (auto ctx : tbuf1u_1_0_254_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf1u_1_0_254_->add_context(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kIndexRd));
    for (auto ctx : tbuf1u_1_0_254_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf1u_1_0_254_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    tbuf2u_1_0_258_->view<TBufferPermuteView>(std::vector<int64_t>{{1, 0}})->view<TBufferLayoutView>(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {3, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align())->add_context(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    for (auto ctx : tbuf2u_1_0_258_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    tbuf2u_1_0_258_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx_name : std::vector<std::string>{"kDefaultRead1"})
        tbuf2u_1_0_258_->ctx(ctx_name)->set_read_credits({2, 2},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_1_0_258_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    }
    tbuf2u_1_0_258_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvcnn__conv_layer__reshape_recompute__->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__reshape_recompute__->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__reshape_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_443_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_443_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__reshape_2_bwd");
    gbuf2a_1_0_443_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_1_0_443_->configure_wr(gbuf2a_1_0_443_wr_params);
    PmuSetupRead gbuf2a_1_0_443_rd0_params0 = streaming_transpose_1_0_365_->read_params(StreamingTranspose::kTailBuffer);
    gbuf2a_1_0_443_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_1_0_443_->configure_rd_head_0(gbuf2a_1_0_443_rd0_params0, {2, 2});
    PmuSetupRead gbuf2a_1_0_443_rd1_params0 = bias_transpose_grad_1_0_378_->read_params(BiasTransposeGrad::kLoss_Input);
    gbuf2a_1_0_443_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_1_0_443_->configure_rd_head_1(gbuf2a_1_0_443_rd1_params0, {2, 2});
    gbuf2a_1_0_443_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1020:0: tlir.StreamingPermute
    streaming_transpose_1_0_365_->set_source_context("ConvGradIm2Col.cpp:1020:0");
    streaming_transpose_1_0_365_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_1_0_365_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:469:0: tlir.Buffer
    PmuSetupRead sbuf2u_1_0_369_rd1_params0 = biggemm_1_0_371_->read_params(BigGemm::kA);
    SN_ASSERT(sbuf2u_1_0_369_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of biggemm_1_0_371");
    sbuf2u_1_0_369_rd1_params0.buffer_pace_order = true;
    sbuf2u_1_0_369_rd1_params0.buffer_pace_order_credits = biggemm_1_0_371_->wbuf_depth();
    sbuf2u_1_0_369_rd1_params0.buffer_pace_order_vectors = biggemm_1_0_371_->wbuf_vectors();
    sbuf2u_1_0_369_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    sbuf2u_1_0_369_->configure_rd_head_1(sbuf2u_1_0_369_rd1_params0, {1});
    sbuf2u_1_0_369_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    PmuSetupWrite split_kernel_gbuf_1_0_370_wr_params = streaming_transpose_1_0_365_->write_params(StreamingTranspose::kHead1Buffer);
    split_kernel_gbuf_1_0_370_->configure_wr(split_kernel_gbuf_1_0_370_wr_params);
    split_kernel_gbuf_1_0_370_->set_source_context("BigLinearExternalColPar.cpp:40:0");
    split_kernel_gbuf_1_0_370_->set_op_name("tlir.Split");
    split_kernel_gbuf_1_0_370_->set_batch_size_b(1);
    split_kernel_gbuf_1_0_370_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_371_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_371_->set_op_name("tlir.Linear");
    biggemm_1_0_371_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_372_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_372_->set_op_name("tlir.Linear");
    biggemm_1_0_372_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_373_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_373_->set_op_name("tlir.Linear");
    biggemm_1_0_373_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_374_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_374_->set_op_name("tlir.Linear");
    biggemm_1_0_374_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_376_wr_params = {};
    gbuf2u_1_0_376_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_376_->configure_wr(0, biggemm_1_0_371_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_376_->configure_wr(1, biggemm_1_0_372_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_376_->configure_wr(2, biggemm_1_0_373_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_376_->configure_wr(3, biggemm_1_0_374_->write_params(BigGemm::kOutput));
    PmuSetupRead gbuf2u_1_0_376_rd1_params0 = {};
    gbuf2u_1_0_376_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_376_->configure_rd_head_1(gbuf2u_1_0_376_rd1_params0, {1});
    gbuf2u_1_0_376_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.BiasTransposeGrad
    bias_transpose_grad_1_0_378_->set_source_context("ConvGradIm2Col.cpp:1116:0");
    bias_transpose_grad_1_0_378_->set_op_name("tlir.BiasTransposeGrad");
    bias_transpose_grad_1_0_378_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_406_wr_params = {};
    gbuf2a_1_0_406_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_1_0_406_->configure_wr(gbuf2a_1_0_406_wr_params);
    PmuSetupRead gbuf2a_1_0_406_rd1_params0 = {};
    SN_ASSERT(gbuf2a_1_0_406_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_1_0_379");
    gbuf2a_1_0_406_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_1_0_406_->configure_rd_head_1(gbuf2a_1_0_406_rd1_params0, {1});
    gbuf2a_1_0_406_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.Reshape
    reshape_1_0_379_->set_source_context("ConvGradIm2Col.cpp:1118:0");
    reshape_1_0_379_->set_op_name("tlir.Reshape");
    reshape_1_0_379_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1119:0: tlir.LayoutCast
    layout_cast_1_0_380_->set_source_context("ConvGradIm2Col.cpp:1119:0");
    layout_cast_1_0_380_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_380_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_source_context("overrides.py:1355:0");
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvcnn__conv_layer__conv2d_bwd_accum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupRead sbuf1a_1_0_408_rd1_params0 = vector_transpose_1_0_426_->read_params(VectorTranspose::kInput);
    SN_ASSERT(sbuf1a_1_0_408_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of vector_transpose_1_0_426");
    sbuf1a_1_0_408_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    sbuf1a_1_0_408_->configure_rd_head_1(sbuf1a_1_0_408_rd1_params0, {1});
    sbuf1a_1_0_408_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    vector_transpose_1_0_426_->set_source_context("conv.py:298:0");
    vector_transpose_1_0_426_->set_op_name("tlir.VectorTranspose");
    vector_transpose_1_0_426_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    permute_view_1_0_424_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    permute_view_1_0_424_->set_op_name("tlir.PermuteView");
    permute_view_1_0_424_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    realign_1_0_427_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    realign_1_0_427_->set_op_name("tlir.Realign");
    realign_1_0_427_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    realign_1_0_428_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    realign_1_0_428_->set_op_name("tlir.Realign");
    realign_1_0_428_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    permute_1_0_425_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    permute_1_0_425_->set_op_name("tlir.Permute");
    permute_1_0_425_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    transpose_1_0_429_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_reshape:0:0");
    transpose_1_0_429_->set_op_name("tlir.Transpose");
    transpose_1_0_429_->configure_node();
    
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_source_context("ptconvcnn__conv_layer__conv2d_weight_permute:0:0");
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->set_op_name("tlir.Permute");
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvcnn__conv_layer__reshape_1_bwd_->set_source_context("conv.py:298:0");
    ptconvcnn__conv_layer__reshape_1_bwd_->set_op_name("tlir.Reshape");
    ptconvcnn__conv_layer__reshape_1_bwd_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_409_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_409_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__reshape_1_bwd");
    gbuf1a_1_0_409_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_409_->configure_wr(gbuf1a_1_0_409_wr_params);
    PmuSetupRead gbuf1a_1_0_409_rd1_params1 = {};
    gbuf1a_1_0_409_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_409_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_409_->configure_rd_head_1(gbuf1a_1_0_409_rd1_params1, {1});
    gbuf1a_1_0_409_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg_cnn.py:194:0: tlir.Index
    ptconvcnn__lambda_layer__indexselect_recompute__->set_source_context("logreg_cnn.py:194:0");
    ptconvcnn__lambda_layer__indexselect_recompute__->set_op_name("tlir.Index");
    ptconvcnn__lambda_layer__indexselect_recompute__->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1072:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_366_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_366_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__reshape_recompute_");
    gbuf2u_1_0_366_wr_params.buffer_overlapped_split = true; 
    gbuf2u_1_0_366_wr_params.buffer_overlapped_split_base = 0;
    gbuf2u_1_0_366_wr_params.buffer_overlapped_split_bound = 4;
    gbuf2u_1_0_366_wr_params.buffer_overlapped_split_stride = 5;
    gbuf2u_1_0_366_wr_params.buffer_overlapped_split_parts = 3;
    gbuf2u_1_0_366_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_366_->configure_wr(gbuf2u_1_0_366_wr_params);
    PmuSetupRead gbuf2u_1_0_366_rd1_params0 = {};
    gbuf2u_1_0_366_rd1_params0.buffer_gather_list = true;
    gbuf2u_1_0_366_rd1_params0.buffer_overflow = false;
    gbuf2u_1_0_366_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_1_0_366_rd1_params0.buffer_gather_max = {320, 3, 1};
    gbuf2u_1_0_366_rd1_params0.buffer_gather_stride = {64, 1, 1};
    gbuf2u_1_0_366_rd1_params0.buffer_gather_mult = {1, 0, 0};
    auto sbuf2u_1_0_369_scatter_control = sbuf2u_1_0_369_->get_pacing_control();
    gbuf2u_1_0_366_rd1_params0.buffer_pace_order  = sbuf2u_1_0_369_scatter_control.enable;
    gbuf2u_1_0_366_rd1_params0.buffer_pace_order_credits = sbuf2u_1_0_369_scatter_control.credits;
    gbuf2u_1_0_366_rd1_params0.buffer_pace_order_vectors = sbuf2u_1_0_369_scatter_control.vectors;
    gbuf2u_1_0_366_rd1_params0.buffer_pace_read_ceiling = sbuf2u_1_0_369_scatter_control.ceiling;
    gbuf2u_1_0_366_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_366_->configure_rd_head_1(gbuf2u_1_0_366_rd1_params0, {2, 2});
    gbuf2u_1_0_366_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_157_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_157_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvcnn__conv_layer__conv2d_bwd_accum_buffer");
    gbuf2u_1_0_157_wr_params.metapipe_iter_counts = sn::Dimensions{};
    gbuf2u_1_0_157_->configure_wr(gbuf2u_1_0_157_wr_params);
    PmuSetupRead gbuf2u_1_0_157_rd1_params0 = {};
    gbuf2u_1_0_157_rd1_params0.buffer_gather_list = true;
    gbuf2u_1_0_157_rd1_params0.buffer_overflow = false;
    gbuf2u_1_0_157_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_1_0_157_rd1_params0.buffer_gather_max = {1, 13, 256, 3};
    gbuf2u_1_0_157_rd1_params0.buffer_gather_stride = {1, 1, 1, 1};
    gbuf2u_1_0_157_rd1_params0.buffer_gather_mult = {0, 0, 64, 0};
    auto sbuf1a_1_0_408_scatter_control = sbuf1a_1_0_408_->get_pacing_control();
    gbuf2u_1_0_157_rd1_params0.buffer_pace_order  = sbuf1a_1_0_408_scatter_control.enable;
    gbuf2u_1_0_157_rd1_params0.buffer_pace_order_credits = sbuf1a_1_0_408_scatter_control.credits;
    gbuf2u_1_0_157_rd1_params0.buffer_pace_order_vectors = sbuf1a_1_0_408_scatter_control.vectors;
    gbuf2u_1_0_157_rd1_params0.buffer_pace_read_ceiling = sbuf1a_1_0_408_scatter_control.ceiling;
    gbuf2u_1_0_157_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2u_1_0_157_->configure_rd_head_1(gbuf2u_1_0_157_rd1_params0, {1});
    gbuf2u_1_0_157_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:419:0: tlir.Buffer
    lbuf1a_1_0_405_->set_data_buffer(gbuf2u_1_0_366_, 1);
    lbuf1a_1_0_405_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    lbuf1a_1_0_407_->set_data_buffer(gbuf2u_1_0_157_, 1);
    lbuf1a_1_0_407_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    // logreg_cnn.py:229:0: tlir.Buffer
    // logreg_cnn.py:229:0: tlir.Reshape
    // logreg_cnn.py:223:0: tlir.Buffer
    // logreg_cnn.py:223:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    // logreg_cnn.py:222:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Index
    std::unordered_map<int64_t, std::vector<RAILConnectInterface>>ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map = {};
    ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kLutRd, std::vector<RAILConnectInterface> {tbuf2u_1_0_253_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kLutRd),TBufferContext::Output::kDataOutput)}));
    ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kIndexRd, std::vector<RAILConnectInterface> {tbuf1u_1_0_254_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kIndexRd),TBufferContext::Output::kDataOutput)}));
    if (ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_1_0_258_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_1_0_258_->get_rail_connect_interface(ptconvcnn__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    ptconvcnn__lambda_layer__indexselect_recompute__->rail_custom_connect(ptconvcnn__lambda_layer__indexselect_recompute__rail_connect_interface_map);
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1020:0: tlir.StreamingPermute
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1072:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:419:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:419:0: tlir.Gather
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:469:0: tlir.Buffer
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1110:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.BiasTransposeGrad
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.Reshape
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1119:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Gather
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_253_, tbuf2u_1_0_258_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_1_0_253_->ctrl_input_ops(ptconvcnn__lambda_layer__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_253_, tbuf2u_1_0_258_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_1_0_253_->ctrl_input_ops(ptconvcnn__lambda_layer__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn1));
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_1_0_)), "RAIL compilation failed for section 1!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_1_0_, 0)), "RAIL global compile failed for section 1!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_226_->finalize();
    ptconvcnn__view_bwd_->finalize();
    gbuf2u_1_0_229_->finalize();
    ptconvcnn__reshape_1_recompute__->finalize();
    gbuf2u_1_0_232_->finalize();
    ptconvcnn__criterion__mseloss_bwd_sub_->finalize();
    scale_1_0_339_->finalize();
    scale_1_0_340_->finalize();
    gbuf2u_1_0_237_->finalize();
    ptconvcnn__reshape_bwd_->finalize();
    layout_cast_1_0_439_->finalize();
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->finalize();
    gbuf2u_1_0_244_->finalize();
    gbuf1a_1_0_402_->finalize();
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->finalize();
    gbuf2u_1_0_247_->finalize();
    gbuf2u_1_0_248_->finalize();
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->finalize();
    gbuf2u_1_0_250_->finalize();
    ptconvcnn__conv_layer__reshape_2_bwd_->finalize();
    tbuf2u_1_0_253_->finalize();
    tbuf1u_1_0_254_->finalize();
    ptconvcnn__lambda_layer__indexselect_recompute__->finalize();
    tbuf2u_1_0_258_->finalize();
    ptconvcnn__conv_layer__reshape_recompute__->finalize();
    gbuf2a_1_0_443_->finalize();
    streaming_transpose_1_0_365_->finalize();
    gbuf2u_1_0_366_->finalize();
    lbuf1a_1_0_405_->finalize();
    sbuf2u_1_0_369_->finalize();
    split_kernel_gbuf_1_0_370_->finalize();
    biggemm_1_0_371_->finalize();
    biggemm_1_0_372_->finalize();
    biggemm_1_0_373_->finalize();
    biggemm_1_0_374_->finalize();
    gbuf2u_1_0_376_->finalize();
    bias_transpose_grad_1_0_378_->finalize();
    gbuf2a_1_0_406_->finalize();
    reshape_1_0_379_->finalize();
    layout_cast_1_0_380_->finalize();
    ptconvcnn__dense_layer__linear_bwd_weight_accum_->finalize();
    ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->finalize();
    ptconvcnn__conv_layer__conv2d_bwd_accum_->finalize();
    ptconvcnn__conv_layer__conv2d_bwd_accum_1_->finalize();
    gbuf2u_1_0_157_->finalize();
    lbuf1a_1_0_407_->finalize();
    sbuf1a_1_0_408_->finalize();
    vector_transpose_1_0_426_->finalize();
    permute_view_1_0_424_->finalize();
    realign_1_0_427_->finalize();
    ptconvcnn__conv_layer__conv2d_weight_reshape_bwd_->finalize();
    realign_1_0_428_->finalize();
    permute_1_0_425_->finalize();
    transpose_1_0_429_->finalize();
    ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->finalize();
    ptconvcnn__conv_layer__reshape_1_bwd_->finalize();
    gbuf1a_1_0_409_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvcnn__conv_layer__conv2d_bwd_accum_->output_list(ParAccum::Output::kOut)), gbuf2u_1_0_157_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    // logreg_cnn.py:229:0: tlir.Buffer
    // logreg_cnn.py:229:0: tlir.Reshape
    // logreg_cnn.py:223:0: tlir.Buffer
    // logreg_cnn.py:223:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_229_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_232_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    connect_by_interface(ptconvcnn__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Output::kOut, false), scale_1_0_339_->get_connect_interface(Scale::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    connect_by_interface(scale_1_0_339_->get_connect_interface(Scale::Output::kA_SCALED, false), scale_1_0_340_->get_connect_interface(Scale::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    connect_by_interface(scale_1_0_340_->get_connect_interface(Scale::Output::kA_SCALED, false), gbuf2u_1_0_237_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_cnn.py:222:0: tlir.Buffer
    // logreg_cnn.py:222:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_237_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    connect_by_interface(gbuf2u_1_0_226_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(1, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    connect_by_interface(ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_244_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_248_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_schema_sinks = {};
    for (auto sink : ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->input_list(BigGemm::kB)) {
        ptconvcnn__dense_layer__linear_bwd_loss_grad_b_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvcnn__dense_layer__linear_bwd_loss_grad_b_connect_schemas = {};
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_connect_schemas.push_back(ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->get_connect_schema());
    connect_with_schema(gbuf2u_1_0_244_->output_list(GBuffer::Output::kHead1Buffer), ptconvcnn__dense_layer__linear_bwd_loss_grad_b_schema_sinks, std::move(ptconvcnn__dense_layer__linear_bwd_loss_grad_b_connect_schemas));
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_402_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_m_to_n(ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_250_->input_list(gbuf2u_1_0_250_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_schema_sinks = {};
    for (auto sink : ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->input_list(BigGemm::kB)) {
        ptconvcnn__dense_layer__linear_bwd_weight_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvcnn__dense_layer__linear_bwd_weight_grad_a_connect_schemas = {};
    ptconvcnn__dense_layer__linear_bwd_weight_grad_a_connect_schemas.push_back(ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->get_connect_schema());
    connect_with_schema(gbuf2u_1_0_247_->output_list(GBuffer::Output::kHead1Buffer), ptconvcnn__dense_layer__linear_bwd_weight_grad_a_schema_sinks, std::move(ptconvcnn__dense_layer__linear_bwd_weight_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_248_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2u_1_0_248_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    connect_by_interface(ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvcnn__dense_layer__linear_bwd_weight_accum_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_250_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_1_0_443_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Buffer
    // logreg_cnn.py:194:0: tlir.Index
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(tbuf2u_1_0_258_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf2u_1_0_366_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_443_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), streaming_transpose_1_0_365_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    connect_by_interface(gbuf2a_1_0_443_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_transpose_grad_1_0_378_->get_connect_interface(BiasTransposeGrad::kLoss_Input, true));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1020:0: tlir.StreamingPermute
    connect_by_interface(streaming_transpose_1_0_365_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), split_kernel_gbuf_1_0_370_->get_connect_interface(KernelGBuffer::Input::kTailBuffer, true));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1072:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_366_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf2u_1_0_369_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:419:0: tlir.Buffer
    connect_1_to_n(lbuf1a_1_0_405_->output(ListBuffer::kGatherAddress), gbuf2u_1_0_366_->input_list(GBuffer::get_read_scalar_input(1)));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:419:0: tlir.Gather
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:469:0: tlir.Buffer
    connect_by_interface(sbuf2u_1_0_369_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_371_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_369_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_372_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_369_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_373_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_369_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_374_->get_connect_interface(BigGemm::kA, true));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    std::vector<DataSink *> biggemm_1_0_371_schema_sinks = {};
    for (auto sink : biggemm_1_0_371_->input_list(BigGemm::kB)) {
        biggemm_1_0_371_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_371_connect_schemas = {};
    biggemm_1_0_371_connect_schemas.push_back(biggemm_1_0_371_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_370_->output_list(GBuffer::get_head_output(1, 0)), biggemm_1_0_371_schema_sinks, std::move(biggemm_1_0_371_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_372_schema_sinks = {};
    for (auto sink : biggemm_1_0_372_->input_list(BigGemm::kB)) {
        biggemm_1_0_372_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_372_connect_schemas = {};
    biggemm_1_0_372_connect_schemas.push_back(biggemm_1_0_372_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_370_->output_list(GBuffer::get_head_output(1, 1)), biggemm_1_0_372_schema_sinks, std::move(biggemm_1_0_372_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_373_schema_sinks = {};
    for (auto sink : biggemm_1_0_373_->input_list(BigGemm::kB)) {
        biggemm_1_0_373_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_373_connect_schemas = {};
    biggemm_1_0_373_connect_schemas.push_back(biggemm_1_0_373_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_370_->output_list(GBuffer::get_head_output(1, 2)), biggemm_1_0_373_schema_sinks, std::move(biggemm_1_0_373_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_374_schema_sinks = {};
    for (auto sink : biggemm_1_0_374_->input_list(BigGemm::kB)) {
        biggemm_1_0_374_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_374_connect_schemas = {};
    biggemm_1_0_374_connect_schemas.push_back(biggemm_1_0_374_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_370_->output_list(GBuffer::get_head_output(1, 3)), biggemm_1_0_374_schema_sinks, std::move(biggemm_1_0_374_connect_schemas));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_371_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_371_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_376_->input_list(gbuf2u_1_0_376_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_372_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_372_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_376_->input_list(gbuf2u_1_0_376_->get_tail_input(1, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_373_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_373_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_376_->input_list(gbuf2u_1_0_376_->get_tail_input(2, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_374_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_374_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_376_->input_list(gbuf2u_1_0_376_->get_tail_input(3, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_376_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvcnn__conv_layer__conv2d_bwd_accum_->input_list(ptconvcnn__conv_layer__conv2d_bwd_accum_->get_node_input(0))));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1110:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.BiasTransposeGrad
    connect_by_interface(bias_transpose_grad_1_0_378_->get_connect_interface(BiasTransposeGrad::kGrad, false), gbuf2a_1_0_406_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.Reshape
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1119:0: tlir.LayoutCast
    connect_by_interface(gbuf2a_1_0_406_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvcnn__conv_layer__conv2d_bwd_accum_1_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_157_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf1a_1_0_408_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_1_to_n(lbuf1a_1_0_407_->output(ListBuffer::kGatherAddress), gbuf2u_1_0_157_->input_list(GBuffer::get_read_scalar_input(1)));
    connect_1_to_n(lbuf1a_1_0_407_->output(ListBuffer::kGatherLengthOutput), sbuf1a_1_0_408_->input_list(ScatterBuffer::kGatherLengthInput));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Gather
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(sbuf1a_1_0_408_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), vector_transpose_1_0_426_->get_connect_interface(VectorTranspose::kInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    connect_by_interface(vector_transpose_1_0_426_->get_connect_interface(VectorTranspose::kOutput, false), realign_1_0_427_->get_connect_interface(Realign::kInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    connect_by_interface(realign_1_0_427_->get_connect_interface(Realign::kOutput, false), realign_1_0_428_->get_connect_interface(Realign::kInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    connect_by_interface(realign_1_0_428_->get_connect_interface(Realign::kOutput, false), permute_1_0_425_->get_connect_interface(TBufferPermute::kDefaultInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    connect_by_interface(permute_1_0_425_->get_connect_interface(TBufferPermute::kDefaultOutput, false), transpose_1_0_429_->get_connect_interface(Transpose::kDefaultInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    connect_by_interface(transpose_1_0_429_->get_connect_interface(Transpose::kDefaultOutput, false), ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->get_connect_interface(TBufferPermute::kDefaultInput, true));
    // ptconvcnn__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(ptconvcnn__conv_layer__conv2d_weight_permute_bwd_->get_connect_interface(TBufferPermute::kDefaultOutput, false), gbuf1a_1_0_409_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_226_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_226_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_248_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_226_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_226_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_248_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_226_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_1_0_229_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_237_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_229_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_237_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_229_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_232_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_237_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_232_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_237_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_232_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_237_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_237_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_248_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_237_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_237_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_248_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_237_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_1_0_244_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_250_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_244_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_250_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_244_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_250_->ctrl_output(gbuf2u_1_0_250_->get_pacing_wr_done(0, p)), ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_250_->ctrl_output(gbuf2u_1_0_250_->get_fronting_rd_done(0, p)), ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_1_0_247_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvcnn__dense_layer__linear_bwd_weight_accum_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2u_1_0_247_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2u_1_0_247_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_248_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2u_1_0_248_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvcnn__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2u_1_0_248_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2u_1_0_250_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_443_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_250_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_443_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_250_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    tbuf2u_1_0_253_->set_arc_stage_buffer();
    tbuf2u_1_0_258_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_366_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_1_0_258_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_366_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_1_0_258_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn1));
    gbuf2a_1_0_443_->set_arc_stage_buffer();
    connect_ctl_1_to_n(split_kernel_gbuf_1_0_370_->ctrl_output(KernelGBuffer::Output::kTailWrDone), gbuf2a_1_0_443_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(split_kernel_gbuf_1_0_370_->ctrl_output(KernelGBuffer::Output::kTailRdDone), gbuf2a_1_0_443_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_406_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_406_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_366_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_366_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_366_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(sbuf2u_1_0_369_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_1_0_366_->ctrl_input_list(gbuf2u_1_0_366_->get_pacing_order_enable(1)));
    sbuf2u_1_0_369_->set_arc_stage_buffer();
    auto sbuf2u_1_0_369_pacing_order_barrier1 = plasma_->create_barrier({biggemm_1_0_371_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_372_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_373_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_374_->ctrl_output(BigGemm::kRdDoneA)});
    connect_ctl_1_to_n(sbuf2u_1_0_369_pacing_order_barrier1, sbuf2u_1_0_369_->ctrl_input_list(sbuf2u_1_0_369_->get_pacing_order_enable(1)));
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_371_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_pacing_wr_done(0, p)), biggemm_1_0_371_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_371_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_fronting_rd_done(0, p)), biggemm_1_0_371_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_371_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_372_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_pacing_wr_done(1, p)), biggemm_1_0_372_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_372_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_fronting_rd_done(1, p)), biggemm_1_0_372_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_372_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_373_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_pacing_wr_done(2, p)), biggemm_1_0_373_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_373_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_fronting_rd_done(2, p)), biggemm_1_0_373_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_373_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_374_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_pacing_wr_done(3, p)), biggemm_1_0_374_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_374_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_376_->ctrl_output(gbuf2u_1_0_376_->get_fronting_rd_done(3, p)), biggemm_1_0_374_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_374_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_1_0_376_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvcnn__conv_layer__conv2d_bwd_accum_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2u_1_0_376_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_406_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvcnn__conv_layer__conv2d_bwd_accum_1_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2a_1_0_406_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(sbuf1a_1_0_408_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_1_0_157_->ctrl_input_list(gbuf2u_1_0_157_->get_pacing_order_enable(1)));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kptconvcnn__criterion__mseloss__outputs__0__grad_1_0_135, scale_1_0_340_->input_list(Scale::Input::kB));
    add_node_input(kinp_window_slice_1_1_0_148, tbuf1u_1_0_254_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(kptconvcnn__view__outputs__0__grad_1_0_269, gbuf2u_1_0_226_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kout_window_1_0_270, gbuf2u_1_0_229_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvcnn__reshape0_used_by_ptconvcnn__criterion__mseloss_bwd_sub_1_0_271, gbuf2u_1_0_232_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvcnn__dense_layer__weight_1_0_344, gbuf1a_1_0_402_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvcnn__conv_layer__reshape_20_used_by_ptconvcnn__dense_layer__linear_bwd_weight_1_0_272, gbuf2u_1_0_247_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_1_0_273, tbuf2u_1_0_253_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvcnn__dense_layer__linear_bwd_weight_tensor, ptconvcnn__dense_layer__linear_bwd_weight_accum_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvcnn__dense_layer__linear_bwd_weight_tensor1, ptconvcnn__dense_layer__linear_bwd_weight_accum_1_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvcnn__conv_layer__conv2d_bwd_tensor, ptconvcnn__conv_layer__conv2d_bwd_accum_1_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvcnn__conv_layer__reshape_1_bwd_tensor, gbuf1a_1_0_409_->output_list(GBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_226_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__view_bwd_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_229_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__reshape_1_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_232_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__criterion__mseloss_bwd_sub_->set_placement_hint({0, 1, 1, 0});
    scale_1_0_339_->set_placement_hint({0, 1, 1, 0});
    scale_1_0_340_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_237_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__reshape_bwd_->set_placement_hint({0, 1, 1, 0});
    layout_cast_1_0_439_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_244_->set_placement_hint({0, 1, 1, 0});
    gbuf1a_1_0_402_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__dense_layer__linear_bwd_loss_grad_b_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_250_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__conv_layer__reshape_2_bwd_->set_placement_hint({0, 1, 1, 0});
    tbuf2u_1_0_253_->set_placement_hint({0, 1, 1, 0});
    tbuf1u_1_0_254_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__lambda_layer__indexselect_recompute__->set_placement_hint({0, 1, 1, 0});
    tbuf2u_1_0_258_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__conv_layer__reshape_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2a_1_0_443_->set_placement_hint({0, 1, 1, 0});
    streaming_transpose_1_0_365_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_366_->set_placement_hint({0, 1, 1, 0});
    lbuf1a_1_0_405_->set_placement_hint({0, 1, 1, 0});
    sbuf2u_1_0_369_->set_placement_hint({0, 1, 1, 0});
    split_kernel_gbuf_1_0_370_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_371_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_372_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_373_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_374_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_376_->set_placement_hint({0, 1, 1, 0});
    ptconvcnn__conv_layer__conv2d_bwd_accum_->set_placement_hint({0, 1, 1, 0});
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_232_->set_linear_grad_a_input_hint(1);
    ptconvcnn__criterion__mseloss_bwd_sub_->set_linear_grad_a_input_hint(1);
    scale_1_0_339_->set_linear_grad_a_input_hint(1);
    scale_1_0_340_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_237_->set_linear_grad_a_input_hint(1);
    ptconvcnn__reshape_bwd_->set_linear_grad_a_input_hint(1);
    ptconvcnn__dense_layer__linear_t_output0_bwd_addn0_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_247_->set_linear_grad_b_input_hint(1);
    gbuf2u_1_0_248_->set_linear_grad_a_input_hint(1);
    
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
    // ptconvcnn__dense_layer__weight:0:0: tlir.SGD
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_source_context("ptconvcnn__dense_layer__weight:0:0");
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->configure_node();
    
    // ptconvcnn__dense_layer__bias:0:0: tlir.SGD
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_source_context("ptconvcnn__dense_layer__bias:0:0");
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->configure_node();
    
    // ptconvcnn__conv_layer__bias:0:0: tlir.SGD
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_source_context("ptconvcnn__conv_layer__bias:0:0");
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->set_op_name("tlir.SGD");
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->configure_node();
    
    // ptconvcnn__conv_layer__weight:0:0: tlir.SGD
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_source_context("ptconvcnn__conv_layer__weight:0:0");
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->set_op_name("tlir.SGD");
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // ptconvcnn__dense_layer__weight:0:0: tlir.SGD
    // ptconvcnn__dense_layer__bias:0:0: tlir.SGD
    // ptconvcnn__conv_layer__bias:0:0: tlir.SGD
    // ptconvcnn__conv_layer__weight:0:0: tlir.SGD
    
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
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->finalize();
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->finalize();
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->finalize();
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // ptconvcnn__dense_layer__weight:0:0: tlir.SGD
    // ptconvcnn__dense_layer__bias:0:0: tlir.SGD
    // ptconvcnn__conv_layer__bias:0:0: tlir.SGD
    // ptconvcnn__conv_layer__weight:0:0: tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input ptconvcnn__dense_layer__weight_2_0_167 uses a weight buffer
    // Input ptconvcnn__dense_layer__weight__grad_2_0_168 uses a weight buffer
    // Input ptconvcnn__dense_layer__weight__sgd0__momentum_2_0_169 uses a weight buffer
    // Input ptconvcnn__dense_layer__bias_2_0_173 uses a weight buffer
    // Input ptconvcnn__dense_layer__bias__grad_2_0_174 uses a weight buffer
    // Input ptconvcnn__dense_layer__bias__sgd0__momentum_2_0_175 uses a weight buffer
    // Input ptconvcnn__conv_layer__bias_2_0_179 uses a weight buffer
    // Input ptconvcnn__conv_layer__bias__grad_2_0_180 uses a weight buffer
    // Input ptconvcnn__conv_layer__bias__sgd0__momentum_2_0_181 uses a weight buffer
    // Input ptconvcnn__conv_layer__weight_2_0_185 uses a weight buffer
    // Input ptconvcnn__conv_layer__weight__grad_2_0_186 uses a weight buffer
    // Input ptconvcnn__conv_layer__weight__sgd0__momentum_2_0_187 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Outputptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor uses a weight buffer
    // Outputptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 uses a weight buffer
    // Outputptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor uses a weight buffer
    // Outputptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_tensor1 uses a weight buffer
    // Outputptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_tensor uses a weight buffer
    // Outputptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_tensor1 uses a weight buffer
    // Outputptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor uses a weight buffer
    // Outputptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_tensor1 uses a weight buffer
    
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
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__weight__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvcnn__dense_layer__bias__ptconvcnn__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_lr_enable_info;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_decay_enable_info;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__bias__ptconvcnn__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvcnn__conv_layer__weight__ptconvcnn__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info);
    
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
        case kgbuf1a_0_0_430: return gbuf1a_0_0_430_;
        case kgbuf1a_0_0_395: return gbuf1a_0_0_395_;
        case kgbuf2a_0_0_437: return gbuf2a_0_0_437_;
        case ktbuf2u_0_0_197: return tbuf2u_0_0_197_;
        case ktbuf1u_0_0_198: return tbuf1u_0_0_198_;
        case ktbuf2u_0_0_202: return tbuf2u_0_0_202_;
        case kgbuf2u_0_0_204: return gbuf2u_0_0_204_;
        case klbuf1a_0_0_396: return lbuf1a_0_0_396_;
        case ksbuf2u_0_0_295: return sbuf2u_0_0_295_;
        case kbiggemm_0_0_297: return biggemm_0_0_297_;
        case kbiggemm_0_0_298: return biggemm_0_0_298_;
        case kbiggemm_0_0_299: return biggemm_0_0_299_;
        case kbiggemm_0_0_300: return biggemm_0_0_300_;
        case kbiggemm_0_0_301: return biggemm_0_0_301_;
        case kbiggemm_0_0_302: return biggemm_0_0_302_;
        case kbiggemm_0_0_303: return biggemm_0_0_303_;
        case kbiggemm_0_0_304: return biggemm_0_0_304_;
        case kbiggemm_0_0_305: return biggemm_0_0_305_;
        case kbiggemm_0_0_306: return biggemm_0_0_306_;
        case kbiggemm_0_0_307: return biggemm_0_0_307_;
        case kbiggemm_0_0_308: return biggemm_0_0_308_;
        case kbiggemm_0_0_309: return biggemm_0_0_309_;
        case kbiggemm_0_0_310: return biggemm_0_0_310_;
        case kbiggemm_0_0_311: return biggemm_0_0_311_;
        case kbiggemm_0_0_312: return biggemm_0_0_312_;
        case kbiggemm_0_0_313: return biggemm_0_0_313_;
        case kbiggemm_0_0_314: return biggemm_0_0_314_;
        case kbiggemm_0_0_315: return biggemm_0_0_315_;
        case kbiggemm_0_0_316: return biggemm_0_0_316_;
        case kbiggemm_0_0_317: return biggemm_0_0_317_;
        case kbiggemm_0_0_318: return biggemm_0_0_318_;
        case kgbuf2u_0_0_321: return gbuf2u_0_0_321_;
        case kgbuf2u_0_0_206: return gbuf2u_0_0_206_;
        case kgbuf2u_0_0_208: return gbuf2u_0_0_208_;
        case kptconvcnn__dense_layer__linear: return ptconvcnn__dense_layer__linear_;
        case kgbuf1a_0_0_393: return gbuf1a_0_0_393_;
        case kgbuf2u_0_0_210: return gbuf2u_0_0_210_;
        case kgbuf2a_0_0_440: return gbuf2a_0_0_440_;
        case kgbuf2a_0_0_397: return gbuf2a_0_0_397_;
        case kgbuf2a_0_0_441: return gbuf2a_0_0_441_;
        case kgbuf2a_0_0_399: return gbuf2a_0_0_399_;
        case kgbuf2a_0_0_432: return gbuf2a_0_0_432_;
        case kgbuf1a_0_0_431: return gbuf1a_0_0_431_;
        case kgbuf1a_0_0_400: return gbuf1a_0_0_400_;
        case kgbuf1a_0_0_442: return gbuf1a_0_0_442_;
        case kgbuf1a_0_0_401: return gbuf1a_0_0_401_;
        case kgbuf2u_1_0_226: return gbuf2u_1_0_226_;
        case kgbuf2u_1_0_229: return gbuf2u_1_0_229_;
        case kgbuf2u_1_0_232: return gbuf2u_1_0_232_;
        case kgbuf2u_1_0_237: return gbuf2u_1_0_237_;
        case kgbuf2u_1_0_244: return gbuf2u_1_0_244_;
        case kgbuf1a_1_0_402: return gbuf1a_1_0_402_;
        case kptconvcnn__dense_layer__linear_bwd_loss_grad_b: return ptconvcnn__dense_layer__linear_bwd_loss_grad_b_;
        case kgbuf2u_1_0_247: return gbuf2u_1_0_247_;
        case kgbuf2u_1_0_248: return gbuf2u_1_0_248_;
        case kgbuf2u_1_0_250: return gbuf2u_1_0_250_;
        case ktbuf2u_1_0_253: return tbuf2u_1_0_253_;
        case ktbuf1u_1_0_254: return tbuf1u_1_0_254_;
        case ktbuf2u_1_0_258: return tbuf2u_1_0_258_;
        case kgbuf2a_1_0_443: return gbuf2a_1_0_443_;
        case kgbuf2u_1_0_366: return gbuf2u_1_0_366_;
        case klbuf1a_1_0_405: return lbuf1a_1_0_405_;
        case ksbuf2u_1_0_369: return sbuf2u_1_0_369_;
        case kbiggemm_1_0_371: return biggemm_1_0_371_;
        case kbiggemm_1_0_372: return biggemm_1_0_372_;
        case kbiggemm_1_0_373: return biggemm_1_0_373_;
        case kbiggemm_1_0_374: return biggemm_1_0_374_;
        case kgbuf2u_1_0_376: return gbuf2u_1_0_376_;
        case kgbuf2a_1_0_406: return gbuf2a_1_0_406_;
        case kptconvcnn__dense_layer__linear_bwd_weight_accum: return ptconvcnn__dense_layer__linear_bwd_weight_accum_;
        case kptconvcnn__dense_layer__linear_bwd_weight_accum_1: return ptconvcnn__dense_layer__linear_bwd_weight_accum_1_;
        case kptconvcnn__conv_layer__conv2d_bwd_accum: return ptconvcnn__conv_layer__conv2d_bwd_accum_;
        case kptconvcnn__conv_layer__conv2d_bwd_accum_1: return ptconvcnn__conv_layer__conv2d_bwd_accum_1_;
        case kgbuf2u_1_0_157: return gbuf2u_1_0_157_;
        case klbuf1a_1_0_407: return lbuf1a_1_0_407_;
        case ksbuf1a_1_0_408: return sbuf1a_1_0_408_;
        case kgbuf1a_1_0_409: return gbuf1a_1_0_409_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism

