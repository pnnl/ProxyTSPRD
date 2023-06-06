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
    GBuffer::Params gbuf1a_0_0_387_params;
    gbuf1a_0_0_387_params.enable_fronting_pmu = true;
    gbuf1a_0_0_387_params.head1_linear = true;
    gbuf1a_0_0_387_params.head1_p2p = false;
    gbuf1a_0_0_387_params.head_1_depth = 1;
    gbuf1a_0_0_387_params.layout = params_.ptconvlstm__conv_layer__weight_0_0_91.at_address(0);
    gbuf1a_0_0_387_params.loaded_by_broadcast = false;
    gbuf1a_0_0_387_params.num_iterations = 1;
    gbuf1a_0_0_387_ = create_node<GBuffer>("gbuf1a_0_0_387", partition_0_0_, plasma_, gbuf1a_0_0_387_params);
    gbuf1a_0_0_387_->set_die_id(-1);
    gbuf1a_0_0_387_->set_mac_id("default_387");
    gbuf1a_0_0_387_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__conv_layer__reshape_1_params;
    ptconvlstm__conv_layer__reshape_1_params.input_layout = gbuf1a_0_0_387_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__reshape_1_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    ptconvlstm__conv_layer__reshape_1_params.reshape = {256, 136, 3, 1};
    ptconvlstm__conv_layer__reshape_1_ = create_node<ReshapeView>("ptconvlstm__conv_layer__reshape_1", partition_0_0_, plasma_, ptconvlstm__conv_layer__reshape_1_params);
    ptconvlstm__conv_layer__reshape_1_->set_die_id(-1);
    ptconvlstm__conv_layer__reshape_1_->set_mac_id("ptconvlstm__conv_layer__reshape_1");
    ptconvlstm__conv_layer__reshape_1_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__reshape_1_->set_metapipe_iter_count(1);
    
    Realign::Params realign_0_0_404_params;
    realign_0_0_404_params.depth = 1;
    realign_0_0_404_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    realign_0_0_404_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3).vector_align();
    realign_0_0_404_ = create_node<Realign>("realign_0_0_404", partition_0_0_, plasma_, realign_0_0_404_params);
    realign_0_0_404_->set_die_id(-1);
    realign_0_0_404_->set_mac_id("default_404");
    realign_0_0_404_->set_mac_latency(-1.000000e+00);
    realign_0_0_404_->set_metapipe_iter_count(1);
    
    TBufferPermute::Params ptconvlstm__conv_layer__conv2d_weight_permute_params;
    ptconvlstm__conv_layer__conv2d_weight_permute_params.input_is_vector_transposed = false;
    ptconvlstm__conv_layer__conv2d_weight_permute_params.input_layout = realign_0_0_404_->result_layout().at_address(0);
    ptconvlstm__conv_layer__conv2d_weight_permute_params.permutation = {2, 3, 1, 0};
    ptconvlstm__conv_layer__conv2d_weight_permute_ = create_node<TBufferPermute>("ptconvlstm__conv_layer__conv2d_weight_permute", partition_0_0_, plasma_, ptconvlstm__conv_layer__conv2d_weight_permute_params);
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_die_id(-1);
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_mac_id("ptconvlstm__conv_layer__conv2d_weight_permute");
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_metapipe_iter_count(1);
    
    VectorTranspose::Params vector_transpose_0_0_405_params;
    vector_transpose_0_0_405_params.depth = 1;
    vector_transpose_0_0_405_params.input_is_vector_transposed = true;
    vector_transpose_0_0_405_params.layout = ptconvlstm__conv_layer__conv2d_weight_permute_->result_layout().at_address(0);
    vector_transpose_0_0_405_ = create_node<VectorTranspose>("vector_transpose_0_0_405", partition_0_0_, plasma_, vector_transpose_0_0_405_params);
    vector_transpose_0_0_405_->set_die_id(-1);
    vector_transpose_0_0_405_->set_mac_id("default_405");
    vector_transpose_0_0_405_->set_mac_latency(-1.000000e+00);
    vector_transpose_0_0_405_->set_metapipe_iter_count(1);
    
    ReshapeView::Params ptconvlstm__conv_layer__conv2d_weight_reshape_params;
    ptconvlstm__conv_layer__conv2d_weight_reshape_params.input_layout = vector_transpose_0_0_405_->result_layout().at_address(0);
    ptconvlstm__conv_layer__conv2d_weight_reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {408, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    ptconvlstm__conv_layer__conv2d_weight_reshape_params.reshape = {408, 256};
    ptconvlstm__conv_layer__conv2d_weight_reshape_ = create_node<ReshapeView>("ptconvlstm__conv_layer__conv2d_weight_reshape", partition_0_0_, plasma_, ptconvlstm__conv_layer__conv2d_weight_reshape_params);
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_die_id(-1);
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_mac_id("ptconvlstm__conv_layer__conv2d_weight_reshape");
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2a_0_0_427_params;
    gbuf2a_0_0_427_params.head1_linear = false;
    gbuf2a_0_0_427_params.head1_p2p = false;
    gbuf2a_0_0_427_params.head_1_depth = 2;
    gbuf2a_0_0_427_params.head_1_transposed = true;
    gbuf2a_0_0_427_params.layout = ptconvlstm__conv_layer__conv2d_weight_reshape_->result_layout().with_vector_transpose_flipped();
    gbuf2a_0_0_427_params.num_iterations = 1;
    gbuf2a_0_0_427_ = create_node<GBuffer>("gbuf2a_0_0_427", partition_0_0_, plasma_, gbuf2a_0_0_427_params);
    gbuf2a_0_0_427_->set_die_id(-1);
    gbuf2a_0_0_427_->set_mac_id("default_427");
    gbuf2a_0_0_427_->set_mac_latency(-1.000000e+00);
    
    TBuffer::Params tbuf2u_0_0_189_params;
    tbuf2u_0_0_189_params.buffer_depth = 2;
    tbuf2u_0_0_189_params.layout = params_.inp_window_0_0_260.at_address(0);
    tbuf2u_0_0_189_ = create_node<TBuffer>("tbuf2u_0_0_189", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_0_0_189_params);
    tbuf2u_0_0_189_->set_die_id(-1);
    tbuf2u_0_0_189_->set_mac_id("default_189");
    tbuf2u_0_0_189_->set_mac_latency(-1.000000e+00);
    tbuf2u_0_0_189_->set_metapipe_iterations({1});
    
    TBuffer::Params tbuf1u_0_0_190_params;
    tbuf1u_0_0_190_params.buffer_depth = 1;
    tbuf1u_0_0_190_params.layout = params_.inp_window_slice_1_0_0_94.at_address(0);
    tbuf1u_0_0_190_ = create_node<TBuffer>("tbuf1u_0_0_190", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf1u_0_0_190_params);
    tbuf1u_0_0_190_->set_die_id(-1);
    tbuf1u_0_0_190_->set_mac_id("default_190");
    tbuf1u_0_0_190_->set_mac_latency(-1.000000e+00);
    tbuf1u_0_0_190_->set_metapipe_iterations({1});
    
    RAILIndex::Params ptconvlstm__lambda_layer__indexselect_params;
    ptconvlstm__lambda_layer__indexselect_params.index_dim = 0;
    ptconvlstm__lambda_layer__indexselect_params.index_tensor_layout = tbuf1u_0_0_190_->param().layout->at_address(0).at_address(0);
    ptconvlstm__lambda_layer__indexselect_params.lut_tensor_layout = tbuf2u_0_0_189_->param().layout->at_address(0).at_address(0);
    ptconvlstm__lambda_layer__indexselect_params.read_zeros_outside_range = true;
    ptconvlstm__lambda_layer__indexselect_ = create_node<RAILIndex>("ptconvlstm__lambda_layer__indexselect", partition_0_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lambda_layer__indexselect_params);
    ptconvlstm__lambda_layer__indexselect_->set_die_id(-1);
    ptconvlstm__lambda_layer__indexselect_->set_mac_id("ptconvlstm__lambda_layer__indexselect");
    ptconvlstm__lambda_layer__indexselect_->set_mac_latency(1.100000e+01);
    ptconvlstm__lambda_layer__indexselect_->set_metapipe_iterations({1});
    ptconvlstm__lambda_layer__indexselect_->set_metapipe_iter_count(1);
    
    TBuffer::Params tbuf2u_0_0_194_params;
    tbuf2u_0_0_194_params.buffer_depth = 2;
    tbuf2u_0_0_194_params.layout = PermuteView::permute_layout(ptconvlstm__lambda_layer__indexselect_->result_layout().at_address(0), {1, 0});
    tbuf2u_0_0_194_ = create_node<TBuffer>("tbuf2u_0_0_194", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_0_0_194_params);
    tbuf2u_0_0_194_->set_die_id(-1);
    tbuf2u_0_0_194_->set_mac_id("default_194");
    tbuf2u_0_0_194_->set_mac_latency(-1.000000e+00);
    tbuf2u_0_0_194_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__conv_layer__reshape_params;
    ptconvlstm__conv_layer__reshape_params.input_layout = tbuf2u_0_0_194_->param().layout->at_address(0).at_address(0);
    ptconvlstm__conv_layer__reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvlstm__conv_layer__reshape_params.reshape = {136, 3, 1};
    ptconvlstm__conv_layer__reshape_ = create_node<ReshapeView>("ptconvlstm__conv_layer__reshape", partition_0_0_, plasma_, ptconvlstm__conv_layer__reshape_params);
    ptconvlstm__conv_layer__reshape_->set_die_id(-1);
    ptconvlstm__conv_layer__reshape_->set_mac_id("ptconvlstm__conv_layer__reshape");
    ptconvlstm__conv_layer__reshape_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__reshape_->set_metapipe_iterations({1});
    ptconvlstm__conv_layer__reshape_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_0_0_196_params;
    gbuf2u_0_0_196_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_196_params.head1_linear = false;
    gbuf2u_0_0_196_params.head1_p2p = false;
    gbuf2u_0_0_196_params.head1_streaming_window = true;
    gbuf2u_0_0_196_params.head_1_depth = 2;
    gbuf2u_0_0_196_params.layout = ptconvlstm__conv_layer__reshape_->result_layout();
    gbuf2u_0_0_196_params.num_head1_rd_en = 2;
    gbuf2u_0_0_196_params.num_iterations = 1;
    gbuf2u_0_0_196_ = create_node<GBuffer>("gbuf2u_0_0_196", partition_0_0_, plasma_, gbuf2u_0_0_196_params);
    gbuf2u_0_0_196_->set_die_id(-1);
    gbuf2u_0_0_196_->set_mac_id("default_196");
    gbuf2u_0_0_196_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_196_->set_metapipe_iterations({1});
    
    ListBuffer::Params lbuf1a_0_0_388_params;
    lbuf1a_0_0_388_params.allow_oob = false;
    lbuf1a_0_0_388_params.allow_overflow = false;
    lbuf1a_0_0_388_params.base_list_tile_counters = 0;
    lbuf1a_0_0_388_params.base_max = {1, 96, 5, 32};
    lbuf1a_0_0_388_params.base_mult = {0, 0, 64, 0};
    lbuf1a_0_0_388_params.base_stride = {1, 32, 1, 1};
    lbuf1a_0_0_388_params.batch_size = 1;
    lbuf1a_0_0_388_params.channels = 136;
    lbuf1a_0_0_388_params.depth2col = true;
    lbuf1a_0_0_388_params.enable_fronting_pmu = true;
    lbuf1a_0_0_388_params.filter_area = 3;
    lbuf1a_0_0_388_params.head1_linear = false;
    lbuf1a_0_0_388_params.head1_p2p = false;
    lbuf1a_0_0_388_params.head_1_depth = 1;
    lbuf1a_0_0_388_params.layout = params_.ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378;
    lbuf1a_0_0_388_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    lbuf1a_0_0_388_params.length_fixed = 32;
    lbuf1a_0_0_388_params.list_length = 96;
    lbuf1a_0_0_388_params.list_tiles = 1;
    lbuf1a_0_0_388_params.list_type = ListBuffer::kElement;
    lbuf1a_0_0_388_params.loaded_by_broadcast = false;
    lbuf1a_0_0_388_params.num_iterations = 1;
    lbuf1a_0_0_388_params.offset_list_tile_counters = 0;
    lbuf1a_0_0_388_params.offset_max = {1, 96, 5, 32};
    lbuf1a_0_0_388_params.offset_mult = {0, 1, 0, 1};
    lbuf1a_0_0_388_params.offset_stride = {1, 32, 1, 1};
    lbuf1a_0_0_388_params.permute = true;
    lbuf1a_0_0_388_params.use_tile_counter = false;
    lbuf1a_0_0_388_ = create_node<ListBuffer>("lbuf1a_0_0_388", partition_0_0_, plasma_, lbuf1a_0_0_388_params);
    lbuf1a_0_0_388_->set_die_id(-1);
    lbuf1a_0_0_388_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    lbuf1a_0_0_388_->set_mac_latency(-1.000000e+00);
    lbuf1a_0_0_388_->set_metapipe_iterations({1});
    
    ScatterBuffer::Params sbuf2u_0_0_287_params;
    sbuf2u_0_0_287_params.element = true;
    sbuf2u_0_0_287_params.head1_linear = true;
    sbuf2u_0_0_287_params.head1_p2p = false;
    sbuf2u_0_0_287_params.head_1_depth = 2;
    sbuf2u_0_0_287_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf2u_0_0_287_params.length_fixed = 32;
    sbuf2u_0_0_287_params.num_iterations = 1;
    sbuf2u_0_0_287_params.pace_shape = {32, 408};
    sbuf2u_0_0_287_params.paced = true;
    sbuf2u_0_0_287_params.read_group_packed_vectors = 480;
    sbuf2u_0_0_287_params.streaming = true;
    sbuf2u_0_0_287_params.streaming_transpose_shape = {136, 96};
    sbuf2u_0_0_287_params.write_group_unpacked_vectors = 480;
    sbuf2u_0_0_287_params.write_total_unpacked_vectors = 480;
    sbuf2u_0_0_287_ = create_node<ScatterBuffer>("sbuf2u_0_0_287", partition_0_0_, plasma_, sbuf2u_0_0_287_params);
    sbuf2u_0_0_287_->set_die_id(-1);
    sbuf2u_0_0_287_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    sbuf2u_0_0_287_->set_mac_latency(-1.000000e+00);
    sbuf2u_0_0_287_->set_metapipe_iterations({1});
    
    KernelGBuffer::Params split_kernel_gbuf_0_0_288_params;
    split_kernel_gbuf_0_0_288_params.M = 1;
    split_kernel_gbuf_0_0_288_params.column_par = 44;
    split_kernel_gbuf_0_0_288_params.head_1_depth = 1;
    split_kernel_gbuf_0_0_288_params.int_column_par = 2;
    split_kernel_gbuf_0_0_288_params.layout = gbuf2a_0_0_427_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    split_kernel_gbuf_0_0_288_params.num_sub_iters = 1;
    split_kernel_gbuf_0_0_288_ = create_node<KernelGBuffer>("split_kernel_gbuf_0_0_288", partition_0_0_, plasma_, split_kernel_gbuf_0_0_288_params);
    split_kernel_gbuf_0_0_288_->set_die_id(-1);
    split_kernel_gbuf_0_0_288_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    split_kernel_gbuf_0_0_288_->set_mac_latency(-1.000000e+00);
    split_kernel_gbuf_0_0_288_->set_metapipe_iterations({1});
    split_kernel_gbuf_0_0_288_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_289_params;
    biggemm_0_0_289_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_289_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 0)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_289_params.batch_size = 1;
    biggemm_0_0_289_params.batch_size_b = 1;
    biggemm_0_0_289_params.box_layout = true;
    biggemm_0_0_289_params.box_per_partition = false;
    biggemm_0_0_289_params.concat_group = true;
    biggemm_0_0_289_params.concat_group_par = 4;
    biggemm_0_0_289_params.connected_to_accumulator = false;
    biggemm_0_0_289_params.dbl_width = false;
    biggemm_0_0_289_params.disable_write_fronting_pmu = false;
    biggemm_0_0_289_params.dotproduct_gemm = false;
    biggemm_0_0_289_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_289_params.enable_gradient = false;
    biggemm_0_0_289_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_289_params.exclusive_vc_a = false;
    biggemm_0_0_289_params.external_input_a = true;
    biggemm_0_0_289_params.external_output_buffer = true;
    biggemm_0_0_289_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_289_params.num_col_compute_units = 2;
    biggemm_0_0_289_params.num_partitions = 1;
    biggemm_0_0_289_params.num_row_compute_units = 1;
    biggemm_0_0_289_params.seqID_base = 0;
    biggemm_0_0_289_params.set_exclusive_routes = false;
    biggemm_0_0_289_params.streaming_col_par = true;
    biggemm_0_0_289_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_289_params.wbuf_split = false;
    biggemm_0_0_289_params.write_done_used = false;
    biggemm_0_0_289_ = create_node<BigGemm>("biggemm_0_0_289", partition_0_0_, plasma_, biggemm_0_0_289_params);
    biggemm_0_0_289_->set_die_id(-1);
    biggemm_0_0_289_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_289_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_289_->set_metapipe_iterations({1});
    biggemm_0_0_289_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_290_params;
    biggemm_0_0_290_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_290_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 1)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_290_params.batch_size = 1;
    biggemm_0_0_290_params.batch_size_b = 1;
    biggemm_0_0_290_params.box_layout = true;
    biggemm_0_0_290_params.box_per_partition = false;
    biggemm_0_0_290_params.concat_group = true;
    biggemm_0_0_290_params.concat_group_par = 4;
    biggemm_0_0_290_params.connected_to_accumulator = false;
    biggemm_0_0_290_params.dbl_width = false;
    biggemm_0_0_290_params.disable_write_fronting_pmu = false;
    biggemm_0_0_290_params.dotproduct_gemm = false;
    biggemm_0_0_290_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_290_params.enable_gradient = false;
    biggemm_0_0_290_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_290_params.exclusive_vc_a = false;
    biggemm_0_0_290_params.external_input_a = true;
    biggemm_0_0_290_params.external_output_buffer = true;
    biggemm_0_0_290_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_290_params.num_col_compute_units = 2;
    biggemm_0_0_290_params.num_partitions = 1;
    biggemm_0_0_290_params.num_row_compute_units = 1;
    biggemm_0_0_290_params.seqID_base = 12;
    biggemm_0_0_290_params.set_exclusive_routes = false;
    biggemm_0_0_290_params.streaming_col_par = true;
    biggemm_0_0_290_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_290_params.wbuf_split = false;
    biggemm_0_0_290_params.write_done_used = false;
    biggemm_0_0_290_ = create_node<BigGemm>("biggemm_0_0_290", partition_0_0_, plasma_, biggemm_0_0_290_params);
    biggemm_0_0_290_->set_die_id(-1);
    biggemm_0_0_290_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_290_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_290_->set_metapipe_iterations({1});
    biggemm_0_0_290_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_291_params;
    biggemm_0_0_291_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_291_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 2)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_291_params.batch_size = 1;
    biggemm_0_0_291_params.batch_size_b = 1;
    biggemm_0_0_291_params.box_layout = true;
    biggemm_0_0_291_params.box_per_partition = false;
    biggemm_0_0_291_params.concat_group = true;
    biggemm_0_0_291_params.concat_group_par = 4;
    biggemm_0_0_291_params.connected_to_accumulator = false;
    biggemm_0_0_291_params.dbl_width = false;
    biggemm_0_0_291_params.disable_write_fronting_pmu = false;
    biggemm_0_0_291_params.dotproduct_gemm = false;
    biggemm_0_0_291_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_291_params.enable_gradient = false;
    biggemm_0_0_291_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_291_params.exclusive_vc_a = false;
    biggemm_0_0_291_params.external_input_a = true;
    biggemm_0_0_291_params.external_output_buffer = true;
    biggemm_0_0_291_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_291_params.num_col_compute_units = 2;
    biggemm_0_0_291_params.num_partitions = 1;
    biggemm_0_0_291_params.num_row_compute_units = 1;
    biggemm_0_0_291_params.seqID_base = 24;
    biggemm_0_0_291_params.set_exclusive_routes = false;
    biggemm_0_0_291_params.streaming_col_par = true;
    biggemm_0_0_291_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_291_params.wbuf_split = false;
    biggemm_0_0_291_params.write_done_used = false;
    biggemm_0_0_291_ = create_node<BigGemm>("biggemm_0_0_291", partition_0_0_, plasma_, biggemm_0_0_291_params);
    biggemm_0_0_291_->set_die_id(-1);
    biggemm_0_0_291_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_291_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_291_->set_metapipe_iterations({1});
    biggemm_0_0_291_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_292_params;
    biggemm_0_0_292_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_292_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 3)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_292_params.batch_size = 1;
    biggemm_0_0_292_params.batch_size_b = 1;
    biggemm_0_0_292_params.box_layout = true;
    biggemm_0_0_292_params.box_per_partition = false;
    biggemm_0_0_292_params.concat_group = true;
    biggemm_0_0_292_params.concat_group_par = 4;
    biggemm_0_0_292_params.connected_to_accumulator = false;
    biggemm_0_0_292_params.dbl_width = false;
    biggemm_0_0_292_params.disable_write_fronting_pmu = false;
    biggemm_0_0_292_params.dotproduct_gemm = false;
    biggemm_0_0_292_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_292_params.enable_gradient = false;
    biggemm_0_0_292_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_292_params.exclusive_vc_a = false;
    biggemm_0_0_292_params.external_input_a = true;
    biggemm_0_0_292_params.external_output_buffer = true;
    biggemm_0_0_292_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_292_params.num_col_compute_units = 2;
    biggemm_0_0_292_params.num_partitions = 1;
    biggemm_0_0_292_params.num_row_compute_units = 1;
    biggemm_0_0_292_params.seqID_base = 36;
    biggemm_0_0_292_params.set_exclusive_routes = false;
    biggemm_0_0_292_params.streaming_col_par = true;
    biggemm_0_0_292_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_292_params.wbuf_split = false;
    biggemm_0_0_292_params.write_done_used = false;
    biggemm_0_0_292_ = create_node<BigGemm>("biggemm_0_0_292", partition_0_0_, plasma_, biggemm_0_0_292_params);
    biggemm_0_0_292_->set_die_id(-1);
    biggemm_0_0_292_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_292_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_292_->set_metapipe_iterations({1});
    biggemm_0_0_292_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_293_params;
    biggemm_0_0_293_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_293_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 4)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_293_params.batch_size = 1;
    biggemm_0_0_293_params.batch_size_b = 1;
    biggemm_0_0_293_params.box_layout = true;
    biggemm_0_0_293_params.box_per_partition = false;
    biggemm_0_0_293_params.concat_group = true;
    biggemm_0_0_293_params.concat_group_par = 4;
    biggemm_0_0_293_params.connected_to_accumulator = false;
    biggemm_0_0_293_params.dbl_width = false;
    biggemm_0_0_293_params.disable_write_fronting_pmu = false;
    biggemm_0_0_293_params.dotproduct_gemm = false;
    biggemm_0_0_293_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_293_params.enable_gradient = false;
    biggemm_0_0_293_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_293_params.exclusive_vc_a = false;
    biggemm_0_0_293_params.external_input_a = true;
    biggemm_0_0_293_params.external_output_buffer = true;
    biggemm_0_0_293_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_293_params.num_col_compute_units = 2;
    biggemm_0_0_293_params.num_partitions = 1;
    biggemm_0_0_293_params.num_row_compute_units = 1;
    biggemm_0_0_293_params.seqID_base = 0;
    biggemm_0_0_293_params.set_exclusive_routes = false;
    biggemm_0_0_293_params.streaming_col_par = true;
    biggemm_0_0_293_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_293_params.wbuf_split = false;
    biggemm_0_0_293_params.write_done_used = false;
    biggemm_0_0_293_ = create_node<BigGemm>("biggemm_0_0_293", partition_0_0_, plasma_, biggemm_0_0_293_params);
    biggemm_0_0_293_->set_die_id(-1);
    biggemm_0_0_293_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_293_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_293_->set_metapipe_iterations({1});
    biggemm_0_0_293_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_294_params;
    biggemm_0_0_294_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_294_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 5)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_294_params.batch_size = 1;
    biggemm_0_0_294_params.batch_size_b = 1;
    biggemm_0_0_294_params.box_layout = true;
    biggemm_0_0_294_params.box_per_partition = false;
    biggemm_0_0_294_params.concat_group = true;
    biggemm_0_0_294_params.concat_group_par = 4;
    biggemm_0_0_294_params.connected_to_accumulator = false;
    biggemm_0_0_294_params.dbl_width = false;
    biggemm_0_0_294_params.disable_write_fronting_pmu = false;
    biggemm_0_0_294_params.dotproduct_gemm = false;
    biggemm_0_0_294_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_294_params.enable_gradient = false;
    biggemm_0_0_294_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_294_params.exclusive_vc_a = false;
    biggemm_0_0_294_params.external_input_a = true;
    biggemm_0_0_294_params.external_output_buffer = true;
    biggemm_0_0_294_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_294_params.num_col_compute_units = 2;
    biggemm_0_0_294_params.num_partitions = 1;
    biggemm_0_0_294_params.num_row_compute_units = 1;
    biggemm_0_0_294_params.seqID_base = 12;
    biggemm_0_0_294_params.set_exclusive_routes = false;
    biggemm_0_0_294_params.streaming_col_par = true;
    biggemm_0_0_294_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_294_params.wbuf_split = false;
    biggemm_0_0_294_params.write_done_used = false;
    biggemm_0_0_294_ = create_node<BigGemm>("biggemm_0_0_294", partition_0_0_, plasma_, biggemm_0_0_294_params);
    biggemm_0_0_294_->set_die_id(-1);
    biggemm_0_0_294_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_294_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_294_->set_metapipe_iterations({1});
    biggemm_0_0_294_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_295_params;
    biggemm_0_0_295_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_295_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 6)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_295_params.batch_size = 1;
    biggemm_0_0_295_params.batch_size_b = 1;
    biggemm_0_0_295_params.box_layout = true;
    biggemm_0_0_295_params.box_per_partition = false;
    biggemm_0_0_295_params.concat_group = true;
    biggemm_0_0_295_params.concat_group_par = 4;
    biggemm_0_0_295_params.connected_to_accumulator = false;
    biggemm_0_0_295_params.dbl_width = false;
    biggemm_0_0_295_params.disable_write_fronting_pmu = false;
    biggemm_0_0_295_params.dotproduct_gemm = false;
    biggemm_0_0_295_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_295_params.enable_gradient = false;
    biggemm_0_0_295_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_295_params.exclusive_vc_a = false;
    biggemm_0_0_295_params.external_input_a = true;
    biggemm_0_0_295_params.external_output_buffer = true;
    biggemm_0_0_295_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_295_params.num_col_compute_units = 2;
    biggemm_0_0_295_params.num_partitions = 1;
    biggemm_0_0_295_params.num_row_compute_units = 1;
    biggemm_0_0_295_params.seqID_base = 24;
    biggemm_0_0_295_params.set_exclusive_routes = false;
    biggemm_0_0_295_params.streaming_col_par = true;
    biggemm_0_0_295_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_295_params.wbuf_split = false;
    biggemm_0_0_295_params.write_done_used = false;
    biggemm_0_0_295_ = create_node<BigGemm>("biggemm_0_0_295", partition_0_0_, plasma_, biggemm_0_0_295_params);
    biggemm_0_0_295_->set_die_id(-1);
    biggemm_0_0_295_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_295_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_295_->set_metapipe_iterations({1});
    biggemm_0_0_295_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_296_params;
    biggemm_0_0_296_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_296_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 7)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_296_params.batch_size = 1;
    biggemm_0_0_296_params.batch_size_b = 1;
    biggemm_0_0_296_params.box_layout = true;
    biggemm_0_0_296_params.box_per_partition = false;
    biggemm_0_0_296_params.concat_group = true;
    biggemm_0_0_296_params.concat_group_par = 4;
    biggemm_0_0_296_params.connected_to_accumulator = false;
    biggemm_0_0_296_params.dbl_width = false;
    biggemm_0_0_296_params.disable_write_fronting_pmu = false;
    biggemm_0_0_296_params.dotproduct_gemm = false;
    biggemm_0_0_296_params.dotproduct_gemm_bf16_output = false;
    biggemm_0_0_296_params.enable_gradient = false;
    biggemm_0_0_296_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_296_params.exclusive_vc_a = false;
    biggemm_0_0_296_params.external_input_a = true;
    biggemm_0_0_296_params.external_output_buffer = true;
    biggemm_0_0_296_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_296_params.num_col_compute_units = 2;
    biggemm_0_0_296_params.num_partitions = 1;
    biggemm_0_0_296_params.num_row_compute_units = 1;
    biggemm_0_0_296_params.seqID_base = 36;
    biggemm_0_0_296_params.set_exclusive_routes = false;
    biggemm_0_0_296_params.streaming_col_par = true;
    biggemm_0_0_296_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_296_params.wbuf_split = false;
    biggemm_0_0_296_params.write_done_used = false;
    biggemm_0_0_296_ = create_node<BigGemm>("biggemm_0_0_296", partition_0_0_, plasma_, biggemm_0_0_296_params);
    biggemm_0_0_296_->set_die_id(-1);
    biggemm_0_0_296_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_296_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_296_->set_metapipe_iterations({1});
    biggemm_0_0_296_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_297_params;
    biggemm_0_0_297_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_297_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 8)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_297_->set_die_id(-1);
    biggemm_0_0_297_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_297_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_297_->set_metapipe_iterations({1});
    biggemm_0_0_297_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_298_params;
    biggemm_0_0_298_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_298_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 9)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_298_->set_die_id(-1);
    biggemm_0_0_298_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_298_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_298_->set_metapipe_iterations({1});
    biggemm_0_0_298_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_299_params;
    biggemm_0_0_299_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_299_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 10)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_299_->set_die_id(-1);
    biggemm_0_0_299_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_299_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_299_->set_metapipe_iterations({1});
    biggemm_0_0_299_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_300_params;
    biggemm_0_0_300_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_300_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 11)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_300_->set_die_id(-1);
    biggemm_0_0_300_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_300_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_300_->set_metapipe_iterations({1});
    biggemm_0_0_300_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_301_params;
    biggemm_0_0_301_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_301_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 12)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_301_->set_die_id(-1);
    biggemm_0_0_301_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_301_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_301_->set_metapipe_iterations({1});
    biggemm_0_0_301_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_302_params;
    biggemm_0_0_302_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_302_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 13)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_302_->set_die_id(-1);
    biggemm_0_0_302_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_302_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_302_->set_metapipe_iterations({1});
    biggemm_0_0_302_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_303_params;
    biggemm_0_0_303_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_303_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 14)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_303_->set_die_id(-1);
    biggemm_0_0_303_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_303_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_303_->set_metapipe_iterations({1});
    biggemm_0_0_303_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_304_params;
    biggemm_0_0_304_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_304_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 15)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_304_->set_die_id(-1);
    biggemm_0_0_304_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_304_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_304_->set_metapipe_iterations({1});
    biggemm_0_0_304_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_305_params;
    biggemm_0_0_305_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_305_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 16)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_305_->set_die_id(-1);
    biggemm_0_0_305_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_305_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_305_->set_metapipe_iterations({1});
    biggemm_0_0_305_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_306_params;
    biggemm_0_0_306_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_306_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 17)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_306_->set_die_id(-1);
    biggemm_0_0_306_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_306_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_306_->set_metapipe_iterations({1});
    biggemm_0_0_306_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_307_params;
    biggemm_0_0_307_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_307_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 18)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_307_->set_die_id(-1);
    biggemm_0_0_307_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_307_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_307_->set_metapipe_iterations({1});
    biggemm_0_0_307_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_308_params;
    biggemm_0_0_308_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_308_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 19)).at_address(0).with_vector_transpose(true);
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
    biggemm_0_0_308_->set_die_id(-1);
    biggemm_0_0_308_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_308_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_308_->set_metapipe_iterations({1});
    biggemm_0_0_308_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_309_params;
    biggemm_0_0_309_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_309_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 20)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_309_params.batch_size = 1;
    biggemm_0_0_309_params.batch_size_b = 1;
    biggemm_0_0_309_params.box_layout = true;
    biggemm_0_0_309_params.box_per_partition = false;
    biggemm_0_0_309_params.concat_group = true;
    biggemm_0_0_309_params.concat_group_par = 2;
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
    biggemm_0_0_309_->set_die_id(-1);
    biggemm_0_0_309_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_309_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_309_->set_metapipe_iterations({1});
    biggemm_0_0_309_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_0_0_310_params;
    biggemm_0_0_310_params.A_layout = sbuf2u_0_0_287_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_310_params.B_layout = split_kernel_gbuf_0_0_288_->result_layout(GBuffer::get_head_output(1, 21)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_310_params.batch_size = 1;
    biggemm_0_0_310_params.batch_size_b = 1;
    biggemm_0_0_310_params.box_layout = true;
    biggemm_0_0_310_params.box_per_partition = false;
    biggemm_0_0_310_params.concat_group = true;
    biggemm_0_0_310_params.concat_group_par = 2;
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
    biggemm_0_0_310_->set_die_id(-1);
    biggemm_0_0_310_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    biggemm_0_0_310_->set_mac_latency(-1.000000e+00);
    biggemm_0_0_310_->set_metapipe_iterations({1});
    biggemm_0_0_310_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_0_0_313_params;
    gbuf2u_0_0_313_params.allow_pob = false;
    gbuf2u_0_0_313_params.concat = GBuffer::kConcatN;
    gbuf2u_0_0_313_params.fronting_group = 4;
    gbuf2u_0_0_313_params.fronting_group_int_col_par_vectors = 12;
    gbuf2u_0_0_313_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_313_params.head1_linear = true;
    gbuf2u_0_0_313_params.head1_p2p = false;
    gbuf2u_0_0_313_params.head1_streaming_window = true;
    gbuf2u_0_0_313_params.head_1_depth = 2;
    gbuf2u_0_0_313_params.layout = biggemm_0_0_289_->result_layout(BigGemm::kOutput).at_address(0).with_logical_shape({1, 256}).at_address(0);
    gbuf2u_0_0_313_params.num_head1_rd_en = 2;
    gbuf2u_0_0_313_params.num_iterations = 1;
    gbuf2u_0_0_313_params.write_group_layouts = {biggemm_0_0_289_->result_layouts(BigGemm::kOutput), biggemm_0_0_290_->result_layouts(BigGemm::kOutput), biggemm_0_0_291_->result_layouts(BigGemm::kOutput), biggemm_0_0_292_->result_layouts(BigGemm::kOutput), biggemm_0_0_293_->result_layouts(BigGemm::kOutput), biggemm_0_0_294_->result_layouts(BigGemm::kOutput), biggemm_0_0_295_->result_layouts(BigGemm::kOutput), biggemm_0_0_296_->result_layouts(BigGemm::kOutput), biggemm_0_0_297_->result_layouts(BigGemm::kOutput), biggemm_0_0_298_->result_layouts(BigGemm::kOutput), biggemm_0_0_299_->result_layouts(BigGemm::kOutput), biggemm_0_0_300_->result_layouts(BigGemm::kOutput), biggemm_0_0_301_->result_layouts(BigGemm::kOutput), biggemm_0_0_302_->result_layouts(BigGemm::kOutput), biggemm_0_0_303_->result_layouts(BigGemm::kOutput), biggemm_0_0_304_->result_layouts(BigGemm::kOutput), biggemm_0_0_305_->result_layouts(BigGemm::kOutput), biggemm_0_0_306_->result_layouts(BigGemm::kOutput), biggemm_0_0_307_->result_layouts(BigGemm::kOutput), biggemm_0_0_308_->result_layouts(BigGemm::kOutput), biggemm_0_0_309_->result_layouts(BigGemm::kOutput), biggemm_0_0_310_->result_layouts(BigGemm::kOutput)};
    gbuf2u_0_0_313_params.write_group_partitions = {biggemm_0_0_289_->num_partitions(), biggemm_0_0_290_->num_partitions(), biggemm_0_0_291_->num_partitions(), biggemm_0_0_292_->num_partitions(), biggemm_0_0_293_->num_partitions(), biggemm_0_0_294_->num_partitions(), biggemm_0_0_295_->num_partitions(), biggemm_0_0_296_->num_partitions(), biggemm_0_0_297_->num_partitions(), biggemm_0_0_298_->num_partitions(), biggemm_0_0_299_->num_partitions(), biggemm_0_0_300_->num_partitions(), biggemm_0_0_301_->num_partitions(), biggemm_0_0_302_->num_partitions(), biggemm_0_0_303_->num_partitions(), biggemm_0_0_304_->num_partitions(), biggemm_0_0_305_->num_partitions(), biggemm_0_0_306_->num_partitions(), biggemm_0_0_307_->num_partitions(), biggemm_0_0_308_->num_partitions(), biggemm_0_0_309_->num_partitions(), biggemm_0_0_310_->num_partitions()};
    gbuf2u_0_0_313_params.write_layouts_spread = true;
    gbuf2u_0_0_313_params.write_time_concat = true;
    gbuf2u_0_0_313_params.write_time_concat_slices = {12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 4};
    gbuf2u_0_0_313_ = create_node<GBuffer>("gbuf2u_0_0_313", partition_0_0_, plasma_, gbuf2u_0_0_313_params);
    gbuf2u_0_0_313_->set_die_id(-1);
    gbuf2u_0_0_313_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    gbuf2u_0_0_313_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_313_->set_metapipe_iterations({1});
    
    BiasTransposeAdd::Params bias_transpose_add_0_0_314_params;
    bias_transpose_add_0_0_314_params.batch_size = 1;
    bias_transpose_add_0_0_314_params.bias_layout = params_.ptconvlstm__conv_layer__bias_0_0_102.at_address(0);
    bias_transpose_add_0_0_314_params.input_layout = gbuf2u_0_0_313_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    bias_transpose_add_0_0_314_ = create_node<BiasTransposeAdd>("bias_transpose_add_0_0_314", partition_0_0_, plasma_, bias_transpose_add_0_0_314_params);
    bias_transpose_add_0_0_314_->set_die_id(-1);
    bias_transpose_add_0_0_314_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    bias_transpose_add_0_0_314_->set_mac_latency(-1.000000e+00);
    bias_transpose_add_0_0_314_->set_metapipe_iterations({1});
    bias_transpose_add_0_0_314_->set_metapipe_iter_count(1);
    
    StreamingTranspose::Params streaming_transpose_0_0_315_params;
    streaming_transpose_0_0_315_params.cvrm_to_dvdm3d_atom_wise_transpose = true;
    streaming_transpose_0_0_315_params.dvdm_image_h = 1;
    streaming_transpose_0_0_315_params.dvdm_image_w = 1;
    streaming_transpose_0_0_315_params.image_layout = bias_transpose_add_0_0_314_->result_layout().at_address(0);
    streaming_transpose_0_0_315_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::CVRM_To_DVDM;
    streaming_transpose_0_0_315_ = create_node<StreamingTranspose>("streaming_transpose_0_0_315", partition_0_0_, plasma_, streaming_transpose_0_0_315_params);
    streaming_transpose_0_0_315_->set_die_id(-1);
    streaming_transpose_0_0_315_->set_mac_id("ptconvlstm__conv_layer__conv2d");
    streaming_transpose_0_0_315_->set_mac_latency(-1.000000e+00);
    streaming_transpose_0_0_315_->set_metapipe_iterations({1});
    streaming_transpose_0_0_315_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_0_0_198_params;
    gbuf2u_0_0_198_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_198_params.head1_linear = true;
    gbuf2u_0_0_198_params.head1_p2p = false;
    gbuf2u_0_0_198_params.head1_streaming_window = true;
    gbuf2u_0_0_198_params.head_1_depth = 2;
    gbuf2u_0_0_198_params.layout = streaming_transpose_0_0_315_->result_layout().at_address(0);
    gbuf2u_0_0_198_params.num_head1_rd_en = 4;
    gbuf2u_0_0_198_params.num_iterations = 1;
    gbuf2u_0_0_198_ = create_node<GBuffer>("gbuf2u_0_0_198", partition_0_0_, plasma_, gbuf2u_0_0_198_params);
    gbuf2u_0_0_198_->set_die_id(-1);
    gbuf2u_0_0_198_->set_mac_id("default_198");
    gbuf2u_0_0_198_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_198_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__conv_layer__reshape_2_params;
    ptconvlstm__conv_layer__reshape_2_params.input_layout = gbuf2u_0_0_198_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__reshape_2_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    ptconvlstm__conv_layer__reshape_2_params.reshape = {256, 1};
    ptconvlstm__conv_layer__reshape_2_ = create_node<ReshapeView>("ptconvlstm__conv_layer__reshape_2", partition_0_0_, plasma_, ptconvlstm__conv_layer__reshape_2_params);
    ptconvlstm__conv_layer__reshape_2_->set_die_id(-1);
    ptconvlstm__conv_layer__reshape_2_->set_mac_id("ptconvlstm__conv_layer__reshape_2");
    ptconvlstm__conv_layer__reshape_2_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__reshape_2_->set_metapipe_iterations({1});
    ptconvlstm__conv_layer__reshape_2_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_0_0_200_params;
    gbuf2u_0_0_200_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_200_params.head1_linear = false;
    gbuf2u_0_0_200_params.head1_p2p = false;
    gbuf2u_0_0_200_params.head_1_depth = 2;
    gbuf2u_0_0_200_params.layout = ptconvlstm__conv_layer__reshape_2_->result_layout();
    gbuf2u_0_0_200_params.num_head1_rd_en = 2;
    gbuf2u_0_0_200_params.num_iterations = 1;
    gbuf2u_0_0_200_ = create_node<GBuffer>("gbuf2u_0_0_200", partition_0_0_, plasma_, gbuf2u_0_0_200_params);
    gbuf2u_0_0_200_->set_die_id(-1);
    gbuf2u_0_0_200_->set_mac_id("default_200");
    gbuf2u_0_0_200_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_200_->set_metapipe_iterations({1});
    
    BigGemm::Params ptconvlstm__dense_layer__linear_params;
    ptconvlstm__dense_layer__linear_params.A_layout = params_.ptconvlstm__dense_layer__weight_0_0_106.with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_params.B_layout = gbuf2u_0_0_200_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_params.batch_size = 1;
    ptconvlstm__dense_layer__linear_params.batch_size_b = 1;
    ptconvlstm__dense_layer__linear_params.box_layout = true;
    ptconvlstm__dense_layer__linear_params.box_per_partition = true;
    ptconvlstm__dense_layer__linear_params.connected_to_accumulator = false;
    ptconvlstm__dense_layer__linear_params.dbl_width = false;
    ptconvlstm__dense_layer__linear_params.disable_write_fronting_pmu = false;
    ptconvlstm__dense_layer__linear_params.dotproduct_gemm = false;
    ptconvlstm__dense_layer__linear_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__dense_layer__linear_params.enable_gradient = false;
    ptconvlstm__dense_layer__linear_params.enable_seqID_pacing_interval = true;
    ptconvlstm__dense_layer__linear_params.exclusive_vc_a = false;
    ptconvlstm__dense_layer__linear_params.external_input_a = false;
    ptconvlstm__dense_layer__linear_params.external_output_buffer = true;
    ptconvlstm__dense_layer__linear_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_params.no_reload_weight = false;
    ptconvlstm__dense_layer__linear_params.num_col_compute_units = 1;
    ptconvlstm__dense_layer__linear_params.num_partitions = 4;
    ptconvlstm__dense_layer__linear_params.num_row_compute_units = 32;
    ptconvlstm__dense_layer__linear_params.seqID_base = 0;
    ptconvlstm__dense_layer__linear_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_params.streaming_col_par = false;
    ptconvlstm__dense_layer__linear_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_params.wbuf_split = false;
    ptconvlstm__dense_layer__linear_params.write_done_used = false;
    ptconvlstm__dense_layer__linear_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear", partition_0_0_, plasma_, ptconvlstm__dense_layer__linear_params);
    ptconvlstm__dense_layer__linear_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_->set_mac_id("ptconvlstm__dense_layer__linear");
    ptconvlstm__dense_layer__linear_->set_mac_latency(4.570000e+02);
    ptconvlstm__dense_layer__linear_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf1a_0_0_385_params;
    gbuf1a_0_0_385_params.head1_linear = true;
    gbuf1a_0_0_385_params.head1_p2p = false;
    gbuf1a_0_0_385_params.head_1_depth = 1;
    gbuf1a_0_0_385_params.layout = ptconvlstm__dense_layer__linear_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_0_0_385_params.num_iterations = 1;
    gbuf1a_0_0_385_params.write_group_layouts = {ptconvlstm__dense_layer__linear_->result_layouts(BigGemm::kOutput)};
    gbuf1a_0_0_385_params.write_group_partitions = {ptconvlstm__dense_layer__linear_->num_partitions()};
    gbuf1a_0_0_385_ = create_node<GBuffer>("gbuf1a_0_0_385", partition_0_0_, plasma_, gbuf1a_0_0_385_params);
    gbuf1a_0_0_385_->set_die_id(-1);
    gbuf1a_0_0_385_->set_mac_id("default_385");
    gbuf1a_0_0_385_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_385_->set_metapipe_iterations({1});
    
    BiasAdd::Params bias_add_0_0_382_params;
    bias_add_0_0_382_params.batch_size = 1;
    bias_add_0_0_382_params.layout_bias = params_.ptconvlstm__dense_layer__bias_0_0_107;
    bias_add_0_0_382_params.layout_input = {gbuf1a_0_0_385_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0)};
    bias_add_0_0_382_params.no_reload_bias = false;
    bias_add_0_0_382_params.wbuf_split = false;
    bias_add_0_0_382_ = create_node<BiasAdd>("bias_add_0_0_382", partition_0_0_, plasma_, bias_add_0_0_382_params);
    bias_add_0_0_382_->set_die_id(-1);
    bias_add_0_0_382_->set_mac_id("default_382");
    bias_add_0_0_382_->set_mac_latency(-1.000000e+00);
    bias_add_0_0_382_->set_metapipe_iterations({1});
    bias_add_0_0_382_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_0_0_202_params;
    gbuf2u_0_0_202_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_202_params.head1_linear = true;
    gbuf2u_0_0_202_params.head1_p2p = false;
    gbuf2u_0_0_202_params.head1_streaming_window = true;
    gbuf2u_0_0_202_params.head_1_depth = 2;
    gbuf2u_0_0_202_params.layout = bias_add_0_0_382_->result_layout(BiasAdd::Output::kOutput).at_address(0);
    gbuf2u_0_0_202_params.num_head1_rd_en = 2;
    gbuf2u_0_0_202_params.num_iterations = 1;
    gbuf2u_0_0_202_ = create_node<GBuffer>("gbuf2u_0_0_202", partition_0_0_, plasma_, gbuf2u_0_0_202_params);
    gbuf2u_0_0_202_->set_die_id(-1);
    gbuf2u_0_0_202_->set_mac_id("default_202");
    gbuf2u_0_0_202_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_202_->set_metapipe_iterations({1});
    
    LayoutCast::Params layout_cast_0_0_428_params;
    layout_cast_0_0_428_params.checked = false;
    layout_cast_0_0_428_params.input_layout = gbuf2u_0_0_202_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    layout_cast_0_0_428_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 0).vector_align();
    layout_cast_0_0_428_ = create_node<LayoutCast>("layout_cast_0_0_428", partition_0_0_, plasma_, layout_cast_0_0_428_params);
    layout_cast_0_0_428_->set_die_id(-1);
    layout_cast_0_0_428_->set_mac_id("default_428");
    layout_cast_0_0_428_->set_mac_latency(-1.000000e+00);
    layout_cast_0_0_428_->set_metapipe_iterations({1});
    layout_cast_0_0_428_->set_metapipe_iter_count(1);
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_output0_params;
    ptconvlstm__dense_layer__linear_t_output0_params.input_layout = layout_cast_0_0_428_->result_layout();
    ptconvlstm__dense_layer__linear_t_output0_params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_output0_ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_output0", partition_0_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_params);
    ptconvlstm__dense_layer__linear_t_output0_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0");
    ptconvlstm__dense_layer__linear_t_output0_->set_mac_latency(0.000000e+00);
    ptconvlstm__dense_layer__linear_t_output0_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_t_output0_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2a_0_0_430_params;
    gbuf2a_0_0_430_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_430_params.head0_linear = true;
    gbuf2a_0_0_430_params.head0_p2p = false;
    gbuf2a_0_0_430_params.head0_streaming_window = true;
    gbuf2a_0_0_430_params.head1_ctrl_flow_enable = true;
    gbuf2a_0_0_430_params.head1_linear = true;
    gbuf2a_0_0_430_params.head1_p2p = false;
    gbuf2a_0_0_430_params.head1_streaming_window = true;
    gbuf2a_0_0_430_params.head_0_depth = 2;
    gbuf2a_0_0_430_params.head_1_depth = 2;
    gbuf2a_0_0_430_params.layout = ptconvlstm__dense_layer__linear_t_output0_->result_layout();
    gbuf2a_0_0_430_params.num_head0_rd_en = 2;
    gbuf2a_0_0_430_params.num_head1_rd_en = 2;
    gbuf2a_0_0_430_params.num_iterations = 1;
    gbuf2a_0_0_430_ = create_node<GBuffer>("gbuf2a_0_0_430", partition_0_0_, plasma_, gbuf2a_0_0_430_params);
    gbuf2a_0_0_430_->set_die_id(-1);
    gbuf2a_0_0_430_->set_mac_id("default_430");
    gbuf2a_0_0_430_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_430_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__reshape_params;
    ptconvlstm__reshape_params.input_layout = gbuf2a_0_0_430_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvlstm__reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0}, 0).vector_align();
    ptconvlstm__reshape_params.reshape = {4080};
    ptconvlstm__reshape_ = create_node<ReshapeView>("ptconvlstm__reshape", partition_0_0_, plasma_, ptconvlstm__reshape_params);
    ptconvlstm__reshape_->set_die_id(-1);
    ptconvlstm__reshape_->set_mac_id("ptconvlstm__reshape");
    ptconvlstm__reshape_->set_mac_latency(1.300000e+01);
    ptconvlstm__reshape_->set_metapipe_iterations({1});
    ptconvlstm__reshape_->set_metapipe_iter_count(1);
    
    ReshapeView::Params ptconvlstm__view_params;
    ptconvlstm__view_params.input_layout = gbuf2a_0_0_430_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__view_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).align({{-2,64}});
    ptconvlstm__view_params.reshape = {30, 136};
    ptconvlstm__view_ = create_node<ReshapeView>("ptconvlstm__view", partition_0_0_, plasma_, ptconvlstm__view_params);
    ptconvlstm__view_->set_die_id(-1);
    ptconvlstm__view_->set_mac_id("ptconvlstm__view");
    ptconvlstm__view_->set_mac_latency(1.300000e+01);
    ptconvlstm__view_->set_metapipe_iterations({1});
    ptconvlstm__view_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2a_0_0_389_params;
    gbuf2a_0_0_389_params.head1_linear = false;
    gbuf2a_0_0_389_params.head1_p2p = false;
    gbuf2a_0_0_389_params.head_1_depth = 2;
    gbuf2a_0_0_389_params.layout = ptconvlstm__conv_layer__reshape_2_->result_layout();
    gbuf2a_0_0_389_params.num_iterations = 1;
    gbuf2a_0_0_389_ = create_node<GBuffer>("gbuf2a_0_0_389", partition_0_0_, plasma_, gbuf2a_0_0_389_params);
    gbuf2a_0_0_389_->set_die_id(-1);
    gbuf2a_0_0_389_->set_mac_id("default_389");
    gbuf2a_0_0_389_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_389_->set_metapipe_iterations({1});
    
    GBuffer::Params gbuf2a_0_0_431_params;
    gbuf2a_0_0_431_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_431_params.head0_linear = true;
    gbuf2a_0_0_431_params.head0_p2p = false;
    gbuf2a_0_0_431_params.head0_streaming_window = true;
    gbuf2a_0_0_431_params.head1_linear = false;
    gbuf2a_0_0_431_params.head1_p2p = false;
    gbuf2a_0_0_431_params.head_0_depth = 2;
    gbuf2a_0_0_431_params.head_1_depth = 2;
    gbuf2a_0_0_431_params.layout = ptconvlstm__reshape_->result_layout();
    gbuf2a_0_0_431_params.num_head0_rd_en = 2;
    gbuf2a_0_0_431_params.num_iterations = 1;
    gbuf2a_0_0_431_ = create_node<GBuffer>("gbuf2a_0_0_431", partition_0_0_, plasma_, gbuf2a_0_0_431_params);
    gbuf2a_0_0_431_->set_die_id(-1);
    gbuf2a_0_0_431_->set_mac_id("default_431");
    gbuf2a_0_0_431_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_431_->set_metapipe_iterations({1});
    
    GBuffer::Params gbuf2a_0_0_391_params;
    gbuf2a_0_0_391_params.head1_linear = false;
    gbuf2a_0_0_391_params.head1_p2p = false;
    gbuf2a_0_0_391_params.head_1_depth = 2;
    gbuf2a_0_0_391_params.layout = ptconvlstm__view_->result_layout();
    gbuf2a_0_0_391_params.num_iterations = 1;
    gbuf2a_0_0_391_ = create_node<GBuffer>("gbuf2a_0_0_391", partition_0_0_, plasma_, gbuf2a_0_0_391_params);
    gbuf2a_0_0_391_->set_die_id(-1);
    gbuf2a_0_0_391_->set_mac_id("default_391");
    gbuf2a_0_0_391_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_391_->set_metapipe_iterations({1});
    
    GBuffer::Params gbuf2a_0_0_422_params;
    gbuf2a_0_0_422_params.head1_linear = true;
    gbuf2a_0_0_422_params.head1_p2p = false;
    gbuf2a_0_0_422_params.head_1_depth = 2;
    gbuf2a_0_0_422_params.layout = gbuf2a_0_0_431_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0).with_logical_shape({1, 4080}).at_address(0);
    gbuf2a_0_0_422_params.num_iterations = 1;
    gbuf2a_0_0_422_ = create_node<GBuffer>("gbuf2a_0_0_422", partition_0_0_, plasma_, gbuf2a_0_0_422_params);
    gbuf2a_0_0_422_->set_die_id(-1);
    gbuf2a_0_0_422_->set_mac_id("default_422");
    gbuf2a_0_0_422_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf1a_0_0_421_params;
    gbuf1a_0_0_421_params.enable_fronting_pmu = true;
    gbuf1a_0_0_421_params.head1_linear = true;
    gbuf1a_0_0_421_params.head1_p2p = false;
    gbuf1a_0_0_421_params.head_1_depth = 1;
    gbuf1a_0_0_421_params.layout = params_.out_window_0_0_96.at_address(0);
    gbuf1a_0_0_421_params.loaded_by_broadcast = false;
    gbuf1a_0_0_421_params.num_iterations = 1;
    gbuf1a_0_0_421_ = create_node<GBuffer>("gbuf1a_0_0_421", partition_0_0_, plasma_, gbuf1a_0_0_421_params);
    gbuf1a_0_0_421_->set_die_id(-1);
    gbuf1a_0_0_421_->set_mac_id("default_421");
    gbuf1a_0_0_421_->set_mac_latency(-1.000000e+00);
    
    Realign::Params realign_0_0_409_params;
    realign_0_0_409_params.depth = 4;
    realign_0_0_409_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2);
    realign_0_0_409_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).align({{-2,64}});
    realign_0_0_409_params.upstream_pacing = true;
    realign_0_0_409_params.upstream_pacing_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).with_logical_shape({1, 30, 136}).at_address(0);
    realign_0_0_409_ = create_node<Realign>("realign_0_0_409", partition_0_0_, plasma_, realign_0_0_409_params);
    realign_0_0_409_->set_die_id(-1);
    realign_0_0_409_->set_mac_id("default_409");
    realign_0_0_409_->set_mac_latency(-1.000000e+00);
    realign_0_0_409_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf1a_0_0_392_params;
    gbuf1a_0_0_392_params.head1_linear = true;
    gbuf1a_0_0_392_params.head1_p2p = false;
    gbuf1a_0_0_392_params.head_1_depth = 1;
    gbuf1a_0_0_392_params.layout = realign_0_0_409_->result_layout().at_address(0);
    gbuf1a_0_0_392_params.num_iterations = 1;
    gbuf1a_0_0_392_ = create_node<GBuffer>("gbuf1a_0_0_392", partition_0_0_, plasma_, gbuf1a_0_0_392_params);
    gbuf1a_0_0_392_->set_die_id(-1);
    gbuf1a_0_0_392_->set_mac_id("default_392");
    gbuf1a_0_0_392_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__reshape_1_params;
    ptconvlstm__reshape_1_params.input_layout = gbuf1a_0_0_392_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__reshape_1_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    ptconvlstm__reshape_1_params.reshape = {1, 4080};
    ptconvlstm__reshape_1_ = create_node<ReshapeView>("ptconvlstm__reshape_1", partition_0_0_, plasma_, ptconvlstm__reshape_1_params);
    ptconvlstm__reshape_1_->set_die_id(-1);
    ptconvlstm__reshape_1_->set_mac_id("ptconvlstm__reshape_1");
    ptconvlstm__reshape_1_->set_mac_latency(1.300000e+01);
    ptconvlstm__reshape_1_->set_metapipe_iter_count(1);
    
    BinaryOps::Params sub_0_0_322_params;
    sub_0_0_322_params.layout_a = gbuf2a_0_0_422_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    sub_0_0_322_params.layout_b = ptconvlstm__reshape_1_->result_layout();
    sub_0_0_322_params.op = node_constants::TemplateOpcodes::kSub;
    sub_0_0_322_params.streaming_a = true;
    sub_0_0_322_params.streaming_b = true;
    sub_0_0_322_ = create_node<BinaryOps>("sub_0_0_322", partition_0_0_, plasma_, sub_0_0_322_params);
    sub_0_0_322_->set_die_id(-1);
    sub_0_0_322_->set_mac_id("default_62");
    sub_0_0_322_->set_mac_latency(3.190000e+02);
    sub_0_0_322_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf1a_0_0_432_params;
    gbuf1a_0_0_432_params.head0_linear = true;
    gbuf1a_0_0_432_params.head0_p2p = false;
    gbuf1a_0_0_432_params.head1_linear = true;
    gbuf1a_0_0_432_params.head1_p2p = false;
    gbuf1a_0_0_432_params.head_0_depth = 1;
    gbuf1a_0_0_432_params.head_1_depth = 1;
    gbuf1a_0_0_432_params.layout = sub_0_0_322_->result_layout().at_address(0);
    gbuf1a_0_0_432_params.num_iterations = 1;
    gbuf1a_0_0_432_ = create_node<GBuffer>("gbuf1a_0_0_432", partition_0_0_, plasma_, gbuf1a_0_0_432_params);
    gbuf1a_0_0_432_->set_die_id(-1);
    gbuf1a_0_0_432_->set_mac_id("default_432");
    gbuf1a_0_0_432_->set_mac_latency(-1.000000e+00);
    
    BinaryOps::Params mul_0_0_323_params;
    mul_0_0_323_params.layout_a = gbuf1a_0_0_432_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    mul_0_0_323_params.layout_b = gbuf1a_0_0_432_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    mul_0_0_323_params.op = node_constants::TemplateOpcodes::kMul;
    mul_0_0_323_params.streaming_a = true;
    mul_0_0_323_params.streaming_b = true;
    mul_0_0_323_ = create_node<BinaryOps>("mul_0_0_323", partition_0_0_, plasma_, mul_0_0_323_params);
    mul_0_0_323_->set_die_id(-1);
    mul_0_0_323_->set_mac_id("default_63");
    mul_0_0_323_->set_mac_latency(3.190000e+02);
    mul_0_0_323_->set_metapipe_iter_count(1);
    
    MeanUnalign::Params mean_unalign_0_0_324_params;
    mean_unalign_0_0_324_params.layout = mul_0_0_323_->result_layout().at_address(0);
    mean_unalign_0_0_324_params.op = node_constants::TemplateOpcodes::kMeanUnalign;
    mean_unalign_0_0_324_params.streaming = true;
    mean_unalign_0_0_324_ = create_node<MeanUnalign>("mean_unalign_0_0_324", partition_0_0_, plasma_, mean_unalign_0_0_324_params);
    mean_unalign_0_0_324_->set_die_id(-1);
    mean_unalign_0_0_324_->set_mac_id("default_64");
    mean_unalign_0_0_324_->set_mac_latency(3.190000e+02);
    mean_unalign_0_0_324_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf1a_0_0_393_params;
    gbuf1a_0_0_393_params.head1_linear = false;
    gbuf1a_0_0_393_params.head1_p2p = false;
    gbuf1a_0_0_393_params.head_1_depth = 1;
    gbuf1a_0_0_393_params.layout = mean_unalign_0_0_324_->result_layout().at_address(0);
    gbuf1a_0_0_393_params.num_iterations = 1;
    gbuf1a_0_0_393_ = create_node<GBuffer>("gbuf1a_0_0_393", partition_0_0_, plasma_, gbuf1a_0_0_393_params);
    gbuf1a_0_0_393_->set_die_id(-1);
    gbuf1a_0_0_393_->set_mac_id("default_393");
    gbuf1a_0_0_393_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<PartitionNode>("partition_1_0_", this, plasma_, 1, 0);
    mlir::rail::RAIL::rail->create_section(partition_1_0_);
    
    partition_1_0_->set_section_latency(7.827415e-05);
    GBuffer::Params gbuf2u_1_0_218_params;
    gbuf2u_1_0_218_params.enable_fronting_pmu = true;
    gbuf2u_1_0_218_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_218_params.head1_linear = true;
    gbuf2u_1_0_218_params.head1_p2p = false;
    gbuf2u_1_0_218_params.head1_streaming_window = true;
    gbuf2u_1_0_218_params.head_1_depth = 2;
    gbuf2u_1_0_218_params.layout = params_.ptconvlstm__view__outputs__0__grad_1_0_261.at_address(0);
    gbuf2u_1_0_218_params.loaded_by_broadcast = false;
    gbuf2u_1_0_218_params.num_head1_rd_en = 4;
    gbuf2u_1_0_218_params.num_iterations = 1;
    gbuf2u_1_0_218_ = create_node<GBuffer>("gbuf2u_1_0_218", partition_1_0_, plasma_, gbuf2u_1_0_218_params);
    gbuf2u_1_0_218_->set_die_id(-1);
    gbuf2u_1_0_218_->set_mac_id("default_218");
    gbuf2u_1_0_218_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_218_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__view_bwd_params;
    ptconvlstm__view_bwd_params.input_layout = gbuf2u_1_0_218_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__view_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    ptconvlstm__view_bwd_params.reshape = {1, 4080};
    ptconvlstm__view_bwd_ = create_node<ReshapeView>("ptconvlstm__view_bwd", partition_1_0_, plasma_, ptconvlstm__view_bwd_params);
    ptconvlstm__view_bwd_->set_die_id(-1);
    ptconvlstm__view_bwd_->set_mac_id("ptconvlstm__view_bwd");
    ptconvlstm__view_bwd_->set_mac_latency(1.300000e+01);
    ptconvlstm__view_bwd_->set_metapipe_iterations({1});
    ptconvlstm__view_bwd_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_221_params;
    gbuf2u_1_0_221_params.enable_fronting_pmu = true;
    gbuf2u_1_0_221_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_221_params.head1_linear = true;
    gbuf2u_1_0_221_params.head1_p2p = false;
    gbuf2u_1_0_221_params.head_1_depth = 2;
    gbuf2u_1_0_221_params.layout = params_.out_window_1_0_262.at_address(0);
    gbuf2u_1_0_221_params.loaded_by_broadcast = false;
    gbuf2u_1_0_221_params.num_head1_rd_en = 2;
    gbuf2u_1_0_221_params.num_iterations = 1;
    gbuf2u_1_0_221_ = create_node<GBuffer>("gbuf2u_1_0_221", partition_1_0_, plasma_, gbuf2u_1_0_221_params);
    gbuf2u_1_0_221_->set_die_id(-1);
    gbuf2u_1_0_221_->set_mac_id("default_221");
    gbuf2u_1_0_221_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_221_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__reshape_1_recompute__params;
    ptconvlstm__reshape_1_recompute__params.input_layout = gbuf2u_1_0_221_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__reshape_1_recompute__params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0}, 0).vector_align();
    ptconvlstm__reshape_1_recompute__params.reshape = {4080};
    ptconvlstm__reshape_1_recompute__ = create_node<ReshapeView>("ptconvlstm__reshape_1_recompute_", partition_1_0_, plasma_, ptconvlstm__reshape_1_recompute__params);
    ptconvlstm__reshape_1_recompute__->set_die_id(-1);
    ptconvlstm__reshape_1_recompute__->set_mac_id("ptconvlstm__reshape_1_recompute_");
    ptconvlstm__reshape_1_recompute__->set_mac_latency(1.300000e+01);
    ptconvlstm__reshape_1_recompute__->set_metapipe_iterations({1});
    ptconvlstm__reshape_1_recompute__->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_224_params;
    gbuf2u_1_0_224_params.enable_fronting_pmu = true;
    gbuf2u_1_0_224_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_224_params.head1_linear = true;
    gbuf2u_1_0_224_params.head1_p2p = false;
    gbuf2u_1_0_224_params.head_1_depth = 2;
    gbuf2u_1_0_224_params.layout = params_.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263.at_address(0);
    gbuf2u_1_0_224_params.loaded_by_broadcast = false;
    gbuf2u_1_0_224_params.num_head1_rd_en = 2;
    gbuf2u_1_0_224_params.num_iterations = 1;
    gbuf2u_1_0_224_ = create_node<GBuffer>("gbuf2u_1_0_224", partition_1_0_, plasma_, gbuf2u_1_0_224_params);
    gbuf2u_1_0_224_->set_die_id(-1);
    gbuf2u_1_0_224_->set_mac_id("default_224");
    gbuf2u_1_0_224_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_224_->set_metapipe_iterations({1});
    
    BinaryOps::Params ptconvlstm__criterion__mseloss_bwd_sub_params;
    ptconvlstm__criterion__mseloss_bwd_sub_params.layout_a = gbuf2u_1_0_224_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__criterion__mseloss_bwd_sub_params.layout_b = ptconvlstm__reshape_1_recompute__->result_layout();
    ptconvlstm__criterion__mseloss_bwd_sub_params.op = node_constants::TemplateOpcodes::kSub;
    ptconvlstm__criterion__mseloss_bwd_sub_params.streaming_a = true;
    ptconvlstm__criterion__mseloss_bwd_sub_params.streaming_b = true;
    ptconvlstm__criterion__mseloss_bwd_sub_ = create_node<BinaryOps>("ptconvlstm__criterion__mseloss_bwd_sub", partition_1_0_, plasma_, ptconvlstm__criterion__mseloss_bwd_sub_params);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_die_id(-1);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_mac_id("ptconvlstm__criterion__mseloss_bwd");
    ptconvlstm__criterion__mseloss_bwd_sub_->set_mac_latency(1.060000e+02);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_metapipe_iterations({1});
    ptconvlstm__criterion__mseloss_bwd_sub_->set_metapipe_iter_count(1);
    
    Scale::Params scale_1_0_331_params;
    scale_1_0_331_params.argin_value = 4.920959e-04;
    scale_1_0_331_params.batch_size = 1;
    scale_1_0_331_params.conditional_scaling = false;
    scale_1_0_331_params.layout_a = ptconvlstm__criterion__mseloss_bwd_sub_->result_layout().at_address(0);
    scale_1_0_331_params.using_input_b = false;
    scale_1_0_331_ = create_node<Scale>("scale_1_0_331", partition_1_0_, plasma_, scale_1_0_331_params);
    scale_1_0_331_->set_die_id(-1);
    scale_1_0_331_->set_mac_id("default_67");
    scale_1_0_331_->set_mac_latency(1.060000e+02);
    scale_1_0_331_->set_metapipe_iterations({1});
    scale_1_0_331_->set_metapipe_iter_count(1);
    
    Scale::Params scale_1_0_332_params;
    scale_1_0_332_params.batch_size = 1;
    scale_1_0_332_params.conditional_scaling = false;
    scale_1_0_332_params.layout_a = scale_1_0_331_->result_layout().at_address(0);
    scale_1_0_332_params.layout_b = params_.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.at_address(0);
    scale_1_0_332_params.using_input_b = true;
    scale_1_0_332_ = create_node<Scale>("scale_1_0_332", partition_1_0_, plasma_, scale_1_0_332_params);
    scale_1_0_332_->set_die_id(-1);
    scale_1_0_332_->set_mac_id("default_68");
    scale_1_0_332_->set_mac_latency(1.060000e+02);
    scale_1_0_332_->set_metapipe_iterations({1});
    scale_1_0_332_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_229_params;
    gbuf2u_1_0_229_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_229_params.head1_linear = true;
    gbuf2u_1_0_229_params.head1_p2p = false;
    gbuf2u_1_0_229_params.head1_streaming_window = true;
    gbuf2u_1_0_229_params.head_1_depth = 2;
    gbuf2u_1_0_229_params.layout = scale_1_0_332_->result_layout().at_address(0);
    gbuf2u_1_0_229_params.num_head1_rd_en = 4;
    gbuf2u_1_0_229_params.num_iterations = 1;
    gbuf2u_1_0_229_ = create_node<GBuffer>("gbuf2u_1_0_229", partition_1_0_, plasma_, gbuf2u_1_0_229_params);
    gbuf2u_1_0_229_->set_die_id(-1);
    gbuf2u_1_0_229_->set_mac_id("default_229");
    gbuf2u_1_0_229_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_229_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__reshape_bwd_params;
    ptconvlstm__reshape_bwd_params.input_layout = gbuf2u_1_0_229_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__reshape_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__reshape_bwd_params.reshape = {1, 4080};
    ptconvlstm__reshape_bwd_ = create_node<ReshapeView>("ptconvlstm__reshape_bwd", partition_1_0_, plasma_, ptconvlstm__reshape_bwd_params);
    ptconvlstm__reshape_bwd_->set_die_id(-1);
    ptconvlstm__reshape_bwd_->set_mac_id("ptconvlstm__reshape_bwd");
    ptconvlstm__reshape_bwd_->set_mac_latency(1.300000e+01);
    ptconvlstm__reshape_bwd_->set_metapipe_iterations({1});
    ptconvlstm__reshape_bwd_->set_metapipe_iter_count(1);
    
    LayoutCast::Params layout_cast_1_0_429_params;
    layout_cast_1_0_429_params.checked = false;
    layout_cast_1_0_429_params.input_layout = ptconvlstm__view_bwd_->result_layout();
    layout_cast_1_0_429_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    layout_cast_1_0_429_ = create_node<LayoutCast>("layout_cast_1_0_429", partition_1_0_, plasma_, layout_cast_1_0_429_params);
    layout_cast_1_0_429_->set_die_id(-1);
    layout_cast_1_0_429_->set_mac_id("default_429");
    layout_cast_1_0_429_->set_mac_latency(-1.000000e+00);
    layout_cast_1_0_429_->set_metapipe_iterations({1});
    layout_cast_1_0_429_->set_metapipe_iter_count(1);
    
    AddN::Params ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params;
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params.layout_input = ptconvlstm__reshape_bwd_->result_layout();
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params.num_of_inputs = 2;
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_ = create_node<AddN>("ptconvlstm__dense_layer__linear_t_output0_bwd_addn0", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_mac_latency(1.060000e+02);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_236_params;
    gbuf2u_1_0_236_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_236_params.head1_linear = false;
    gbuf2u_1_0_236_params.head1_p2p = false;
    gbuf2u_1_0_236_params.head_1_depth = 2;
    gbuf2u_1_0_236_params.layout = PermuteView::permute_layout(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0), {1, 0});
    gbuf2u_1_0_236_params.num_head1_rd_en = 2;
    gbuf2u_1_0_236_params.num_iterations = 1;
    gbuf2u_1_0_236_ = create_node<GBuffer>("gbuf2u_1_0_236", partition_1_0_, plasma_, gbuf2u_1_0_236_params);
    gbuf2u_1_0_236_->set_die_id(-1);
    gbuf2u_1_0_236_->set_mac_id("default_236");
    gbuf2u_1_0_236_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_236_->set_metapipe_iterations({1});
    
    GBuffer::Params gbuf1a_1_0_394_params;
    gbuf1a_1_0_394_params.enable_fronting_pmu = true;
    gbuf1a_1_0_394_params.head1_linear = false;
    gbuf1a_1_0_394_params.head1_p2p = false;
    gbuf1a_1_0_394_params.head_1_depth = 1;
    gbuf1a_1_0_394_params.head_1_transposed = true;
    gbuf1a_1_0_394_params.layout = params_.ptconvlstm__dense_layer__weight_1_0_336.at_address(0);
    gbuf1a_1_0_394_params.loaded_by_broadcast = false;
    gbuf1a_1_0_394_params.num_iterations = 1;
    gbuf1a_1_0_394_ = create_node<GBuffer>("gbuf1a_1_0_394", partition_1_0_, plasma_, gbuf1a_1_0_394_params);
    gbuf1a_1_0_394_->set_die_id(-1);
    gbuf1a_1_0_394_->set_mac_id("default_394");
    gbuf1a_1_0_394_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_394_->set_metapipe_iterations({1});
    
    BigGemm::Params ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.A_layout = gbuf1a_1_0_394_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.B_layout = gbuf2u_1_0_236_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.batch_size = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.batch_size_b = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.box_layout = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.box_per_partition = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.connected_to_accumulator = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.dbl_width = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.disable_write_fronting_pmu = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.dotproduct_gemm = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.enable_gradient = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.enable_seqID_pacing_interval = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.exclusive_vc_a = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.external_input_a = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.external_output_buffer = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.no_reload_weight = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_col_compute_units = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_partitions = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_row_compute_units = 8;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.seqID_base = 0;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.streaming_col_par = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.wbuf_split = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear_bwd_loss_grad_b", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_loss");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_mac_latency(4.367000e+03);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_239_params;
    gbuf2u_1_0_239_params.enable_fronting_pmu = true;
    gbuf2u_1_0_239_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_239_params.head1_linear = false;
    gbuf2u_1_0_239_params.head1_p2p = false;
    gbuf2u_1_0_239_params.head_1_depth = 2;
    gbuf2u_1_0_239_params.head_1_transposed = true;
    gbuf2u_1_0_239_params.layout = params_.ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264.at_address(0);
    gbuf2u_1_0_239_params.loaded_by_broadcast = false;
    gbuf2u_1_0_239_params.num_head1_rd_en = 2;
    gbuf2u_1_0_239_params.num_iterations = 1;
    gbuf2u_1_0_239_params.write_vector_transposed = true;
    gbuf2u_1_0_239_ = create_node<GBuffer>("gbuf2u_1_0_239", partition_1_0_, plasma_, gbuf2u_1_0_239_params);
    gbuf2u_1_0_239_->set_die_id(-1);
    gbuf2u_1_0_239_->set_mac_id("default_239");
    gbuf2u_1_0_239_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_239_->set_metapipe_iterations({1});
    
    GBuffer::Params gbuf2u_1_0_240_params;
    gbuf2u_1_0_240_params.head0_ctrl_flow_enable = true;
    gbuf2u_1_0_240_params.head0_linear = true;
    gbuf2u_1_0_240_params.head0_p2p = false;
    gbuf2u_1_0_240_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_240_params.head1_linear = true;
    gbuf2u_1_0_240_params.head1_p2p = false;
    gbuf2u_1_0_240_params.head_0_depth = 2;
    gbuf2u_1_0_240_params.head_1_depth = 2;
    gbuf2u_1_0_240_params.layout = PermuteView::permute_layout(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0), {1, 0});
    gbuf2u_1_0_240_params.num_head0_rd_en = 1;
    gbuf2u_1_0_240_params.num_head1_rd_en = 1;
    gbuf2u_1_0_240_params.num_iterations = 1;
    gbuf2u_1_0_240_ = create_node<GBuffer>("gbuf2u_1_0_240", partition_1_0_, plasma_, gbuf2u_1_0_240_params);
    gbuf2u_1_0_240_->set_die_id(-1);
    gbuf2u_1_0_240_->set_mac_id("default_240");
    gbuf2u_1_0_240_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_240_->set_metapipe_iterations({1});
    
    BigGemm::Params ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.A_layout = gbuf2u_1_0_240_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf2u_1_0_239_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.batch_size = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_layout = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_output_pmu = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_per_partition = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.broadcast_hydra = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_instrumentation = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.external_accumulator = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.external_input_a = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.is_streaming_output = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_partitions = 32;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.optimized_accum = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear_bwd_weight_grad_a", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_mac_latency(4.096000e+03);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_242_params;
    gbuf2u_1_0_242_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_242_params.head1_linear = true;
    gbuf2u_1_0_242_params.head1_p2p = false;
    gbuf2u_1_0_242_params.head1_streaming_window = true;
    gbuf2u_1_0_242_params.head_1_depth = 2;
    gbuf2u_1_0_242_params.layout = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf2u_1_0_242_params.num_head1_rd_en = 2;
    gbuf2u_1_0_242_params.num_iterations = 1;
    gbuf2u_1_0_242_params.write_group_layouts = {ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_242_params.write_group_partitions = {ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions()};
    gbuf2u_1_0_242_ = create_node<GBuffer>("gbuf2u_1_0_242", partition_1_0_, plasma_, gbuf2u_1_0_242_params);
    gbuf2u_1_0_242_->set_die_id(-1);
    gbuf2u_1_0_242_->set_mac_id("default_242");
    gbuf2u_1_0_242_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_242_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__conv_layer__reshape_2_bwd_params;
    ptconvlstm__conv_layer__reshape_2_bwd_params.input_layout = gbuf2u_1_0_242_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__reshape_2_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvlstm__conv_layer__reshape_2_bwd_params.reshape = {256, 1, 1};
    ptconvlstm__conv_layer__reshape_2_bwd_ = create_node<ReshapeView>("ptconvlstm__conv_layer__reshape_2_bwd", partition_1_0_, plasma_, ptconvlstm__conv_layer__reshape_2_bwd_params);
    ptconvlstm__conv_layer__reshape_2_bwd_->set_die_id(-1);
    ptconvlstm__conv_layer__reshape_2_bwd_->set_mac_id("ptconvlstm__conv_layer__reshape_2_bwd");
    ptconvlstm__conv_layer__reshape_2_bwd_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__reshape_2_bwd_->set_metapipe_iterations({1});
    ptconvlstm__conv_layer__reshape_2_bwd_->set_metapipe_iter_count(1);
    
    TBuffer::Params tbuf2u_1_0_245_params;
    tbuf2u_1_0_245_params.buffer_depth = 2;
    tbuf2u_1_0_245_params.layout = params_.inp_window_1_0_265.at_address(0);
    tbuf2u_1_0_245_ = create_node<TBuffer>("tbuf2u_1_0_245", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_245_params);
    tbuf2u_1_0_245_->set_die_id(-1);
    tbuf2u_1_0_245_->set_mac_id("default_245");
    tbuf2u_1_0_245_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_245_->set_metapipe_iterations({1});
    
    TBuffer::Params tbuf1u_1_0_246_params;
    tbuf1u_1_0_246_params.buffer_depth = 1;
    tbuf1u_1_0_246_params.layout = params_.inp_window_slice_1_1_0_140.at_address(0);
    tbuf1u_1_0_246_ = create_node<TBuffer>("tbuf1u_1_0_246", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf1u_1_0_246_params);
    tbuf1u_1_0_246_->set_die_id(-1);
    tbuf1u_1_0_246_->set_mac_id("default_246");
    tbuf1u_1_0_246_->set_mac_latency(-1.000000e+00);
    tbuf1u_1_0_246_->set_metapipe_iterations({1});
    
    RAILIndex::Params ptconvlstm__lambda_layer__indexselect_recompute__params;
    ptconvlstm__lambda_layer__indexselect_recompute__params.index_dim = 0;
    ptconvlstm__lambda_layer__indexselect_recompute__params.index_tensor_layout = tbuf1u_1_0_246_->param().layout->at_address(0).at_address(0);
    ptconvlstm__lambda_layer__indexselect_recompute__params.lut_tensor_layout = tbuf2u_1_0_245_->param().layout->at_address(0).at_address(0);
    ptconvlstm__lambda_layer__indexselect_recompute__params.read_zeros_outside_range = true;
    ptconvlstm__lambda_layer__indexselect_recompute__ = create_node<RAILIndex>("ptconvlstm__lambda_layer__indexselect_recompute_", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lambda_layer__indexselect_recompute__params);
    ptconvlstm__lambda_layer__indexselect_recompute__->set_die_id(-1);
    ptconvlstm__lambda_layer__indexselect_recompute__->set_mac_id("ptconvlstm__lambda_layer__indexselect_recompute_");
    ptconvlstm__lambda_layer__indexselect_recompute__->set_mac_latency(1.100000e+01);
    ptconvlstm__lambda_layer__indexselect_recompute__->set_metapipe_iterations({1});
    ptconvlstm__lambda_layer__indexselect_recompute__->set_metapipe_iter_count(1);
    
    TBuffer::Params tbuf2u_1_0_250_params;
    tbuf2u_1_0_250_params.buffer_depth = 2;
    tbuf2u_1_0_250_params.layout = PermuteView::permute_layout(ptconvlstm__lambda_layer__indexselect_recompute__->result_layout().at_address(0), {1, 0});
    tbuf2u_1_0_250_ = create_node<TBuffer>("tbuf2u_1_0_250", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_250_params);
    tbuf2u_1_0_250_->set_die_id(-1);
    tbuf2u_1_0_250_->set_mac_id("default_250");
    tbuf2u_1_0_250_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_250_->set_metapipe_iterations({1});
    
    ReshapeView::Params ptconvlstm__conv_layer__reshape_recompute__params;
    ptconvlstm__conv_layer__reshape_recompute__params.input_layout = tbuf2u_1_0_250_->param().layout->at_address(0).at_address(0);
    ptconvlstm__conv_layer__reshape_recompute__params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvlstm__conv_layer__reshape_recompute__params.reshape = {136, 3, 1};
    ptconvlstm__conv_layer__reshape_recompute__ = create_node<ReshapeView>("ptconvlstm__conv_layer__reshape_recompute_", partition_1_0_, plasma_, ptconvlstm__conv_layer__reshape_recompute__params);
    ptconvlstm__conv_layer__reshape_recompute__->set_die_id(-1);
    ptconvlstm__conv_layer__reshape_recompute__->set_mac_id("ptconvlstm__conv_layer__reshape_recompute_");
    ptconvlstm__conv_layer__reshape_recompute__->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__reshape_recompute__->set_metapipe_iterations({1});
    ptconvlstm__conv_layer__reshape_recompute__->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2a_1_0_433_params;
    gbuf2a_1_0_433_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_433_params.head0_linear = false;
    gbuf2a_1_0_433_params.head0_p2p = false;
    gbuf2a_1_0_433_params.head0_streaming_window = true;
    gbuf2a_1_0_433_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_433_params.head1_linear = false;
    gbuf2a_1_0_433_params.head1_p2p = false;
    gbuf2a_1_0_433_params.head1_streaming_window = true;
    gbuf2a_1_0_433_params.head_0_depth = 2;
    gbuf2a_1_0_433_params.head_1_depth = 2;
    gbuf2a_1_0_433_params.layout = ptconvlstm__conv_layer__reshape_2_bwd_->result_layout();
    gbuf2a_1_0_433_params.num_head0_rd_en = 2;
    gbuf2a_1_0_433_params.num_head1_rd_en = 2;
    gbuf2a_1_0_433_params.num_iterations = 1;
    gbuf2a_1_0_433_ = create_node<GBuffer>("gbuf2a_1_0_433", partition_1_0_, plasma_, gbuf2a_1_0_433_params);
    gbuf2a_1_0_433_->set_die_id(-1);
    gbuf2a_1_0_433_->set_mac_id("default_433");
    gbuf2a_1_0_433_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_433_->set_metapipe_iterations({1});
    
    StreamingTranspose::Params streaming_transpose_1_0_357_params;
    streaming_transpose_1_0_357_params.dvdm_to_cvrm_atom_wise_transpose = true;
    streaming_transpose_1_0_357_params.image_layout = gbuf2a_1_0_433_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    streaming_transpose_1_0_357_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::DVDM_TO_CVRM;
    streaming_transpose_1_0_357_ = create_node<StreamingTranspose>("streaming_transpose_1_0_357", partition_1_0_, plasma_, streaming_transpose_1_0_357_params);
    streaming_transpose_1_0_357_->set_die_id(-1);
    streaming_transpose_1_0_357_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    streaming_transpose_1_0_357_->set_mac_latency(-1.000000e+00);
    streaming_transpose_1_0_357_->set_metapipe_iterations({1});
    streaming_transpose_1_0_357_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_358_params;
    gbuf2u_1_0_358_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_358_params.head1_linear = false;
    gbuf2u_1_0_358_params.head1_p2p = false;
    gbuf2u_1_0_358_params.head1_streaming_window = true;
    gbuf2u_1_0_358_params.head_1_depth = 2;
    gbuf2u_1_0_358_params.layout = ptconvlstm__conv_layer__reshape_recompute__->result_layout();
    gbuf2u_1_0_358_params.num_head1_rd_en = 2;
    gbuf2u_1_0_358_params.num_iterations = 1;
    gbuf2u_1_0_358_params.overlapped_split = true;
    gbuf2u_1_0_358_params.overlapped_split_base = 0;
    gbuf2u_1_0_358_params.overlapped_split_bound = 4;
    gbuf2u_1_0_358_params.overlapped_split_parts = 3;
    gbuf2u_1_0_358_params.overlapped_split_stride = 5;
    gbuf2u_1_0_358_ = create_node<GBuffer>("gbuf2u_1_0_358", partition_1_0_, plasma_, gbuf2u_1_0_358_params);
    gbuf2u_1_0_358_->set_die_id(-1);
    gbuf2u_1_0_358_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    gbuf2u_1_0_358_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_358_->set_metapipe_iterations({1});
    
    ListBuffer::Params lbuf1a_1_0_397_params;
    lbuf1a_1_0_397_params.allow_oob = true;
    lbuf1a_1_0_397_params.allow_overflow = false;
    lbuf1a_1_0_397_params.base_list_tile_counters = 0;
    lbuf1a_1_0_397_params.base_max = {320, 3, 1};
    lbuf1a_1_0_397_params.base_mult = {1, 0, 0};
    lbuf1a_1_0_397_params.base_stride = {64, 1, 1};
    lbuf1a_1_0_397_params.batch_size = 1;
    lbuf1a_1_0_397_params.depth2col = false;
    lbuf1a_1_0_397_params.enable_fronting_pmu = true;
    lbuf1a_1_0_397_params.filter_area = 0;
    lbuf1a_1_0_397_params.head1_linear = false;
    lbuf1a_1_0_397_params.head1_p2p = false;
    lbuf1a_1_0_397_params.head_1_depth = 1;
    lbuf1a_1_0_397_params.layout = params_.ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380;
    lbuf1a_1_0_397_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    lbuf1a_1_0_397_params.length_fixed = 32;
    lbuf1a_1_0_397_params.list_length = 3;
    lbuf1a_1_0_397_params.list_tiles = 1;
    lbuf1a_1_0_397_params.list_type = ListBuffer::kElement;
    lbuf1a_1_0_397_params.loaded_by_broadcast = true;
    lbuf1a_1_0_397_params.num_iterations = 1;
    lbuf1a_1_0_397_params.offset_list_tile_counters = 0;
    lbuf1a_1_0_397_params.offset_max = {160, 3};
    lbuf1a_1_0_397_params.offset_mult = {0, 1};
    lbuf1a_1_0_397_params.offset_stride = {32, 1};
    lbuf1a_1_0_397_params.overlapped_split = true;
    lbuf1a_1_0_397_params.overlapped_split_base = 0;
    lbuf1a_1_0_397_params.overlapped_split_bound = 4;
    lbuf1a_1_0_397_params.overlapped_split_parts = 3;
    lbuf1a_1_0_397_params.overlapped_split_stride = 5;
    lbuf1a_1_0_397_params.permute = false;
    lbuf1a_1_0_397_params.use_tile_counter = false;
    lbuf1a_1_0_397_ = create_node<ListBuffer>("lbuf1a_1_0_397", partition_1_0_, plasma_, lbuf1a_1_0_397_params);
    lbuf1a_1_0_397_->set_die_id(-1);
    lbuf1a_1_0_397_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    lbuf1a_1_0_397_->set_mac_latency(-1.000000e+00);
    lbuf1a_1_0_397_->set_metapipe_iterations({1});
    
    ScatterBuffer::Params sbuf2u_1_0_361_params;
    sbuf2u_1_0_361_params.element = true;
    sbuf2u_1_0_361_params.head1_linear = true;
    sbuf2u_1_0_361_params.head1_p2p = false;
    sbuf2u_1_0_361_params.head_1_depth = 2;
    sbuf2u_1_0_361_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {480, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf2u_1_0_361_params.length_fixed = 32;
    sbuf2u_1_0_361_params.num_iterations = 1;
    sbuf2u_1_0_361_params.pace_shape = {32, 1};
    sbuf2u_1_0_361_params.paced = true;
    sbuf2u_1_0_361_params.read_group_packed_vectors = 15;
    sbuf2u_1_0_361_params.streaming = true;
    sbuf2u_1_0_361_params.write_group_unpacked_vectors = 15;
    sbuf2u_1_0_361_params.write_total_unpacked_vectors = 15;
    sbuf2u_1_0_361_ = create_node<ScatterBuffer>("sbuf2u_1_0_361", partition_1_0_, plasma_, sbuf2u_1_0_361_params);
    sbuf2u_1_0_361_->set_die_id(-1);
    sbuf2u_1_0_361_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    sbuf2u_1_0_361_->set_mac_latency(-1.000000e+00);
    sbuf2u_1_0_361_->set_metapipe_iterations({1});
    
    KernelGBuffer::Params split_kernel_gbuf_1_0_362_params;
    split_kernel_gbuf_1_0_362_params.M = 480;
    split_kernel_gbuf_1_0_362_params.column_par = 8;
    split_kernel_gbuf_1_0_362_params.head_1_depth = 2;
    split_kernel_gbuf_1_0_362_params.int_column_par = 2;
    split_kernel_gbuf_1_0_362_params.layout = streaming_transpose_1_0_357_->result_layout().at_address(0);
    split_kernel_gbuf_1_0_362_params.num_sub_iters = 6;
    split_kernel_gbuf_1_0_362_ = create_node<KernelGBuffer>("split_kernel_gbuf_1_0_362", partition_1_0_, plasma_, split_kernel_gbuf_1_0_362_params);
    split_kernel_gbuf_1_0_362_->set_die_id(-1);
    split_kernel_gbuf_1_0_362_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    split_kernel_gbuf_1_0_362_->set_mac_latency(-1.000000e+00);
    split_kernel_gbuf_1_0_362_->set_metapipe_iterations({1});
    split_kernel_gbuf_1_0_362_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_1_0_363_params;
    biggemm_1_0_363_params.A_layout = sbuf2u_1_0_361_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_363_params.B_layout = split_kernel_gbuf_1_0_362_->result_layout(GBuffer::get_head_output(1, 0)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_363_params.batch_size = 1;
    biggemm_1_0_363_params.batch_size_b = 1;
    biggemm_1_0_363_params.box_layout = true;
    biggemm_1_0_363_params.box_per_partition = false;
    biggemm_1_0_363_params.concat_group = true;
    biggemm_1_0_363_params.concat_group_par = 4;
    biggemm_1_0_363_params.connected_to_accumulator = false;
    biggemm_1_0_363_params.dbl_width = false;
    biggemm_1_0_363_params.disable_write_fronting_pmu = false;
    biggemm_1_0_363_params.dotproduct_gemm = false;
    biggemm_1_0_363_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_363_params.enable_gradient = false;
    biggemm_1_0_363_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_363_params.exclusive_vc_a = false;
    biggemm_1_0_363_params.external_input_a = true;
    biggemm_1_0_363_params.external_output_buffer = true;
    biggemm_1_0_363_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_363_params.num_col_compute_units = 2;
    biggemm_1_0_363_params.num_partitions = 1;
    biggemm_1_0_363_params.num_row_compute_units = 1;
    biggemm_1_0_363_params.seqID_base = 0;
    biggemm_1_0_363_params.set_exclusive_routes = false;
    biggemm_1_0_363_params.streaming_col_par = true;
    biggemm_1_0_363_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_363_params.wbuf_split = false;
    biggemm_1_0_363_params.write_done_used = false;
    biggemm_1_0_363_ = create_node<BigGemm>("biggemm_1_0_363", partition_1_0_, plasma_, biggemm_1_0_363_params);
    biggemm_1_0_363_->set_die_id(-1);
    biggemm_1_0_363_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    biggemm_1_0_363_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_363_->set_metapipe_iterations({1});
    biggemm_1_0_363_->set_stage_multiplier(15);
    biggemm_1_0_363_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_1_0_364_params;
    biggemm_1_0_364_params.A_layout = sbuf2u_1_0_361_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_364_params.B_layout = split_kernel_gbuf_1_0_362_->result_layout(GBuffer::get_head_output(1, 1)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_364_params.batch_size = 1;
    biggemm_1_0_364_params.batch_size_b = 1;
    biggemm_1_0_364_params.box_layout = true;
    biggemm_1_0_364_params.box_per_partition = false;
    biggemm_1_0_364_params.concat_group = true;
    biggemm_1_0_364_params.concat_group_par = 4;
    biggemm_1_0_364_params.connected_to_accumulator = false;
    biggemm_1_0_364_params.dbl_width = false;
    biggemm_1_0_364_params.disable_write_fronting_pmu = false;
    biggemm_1_0_364_params.dotproduct_gemm = false;
    biggemm_1_0_364_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_364_params.enable_gradient = false;
    biggemm_1_0_364_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_364_params.exclusive_vc_a = false;
    biggemm_1_0_364_params.external_input_a = true;
    biggemm_1_0_364_params.external_output_buffer = true;
    biggemm_1_0_364_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_364_params.num_col_compute_units = 2;
    biggemm_1_0_364_params.num_partitions = 1;
    biggemm_1_0_364_params.num_row_compute_units = 1;
    biggemm_1_0_364_params.seqID_base = 72;
    biggemm_1_0_364_params.set_exclusive_routes = false;
    biggemm_1_0_364_params.streaming_col_par = true;
    biggemm_1_0_364_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_364_params.wbuf_split = false;
    biggemm_1_0_364_params.write_done_used = false;
    biggemm_1_0_364_ = create_node<BigGemm>("biggemm_1_0_364", partition_1_0_, plasma_, biggemm_1_0_364_params);
    biggemm_1_0_364_->set_die_id(-1);
    biggemm_1_0_364_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    biggemm_1_0_364_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_364_->set_metapipe_iterations({1});
    biggemm_1_0_364_->set_stage_multiplier(15);
    biggemm_1_0_364_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_1_0_365_params;
    biggemm_1_0_365_params.A_layout = sbuf2u_1_0_361_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_365_params.B_layout = split_kernel_gbuf_1_0_362_->result_layout(GBuffer::get_head_output(1, 2)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_365_params.batch_size = 1;
    biggemm_1_0_365_params.batch_size_b = 1;
    biggemm_1_0_365_params.box_layout = true;
    biggemm_1_0_365_params.box_per_partition = false;
    biggemm_1_0_365_params.concat_group = true;
    biggemm_1_0_365_params.concat_group_par = 4;
    biggemm_1_0_365_params.connected_to_accumulator = false;
    biggemm_1_0_365_params.dbl_width = false;
    biggemm_1_0_365_params.disable_write_fronting_pmu = false;
    biggemm_1_0_365_params.dotproduct_gemm = false;
    biggemm_1_0_365_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_365_params.enable_gradient = false;
    biggemm_1_0_365_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_365_params.exclusive_vc_a = false;
    biggemm_1_0_365_params.external_input_a = true;
    biggemm_1_0_365_params.external_output_buffer = true;
    biggemm_1_0_365_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_365_params.num_col_compute_units = 2;
    biggemm_1_0_365_params.num_partitions = 1;
    biggemm_1_0_365_params.num_row_compute_units = 1;
    biggemm_1_0_365_params.seqID_base = 144;
    biggemm_1_0_365_params.set_exclusive_routes = false;
    biggemm_1_0_365_params.streaming_col_par = true;
    biggemm_1_0_365_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_365_params.wbuf_split = false;
    biggemm_1_0_365_params.write_done_used = false;
    biggemm_1_0_365_ = create_node<BigGemm>("biggemm_1_0_365", partition_1_0_, plasma_, biggemm_1_0_365_params);
    biggemm_1_0_365_->set_die_id(-1);
    biggemm_1_0_365_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    biggemm_1_0_365_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_365_->set_metapipe_iterations({1});
    biggemm_1_0_365_->set_stage_multiplier(15);
    biggemm_1_0_365_->set_metapipe_iter_count(1);
    
    BigGemm::Params biggemm_1_0_366_params;
    biggemm_1_0_366_params.A_layout = sbuf2u_1_0_361_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_366_params.B_layout = split_kernel_gbuf_1_0_362_->result_layout(GBuffer::get_head_output(1, 3)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_366_params.batch_size = 1;
    biggemm_1_0_366_params.batch_size_b = 1;
    biggemm_1_0_366_params.box_layout = true;
    biggemm_1_0_366_params.box_per_partition = false;
    biggemm_1_0_366_params.concat_group = true;
    biggemm_1_0_366_params.concat_group_par = 4;
    biggemm_1_0_366_params.connected_to_accumulator = false;
    biggemm_1_0_366_params.dbl_width = false;
    biggemm_1_0_366_params.disable_write_fronting_pmu = false;
    biggemm_1_0_366_params.dotproduct_gemm = false;
    biggemm_1_0_366_params.dotproduct_gemm_bf16_output = false;
    biggemm_1_0_366_params.enable_gradient = false;
    biggemm_1_0_366_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_366_params.exclusive_vc_a = false;
    biggemm_1_0_366_params.external_input_a = true;
    biggemm_1_0_366_params.external_output_buffer = true;
    biggemm_1_0_366_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_366_params.num_col_compute_units = 2;
    biggemm_1_0_366_params.num_partitions = 1;
    biggemm_1_0_366_params.num_row_compute_units = 1;
    biggemm_1_0_366_params.seqID_base = 216;
    biggemm_1_0_366_params.set_exclusive_routes = false;
    biggemm_1_0_366_params.streaming_col_par = true;
    biggemm_1_0_366_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_366_params.wbuf_split = false;
    biggemm_1_0_366_params.write_done_used = false;
    biggemm_1_0_366_ = create_node<BigGemm>("biggemm_1_0_366", partition_1_0_, plasma_, biggemm_1_0_366_params);
    biggemm_1_0_366_->set_die_id(-1);
    biggemm_1_0_366_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    biggemm_1_0_366_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_366_->set_metapipe_iterations({1});
    biggemm_1_0_366_->set_stage_multiplier(15);
    biggemm_1_0_366_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_368_params;
    gbuf2u_1_0_368_params.allow_pob = false;
    gbuf2u_1_0_368_params.concat = GBuffer::kConcatN;
    gbuf2u_1_0_368_params.fronting_group = 4;
    gbuf2u_1_0_368_params.fronting_group_int_col_par_vectors = 72;
    gbuf2u_1_0_368_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_368_params.head1_linear = true;
    gbuf2u_1_0_368_params.head1_p2p = false;
    gbuf2u_1_0_368_params.head_1_depth = 2;
    gbuf2u_1_0_368_params.layout = biggemm_1_0_363_->result_layout(BigGemm::kOutput).at_address(0).with_logical_shape({480, 256}).at_address(0);
    gbuf2u_1_0_368_params.num_head1_rd_en = 1;
    gbuf2u_1_0_368_params.num_iterations = 1;
    gbuf2u_1_0_368_params.write_group_layouts = {biggemm_1_0_363_->result_layouts(BigGemm::kOutput), biggemm_1_0_364_->result_layouts(BigGemm::kOutput), biggemm_1_0_365_->result_layouts(BigGemm::kOutput), biggemm_1_0_366_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_368_params.write_group_partitions = {biggemm_1_0_363_->num_partitions(), biggemm_1_0_364_->num_partitions(), biggemm_1_0_365_->num_partitions(), biggemm_1_0_366_->num_partitions()};
    gbuf2u_1_0_368_params.write_layouts_spread = true;
    gbuf2u_1_0_368_params.write_time_concat = true;
    gbuf2u_1_0_368_params.write_time_concat_slices = {72, 72, 72, 40};
    gbuf2u_1_0_368_ = create_node<GBuffer>("gbuf2u_1_0_368", partition_1_0_, plasma_, gbuf2u_1_0_368_params);
    gbuf2u_1_0_368_->set_die_id(-1);
    gbuf2u_1_0_368_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    gbuf2u_1_0_368_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_368_->set_metapipe_iterations({1});
    
    BiasTransposeGrad::Params bias_transpose_grad_1_0_370_params;
    bias_transpose_grad_1_0_370_params.loss_layout = gbuf2a_1_0_433_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    bias_transpose_grad_1_0_370_ = create_node<BiasTransposeGrad>("bias_transpose_grad_1_0_370", partition_1_0_, plasma_, bias_transpose_grad_1_0_370_params);
    bias_transpose_grad_1_0_370_->set_die_id(-1);
    bias_transpose_grad_1_0_370_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    bias_transpose_grad_1_0_370_->set_mac_latency(-1.000000e+00);
    bias_transpose_grad_1_0_370_->set_metapipe_iterations({1});
    bias_transpose_grad_1_0_370_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2a_1_0_398_params;
    gbuf2a_1_0_398_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_398_params.head1_linear = true;
    gbuf2a_1_0_398_params.head1_p2p = false;
    gbuf2a_1_0_398_params.head_1_depth = 2;
    gbuf2a_1_0_398_params.layout = bias_transpose_grad_1_0_370_->result_layout().at_address(0);
    gbuf2a_1_0_398_params.num_head1_rd_en = 1;
    gbuf2a_1_0_398_params.num_iterations = 1;
    gbuf2a_1_0_398_ = create_node<GBuffer>("gbuf2a_1_0_398", partition_1_0_, plasma_, gbuf2a_1_0_398_params);
    gbuf2a_1_0_398_->set_die_id(-1);
    gbuf2a_1_0_398_->set_mac_id("default_398");
    gbuf2a_1_0_398_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_398_->set_metapipe_iterations({1});
    
    ReshapeView::Params reshape_1_0_371_params;
    reshape_1_0_371_params.input_layout = gbuf2a_1_0_398_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    reshape_1_0_371_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    reshape_1_0_371_params.reshape = {256, 1};
    reshape_1_0_371_ = create_node<ReshapeView>("reshape_1_0_371", partition_1_0_, plasma_, reshape_1_0_371_params);
    reshape_1_0_371_->set_die_id(-1);
    reshape_1_0_371_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    reshape_1_0_371_->set_mac_latency(-1.000000e+00);
    reshape_1_0_371_->set_metapipe_iterations({1});
    reshape_1_0_371_->set_metapipe_iter_count(1);
    
    LayoutCast::Params layout_cast_1_0_372_params;
    layout_cast_1_0_372_params.checked = false;
    layout_cast_1_0_372_params.input_layout = reshape_1_0_371_->result_layout();
    layout_cast_1_0_372_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    layout_cast_1_0_372_ = create_node<LayoutCast>("layout_cast_1_0_372", partition_1_0_, plasma_, layout_cast_1_0_372_params);
    layout_cast_1_0_372_->set_die_id(-1);
    layout_cast_1_0_372_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    layout_cast_1_0_372_->set_mac_latency(-1.000000e+00);
    layout_cast_1_0_372_->set_metapipe_iterations({1});
    layout_cast_1_0_372_->set_metapipe_iter_count(1);
    
    ParAccum::Params ptconvlstm__dense_layer__linear_bwd_weight_accum_params;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.acc_stoc_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.accum_version = "3";
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.dram_store = true;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.iter_per_accum = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.layout = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.num_accums = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.optimized_biggemm = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.partitions = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.read_credit = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.rvrm_init_output_layout = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_ = create_node<ParAccum>("ptconvlstm__dense_layer__linear_bwd_weight_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__dense_layer__linear_bwd_weight_accum_params);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_metapipe_iter_count(1);
    
    ParAccum::Params ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.acc_stoc_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.accum_version = "3";
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.dram_store = true;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.iter_per_accum = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.layout = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.num_accums = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.optimized_biggemm = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.partitions = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.read_credit = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.rvrm_init_output_layout = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_ = create_node<ParAccum>("ptconvlstm__dense_layer__linear_bwd_weight_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_metapipe_iter_count(1);
    
    ParAccum::Params ptconvlstm__conv_layer__conv2d_bwd_accum_params;
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.acc_stoc_rnd = false;
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.acc_stoc_rnd_seed = 43690;
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.accum_version = "3";
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.dram_store = false;
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.iter_per_accum = 1;
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.layout = gbuf2u_1_0_368_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({480, 256}).at_address(0);
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.num_accums = 1;
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.partitions = {gbuf2u_1_0_368_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0)};
    ptconvlstm__conv_layer__conv2d_bwd_accum_params.rvrm_init_output_layout = false;
    ptconvlstm__conv_layer__conv2d_bwd_accum_ = create_node<ParAccum>("ptconvlstm__conv_layer__conv2d_bwd_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__conv_layer__conv2d_bwd_accum_params);
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_die_id(-1);
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_mac_latency(-1.000000e+00);
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_metapipe_iterations({1});
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_metapipe_iter_count(1);
    
    ParAccum::Params ptconvlstm__conv_layer__conv2d_bwd_accum_1_params;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.acc_stoc_rnd = false;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.acc_stoc_rnd_seed = 43690;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.accum_version = "3";
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.dram_store = true;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.iter_per_accum = 1;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.layout = layout_cast_1_0_372_->result_layout();
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.num_accums = 1;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.partitions = {layout_cast_1_0_372_->result_layout()};
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.read_credit = 1;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_params.rvrm_init_output_layout = false;
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_ = create_node<ParAccum>("ptconvlstm__conv_layer__conv2d_bwd_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__conv_layer__conv2d_bwd_accum_1_params);
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_die_id(-1);
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_mac_id("ptconvlstm__conv_layer__conv2d_bwd");
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_metapipe_iterations({1});
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf2u_1_0_149_params;
    gbuf2u_1_0_149_params.head1_linear = false;
    gbuf2u_1_0_149_params.head1_p2p = false;
    gbuf2u_1_0_149_params.head_1_depth = 2;
    gbuf2u_1_0_149_params.layout = gbuf2u_1_0_368_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({480, 256}).with_logical_shape({480, 256}).at_address(0);
    gbuf2u_1_0_149_params.num_iterations = 1;
    gbuf2u_1_0_149_ = create_node<GBuffer>("gbuf2u_1_0_149", partition_1_0_, plasma_, gbuf2u_1_0_149_params);
    gbuf2u_1_0_149_->set_die_id(-1);
    gbuf2u_1_0_149_->set_mac_id("default_149");
    gbuf2u_1_0_149_->set_mac_latency(-1.000000e+00);
    
    ListBuffer::Params lbuf1a_1_0_399_params;
    lbuf1a_1_0_399_params.allow_oob = false;
    lbuf1a_1_0_399_params.allow_overflow = false;
    lbuf1a_1_0_399_params.base_list_tile_counters = 0;
    lbuf1a_1_0_399_params.base_max = {1, 13, 256, 3};
    lbuf1a_1_0_399_params.base_mult = {0, 0, 64, 0};
    lbuf1a_1_0_399_params.base_stride = {1, 1, 1, 1};
    lbuf1a_1_0_399_params.batch_size = 1;
    lbuf1a_1_0_399_params.depth2col = false;
    lbuf1a_1_0_399_params.enable_fronting_pmu = true;
    lbuf1a_1_0_399_params.filter_area = 0;
    lbuf1a_1_0_399_params.head1_linear = false;
    lbuf1a_1_0_399_params.head1_p2p = false;
    lbuf1a_1_0_399_params.head_1_depth = 1;
    lbuf1a_1_0_399_params.layout = params_.gather_gradient_output_reshape_id1__gather_list_1_0_379;
    lbuf1a_1_0_399_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {480, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    lbuf1a_1_0_399_params.length_fixed = 0;
    lbuf1a_1_0_399_params.list_length = 39;
    lbuf1a_1_0_399_params.list_tiles = 1;
    lbuf1a_1_0_399_params.list_type = ListBuffer::kElement;
    lbuf1a_1_0_399_params.loaded_by_broadcast = true;
    lbuf1a_1_0_399_params.num_iterations = 1;
    lbuf1a_1_0_399_params.offset_list_tile_counters = 0;
    lbuf1a_1_0_399_params.offset_max = {1, 13, 256, 3};
    lbuf1a_1_0_399_params.offset_mult = {0, 3, 0, 1};
    lbuf1a_1_0_399_params.offset_stride = {1, 1, 1, 1};
    lbuf1a_1_0_399_params.permute = false;
    lbuf1a_1_0_399_params.use_tile_counter = false;
    lbuf1a_1_0_399_ = create_node<ListBuffer>("lbuf1a_1_0_399", partition_1_0_, plasma_, lbuf1a_1_0_399_params);
    lbuf1a_1_0_399_->set_die_id(-1);
    lbuf1a_1_0_399_->set_mac_id("default_151");
    lbuf1a_1_0_399_->set_mac_latency(-1.000000e+00);
    
    ScatterBuffer::Params sbuf1a_1_0_400_params;
    sbuf1a_1_0_400_params.element = true;
    sbuf1a_1_0_400_params.head1_linear = true;
    sbuf1a_1_0_400_params.head1_p2p = false;
    sbuf1a_1_0_400_params.head_1_depth = 1;
    sbuf1a_1_0_400_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {408, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf1a_1_0_400_params.length_fixed = 0;
    sbuf1a_1_0_400_params.num_iterations = 1;
    sbuf1a_1_0_400_params.read_group_packed_vectors = 13;
    sbuf1a_1_0_400_params.read_total_packed_vectors = 3328;
    sbuf1a_1_0_400_params.streaming = true;
    sbuf1a_1_0_400_params.write_group_unpacked_vectors = 39;
    sbuf1a_1_0_400_params.write_total_unpacked_vectors = 9984;
    sbuf1a_1_0_400_ = create_node<ScatterBuffer>("sbuf1a_1_0_400", partition_1_0_, plasma_, sbuf1a_1_0_400_params);
    sbuf1a_1_0_400_->set_die_id(-1);
    sbuf1a_1_0_400_->set_mac_id("default_400");
    sbuf1a_1_0_400_->set_mac_latency(-1.000000e+00);
    
    VectorTranspose::Params vector_transpose_1_0_417_params;
    vector_transpose_1_0_417_params.depth = 1;
    vector_transpose_1_0_417_params.input_is_vector_transposed = true;
    vector_transpose_1_0_417_params.layout = sbuf1a_1_0_400_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0);
    vector_transpose_1_0_417_ = create_node<VectorTranspose>("vector_transpose_1_0_417", partition_1_0_, plasma_, vector_transpose_1_0_417_params);
    vector_transpose_1_0_417_->set_die_id(-1);
    vector_transpose_1_0_417_->set_mac_id("default_417");
    vector_transpose_1_0_417_->set_mac_latency(-1.000000e+00);
    vector_transpose_1_0_417_->set_metapipe_iter_count(1);
    
    PermuteView::Params permute_view_1_0_415_params;
    permute_view_1_0_415_params.input_layout = vector_transpose_1_0_417_->result_layout().at_address(0);
    permute_view_1_0_415_params.permute = {1, 0};
    permute_view_1_0_415_ = create_node<PermuteView>("permute_view_1_0_415", partition_1_0_, plasma_, permute_view_1_0_415_params);
    permute_view_1_0_415_->set_die_id(-1);
    permute_view_1_0_415_->set_mac_id("default_415");
    permute_view_1_0_415_->set_mac_latency(-1.000000e+00);
    permute_view_1_0_415_->set_metapipe_iter_count(1);
    
    Realign::Params realign_1_0_418_params;
    realign_1_0_418_params.depth = 1;
    realign_1_0_418_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    realign_1_0_418_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1);
    realign_1_0_418_ = create_node<Realign>("realign_1_0_418", partition_1_0_, plasma_, realign_1_0_418_params);
    realign_1_0_418_->set_die_id(-1);
    realign_1_0_418_->set_mac_id("default_418");
    realign_1_0_418_->set_mac_latency(-1.000000e+00);
    realign_1_0_418_->set_metapipe_iter_count(1);
    
    ReshapeView::Params ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_params;
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_params.input_layout = realign_1_0_418_->result_layout().at_address(0);
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 3, 1, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_params.reshape = {256, 3, 1, 136};
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_ = create_node<ReshapeView>("ptconvlstm__conv_layer__conv2d_weight_reshape_bwd", partition_1_0_, plasma_, ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_params);
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->set_die_id(-1);
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->set_mac_id("ptconvlstm__conv_layer__conv2d_weight_reshape_bwd");
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->set_metapipe_iter_count(1);
    
    Realign::Params realign_1_0_419_params;
    realign_1_0_419_params.depth = 1;
    realign_1_0_419_params.input_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 3, 1, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3);
    realign_1_0_419_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 3, 1, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2, 3}, 3).vector_align();
    realign_1_0_419_ = create_node<Realign>("realign_1_0_419", partition_1_0_, plasma_, realign_1_0_419_params);
    realign_1_0_419_->set_die_id(-1);
    realign_1_0_419_->set_mac_id("default_419");
    realign_1_0_419_->set_mac_latency(-1.000000e+00);
    realign_1_0_419_->set_metapipe_iter_count(1);
    
    TBufferPermute::Params permute_1_0_416_params;
    permute_1_0_416_params.input_is_vector_transposed = false;
    permute_1_0_416_params.input_layout = realign_1_0_419_->result_layout().at_address(0);
    permute_1_0_416_params.permutation = {1, 2, 3, 0};
    permute_1_0_416_ = create_node<TBufferPermute>("permute_1_0_416", partition_1_0_, plasma_, permute_1_0_416_params);
    permute_1_0_416_->set_die_id(-1);
    permute_1_0_416_->set_mac_id("default_416");
    permute_1_0_416_->set_mac_latency(-1.000000e+00);
    permute_1_0_416_->set_metapipe_iter_count(1);
    
    Transpose::Params transpose_1_0_420_params;
    transpose_1_0_420_params.depth = 1;
    transpose_1_0_420_params.layout = permute_1_0_416_->result_layout().at_address(0);
    transpose_1_0_420_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_420_ = create_node<Transpose>("transpose_1_0_420", partition_1_0_, plasma_, transpose_1_0_420_params);
    transpose_1_0_420_->set_die_id(-1);
    transpose_1_0_420_->set_mac_id("default_420");
    transpose_1_0_420_->set_mac_latency(-1.000000e+00);
    transpose_1_0_420_->set_metapipe_iter_count(1);
    
    TBufferPermute::Params ptconvlstm__conv_layer__conv2d_weight_permute_bwd_params;
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_params.input_is_vector_transposed = true;
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_params.input_layout = transpose_1_0_420_->result_layout().at_address(0);
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_params.permutation = {3, 2, 0, 1};
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_ = create_node<TBufferPermute>("ptconvlstm__conv_layer__conv2d_weight_permute_bwd", partition_1_0_, plasma_, ptconvlstm__conv_layer__conv2d_weight_permute_bwd_params);
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->set_die_id(-1);
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->set_mac_id("ptconvlstm__conv_layer__conv2d_weight_permute_bwd");
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->set_metapipe_iter_count(1);
    
    ReshapeView::Params ptconvlstm__conv_layer__reshape_1_bwd_params;
    ptconvlstm__conv_layer__reshape_1_bwd_params.input_layout = ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->result_layout().at_address(0);
    ptconvlstm__conv_layer__reshape_1_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 136, 3}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1, 2}, 2).vector_align();
    ptconvlstm__conv_layer__reshape_1_bwd_params.reshape = {256, 136, 3};
    ptconvlstm__conv_layer__reshape_1_bwd_ = create_node<ReshapeView>("ptconvlstm__conv_layer__reshape_1_bwd", partition_1_0_, plasma_, ptconvlstm__conv_layer__reshape_1_bwd_params);
    ptconvlstm__conv_layer__reshape_1_bwd_->set_die_id(-1);
    ptconvlstm__conv_layer__reshape_1_bwd_->set_mac_id("ptconvlstm__conv_layer__reshape_1_bwd");
    ptconvlstm__conv_layer__reshape_1_bwd_->set_mac_latency(1.300000e+01);
    ptconvlstm__conv_layer__reshape_1_bwd_->set_metapipe_iter_count(1);
    
    GBuffer::Params gbuf1a_1_0_401_params;
    gbuf1a_1_0_401_params.head1_linear = false;
    gbuf1a_1_0_401_params.head1_p2p = false;
    gbuf1a_1_0_401_params.head_1_depth = 1;
    gbuf1a_1_0_401_params.layout = ptconvlstm__conv_layer__reshape_1_bwd_->result_layout();
    gbuf1a_1_0_401_params.num_iterations = 1;
    gbuf1a_1_0_401_ = create_node<GBuffer>("gbuf1a_1_0_401", partition_1_0_, plasma_, gbuf1a_1_0_401_params);
    gbuf1a_1_0_401_->set_die_id(-1);
    gbuf1a_1_0_401_->set_mac_id("default_401");
    gbuf1a_1_0_401_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section2() {
    bool layouts_match = true;
    /** Section 2, Chip 0 **/
    partition_2_0_ = create_node<PartitionNode>("partition_2_0_", this, plasma_, 2, 0);
    mlir::rail::RAIL::rail->create_section(partition_2_0_);
    
    partition_2_0_->set_section_latency(1.209249e-04);
    OptimizerSGD::Params ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvlstm__dense_layer__weight__grad_2_0_160;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvlstm__dense_layer__weight_2_0_159;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.mixp = true;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_die_id(-1);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_metapipe_iter_count(1);
    
    OptimizerSGD::Params ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvlstm__dense_layer__bias__grad_2_0_166;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvlstm__dense_layer__bias_2_0_165;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.mixp = true;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_die_id(-1);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_metapipe_iter_count(1);
    
    OptimizerSGD::Params ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.box_layout = true;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.decay = 3.000000e-04;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.layout_dw = params_.ptconvlstm__conv_layer__bias__grad_2_0_172;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.layout_mw = params_.ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.layout_w = params_.ptconvlstm__conv_layer__bias_2_0_171;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.lr = 1.500000e-03;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.mixp = true;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.momentum = 0.000000e+00;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params.w_output_interface = false;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt", partition_2_0_, plasma_, ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_params);
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->set_die_id(-1);
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->set_mac_id("ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt");
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->set_metapipe_iter_count(1);
    
    OptimizerSGD::Params ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.box_layout = true;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.decay = 3.000000e-04;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.layout_dw = params_.ptconvlstm__conv_layer__weight__grad_2_0_178.at_address(0);
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.layout_mw = params_.ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.layout_w = params_.ptconvlstm__conv_layer__weight_2_0_177.at_address(0);
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.lr = 1.500000e-03;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.mixp = true;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.momentum = 0.000000e+00;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params.w_output_interface = false;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt", partition_2_0_, plasma_, ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_params);
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->set_die_id(-1);
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->set_mac_id("ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt");
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->set_metapipe_iter_count(1);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_387_wr_params = {};
    gbuf1a_0_0_387_wr_params.metapipe_iter_count = 1;
    gbuf1a_0_0_387_->configure_wr(gbuf1a_0_0_387_wr_params);
    PmuSetupRead gbuf1a_0_0_387_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_387_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__reshape_1");
    gbuf1a_0_0_387_rd1_params0.metapipe_iter_count = 1;
    gbuf1a_0_0_387_->configure_rd_head_1(gbuf1a_0_0_387_rd1_params0, {1});
    gbuf1a_0_0_387_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvlstm__conv_layer__reshape_1_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__reshape_1_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__reshape_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    realign_0_0_404_->set_source_context("conv.py:298:0");
    realign_0_0_404_->set_op_name("tlir.Realign");
    realign_0_0_404_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_permute:0:0");
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_op_name("tlir.Permute");
    ptconvlstm__conv_layer__conv2d_weight_permute_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    vector_transpose_0_0_405_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_permute:0:0");
    vector_transpose_0_0_405_->set_op_name("tlir.VectorTranspose");
    vector_transpose_0_0_405_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__conv2d_weight_reshape_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_427_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_427_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv2d_weight_reshape");
    gbuf2a_0_0_427_wr_params.is_transpose = true;
    gbuf2a_0_0_427_wr_params.vectors_in_column = ceiling(ptconvlstm__conv_layer__conv2d_weight_reshape_->result_layout().physical_shape().at(1), ptconvlstm__conv_layer__conv2d_weight_reshape_->result_layout().vector_elements());
    gbuf2a_0_0_427_wr_params.interleave = true;
    gbuf2a_0_0_427_wr_params.interleave_size = ptconvlstm__conv_layer__conv2d_weight_reshape_->result_layout().physical_shape().at(0);
    gbuf2a_0_0_427_wr_params.metapipe_iter_count = 1;
    gbuf2a_0_0_427_->configure_wr(gbuf2a_0_0_427_wr_params);
    PmuSetupRead gbuf2a_0_0_427_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_427_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of split_kernel_gbuf_0_0_288");
    gbuf2a_0_0_427_rd1_params0.is_transpose = true;
    gbuf2a_0_0_427_rd1_params0.metapipe_iter_count = 1;
    gbuf2a_0_0_427_->configure_rd_head_1(gbuf2a_0_0_427_rd1_params0, {1});
    gbuf2a_0_0_427_->configure_node();
    
    // logreg_ts.py:194:0: tlir.Buffer
    tbuf2u_0_0_189_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf2u_0_0_189_, params_.inp_window_dram_in));
;
    tbuf2u_0_0_189_->set_metapipe_iter_count(1);
    for (auto ctx : tbuf2u_0_0_189_->get_write_ctxs())
        ctx->set_metapipe_iter_count(1);
    tbuf2u_0_0_189_->add_context(ptconvlstm__lambda_layer__indexselect_->get_tbuf_contexts(RAILIndex::IO::kLutRd));
    for (auto ctx_name : ptconvlstm__lambda_layer__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd))
        tbuf2u_0_0_189_->ctx(ctx_name)->set_read_credits({1, tbuf2u_0_0_194_->param().buffer_depth},{});
    for (auto ctx : tbuf2u_0_0_189_->get_read_ctxs()) {
        ctx->set_metapipe_iter_count(1);
    }
    tbuf2u_0_0_189_->configure_node();
    
    // logreg_ts.py:194:0: tlir.Buffer
    tbuf1u_0_0_190_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1u_0_0_190_, params_.inp_window_slice_1_dram_in));
;
    tbuf1u_0_0_190_->set_metapipe_iter_count(1);
    for (auto ctx : tbuf1u_0_0_190_->get_write_ctxs())
        ctx->set_metapipe_iter_count(1);
    tbuf1u_0_0_190_->add_context(ptconvlstm__lambda_layer__indexselect_->get_tbuf_contexts(RAILIndex::IO::kIndexRd));
    for (auto ctx : tbuf1u_0_0_190_->get_read_ctxs()) {
        ctx->set_metapipe_iter_count(1);
    }
    tbuf1u_0_0_190_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    tbuf2u_0_0_194_->view<TBufferPermuteView>(std::vector<int64_t>{{1, 0}})->view<TBufferLayoutView>(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {3, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align())->add_context(ptconvlstm__lambda_layer__indexselect_->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    tbuf2u_0_0_194_->set_metapipe_iter_count(1);
    for (auto ctx : tbuf2u_0_0_194_->get_write_ctxs())
        ctx->set_metapipe_iter_count(1);
    tbuf2u_0_0_194_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx_name : std::vector<std::string>{"kDefaultRead1"})
        tbuf2u_0_0_194_->ctx(ctx_name)->set_read_credits({2, 2},{});
    for (auto ctx : tbuf2u_0_0_194_->get_read_ctxs()) {
        ctx->set_metapipe_iter_count(1);
    }
    tbuf2u_0_0_194_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvlstm__conv_layer__reshape_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__reshape_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__reshape_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    PmuSetupRead sbuf2u_0_0_287_rd1_params0 = biggemm_0_0_289_->read_params(BigGemm::kA);
    SN_ASSERT(sbuf2u_0_0_287_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of biggemm_0_0_289");
    sbuf2u_0_0_287_rd1_params0.buffer_pace_order = true;
    sbuf2u_0_0_287_rd1_params0.buffer_pace_order_credits = biggemm_0_0_289_->wbuf_depth();
    sbuf2u_0_0_287_rd1_params0.buffer_pace_order_vectors = biggemm_0_0_289_->wbuf_vectors();
    sbuf2u_0_0_287_rd1_params0.metapipe_iter_count = 1;
    sbuf2u_0_0_287_->configure_rd_head_1(sbuf2u_0_0_287_rd1_params0, {1});
    sbuf2u_0_0_287_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    PmuSetupWrite split_kernel_gbuf_0_0_288_wr_params = {};
    split_kernel_gbuf_0_0_288_->configure_wr(split_kernel_gbuf_0_0_288_wr_params);
    split_kernel_gbuf_0_0_288_->set_source_context("BigLinearExternalColPar.cpp:40:0");
    split_kernel_gbuf_0_0_288_->set_op_name("tlir.Split");
    split_kernel_gbuf_0_0_288_->set_batch_size_b(1);
    split_kernel_gbuf_0_0_288_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_289_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_289_->set_op_name("tlir.Linear");
    biggemm_0_0_289_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_290_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_290_->set_op_name("tlir.Linear");
    biggemm_0_0_290_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_291_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_291_->set_op_name("tlir.Linear");
    biggemm_0_0_291_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_292_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_292_->set_op_name("tlir.Linear");
    biggemm_0_0_292_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_293_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_293_->set_op_name("tlir.Linear");
    biggemm_0_0_293_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_294_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_294_->set_op_name("tlir.Linear");
    biggemm_0_0_294_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_295_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_295_->set_op_name("tlir.Linear");
    biggemm_0_0_295_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_0_0_296_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_296_->set_op_name("tlir.Linear");
    biggemm_0_0_296_->configure_node();
    
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
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_313_wr_params = {};
    gbuf2u_0_0_313_wr_params.metapipe_iter_count = 1;
    gbuf2u_0_0_313_->configure_wr(0, biggemm_0_0_289_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(1, biggemm_0_0_290_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(2, biggemm_0_0_291_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(3, biggemm_0_0_292_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(4, biggemm_0_0_293_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(5, biggemm_0_0_294_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(6, biggemm_0_0_295_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(7, biggemm_0_0_296_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(8, biggemm_0_0_297_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(9, biggemm_0_0_298_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(10, biggemm_0_0_299_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(11, biggemm_0_0_300_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(12, biggemm_0_0_301_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(13, biggemm_0_0_302_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(14, biggemm_0_0_303_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(15, biggemm_0_0_304_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(16, biggemm_0_0_305_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(17, biggemm_0_0_306_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(18, biggemm_0_0_307_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(19, biggemm_0_0_308_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(20, biggemm_0_0_309_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_313_->configure_wr(21, biggemm_0_0_310_->write_params(BigGemm::kOutput));
    PmuSetupRead gbuf2u_0_0_313_rd1_params0 = bias_transpose_add_0_0_314_->read_params(BiasTransposeAdd::kInput);
    SN_ASSERT(gbuf2u_0_0_313_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of bias_transpose_add_0_0_314");
    gbuf2u_0_0_313_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_0_0_313_->configure_rd_head_1(gbuf2u_0_0_313_rd1_params0, {2, 2});
    gbuf2u_0_0_313_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    bias_transpose_add_0_0_314_->set_source_context("ConvIm2Col.cpp:298:0");
    bias_transpose_add_0_0_314_->set_op_name("tlir.BiasTransposeAdd");
    bias_transpose_add_0_0_314_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    streaming_transpose_0_0_315_->set_source_context("ConvIm2Col.cpp:371:0");
    streaming_transpose_0_0_315_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_0_0_315_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_198_wr_params = streaming_transpose_0_0_315_->write_params(StreamingTranspose::kHead1Buffer);
    gbuf2u_0_0_198_wr_params.metapipe_iter_count = 1;
    gbuf2u_0_0_198_->configure_wr(gbuf2u_0_0_198_wr_params);
    PmuSetupRead gbuf2u_0_0_198_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_198_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__reshape_2");
    gbuf2u_0_0_198_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_0_0_198_->configure_rd_head_1(gbuf2u_0_0_198_rd1_params0, {2, 2, 2, 2});
    gbuf2u_0_0_198_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvlstm__conv_layer__reshape_2_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__reshape_2_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__reshape_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvlstm__dense_layer__linear_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_385_wr_params = ptconvlstm__dense_layer__linear_->write_params(BigGemm::kOutput);
    gbuf1a_0_0_385_wr_params.metapipe_iter_count = 1;
    gbuf1a_0_0_385_->configure_wr(gbuf1a_0_0_385_wr_params);
    PmuSetupRead gbuf1a_0_0_385_rd1_params1 = {};
    SN_ASSERT(gbuf1a_0_0_385_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of bias_add_0_0_382");
    gbuf1a_0_0_385_rd1_params1.metapipe_iter_count = 1;
    gbuf1a_0_0_385_->configure_rd_head_1(gbuf1a_0_0_385_rd1_params1, {1});
    gbuf1a_0_0_385_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    bias_add_0_0_382_->set_source_context("overrides.py:1355:0");
    bias_add_0_0_382_->set_op_name("tlir.AddBias");
    bias_add_0_0_382_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_202_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_202_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of bias_add_0_0_382");
    gbuf2u_0_0_202_wr_params.metapipe_iter_count = 1;
    gbuf2u_0_0_202_->configure_wr(gbuf2u_0_0_202_wr_params);
    PmuSetupRead gbuf2u_0_0_202_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_202_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_0_0_428");
    gbuf2u_0_0_202_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_0_0_202_->configure_rd_head_1(gbuf2u_0_0_202_rd1_params0, {2, 2});
    gbuf2u_0_0_202_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_0_0_428_->set_source_context("overrides.py:1355:0");
    layout_cast_0_0_428_->set_op_name("tlir.LayoutCast");
    layout_cast_0_0_428_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_output0_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_output0_->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_output0_->configure_node();
    
    // logreg_ts.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_430_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_430_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0");
    gbuf2a_0_0_430_wr_params.metapipe_iter_count = 1;
    gbuf2a_0_0_430_->configure_wr(gbuf2a_0_0_430_wr_params);
    PmuSetupRead gbuf2a_0_0_430_rd0_params0 = {};
    SN_ASSERT(gbuf2a_0_0_430_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__reshape");
    gbuf2a_0_0_430_rd0_params0.metapipe_iter_count = 1;
    gbuf2a_0_0_430_->configure_rd_head_0(gbuf2a_0_0_430_rd0_params0, {2, 2});
    PmuSetupRead gbuf2a_0_0_430_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_430_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__view");
    gbuf2a_0_0_430_rd1_params0.metapipe_iter_count = 1;
    gbuf2a_0_0_430_->configure_rd_head_1(gbuf2a_0_0_430_rd1_params0, {2, 2});
    gbuf2a_0_0_430_->configure_node();
    
    // logreg_ts.py:222:0: tlir.Reshape
    ptconvlstm__reshape_->set_source_context("logreg_ts.py:222:0");
    ptconvlstm__reshape_->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_->configure_node();
    
    // logreg_ts.py:229:0: tlir.Reshape
    ptconvlstm__view_->set_source_context("logreg_ts.py:229:0");
    ptconvlstm__view_->set_op_name("tlir.Reshape");
    ptconvlstm__view_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_389_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_389_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__reshape_2");
    gbuf2a_0_0_389_wr_params.metapipe_iter_count = 1;
    gbuf2a_0_0_389_->configure_wr(gbuf2a_0_0_389_wr_params);
    PmuSetupRead gbuf2a_0_0_389_rd1_params1 = {};
    gbuf2a_0_0_389_rd1_params1.interleave = true;
    gbuf2a_0_0_389_rd1_params1.vectors_in_column = ptconvlstm__conv_layer__reshape_2_->result_layout().chunk_vectors();
    gbuf2a_0_0_389_rd1_params1.interleave_size = ptconvlstm__conv_layer__reshape_2_->result_layout().physical_shape()[0];
    gbuf2a_0_0_389_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_389_rd1_params1.metapipe_iter_count = 1;
    gbuf2a_0_0_389_->configure_rd_head_1(gbuf2a_0_0_389_rd1_params1, {1});
    gbuf2a_0_0_389_->configure_node();
    
    // logreg_ts.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_431_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_431_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__reshape");
    gbuf2a_0_0_431_wr_params.metapipe_iter_count = 1;
    gbuf2a_0_0_431_->configure_wr(gbuf2a_0_0_431_wr_params);
    PmuSetupRead gbuf2a_0_0_431_rd0_params1 = {};
    gbuf2a_0_0_431_rd0_params1.metapipe_iter_count = 1;
    gbuf2a_0_0_431_->configure_rd_head_0(gbuf2a_0_0_431_rd0_params1, {2, 2});
    PmuSetupRead gbuf2a_0_0_431_rd1_params1 = {};
    gbuf2a_0_0_431_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_431_rd1_params1.metapipe_iter_count = 1;
    gbuf2a_0_0_431_->configure_rd_head_1(gbuf2a_0_0_431_rd1_params1, {1});
    gbuf2a_0_0_431_->configure_node();
    
    // logreg_ts.py:229:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_391_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_391_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__view");
    gbuf2a_0_0_391_wr_params.metapipe_iter_count = 1;
    gbuf2a_0_0_391_->configure_wr(gbuf2a_0_0_391_wr_params);
    PmuSetupRead gbuf2a_0_0_391_rd1_params1 = {};
    gbuf2a_0_0_391_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_391_rd1_params1.backing_pmu_removes_alignment = true;
    gbuf2a_0_0_391_rd1_params1.metapipe_iter_count = 1;
    gbuf2a_0_0_391_->configure_rd_head_1(gbuf2a_0_0_391_rd1_params1, {1});
    gbuf2a_0_0_391_->configure_node();
    
    // logreg_ts.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_422_wr_params = {};
    gbuf2a_0_0_422_wr_params.metapipe_iter_count = 1;
    gbuf2a_0_0_422_->configure_wr(gbuf2a_0_0_422_wr_params);
    PmuSetupRead gbuf2a_0_0_422_rd1_params0 = sub_0_0_322_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2a_0_0_422_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of sub_0_0_322");
    gbuf2a_0_0_422_rd1_params0.metapipe_iter_count = 1;
    gbuf2a_0_0_422_->configure_rd_head_1(gbuf2a_0_0_422_rd1_params0, {1});
    gbuf2a_0_0_422_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_421_wr_params = {};
    gbuf1a_0_0_421_wr_params.metapipe_iter_count = 1;
    gbuf1a_0_0_421_->configure_wr(gbuf1a_0_0_421_wr_params);
    PmuSetupRead gbuf1a_0_0_421_rd1_params0 = realign_0_0_409_->read_params(Realign::kInput);
    SN_ASSERT(gbuf1a_0_0_421_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of realign_0_0_409");
    gbuf1a_0_0_421_rd1_params0.metapipe_iter_count = 1;
    gbuf1a_0_0_421_->configure_rd_head_1(gbuf1a_0_0_421_rd1_params0, {1});
    gbuf1a_0_0_421_->configure_node();
    
    // UnknownFileName:0:0: tlir.Realign
    realign_0_0_409_->set_source_context("UnknownFileName:0:0");
    realign_0_0_409_->set_op_name("tlir.Realign");
    realign_0_0_409_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_392_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_392_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of realign_0_0_409");
    gbuf1a_0_0_392_wr_params.metapipe_iter_count = 1;
    gbuf1a_0_0_392_->configure_wr(gbuf1a_0_0_392_wr_params);
    PmuSetupRead gbuf1a_0_0_392_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_392_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__reshape_1");
    gbuf1a_0_0_392_rd1_params0.metapipe_iter_count = 1;
    gbuf1a_0_0_392_->configure_rd_head_1(gbuf1a_0_0_392_rd1_params0, {1});
    gbuf1a_0_0_392_->configure_node();
    
    // logreg_ts.py:223:0: tlir.Reshape
    ptconvlstm__reshape_1_->set_source_context("logreg_ts.py:223:0");
    ptconvlstm__reshape_1_->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    sub_0_0_322_->set_source_context("overrides.py:1355:0");
    sub_0_0_322_->set_op_name("tlir.Sub");
    sub_0_0_322_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_432_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_432_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of sub_0_0_322");
    gbuf1a_0_0_432_wr_params.metapipe_iter_count = 1;
    gbuf1a_0_0_432_->configure_wr(gbuf1a_0_0_432_wr_params);
    PmuSetupRead gbuf1a_0_0_432_rd0_params0 = mul_0_0_323_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_432_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of mul_0_0_323");
    gbuf1a_0_0_432_rd0_params0.metapipe_iter_count = 1;
    gbuf1a_0_0_432_->configure_rd_head_0(gbuf1a_0_0_432_rd0_params0, {1});
    PmuSetupRead gbuf1a_0_0_432_rd1_params1 = mul_0_0_323_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_432_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of mul_0_0_323");
    gbuf1a_0_0_432_rd1_params1.metapipe_iter_count = 1;
    gbuf1a_0_0_432_->configure_rd_head_1(gbuf1a_0_0_432_rd1_params1, {1});
    gbuf1a_0_0_432_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    mul_0_0_323_->set_source_context("overrides.py:1355:0");
    mul_0_0_323_->set_op_name("tlir.Mul");
    mul_0_0_323_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    mean_unalign_0_0_324_->set_source_context("overrides.py:1355:0");
    mean_unalign_0_0_324_->set_op_name("tlir.MeanAll");
    mean_unalign_0_0_324_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_393_wr_params = mean_unalign_0_0_324_->write_params();
    SN_ASSERT(gbuf1a_0_0_393_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of mean_unalign_0_0_324");
    gbuf1a_0_0_393_wr_params.metapipe_iter_count = 1;
    gbuf1a_0_0_393_->configure_wr(gbuf1a_0_0_393_wr_params);
    PmuSetupRead gbuf1a_0_0_393_rd1_params1 = {};
    gbuf1a_0_0_393_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_393_rd1_params1.metapipe_iter_count = 1;
    gbuf1a_0_0_393_->configure_rd_head_1(gbuf1a_0_0_393_rd1_params1, {1});
    gbuf1a_0_0_393_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg_ts.py:194:0: tlir.Index
    ptconvlstm__lambda_layer__indexselect_->set_source_context("logreg_ts.py:194:0");
    ptconvlstm__lambda_layer__indexselect_->set_op_name("tlir.Index");
    ptconvlstm__lambda_layer__indexselect_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_196_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_196_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__reshape");
    gbuf2u_0_0_196_wr_params.metapipe_iter_count = 1;
    gbuf2u_0_0_196_->configure_wr(gbuf2u_0_0_196_wr_params);
    PmuSetupRead gbuf2u_0_0_196_rd1_params0 = {};
    gbuf2u_0_0_196_rd1_params0.buffer_gather_list = true;
    gbuf2u_0_0_196_rd1_params0.buffer_overflow = false;
    gbuf2u_0_0_196_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_0_0_196_rd1_params0.buffer_gather_max = {1, 96, 5, 32};
    gbuf2u_0_0_196_rd1_params0.buffer_gather_stride = {1, 32, 1, 1};
    gbuf2u_0_0_196_rd1_params0.buffer_gather_mult = {0, 0, 64, 0};
    auto sbuf2u_0_0_287_scatter_control = sbuf2u_0_0_287_->get_pacing_control();
    gbuf2u_0_0_196_rd1_params0.buffer_pace_order  = sbuf2u_0_0_287_scatter_control.enable;
    gbuf2u_0_0_196_rd1_params0.buffer_pace_order_credits = sbuf2u_0_0_287_scatter_control.credits;
    gbuf2u_0_0_196_rd1_params0.buffer_pace_order_vectors = sbuf2u_0_0_287_scatter_control.vectors;
    gbuf2u_0_0_196_rd1_params0.buffer_pace_read_ceiling = sbuf2u_0_0_287_scatter_control.ceiling;
    gbuf2u_0_0_196_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_0_0_196_->configure_rd_head_1(gbuf2u_0_0_196_rd1_params0, {2, 2});
    gbuf2u_0_0_196_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_200_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_200_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__reshape_2");
    gbuf2u_0_0_200_wr_params.metapipe_iter_count = 1;
    gbuf2u_0_0_200_->configure_wr(gbuf2u_0_0_200_wr_params);
    PmuSetupRead gbuf2u_0_0_200_rd1_params1 = ptconvlstm__dense_layer__linear_->read_params(BigGemm::kB);
    gbuf2u_0_0_200_rd1_params1.metapipe_iter_count = 1;
    gbuf2u_0_0_200_->configure_rd_head_1(gbuf2u_0_0_200_rd1_params1, {1, 2});
    gbuf2u_0_0_200_->configure_node();
    
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    lbuf1a_0_0_388_->set_data_buffer(gbuf2u_0_0_196_, 1);
    PmuSetupWrite lbuf1a_0_0_388_wr_params = {};
    lbuf1a_0_0_388_wr_params.metapipe_iter_count = 1;
    lbuf1a_0_0_388_->configure_wr(lbuf1a_0_0_388_wr_params);
    lbuf1a_0_0_388_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    // logreg_ts.py:222:0: tlir.mutable.TemporalConcatBuffer
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Index
    std::unordered_map<int64_t, std::vector<RAILConnectInterface>>ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map = {};
    ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kLutRd, std::vector<RAILConnectInterface> {tbuf2u_0_0_189_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kLutRd),TBufferContext::Output::kDataOutput)}));
    ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kIndexRd, std::vector<RAILConnectInterface> {tbuf1u_0_0_190_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kIndexRd),TBufferContext::Output::kDataOutput)}));
    if (ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_0_0_194_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_0_0_194_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    ptconvlstm__lambda_layer__indexselect_->rail_custom_connect(ptconvlstm__lambda_layer__indexselect_rail_connect_interface_map);
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
    // logreg_ts.py:222:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Reshape
    // logreg_ts.py:229:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.mutate.TemporalConcat
    // logreg_ts.py:229:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Realign
    // UnknownFileName:0:0: tlir.Buffer
    // logreg_ts.py:223:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    TBuffer::tconnect_m_to_n(tbuf2u_0_0_189_, tbuf2u_0_0_194_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_0_0_189_->ctrl_input_ops(ptconvlstm__lambda_layer__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2u_0_0_189_, tbuf2u_0_0_194_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_0_0_189_->ctrl_input_ops(ptconvlstm__lambda_layer__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn1));
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_0_0_)), "RAIL compilation failed for section 0!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_0_0_, 0)), "RAIL global compile failed for section 0!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_0_0_387_->finalize();
    ptconvlstm__conv_layer__reshape_1_->finalize();
    realign_0_0_404_->finalize();
    ptconvlstm__conv_layer__conv2d_weight_permute_->finalize();
    vector_transpose_0_0_405_->finalize();
    ptconvlstm__conv_layer__conv2d_weight_reshape_->finalize();
    gbuf2a_0_0_427_->finalize();
    tbuf2u_0_0_189_->finalize();
    tbuf1u_0_0_190_->finalize();
    ptconvlstm__lambda_layer__indexselect_->finalize();
    tbuf2u_0_0_194_->finalize();
    ptconvlstm__conv_layer__reshape_->finalize();
    gbuf2u_0_0_196_->finalize();
    lbuf1a_0_0_388_->finalize();
    sbuf2u_0_0_287_->finalize();
    split_kernel_gbuf_0_0_288_->finalize();
    biggemm_0_0_289_->finalize();
    biggemm_0_0_290_->finalize();
    biggemm_0_0_291_->finalize();
    biggemm_0_0_292_->finalize();
    biggemm_0_0_293_->finalize();
    biggemm_0_0_294_->finalize();
    biggemm_0_0_295_->finalize();
    biggemm_0_0_296_->finalize();
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
    gbuf2u_0_0_313_->finalize();
    bias_transpose_add_0_0_314_->finalize();
    streaming_transpose_0_0_315_->finalize();
    gbuf2u_0_0_198_->finalize();
    ptconvlstm__conv_layer__reshape_2_->finalize();
    gbuf2u_0_0_200_->finalize();
    ptconvlstm__dense_layer__linear_->finalize();
    gbuf1a_0_0_385_->finalize();
    bias_add_0_0_382_->finalize();
    gbuf2u_0_0_202_->finalize();
    layout_cast_0_0_428_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_->finalize();
    gbuf2a_0_0_430_->finalize();
    ptconvlstm__reshape_->finalize();
    ptconvlstm__view_->finalize();
    gbuf2a_0_0_389_->finalize();
    gbuf2a_0_0_431_->finalize();
    gbuf2a_0_0_391_->finalize();
    gbuf2a_0_0_422_->finalize();
    gbuf1a_0_0_421_->finalize();
    realign_0_0_409_->finalize();
    gbuf1a_0_0_392_->finalize();
    ptconvlstm__reshape_1_->finalize();
    sub_0_0_322_->finalize();
    gbuf1a_0_0_432_->finalize();
    mul_0_0_323_->finalize();
    mean_unalign_0_0_324_->finalize();
    gbuf1a_0_0_393_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(gbuf1a_0_0_387_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), realign_0_0_404_->get_connect_interface(Realign::kInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    connect_by_interface(realign_0_0_404_->get_connect_interface(Realign::kOutput, false), ptconvlstm__conv_layer__conv2d_weight_permute_->get_connect_interface(TBufferPermute::kDefaultInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    connect_by_interface(ptconvlstm__conv_layer__conv2d_weight_permute_->get_connect_interface(TBufferPermute::kDefaultOutput, false), vector_transpose_0_0_405_->get_connect_interface(VectorTranspose::kInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    connect_by_interface(vector_transpose_0_0_405_->get_connect_interface(VectorTranspose::kOutput, false), gbuf2a_0_0_427_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_ts.py:222:0: tlir.mutable.TemporalConcatBuffer
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_427_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), split_kernel_gbuf_0_0_288_->get_connect_interface(KernelGBuffer::Input::kTailBuffer, true));
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Index
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(tbuf2u_0_0_194_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf2u_0_0_196_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(gbuf2u_0_0_196_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf2u_0_0_287_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    connect_1_to_n(lbuf1a_0_0_388_->output(ListBuffer::kGatherAddress), gbuf2u_0_0_196_->input_list(GBuffer::get_read_scalar_input(1)));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Gather
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_289_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_290_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_291_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_292_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_293_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_294_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_295_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_296_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_297_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_298_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_299_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_300_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_301_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_302_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_303_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_304_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_305_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_306_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_307_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_308_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_309_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_287_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_310_->get_connect_interface(BigGemm::kA, true));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    std::vector<DataSink *> biggemm_0_0_289_schema_sinks = {};
    for (auto sink : biggemm_0_0_289_->input_list(BigGemm::kB)) {
        biggemm_0_0_289_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_289_connect_schemas = {};
    biggemm_0_0_289_connect_schemas.push_back(biggemm_0_0_289_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 0)), biggemm_0_0_289_schema_sinks, std::move(biggemm_0_0_289_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_290_schema_sinks = {};
    for (auto sink : biggemm_0_0_290_->input_list(BigGemm::kB)) {
        biggemm_0_0_290_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_290_connect_schemas = {};
    biggemm_0_0_290_connect_schemas.push_back(biggemm_0_0_290_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 1)), biggemm_0_0_290_schema_sinks, std::move(biggemm_0_0_290_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_291_schema_sinks = {};
    for (auto sink : biggemm_0_0_291_->input_list(BigGemm::kB)) {
        biggemm_0_0_291_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_291_connect_schemas = {};
    biggemm_0_0_291_connect_schemas.push_back(biggemm_0_0_291_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 2)), biggemm_0_0_291_schema_sinks, std::move(biggemm_0_0_291_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_292_schema_sinks = {};
    for (auto sink : biggemm_0_0_292_->input_list(BigGemm::kB)) {
        biggemm_0_0_292_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_292_connect_schemas = {};
    biggemm_0_0_292_connect_schemas.push_back(biggemm_0_0_292_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 3)), biggemm_0_0_292_schema_sinks, std::move(biggemm_0_0_292_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_293_schema_sinks = {};
    for (auto sink : biggemm_0_0_293_->input_list(BigGemm::kB)) {
        biggemm_0_0_293_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_293_connect_schemas = {};
    biggemm_0_0_293_connect_schemas.push_back(biggemm_0_0_293_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 4)), biggemm_0_0_293_schema_sinks, std::move(biggemm_0_0_293_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_294_schema_sinks = {};
    for (auto sink : biggemm_0_0_294_->input_list(BigGemm::kB)) {
        biggemm_0_0_294_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_294_connect_schemas = {};
    biggemm_0_0_294_connect_schemas.push_back(biggemm_0_0_294_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 5)), biggemm_0_0_294_schema_sinks, std::move(biggemm_0_0_294_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_295_schema_sinks = {};
    for (auto sink : biggemm_0_0_295_->input_list(BigGemm::kB)) {
        biggemm_0_0_295_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_295_connect_schemas = {};
    biggemm_0_0_295_connect_schemas.push_back(biggemm_0_0_295_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 6)), biggemm_0_0_295_schema_sinks, std::move(biggemm_0_0_295_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_296_schema_sinks = {};
    for (auto sink : biggemm_0_0_296_->input_list(BigGemm::kB)) {
        biggemm_0_0_296_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_296_connect_schemas = {};
    biggemm_0_0_296_connect_schemas.push_back(biggemm_0_0_296_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 7)), biggemm_0_0_296_schema_sinks, std::move(biggemm_0_0_296_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_297_schema_sinks = {};
    for (auto sink : biggemm_0_0_297_->input_list(BigGemm::kB)) {
        biggemm_0_0_297_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_297_connect_schemas = {};
    biggemm_0_0_297_connect_schemas.push_back(biggemm_0_0_297_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 8)), biggemm_0_0_297_schema_sinks, std::move(biggemm_0_0_297_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_298_schema_sinks = {};
    for (auto sink : biggemm_0_0_298_->input_list(BigGemm::kB)) {
        biggemm_0_0_298_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_298_connect_schemas = {};
    biggemm_0_0_298_connect_schemas.push_back(biggemm_0_0_298_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 9)), biggemm_0_0_298_schema_sinks, std::move(biggemm_0_0_298_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_299_schema_sinks = {};
    for (auto sink : biggemm_0_0_299_->input_list(BigGemm::kB)) {
        biggemm_0_0_299_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_299_connect_schemas = {};
    biggemm_0_0_299_connect_schemas.push_back(biggemm_0_0_299_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 10)), biggemm_0_0_299_schema_sinks, std::move(biggemm_0_0_299_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_300_schema_sinks = {};
    for (auto sink : biggemm_0_0_300_->input_list(BigGemm::kB)) {
        biggemm_0_0_300_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_300_connect_schemas = {};
    biggemm_0_0_300_connect_schemas.push_back(biggemm_0_0_300_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 11)), biggemm_0_0_300_schema_sinks, std::move(biggemm_0_0_300_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_301_schema_sinks = {};
    for (auto sink : biggemm_0_0_301_->input_list(BigGemm::kB)) {
        biggemm_0_0_301_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_301_connect_schemas = {};
    biggemm_0_0_301_connect_schemas.push_back(biggemm_0_0_301_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 12)), biggemm_0_0_301_schema_sinks, std::move(biggemm_0_0_301_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_302_schema_sinks = {};
    for (auto sink : biggemm_0_0_302_->input_list(BigGemm::kB)) {
        biggemm_0_0_302_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_302_connect_schemas = {};
    biggemm_0_0_302_connect_schemas.push_back(biggemm_0_0_302_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 13)), biggemm_0_0_302_schema_sinks, std::move(biggemm_0_0_302_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_303_schema_sinks = {};
    for (auto sink : biggemm_0_0_303_->input_list(BigGemm::kB)) {
        biggemm_0_0_303_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_303_connect_schemas = {};
    biggemm_0_0_303_connect_schemas.push_back(biggemm_0_0_303_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 14)), biggemm_0_0_303_schema_sinks, std::move(biggemm_0_0_303_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_304_schema_sinks = {};
    for (auto sink : biggemm_0_0_304_->input_list(BigGemm::kB)) {
        biggemm_0_0_304_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_304_connect_schemas = {};
    biggemm_0_0_304_connect_schemas.push_back(biggemm_0_0_304_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 15)), biggemm_0_0_304_schema_sinks, std::move(biggemm_0_0_304_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_305_schema_sinks = {};
    for (auto sink : biggemm_0_0_305_->input_list(BigGemm::kB)) {
        biggemm_0_0_305_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_305_connect_schemas = {};
    biggemm_0_0_305_connect_schemas.push_back(biggemm_0_0_305_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 16)), biggemm_0_0_305_schema_sinks, std::move(biggemm_0_0_305_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_306_schema_sinks = {};
    for (auto sink : biggemm_0_0_306_->input_list(BigGemm::kB)) {
        biggemm_0_0_306_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_306_connect_schemas = {};
    biggemm_0_0_306_connect_schemas.push_back(biggemm_0_0_306_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 17)), biggemm_0_0_306_schema_sinks, std::move(biggemm_0_0_306_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_307_schema_sinks = {};
    for (auto sink : biggemm_0_0_307_->input_list(BigGemm::kB)) {
        biggemm_0_0_307_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_307_connect_schemas = {};
    biggemm_0_0_307_connect_schemas.push_back(biggemm_0_0_307_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 18)), biggemm_0_0_307_schema_sinks, std::move(biggemm_0_0_307_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_308_schema_sinks = {};
    for (auto sink : biggemm_0_0_308_->input_list(BigGemm::kB)) {
        biggemm_0_0_308_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_308_connect_schemas = {};
    biggemm_0_0_308_connect_schemas.push_back(biggemm_0_0_308_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 19)), biggemm_0_0_308_schema_sinks, std::move(biggemm_0_0_308_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_309_schema_sinks = {};
    for (auto sink : biggemm_0_0_309_->input_list(BigGemm::kB)) {
        biggemm_0_0_309_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_309_connect_schemas = {};
    biggemm_0_0_309_connect_schemas.push_back(biggemm_0_0_309_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 20)), biggemm_0_0_309_schema_sinks, std::move(biggemm_0_0_309_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_310_schema_sinks = {};
    for (auto sink : biggemm_0_0_310_->input_list(BigGemm::kB)) {
        biggemm_0_0_310_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_310_connect_schemas = {};
    biggemm_0_0_310_connect_schemas.push_back(biggemm_0_0_310_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_288_->output_list(GBuffer::get_head_output(1, 21)), biggemm_0_0_310_schema_sinks, std::move(biggemm_0_0_310_connect_schemas));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_289_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_289_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_290_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_290_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(1, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_291_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_291_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(2, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_292_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_292_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(3, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_293_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_293_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(4, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_294_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_294_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(5, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_295_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_295_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(6, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_296_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_296_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(7, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_297_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_297_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(8, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_298_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_298_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(9, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_299_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_299_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(10, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_300_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_300_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(11, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_301_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_301_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(12, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_302_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_302_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(13, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_303_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_303_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(14, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_304_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_304_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(15, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_305_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_305_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(16, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_306_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_306_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(17, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_307_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_307_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(18, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_308_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_308_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(19, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_309_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_309_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(20, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_310_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_310_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_313_->input_list(gbuf2u_0_0_313_->get_tail_input(21, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    connect_by_interface(gbuf2u_0_0_313_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_transpose_add_0_0_314_->get_connect_interface(BiasTransposeAdd::kInput, true));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    connect_by_interface(bias_transpose_add_0_0_314_->get_connect_interface(BiasTransposeAdd::kOutput, false), streaming_transpose_0_0_315_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    connect_by_interface(streaming_transpose_0_0_315_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), gbuf2u_0_0_198_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(gbuf2u_0_0_198_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_0_0_200_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf2u_0_0_198_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_389_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    { // Connect partitioned input
        for(int64_t i = 0; i < ptconvlstm__dense_layer__linear_->get_b_input_partitions(); ++i) {
            connect_with_schema(gbuf2u_0_0_200_->output(gbuf2u_0_0_200_->get_head_output(1, 0, i)), ptconvlstm__dense_layer__linear_->input_list(ptconvlstm__dense_layer__linear_->get_partition_input(i+1)), ptconvlstm__dense_layer__linear_->get_connect_schema());
        }
    } // End partitioned input
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvlstm__dense_layer__linear_->num_partitions(); ++p) {
            connect_m_to_n(ptconvlstm__dense_layer__linear_->output_list(BigGemm::get_partition_output(p)), gbuf1a_0_0_385_->input_list(gbuf1a_0_0_385_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_385_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_add_0_0_382_->get_connect_interface(BiasAdd::Input::kInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    connect_by_interface(bias_add_0_0_382_->get_connect_interface(BiasAdd::Output::kOutput, false), gbuf2u_0_0_202_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf2u_0_0_202_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_430_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_ts.py:222:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Reshape
    connect_by_interface(gbuf2a_0_0_430_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), gbuf2a_0_0_431_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_ts.py:229:0: tlir.Reshape
    connect_by_interface(gbuf2a_0_0_430_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_391_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_431_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), get_connect_interface(gbuf2a_0_0_422_->input_list(GBuffer::Input::kTailBuffer)));
    // logreg_ts.py:222:0: tlir.mutate.TemporalConcat
    // logreg_ts.py:229:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_422_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_322_->get_connect_interface(BinaryOps::Input::kA, true));
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_421_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), realign_0_0_409_->get_connect_interface(Realign::kInput, true));
    // UnknownFileName:0:0: tlir.Realign
    connect_by_interface(realign_0_0_409_->get_connect_interface(Realign::kOutput, false), gbuf1a_0_0_392_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // logreg_ts.py:223:0: tlir.Reshape
    connect_by_interface(gbuf1a_0_0_392_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_322_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    connect_by_interface(sub_0_0_322_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_0_0_432_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_432_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), mul_0_0_323_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_0_0_432_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), mul_0_0_323_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    connect_by_interface(mul_0_0_323_->get_connect_interface(BinaryOps::Output::kOut, false), mean_unalign_0_0_324_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    connect_by_interface(mean_unalign_0_0_324_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_393_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    tbuf2u_0_0_189_->set_arc_stage_buffer();
    tbuf2u_0_0_194_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_196_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_0_0_194_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_196_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_0_0_194_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn1));
    gbuf2u_0_0_196_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_196_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_196_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(sbuf2u_0_0_287_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_0_0_196_->ctrl_input_list(gbuf2u_0_0_196_->get_pacing_order_enable(1)));
    sbuf2u_0_0_287_->set_arc_stage_buffer();
    auto sbuf2u_0_0_287_pacing_order_barrier1 = plasma_->create_barrier({biggemm_0_0_289_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_290_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_291_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_292_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_293_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_294_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_295_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_296_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_297_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_298_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_299_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_300_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_301_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_302_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_303_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_304_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_305_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_306_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_307_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_308_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_309_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_310_->ctrl_output(BigGemm::kRdDoneA)});
    connect_ctl_1_to_n(sbuf2u_0_0_287_pacing_order_barrier1, sbuf2u_0_0_287_->ctrl_input_list(sbuf2u_0_0_287_->get_pacing_order_enable(1)));
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_289_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(0, p)), biggemm_0_0_289_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_289_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(0, p)), biggemm_0_0_289_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_289_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_290_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(1, p)), biggemm_0_0_290_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_290_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(1, p)), biggemm_0_0_290_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_290_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_291_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(2, p)), biggemm_0_0_291_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_291_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(2, p)), biggemm_0_0_291_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_291_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_292_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(3, p)), biggemm_0_0_292_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_292_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(3, p)), biggemm_0_0_292_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_292_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_293_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(4, p)), biggemm_0_0_293_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_293_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(4, p)), biggemm_0_0_293_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_293_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_294_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(5, p)), biggemm_0_0_294_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_294_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(5, p)), biggemm_0_0_294_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_294_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_295_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(6, p)), biggemm_0_0_295_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_295_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(6, p)), biggemm_0_0_295_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_295_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_296_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(7, p)), biggemm_0_0_296_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_296_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(7, p)), biggemm_0_0_296_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_296_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_297_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(8, p)), biggemm_0_0_297_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_297_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(8, p)), biggemm_0_0_297_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_297_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_298_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(9, p)), biggemm_0_0_298_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_298_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(9, p)), biggemm_0_0_298_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_298_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_299_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(10, p)), biggemm_0_0_299_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_299_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(10, p)), biggemm_0_0_299_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_299_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_300_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(11, p)), biggemm_0_0_300_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_300_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(11, p)), biggemm_0_0_300_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_300_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_301_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(12, p)), biggemm_0_0_301_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_301_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(12, p)), biggemm_0_0_301_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_301_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_302_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(13, p)), biggemm_0_0_302_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_302_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(13, p)), biggemm_0_0_302_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_302_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_303_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(14, p)), biggemm_0_0_303_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_303_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(14, p)), biggemm_0_0_303_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_303_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_304_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(15, p)), biggemm_0_0_304_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_304_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(15, p)), biggemm_0_0_304_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_304_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_305_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(16, p)), biggemm_0_0_305_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_305_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(16, p)), biggemm_0_0_305_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_305_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_306_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(17, p)), biggemm_0_0_306_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_306_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(17, p)), biggemm_0_0_306_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_306_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_307_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(18, p)), biggemm_0_0_307_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_307_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(18, p)), biggemm_0_0_307_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_307_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_308_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(19, p)), biggemm_0_0_308_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_308_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(19, p)), biggemm_0_0_308_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_308_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_309_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(20, p)), biggemm_0_0_309_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_309_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(20, p)), biggemm_0_0_309_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_309_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_310_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_pacing_wr_done(21, p)), biggemm_0_0_310_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_310_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_313_->ctrl_output(gbuf2u_0_0_313_->get_fronting_rd_done(21, p)), biggemm_0_0_310_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_310_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_0_0_313_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_198_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_313_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_198_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_313_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_0_0_198_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_200_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_198_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_389_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_198_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_200_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_198_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_0_0_389_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_198_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_0_0_200_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_202_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_200_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_202_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_200_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvlstm__dense_layer__linear_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_0_0_385_->ctrl_output(gbuf1a_0_0_385_->get_pacing_wr_done(0, p)), ptconvlstm__dense_layer__linear_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvlstm__dense_layer__linear_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_0_0_385_->ctrl_output(gbuf1a_0_0_385_->get_fronting_rd_done(0, p)), ptconvlstm__dense_layer__linear_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvlstm__dense_layer__linear_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_0_0_202_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_430_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_202_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_430_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_202_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_0_0_430_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_431_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_430_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_431_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_430_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_391_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_430_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_391_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_430_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_0_0_389_->set_arc_stage_buffer();
    gbuf2a_0_0_431_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_422_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_431_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_422_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_431_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    gbuf2a_0_0_391_->set_arc_stage_buffer();
    connect_ctl_1_to_n(realign_0_0_409_->ctrl_output(Realign::kPacingReadDone), gbuf1a_0_0_421_->ctrl_input_list(gbuf1a_0_0_421_->get_pacing_order_enable(1)));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kptconvlstm__conv_layer__weight_0_0_91, gbuf1a_0_0_387_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_slice_1_0_0_94, tbuf1u_0_0_190_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(kptconvlstm__conv_layer__bias_0_0_102, bias_transpose_add_0_0_314_->input_list(BiasTransposeAdd::kBias));
    // Input ptconvlstm__dense_layer__weight_0_0_106 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_0_0_107 uses a weight buffer
    add_node_input(kinp_window_0_0_260, tbuf2u_0_0_189_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(kptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378, lbuf1a_0_0_388_->input_list(ListBuffer::Input::kTailBuffer));
    add_node_input(kout_window_0_0_96, gbuf1a_0_0_421_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266, gbuf2a_0_0_389_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267, gbuf2a_0_0_431_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__view__outputs__0_0_0_268, gbuf2a_0_0_391_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(k_tensor, gbuf1a_0_0_393_->output_list(GBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_0_0_387_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__reshape_1_->set_placement_hint({1, 0});
    realign_0_0_404_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__conv2d_weight_permute_->set_placement_hint({1, 0});
    vector_transpose_0_0_405_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__conv2d_weight_reshape_->set_placement_hint({1, 0});
    gbuf2a_0_0_427_->set_placement_hint({1, 0});
    tbuf2u_0_0_189_->set_placement_hint({1, 0});
    tbuf1u_0_0_190_->set_placement_hint({1, 0});
    ptconvlstm__lambda_layer__indexselect_->set_placement_hint({1, 0});
    tbuf2u_0_0_194_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__reshape_->set_placement_hint({1, 0});
    gbuf2u_0_0_196_->set_placement_hint({1, 0});
    lbuf1a_0_0_388_->set_placement_hint({1, 0});
    sbuf2u_0_0_287_->set_placement_hint({1, 0});
    split_kernel_gbuf_0_0_288_->set_placement_hint({1, 0});
    biggemm_0_0_289_->set_placement_hint({1, 0});
    biggemm_0_0_290_->set_placement_hint({1, 0});
    biggemm_0_0_291_->set_placement_hint({1, 0});
    biggemm_0_0_292_->set_placement_hint({1, 0});
    biggemm_0_0_293_->set_placement_hint({1, 0});
    biggemm_0_0_294_->set_placement_hint({1, 0});
    biggemm_0_0_295_->set_placement_hint({1, 0});
    biggemm_0_0_296_->set_placement_hint({1, 0});
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
    gbuf2u_0_0_313_->set_placement_hint({1, 0});
    bias_transpose_add_0_0_314_->set_placement_hint({1, 0});
    streaming_transpose_0_0_315_->set_placement_hint({1, 0});
    gbuf2u_0_0_198_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__reshape_2_->set_placement_hint({1, 0});
    gbuf2u_0_0_200_->set_placement_hint({1, 0});
    ptconvlstm__dense_layer__linear_->set_placement_hint({1, 0});
    gbuf1a_0_0_385_->set_placement_hint({1, 0});
    bias_add_0_0_382_->set_placement_hint({1, 0});
    gbuf2u_0_0_202_->set_placement_hint({1, 0});
    layout_cast_0_0_428_->set_placement_hint({1, 0});
    ptconvlstm__dense_layer__linear_t_output0_->set_placement_hint({1, 0});
    gbuf2a_0_0_430_->set_placement_hint({1, 0});
    ptconvlstm__reshape_->set_placement_hint({1, 0});
    ptconvlstm__view_->set_placement_hint({1, 0});
    gbuf2a_0_0_389_->set_placement_hint({1, 0});
    gbuf2a_0_0_431_->set_placement_hint({1, 0});
    gbuf2a_0_0_391_->set_placement_hint({1, 0});
    
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
    // logreg_ts.py:229:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_218_wr_params = {};
    gbuf2u_1_0_218_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_218_->configure_wr(gbuf2u_1_0_218_wr_params);
    PmuSetupRead gbuf2u_1_0_218_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_218_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__view_bwd");
    gbuf2u_1_0_218_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_218_->configure_rd_head_1(gbuf2u_1_0_218_rd1_params0, {2, 2, 2, 2});
    gbuf2u_1_0_218_->configure_node();
    
    // logreg_ts.py:229:0: tlir.Reshape
    ptconvlstm__view_bwd_->set_source_context("logreg_ts.py:229:0");
    ptconvlstm__view_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__view_bwd_->configure_node();
    
    // logreg_ts.py:223:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_221_wr_params = {};
    gbuf2u_1_0_221_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_221_->configure_wr(gbuf2u_1_0_221_wr_params);
    PmuSetupRead gbuf2u_1_0_221_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_221_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__reshape_1_recompute_");
    gbuf2u_1_0_221_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_221_->configure_rd_head_1(gbuf2u_1_0_221_rd1_params0, {1, 2});
    gbuf2u_1_0_221_->configure_node();
    
    // logreg_ts.py:223:0: tlir.Reshape
    ptconvlstm__reshape_1_recompute__->set_source_context("logreg_ts.py:223:0");
    ptconvlstm__reshape_1_recompute__->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_1_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_224_wr_params = {};
    gbuf2u_1_0_224_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_224_->configure_wr(gbuf2u_1_0_224_wr_params);
    PmuSetupRead gbuf2u_1_0_224_rd1_params0 = ptconvlstm__criterion__mseloss_bwd_sub_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2u_1_0_224_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__criterion__mseloss_bwd_sub");
    gbuf2u_1_0_224_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_224_->configure_rd_head_1(gbuf2u_1_0_224_rd1_params0, {1, 2});
    gbuf2u_1_0_224_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    ptconvlstm__criterion__mseloss_bwd_sub_->set_source_context("overrides.py:1355:0");
    ptconvlstm__criterion__mseloss_bwd_sub_->set_op_name("tlir.Sub");
    ptconvlstm__criterion__mseloss_bwd_sub_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    scale_1_0_331_->set_source_context("overrides.py:1355:0");
    scale_1_0_331_->set_op_name("tlir.Scale");
    scale_1_0_331_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    scale_1_0_332_->set_source_context("overrides.py:1355:0");
    scale_1_0_332_->set_op_name("tlir.Scale");
    scale_1_0_332_->configure_node();
    
    // logreg_ts.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_229_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_229_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of scale_1_0_332");
    gbuf2u_1_0_229_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_229_->configure_wr(gbuf2u_1_0_229_wr_params);
    PmuSetupRead gbuf2u_1_0_229_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_229_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__reshape_bwd");
    gbuf2u_1_0_229_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_229_->configure_rd_head_1(gbuf2u_1_0_229_rd1_params0, {2, 2, 2, 2});
    gbuf2u_1_0_229_->configure_node();
    
    // logreg_ts.py:222:0: tlir.Reshape
    ptconvlstm__reshape_bwd_->set_source_context("logreg_ts.py:222:0");
    ptconvlstm__reshape_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_bwd_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_1_0_429_->set_source_context("overrides.py:1355:0");
    layout_cast_1_0_429_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_429_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_op_name("tlir.AddN");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_236_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_236_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_236_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_236_->configure_wr(gbuf2u_1_0_236_wr_params);
    PmuSetupRead gbuf2u_1_0_236_rd1_params1 = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->read_params(BigGemm::kB);
    gbuf2u_1_0_236_rd1_params1.metapipe_iter_count = 1;
    gbuf2u_1_0_236_->configure_rd_head_1(gbuf2u_1_0_236_rd1_params1, {1, 2});
    gbuf2u_1_0_236_->configure_node();
    
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_394_wr_params = {};
    gbuf1a_1_0_394_wr_params.is_transpose = true;
    gbuf1a_1_0_394_wr_params.metapipe_iter_count = 1;
    gbuf1a_1_0_394_->configure_wr(gbuf1a_1_0_394_wr_params);
    PmuSetupRead gbuf1a_1_0_394_rd1_params0 = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->read_params(BigGemm::kA);
    gbuf1a_1_0_394_rd1_params0.is_transpose = true;
    gbuf1a_1_0_394_rd1_params0.metapipe_iter_count = 1;
    gbuf1a_1_0_394_->configure_rd_head_1(gbuf1a_1_0_394_rd1_params0, {1});
    gbuf1a_1_0_394_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_239_wr_params = {};
    gbuf2u_1_0_239_wr_params.is_transpose = true;
    gbuf2u_1_0_239_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_239_->configure_wr(gbuf2u_1_0_239_wr_params);
    PmuSetupRead gbuf2u_1_0_239_rd1_params1 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kB);
    gbuf2u_1_0_239_rd1_params1.is_transpose = true;
    gbuf2u_1_0_239_rd1_params1.metapipe_iter_count = 1;
    gbuf2u_1_0_239_->configure_rd_head_1(gbuf2u_1_0_239_rd1_params1, {1, 1});
    gbuf2u_1_0_239_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_240_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_240_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_240_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_240_->configure_wr(gbuf2u_1_0_240_wr_params);
    PmuSetupRead gbuf2u_1_0_240_rd0_params2 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2u_1_0_240_rd0_params2.metapipe_iter_count = 1;
    gbuf2u_1_0_240_->configure_rd_head_0(gbuf2u_1_0_240_rd0_params2, {1});
    PmuSetupRead gbuf2u_1_0_240_rd1_params0 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kA);
    gbuf2u_1_0_240_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_240_->configure_rd_head_1(gbuf2u_1_0_240_rd1_params0, {ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->wbuf_depth()});
    gbuf2u_1_0_240_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_242_wr_params = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->write_params(BigGemm::kOutput);
    gbuf2u_1_0_242_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_242_->configure_wr(gbuf2u_1_0_242_wr_params);
    PmuSetupRead gbuf2u_1_0_242_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_242_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__reshape_2_bwd");
    gbuf2u_1_0_242_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_242_->configure_rd_head_1(gbuf2u_1_0_242_rd1_params0, {2, 2});
    gbuf2u_1_0_242_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvlstm__conv_layer__reshape_2_bwd_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__reshape_2_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__reshape_2_bwd_->configure_node();
    
    // logreg_ts.py:194:0: tlir.Buffer
    tbuf2u_1_0_245_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf2u_1_0_245_, params_.inp_window_dram_in));
;
    tbuf2u_1_0_245_->set_metapipe_iter_count(1);
    for (auto ctx : tbuf2u_1_0_245_->get_write_ctxs())
        ctx->set_metapipe_iter_count(1);
    tbuf2u_1_0_245_->add_context(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kLutRd));
    for (auto ctx_name : ptconvlstm__lambda_layer__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd))
        tbuf2u_1_0_245_->ctx(ctx_name)->set_read_credits({1, tbuf2u_1_0_250_->param().buffer_depth},{});
    for (auto ctx : tbuf2u_1_0_245_->get_read_ctxs()) {
        ctx->set_metapipe_iter_count(1);
    }
    tbuf2u_1_0_245_->configure_node();
    
    // logreg_ts.py:194:0: tlir.Buffer
    tbuf1u_1_0_246_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, tbuf1u_1_0_246_, params_.inp_window_slice_1_dram_in));
;
    tbuf1u_1_0_246_->set_metapipe_iter_count(1);
    for (auto ctx : tbuf1u_1_0_246_->get_write_ctxs())
        ctx->set_metapipe_iter_count(1);
    tbuf1u_1_0_246_->add_context(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kIndexRd));
    for (auto ctx : tbuf1u_1_0_246_->get_read_ctxs()) {
        ctx->set_metapipe_iter_count(1);
    }
    tbuf1u_1_0_246_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    tbuf2u_1_0_250_->view<TBufferPermuteView>(std::vector<int64_t>{{1, 0}})->view<TBufferLayoutView>(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {3, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align())->add_context(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    tbuf2u_1_0_250_->set_metapipe_iter_count(1);
    for (auto ctx : tbuf2u_1_0_250_->get_write_ctxs())
        ctx->set_metapipe_iter_count(1);
    tbuf2u_1_0_250_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx_name : std::vector<std::string>{"kDefaultRead1"})
        tbuf2u_1_0_250_->ctx(ctx_name)->set_read_credits({2, 2},{});
    for (auto ctx : tbuf2u_1_0_250_->get_read_ctxs()) {
        ctx->set_metapipe_iter_count(1);
    }
    tbuf2u_1_0_250_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvlstm__conv_layer__reshape_recompute__->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__reshape_recompute__->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__reshape_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_433_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_433_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__reshape_2_bwd");
    gbuf2a_1_0_433_wr_params.metapipe_iter_count = 1;
    gbuf2a_1_0_433_->configure_wr(gbuf2a_1_0_433_wr_params);
    PmuSetupRead gbuf2a_1_0_433_rd0_params0 = streaming_transpose_1_0_357_->read_params(StreamingTranspose::kTailBuffer);
    gbuf2a_1_0_433_rd0_params0.metapipe_iter_count = 1;
    gbuf2a_1_0_433_->configure_rd_head_0(gbuf2a_1_0_433_rd0_params0, {2, 2});
    PmuSetupRead gbuf2a_1_0_433_rd1_params0 = bias_transpose_grad_1_0_370_->read_params(BiasTransposeGrad::kLoss_Input);
    gbuf2a_1_0_433_rd1_params0.metapipe_iter_count = 1;
    gbuf2a_1_0_433_->configure_rd_head_1(gbuf2a_1_0_433_rd1_params0, {2, 2});
    gbuf2a_1_0_433_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1019:0: tlir.StreamingPermute
    streaming_transpose_1_0_357_->set_source_context("ConvGradIm2Col.cpp:1019:0");
    streaming_transpose_1_0_357_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_1_0_357_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:468:0: tlir.Buffer
    PmuSetupRead sbuf2u_1_0_361_rd1_params0 = biggemm_1_0_363_->read_params(BigGemm::kA);
    SN_ASSERT(sbuf2u_1_0_361_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of biggemm_1_0_363");
    sbuf2u_1_0_361_rd1_params0.buffer_pace_order = true;
    sbuf2u_1_0_361_rd1_params0.buffer_pace_order_credits = biggemm_1_0_363_->wbuf_depth();
    sbuf2u_1_0_361_rd1_params0.buffer_pace_order_vectors = biggemm_1_0_363_->wbuf_vectors();
    sbuf2u_1_0_361_rd1_params0.metapipe_iter_count = 1;
    sbuf2u_1_0_361_->configure_rd_head_1(sbuf2u_1_0_361_rd1_params0, {1});
    sbuf2u_1_0_361_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    PmuSetupWrite split_kernel_gbuf_1_0_362_wr_params = streaming_transpose_1_0_357_->write_params(StreamingTranspose::kHead1Buffer);
    split_kernel_gbuf_1_0_362_->configure_wr(split_kernel_gbuf_1_0_362_wr_params);
    split_kernel_gbuf_1_0_362_->set_source_context("BigLinearExternalColPar.cpp:40:0");
    split_kernel_gbuf_1_0_362_->set_op_name("tlir.Split");
    split_kernel_gbuf_1_0_362_->set_batch_size_b(1);
    split_kernel_gbuf_1_0_362_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_363_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_363_->set_op_name("tlir.Linear");
    biggemm_1_0_363_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_364_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_364_->set_op_name("tlir.Linear");
    biggemm_1_0_364_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_365_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_365_->set_op_name("tlir.Linear");
    biggemm_1_0_365_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    biggemm_1_0_366_->set_source_context("BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_366_->set_op_name("tlir.Linear");
    biggemm_1_0_366_->configure_node();
    
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_368_wr_params = {};
    gbuf2u_1_0_368_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_368_->configure_wr(0, biggemm_1_0_363_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_368_->configure_wr(1, biggemm_1_0_364_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_368_->configure_wr(2, biggemm_1_0_365_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_368_->configure_wr(3, biggemm_1_0_366_->write_params(BigGemm::kOutput));
    PmuSetupRead gbuf2u_1_0_368_rd1_params0 = {};
    gbuf2u_1_0_368_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_368_->configure_rd_head_1(gbuf2u_1_0_368_rd1_params0, {1});
    gbuf2u_1_0_368_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.BiasTransposeGrad
    bias_transpose_grad_1_0_370_->set_source_context("ConvGradIm2Col.cpp:1115:0");
    bias_transpose_grad_1_0_370_->set_op_name("tlir.BiasTransposeGrad");
    bias_transpose_grad_1_0_370_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_398_wr_params = {};
    gbuf2a_1_0_398_wr_params.metapipe_iter_count = 1;
    gbuf2a_1_0_398_->configure_wr(gbuf2a_1_0_398_wr_params);
    PmuSetupRead gbuf2a_1_0_398_rd1_params0 = {};
    SN_ASSERT(gbuf2a_1_0_398_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_1_0_371");
    gbuf2a_1_0_398_rd1_params0.metapipe_iter_count = 1;
    gbuf2a_1_0_398_->configure_rd_head_1(gbuf2a_1_0_398_rd1_params0, {1});
    gbuf2a_1_0_398_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1117:0: tlir.Reshape
    reshape_1_0_371_->set_source_context("ConvGradIm2Col.cpp:1117:0");
    reshape_1_0_371_->set_op_name("tlir.Reshape");
    reshape_1_0_371_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.LayoutCast
    layout_cast_1_0_372_->set_source_context("ConvGradIm2Col.cpp:1118:0");
    layout_cast_1_0_372_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_372_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__conv_layer__conv2d_bwd_accum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupRead sbuf1a_1_0_400_rd1_params0 = vector_transpose_1_0_417_->read_params(VectorTranspose::kInput);
    SN_ASSERT(sbuf1a_1_0_400_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of vector_transpose_1_0_417");
    sbuf1a_1_0_400_rd1_params0.metapipe_iter_count = 1;
    sbuf1a_1_0_400_->configure_rd_head_1(sbuf1a_1_0_400_rd1_params0, {1});
    sbuf1a_1_0_400_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    vector_transpose_1_0_417_->set_source_context("conv.py:298:0");
    vector_transpose_1_0_417_->set_op_name("tlir.VectorTranspose");
    vector_transpose_1_0_417_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    permute_view_1_0_415_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    permute_view_1_0_415_->set_op_name("tlir.PermuteView");
    permute_view_1_0_415_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    realign_1_0_418_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    realign_1_0_418_->set_op_name("tlir.Realign");
    realign_1_0_418_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    realign_1_0_419_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    realign_1_0_419_->set_op_name("tlir.Realign");
    realign_1_0_419_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    permute_1_0_416_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    permute_1_0_416_->set_op_name("tlir.Permute");
    permute_1_0_416_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    transpose_1_0_420_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_reshape:0:0");
    transpose_1_0_420_->set_op_name("tlir.Transpose");
    transpose_1_0_420_->configure_node();
    
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->set_source_context("ptconvlstm__conv_layer__conv2d_weight_permute:0:0");
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->set_op_name("tlir.Permute");
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ptconvlstm__conv_layer__reshape_1_bwd_->set_source_context("conv.py:298:0");
    ptconvlstm__conv_layer__reshape_1_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__reshape_1_bwd_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_401_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_401_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__reshape_1_bwd");
    gbuf1a_1_0_401_wr_params.metapipe_iter_count = 1;
    gbuf1a_1_0_401_->configure_wr(gbuf1a_1_0_401_wr_params);
    PmuSetupRead gbuf1a_1_0_401_rd1_params1 = {};
    gbuf1a_1_0_401_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_401_rd1_params1.backing_pmu_removes_alignment = true;
    gbuf1a_1_0_401_rd1_params1.metapipe_iter_count = 1;
    gbuf1a_1_0_401_->configure_rd_head_1(gbuf1a_1_0_401_rd1_params1, {1});
    gbuf1a_1_0_401_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // logreg_ts.py:194:0: tlir.Index
    ptconvlstm__lambda_layer__indexselect_recompute__->set_source_context("logreg_ts.py:194:0");
    ptconvlstm__lambda_layer__indexselect_recompute__->set_op_name("tlir.Index");
    ptconvlstm__lambda_layer__indexselect_recompute__->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1071:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_358_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_358_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__reshape_recompute_");
    gbuf2u_1_0_358_wr_params.buffer_overlapped_split = true; 
    gbuf2u_1_0_358_wr_params.buffer_overlapped_split_base = 0;
    gbuf2u_1_0_358_wr_params.buffer_overlapped_split_bound = 4;
    gbuf2u_1_0_358_wr_params.buffer_overlapped_split_stride = 5;
    gbuf2u_1_0_358_wr_params.buffer_overlapped_split_parts = 3;
    gbuf2u_1_0_358_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_358_->configure_wr(gbuf2u_1_0_358_wr_params);
    PmuSetupRead gbuf2u_1_0_358_rd1_params0 = {};
    gbuf2u_1_0_358_rd1_params0.buffer_gather_list = true;
    gbuf2u_1_0_358_rd1_params0.buffer_overflow = false;
    gbuf2u_1_0_358_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_1_0_358_rd1_params0.buffer_gather_max = {320, 3, 1};
    gbuf2u_1_0_358_rd1_params0.buffer_gather_stride = {64, 1, 1};
    gbuf2u_1_0_358_rd1_params0.buffer_gather_mult = {1, 0, 0};
    auto sbuf2u_1_0_361_scatter_control = sbuf2u_1_0_361_->get_pacing_control();
    gbuf2u_1_0_358_rd1_params0.buffer_pace_order  = sbuf2u_1_0_361_scatter_control.enable;
    gbuf2u_1_0_358_rd1_params0.buffer_pace_order_credits = sbuf2u_1_0_361_scatter_control.credits;
    gbuf2u_1_0_358_rd1_params0.buffer_pace_order_vectors = sbuf2u_1_0_361_scatter_control.vectors;
    gbuf2u_1_0_358_rd1_params0.buffer_pace_read_ceiling = sbuf2u_1_0_361_scatter_control.ceiling;
    gbuf2u_1_0_358_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_358_->configure_rd_head_1(gbuf2u_1_0_358_rd1_params0, {2, 2});
    gbuf2u_1_0_358_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_149_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_149_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv2d_bwd_accum_buffer");
    gbuf2u_1_0_149_wr_params.metapipe_iter_count = 1;
    gbuf2u_1_0_149_->configure_wr(gbuf2u_1_0_149_wr_params);
    PmuSetupRead gbuf2u_1_0_149_rd1_params0 = {};
    gbuf2u_1_0_149_rd1_params0.buffer_gather_list = true;
    gbuf2u_1_0_149_rd1_params0.buffer_overflow = false;
    gbuf2u_1_0_149_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_1_0_149_rd1_params0.buffer_gather_max = {1, 13, 256, 3};
    gbuf2u_1_0_149_rd1_params0.buffer_gather_stride = {1, 1, 1, 1};
    gbuf2u_1_0_149_rd1_params0.buffer_gather_mult = {0, 0, 64, 0};
    auto sbuf1a_1_0_400_scatter_control = sbuf1a_1_0_400_->get_pacing_control();
    gbuf2u_1_0_149_rd1_params0.buffer_pace_order  = sbuf1a_1_0_400_scatter_control.enable;
    gbuf2u_1_0_149_rd1_params0.buffer_pace_order_credits = sbuf1a_1_0_400_scatter_control.credits;
    gbuf2u_1_0_149_rd1_params0.buffer_pace_order_vectors = sbuf1a_1_0_400_scatter_control.vectors;
    gbuf2u_1_0_149_rd1_params0.buffer_pace_read_ceiling = sbuf1a_1_0_400_scatter_control.ceiling;
    gbuf2u_1_0_149_rd1_params0.metapipe_iter_count = 1;
    gbuf2u_1_0_149_->configure_rd_head_1(gbuf2u_1_0_149_rd1_params0, {1});
    gbuf2u_1_0_149_->configure_node();
    
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:418:0: tlir.Buffer
    lbuf1a_1_0_397_->set_data_buffer(gbuf2u_1_0_358_, 1);
    lbuf1a_1_0_397_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    lbuf1a_1_0_399_->set_data_buffer(gbuf2u_1_0_149_, 1);
    lbuf1a_1_0_399_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    // logreg_ts.py:229:0: tlir.Buffer
    // logreg_ts.py:229:0: tlir.Reshape
    // logreg_ts.py:223:0: tlir.Buffer
    // logreg_ts.py:223:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    // logreg_ts.py:222:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Index
    std::unordered_map<int64_t, std::vector<RAILConnectInterface>>ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map = {};
    ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kLutRd, std::vector<RAILConnectInterface> {tbuf2u_1_0_245_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kLutRd),TBufferContext::Output::kDataOutput)}));
    ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kIndexRd, std::vector<RAILConnectInterface> {tbuf1u_1_0_246_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kIndexRd),TBufferContext::Output::kDataOutput)}));
    if (ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_1_0_250_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_1_0_250_->get_rail_connect_interface(ptconvlstm__lambda_layer__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    ptconvlstm__lambda_layer__indexselect_recompute__->rail_custom_connect(ptconvlstm__lambda_layer__indexselect_recompute__rail_connect_interface_map);
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1019:0: tlir.StreamingPermute
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1071:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:418:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:418:0: tlir.Gather
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:468:0: tlir.Buffer
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1109:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.BiasTransposeGrad
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1117:0: tlir.Reshape
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Gather
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_245_, tbuf2u_1_0_250_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_1_0_245_->ctrl_input_ops(ptconvlstm__lambda_layer__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_245_, tbuf2u_1_0_250_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_1_0_245_->ctrl_input_ops(ptconvlstm__lambda_layer__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn1));
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_1_0_)), "RAIL compilation failed for section 1!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_1_0_, 0)), "RAIL global compile failed for section 1!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_218_->finalize();
    ptconvlstm__view_bwd_->finalize();
    gbuf2u_1_0_221_->finalize();
    ptconvlstm__reshape_1_recompute__->finalize();
    gbuf2u_1_0_224_->finalize();
    ptconvlstm__criterion__mseloss_bwd_sub_->finalize();
    scale_1_0_331_->finalize();
    scale_1_0_332_->finalize();
    gbuf2u_1_0_229_->finalize();
    ptconvlstm__reshape_bwd_->finalize();
    layout_cast_1_0_429_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->finalize();
    gbuf2u_1_0_236_->finalize();
    gbuf1a_1_0_394_->finalize();
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->finalize();
    gbuf2u_1_0_239_->finalize();
    gbuf2u_1_0_240_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->finalize();
    gbuf2u_1_0_242_->finalize();
    ptconvlstm__conv_layer__reshape_2_bwd_->finalize();
    tbuf2u_1_0_245_->finalize();
    tbuf1u_1_0_246_->finalize();
    ptconvlstm__lambda_layer__indexselect_recompute__->finalize();
    tbuf2u_1_0_250_->finalize();
    ptconvlstm__conv_layer__reshape_recompute__->finalize();
    gbuf2a_1_0_433_->finalize();
    streaming_transpose_1_0_357_->finalize();
    gbuf2u_1_0_358_->finalize();
    lbuf1a_1_0_397_->finalize();
    sbuf2u_1_0_361_->finalize();
    split_kernel_gbuf_1_0_362_->finalize();
    biggemm_1_0_363_->finalize();
    biggemm_1_0_364_->finalize();
    biggemm_1_0_365_->finalize();
    biggemm_1_0_366_->finalize();
    gbuf2u_1_0_368_->finalize();
    bias_transpose_grad_1_0_370_->finalize();
    gbuf2a_1_0_398_->finalize();
    reshape_1_0_371_->finalize();
    layout_cast_1_0_372_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->finalize();
    ptconvlstm__conv_layer__conv2d_bwd_accum_->finalize();
    ptconvlstm__conv_layer__conv2d_bwd_accum_1_->finalize();
    gbuf2u_1_0_149_->finalize();
    lbuf1a_1_0_399_->finalize();
    sbuf1a_1_0_400_->finalize();
    vector_transpose_1_0_417_->finalize();
    permute_view_1_0_415_->finalize();
    realign_1_0_418_->finalize();
    ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_->finalize();
    realign_1_0_419_->finalize();
    permute_1_0_416_->finalize();
    transpose_1_0_420_->finalize();
    ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->finalize();
    ptconvlstm__conv_layer__reshape_1_bwd_->finalize();
    gbuf1a_1_0_401_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__conv_layer__conv2d_bwd_accum_->output_list(ParAccum::Output::kOut)), gbuf2u_1_0_149_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutable.AccumBuffer
    // logreg_ts.py:229:0: tlir.Buffer
    // logreg_ts.py:229:0: tlir.Reshape
    // logreg_ts.py:223:0: tlir.Buffer
    // logreg_ts.py:223:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_221_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_224_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    connect_by_interface(ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Output::kOut, false), scale_1_0_331_->get_connect_interface(Scale::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    connect_by_interface(scale_1_0_331_->get_connect_interface(Scale::Output::kA_SCALED, false), scale_1_0_332_->get_connect_interface(Scale::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    connect_by_interface(scale_1_0_332_->get_connect_interface(Scale::Output::kA_SCALED, false), gbuf2u_1_0_229_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_ts.py:222:0: tlir.Buffer
    // logreg_ts.py:222:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_229_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    connect_by_interface(gbuf2u_1_0_218_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(1, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    connect_by_interface(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_236_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_240_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks = {};
    for (auto sink : ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->input_list(BigGemm::kB)) {
        ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas = {};
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas.push_back(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->get_connect_schema());
    connect_with_schema(gbuf2u_1_0_236_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks, std::move(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas));
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_394_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_m_to_n(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_242_->input_list(gbuf2u_1_0_242_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_schema_sinks = {};
    for (auto sink : ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__dense_layer__linear_bwd_weight_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_connect_schemas = {};
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_connect_schemas.push_back(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_schema());
    connect_with_schema(gbuf2u_1_0_239_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_schema_sinks, std::move(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_240_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2u_1_0_240_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__dense_layer__linear_bwd_weight_accum_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_242_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_1_0_433_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Buffer
    // logreg_ts.py:194:0: tlir.Index
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(tbuf2u_1_0_250_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf2u_1_0_358_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_433_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), streaming_transpose_1_0_357_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    connect_by_interface(gbuf2a_1_0_433_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_transpose_grad_1_0_370_->get_connect_interface(BiasTransposeGrad::kLoss_Input, true));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1019:0: tlir.StreamingPermute
    connect_by_interface(streaming_transpose_1_0_357_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), split_kernel_gbuf_1_0_362_->get_connect_interface(KernelGBuffer::Input::kTailBuffer, true));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1071:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_358_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf2u_1_0_361_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:418:0: tlir.Buffer
    connect_1_to_n(lbuf1a_1_0_397_->output(ListBuffer::kGatherAddress), gbuf2u_1_0_358_->input_list(GBuffer::get_read_scalar_input(1)));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:418:0: tlir.Gather
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:468:0: tlir.Buffer
    connect_by_interface(sbuf2u_1_0_361_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_363_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_361_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_364_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_361_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_365_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_361_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_366_->get_connect_interface(BigGemm::kA, true));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    std::vector<DataSink *> biggemm_1_0_363_schema_sinks = {};
    for (auto sink : biggemm_1_0_363_->input_list(BigGemm::kB)) {
        biggemm_1_0_363_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_363_connect_schemas = {};
    biggemm_1_0_363_connect_schemas.push_back(biggemm_1_0_363_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_362_->output_list(GBuffer::get_head_output(1, 0)), biggemm_1_0_363_schema_sinks, std::move(biggemm_1_0_363_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_364_schema_sinks = {};
    for (auto sink : biggemm_1_0_364_->input_list(BigGemm::kB)) {
        biggemm_1_0_364_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_364_connect_schemas = {};
    biggemm_1_0_364_connect_schemas.push_back(biggemm_1_0_364_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_362_->output_list(GBuffer::get_head_output(1, 1)), biggemm_1_0_364_schema_sinks, std::move(biggemm_1_0_364_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_365_schema_sinks = {};
    for (auto sink : biggemm_1_0_365_->input_list(BigGemm::kB)) {
        biggemm_1_0_365_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_365_connect_schemas = {};
    biggemm_1_0_365_connect_schemas.push_back(biggemm_1_0_365_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_362_->output_list(GBuffer::get_head_output(1, 2)), biggemm_1_0_365_schema_sinks, std::move(biggemm_1_0_365_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_366_schema_sinks = {};
    for (auto sink : biggemm_1_0_366_->input_list(BigGemm::kB)) {
        biggemm_1_0_366_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_366_connect_schemas = {};
    biggemm_1_0_366_connect_schemas.push_back(biggemm_1_0_366_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_362_->output_list(GBuffer::get_head_output(1, 3)), biggemm_1_0_366_schema_sinks, std::move(biggemm_1_0_366_connect_schemas));
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_363_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_363_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_368_->input_list(gbuf2u_1_0_368_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_364_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_364_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_368_->input_list(gbuf2u_1_0_368_->get_tail_input(1, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_365_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_365_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_368_->input_list(gbuf2u_1_0_368_->get_tail_input(2, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_366_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_366_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_368_->input_list(gbuf2u_1_0_368_->get_tail_input(3, p)));
        }
    } // End partitioned data connection
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:100:0: tlir.ConcatView
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_368_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvlstm__conv_layer__conv2d_bwd_accum_->input_list(ptconvlstm__conv_layer__conv2d_bwd_accum_->get_node_input(0))));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1109:0: tlir.ConcatView
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.BiasTransposeGrad
    connect_by_interface(bias_transpose_grad_1_0_370_->get_connect_interface(BiasTransposeGrad::kGrad, false), gbuf2a_1_0_398_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.Buffer
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1117:0: tlir.Reshape
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.LayoutCast
    connect_by_interface(gbuf2a_1_0_398_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__conv_layer__conv2d_bwd_accum_1_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_149_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf1a_1_0_400_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_1_to_n(lbuf1a_1_0_399_->output(ListBuffer::kGatherAddress), gbuf2u_1_0_149_->input_list(GBuffer::get_read_scalar_input(1)));
    connect_1_to_n(lbuf1a_1_0_399_->output(ListBuffer::kGatherLengthOutput), sbuf1a_1_0_400_->input_list(ScatterBuffer::kGatherLengthInput));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Gather
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    connect_by_interface(sbuf1a_1_0_400_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), vector_transpose_1_0_417_->get_connect_interface(VectorTranspose::kInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    connect_by_interface(vector_transpose_1_0_417_->get_connect_interface(VectorTranspose::kOutput, false), realign_1_0_418_->get_connect_interface(Realign::kInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    connect_by_interface(realign_1_0_418_->get_connect_interface(Realign::kOutput, false), realign_1_0_419_->get_connect_interface(Realign::kInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    connect_by_interface(realign_1_0_419_->get_connect_interface(Realign::kOutput, false), permute_1_0_416_->get_connect_interface(TBufferPermute::kDefaultInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    connect_by_interface(permute_1_0_416_->get_connect_interface(TBufferPermute::kDefaultOutput, false), transpose_1_0_420_->get_connect_interface(Transpose::kDefaultInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    connect_by_interface(transpose_1_0_420_->get_connect_interface(Transpose::kDefaultOutput, false), ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->get_connect_interface(TBufferPermute::kDefaultInput, true));
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    connect_by_interface(ptconvlstm__conv_layer__conv2d_weight_permute_bwd_->get_connect_interface(TBufferPermute::kDefaultOutput, false), gbuf1a_1_0_401_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_218_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_218_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_240_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_218_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_218_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_240_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_218_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_1_0_221_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_229_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_221_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_229_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_221_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_224_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_229_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_224_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_229_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_224_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_229_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_229_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_240_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_229_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_229_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_240_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_229_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_1_0_236_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_242_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_236_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_242_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_236_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_242_->ctrl_output(gbuf2u_1_0_242_->get_pacing_wr_done(0, p)), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_242_->ctrl_output(gbuf2u_1_0_242_->get_fronting_rd_done(0, p)), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_1_0_239_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_accum_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2u_1_0_239_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2u_1_0_239_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_240_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2u_1_0_240_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2u_1_0_240_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2u_1_0_242_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_433_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_242_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_433_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_242_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    tbuf2u_1_0_245_->set_arc_stage_buffer();
    tbuf2u_1_0_250_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_358_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_1_0_250_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_358_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_1_0_250_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn1));
    gbuf2a_1_0_433_->set_arc_stage_buffer();
    connect_ctl_1_to_n(split_kernel_gbuf_1_0_362_->ctrl_output(KernelGBuffer::Output::kTailWrDone), gbuf2a_1_0_433_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(split_kernel_gbuf_1_0_362_->ctrl_output(KernelGBuffer::Output::kTailRdDone), gbuf2a_1_0_433_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_398_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_433_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_398_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_433_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_358_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_358_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_358_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(sbuf2u_1_0_361_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_1_0_358_->ctrl_input_list(gbuf2u_1_0_358_->get_pacing_order_enable(1)));
    sbuf2u_1_0_361_->set_arc_stage_buffer();
    auto sbuf2u_1_0_361_pacing_order_barrier1 = plasma_->create_barrier({biggemm_1_0_363_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_364_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_365_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_366_->ctrl_output(BigGemm::kRdDoneA)});
    connect_ctl_1_to_n(sbuf2u_1_0_361_pacing_order_barrier1, sbuf2u_1_0_361_->ctrl_input_list(sbuf2u_1_0_361_->get_pacing_order_enable(1)));
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_363_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_pacing_wr_done(0, p)), biggemm_1_0_363_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_363_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_fronting_rd_done(0, p)), biggemm_1_0_363_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_363_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_364_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_pacing_wr_done(1, p)), biggemm_1_0_364_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_364_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_fronting_rd_done(1, p)), biggemm_1_0_364_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_364_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_365_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_pacing_wr_done(2, p)), biggemm_1_0_365_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_365_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_fronting_rd_done(2, p)), biggemm_1_0_365_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_365_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_366_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_pacing_wr_done(3, p)), biggemm_1_0_366_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_366_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_368_->ctrl_output(gbuf2u_1_0_368_->get_fronting_rd_done(3, p)), biggemm_1_0_366_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_366_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf2u_1_0_368_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__conv_layer__conv2d_bwd_accum_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2u_1_0_368_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_398_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__conv_layer__conv2d_bwd_accum_1_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf2a_1_0_398_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(sbuf1a_1_0_400_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_1_0_149_->ctrl_input_list(gbuf2u_1_0_149_->get_pacing_order_enable(1)));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127, scale_1_0_332_->input_list(Scale::Input::kB));
    add_node_input(kinp_window_slice_1_1_0_140, tbuf1u_1_0_246_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    add_node_input(kptconvlstm__view__outputs__0__grad_1_0_261, gbuf2u_1_0_218_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kout_window_1_0_262, gbuf2u_1_0_221_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263, gbuf2u_1_0_224_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__dense_layer__weight_1_0_336, gbuf1a_1_0_394_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264, gbuf2u_1_0_239_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_1_0_265, tbuf2u_1_0_245_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor, ptconvlstm__dense_layer__linear_bwd_weight_accum_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor1, ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvlstm__conv_layer__conv2d_bwd_tensor, ptconvlstm__conv_layer__conv2d_bwd_accum_1_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvlstm__conv_layer__reshape_1_bwd_tensor, gbuf1a_1_0_401_->output_list(GBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_218_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__view_bwd_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_221_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__reshape_1_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_224_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__criterion__mseloss_bwd_sub_->set_placement_hint({0, 1, 1, 0});
    scale_1_0_331_->set_placement_hint({0, 1, 1, 0});
    scale_1_0_332_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_229_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__reshape_bwd_->set_placement_hint({0, 1, 1, 0});
    layout_cast_1_0_429_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_236_->set_placement_hint({0, 1, 1, 0});
    gbuf1a_1_0_394_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_242_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__conv_layer__reshape_2_bwd_->set_placement_hint({0, 1, 1, 0});
    tbuf2u_1_0_245_->set_placement_hint({0, 1, 1, 0});
    tbuf1u_1_0_246_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__lambda_layer__indexselect_recompute__->set_placement_hint({0, 1, 1, 0});
    tbuf2u_1_0_250_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__conv_layer__reshape_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2a_1_0_433_->set_placement_hint({0, 1, 1, 0});
    streaming_transpose_1_0_357_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_358_->set_placement_hint({0, 1, 1, 0});
    lbuf1a_1_0_397_->set_placement_hint({0, 1, 1, 0});
    sbuf2u_1_0_361_->set_placement_hint({0, 1, 1, 0});
    split_kernel_gbuf_1_0_362_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_363_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_364_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_365_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_366_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_368_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__conv_layer__conv2d_bwd_accum_->set_placement_hint({0, 1, 1, 0});
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2u_1_0_224_->set_linear_grad_a_input_hint(1);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_linear_grad_a_input_hint(1);
    scale_1_0_331_->set_linear_grad_a_input_hint(1);
    scale_1_0_332_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_229_->set_linear_grad_a_input_hint(1);
    ptconvlstm__reshape_bwd_->set_linear_grad_a_input_hint(1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_239_->set_linear_grad_b_input_hint(1);
    gbuf2u_1_0_240_->set_linear_grad_a_input_hint(1);
    
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
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_source_context("ptconvlstm__dense_layer__weight:0:0");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->configure_node();
    
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_source_context("ptconvlstm__dense_layer__bias:0:0");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->configure_node();
    
    // ptconvlstm__conv_layer__bias:0:0: tlir.SGD
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->set_source_context("ptconvlstm__conv_layer__bias:0:0");
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->configure_node();
    
    // ptconvlstm__conv_layer__weight:0:0: tlir.SGD
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->set_source_context("ptconvlstm__conv_layer__weight:0:0");
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    // ptconvlstm__conv_layer__bias:0:0: tlir.SGD
    // ptconvlstm__conv_layer__weight:0:0: tlir.SGD
    
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
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->finalize();
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->finalize();
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->finalize();
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    // ptconvlstm__conv_layer__bias:0:0: tlir.SGD
    // ptconvlstm__conv_layer__weight:0:0: tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input ptconvlstm__dense_layer__weight_2_0_159 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight__grad_2_0_160 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_2_0_165 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias__grad_2_0_166 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167 uses a weight buffer
    // Input ptconvlstm__conv_layer__bias_2_0_171 uses a weight buffer
    // Input ptconvlstm__conv_layer__bias__grad_2_0_172 uses a weight buffer
    // Input ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173 uses a weight buffer
    // Input ptconvlstm__conv_layer__weight_2_0_177 uses a weight buffer
    // Input ptconvlstm__conv_layer__weight__grad_2_0_178 uses a weight buffer
    // Input ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Outputptconvlstm__dense_layer__weight_2_0_163 uses a weight buffer
    // Outputptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 uses a weight buffer
    // Outputptconvlstm__dense_layer__bias_2_0_169 uses a weight buffer
    // Outputptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 uses a weight buffer
    // Outputptconvlstm__conv_layer__bias_2_0_175 uses a weight buffer
    // Outputptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176 uses a weight buffer
    // Outputptconvlstm__conv_layer__weight_2_0_181 uses a weight buffer
    // Outputptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182 uses a weight buffer
    
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
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_lr_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_decay_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_argins_strnd_seed_enable_info);
    
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
        case kgbuf1a_0_0_387: return gbuf1a_0_0_387_;
        case kgbuf2a_0_0_427: return gbuf2a_0_0_427_;
        case ktbuf2u_0_0_189: return tbuf2u_0_0_189_;
        case ktbuf1u_0_0_190: return tbuf1u_0_0_190_;
        case ktbuf2u_0_0_194: return tbuf2u_0_0_194_;
        case kgbuf2u_0_0_196: return gbuf2u_0_0_196_;
        case klbuf1a_0_0_388: return lbuf1a_0_0_388_;
        case ksbuf2u_0_0_287: return sbuf2u_0_0_287_;
        case kbiggemm_0_0_289: return biggemm_0_0_289_;
        case kbiggemm_0_0_290: return biggemm_0_0_290_;
        case kbiggemm_0_0_291: return biggemm_0_0_291_;
        case kbiggemm_0_0_292: return biggemm_0_0_292_;
        case kbiggemm_0_0_293: return biggemm_0_0_293_;
        case kbiggemm_0_0_294: return biggemm_0_0_294_;
        case kbiggemm_0_0_295: return biggemm_0_0_295_;
        case kbiggemm_0_0_296: return biggemm_0_0_296_;
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
        case kgbuf2u_0_0_313: return gbuf2u_0_0_313_;
        case kgbuf2u_0_0_198: return gbuf2u_0_0_198_;
        case kgbuf2u_0_0_200: return gbuf2u_0_0_200_;
        case kptconvlstm__dense_layer__linear: return ptconvlstm__dense_layer__linear_;
        case kgbuf1a_0_0_385: return gbuf1a_0_0_385_;
        case kgbuf2u_0_0_202: return gbuf2u_0_0_202_;
        case kgbuf2a_0_0_430: return gbuf2a_0_0_430_;
        case kgbuf2a_0_0_389: return gbuf2a_0_0_389_;
        case kgbuf2a_0_0_431: return gbuf2a_0_0_431_;
        case kgbuf2a_0_0_391: return gbuf2a_0_0_391_;
        case kgbuf2a_0_0_422: return gbuf2a_0_0_422_;
        case kgbuf1a_0_0_421: return gbuf1a_0_0_421_;
        case kgbuf1a_0_0_392: return gbuf1a_0_0_392_;
        case kgbuf1a_0_0_432: return gbuf1a_0_0_432_;
        case kgbuf1a_0_0_393: return gbuf1a_0_0_393_;
        case kgbuf2u_1_0_218: return gbuf2u_1_0_218_;
        case kgbuf2u_1_0_221: return gbuf2u_1_0_221_;
        case kgbuf2u_1_0_224: return gbuf2u_1_0_224_;
        case kgbuf2u_1_0_229: return gbuf2u_1_0_229_;
        case kgbuf2u_1_0_236: return gbuf2u_1_0_236_;
        case kgbuf1a_1_0_394: return gbuf1a_1_0_394_;
        case kptconvlstm__dense_layer__linear_bwd_loss_grad_b: return ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
        case kgbuf2u_1_0_239: return gbuf2u_1_0_239_;
        case kgbuf2u_1_0_240: return gbuf2u_1_0_240_;
        case kgbuf2u_1_0_242: return gbuf2u_1_0_242_;
        case ktbuf2u_1_0_245: return tbuf2u_1_0_245_;
        case ktbuf1u_1_0_246: return tbuf1u_1_0_246_;
        case ktbuf2u_1_0_250: return tbuf2u_1_0_250_;
        case kgbuf2a_1_0_433: return gbuf2a_1_0_433_;
        case kgbuf2u_1_0_358: return gbuf2u_1_0_358_;
        case klbuf1a_1_0_397: return lbuf1a_1_0_397_;
        case ksbuf2u_1_0_361: return sbuf2u_1_0_361_;
        case kbiggemm_1_0_363: return biggemm_1_0_363_;
        case kbiggemm_1_0_364: return biggemm_1_0_364_;
        case kbiggemm_1_0_365: return biggemm_1_0_365_;
        case kbiggemm_1_0_366: return biggemm_1_0_366_;
        case kgbuf2u_1_0_368: return gbuf2u_1_0_368_;
        case kgbuf2a_1_0_398: return gbuf2a_1_0_398_;
        case kptconvlstm__dense_layer__linear_bwd_weight_accum: return ptconvlstm__dense_layer__linear_bwd_weight_accum_;
        case kptconvlstm__dense_layer__linear_bwd_weight_accum_1: return ptconvlstm__dense_layer__linear_bwd_weight_accum_1_;
        case kptconvlstm__conv_layer__conv2d_bwd_accum: return ptconvlstm__conv_layer__conv2d_bwd_accum_;
        case kptconvlstm__conv_layer__conv2d_bwd_accum_1: return ptconvlstm__conv_layer__conv2d_bwd_accum_1_;
        case kgbuf2u_1_0_149: return gbuf2u_1_0_149_;
        case klbuf1a_1_0_399: return lbuf1a_1_0_399_;
        case ksbuf1a_1_0_400: return sbuf1a_1_0_400_;
        case kgbuf1a_1_0_401: return gbuf1a_1_0_401_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism
