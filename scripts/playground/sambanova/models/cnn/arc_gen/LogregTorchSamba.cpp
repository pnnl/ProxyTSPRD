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
    
    partition_0_0_->set_section_latency(5.686609e-05);
    NBuffer::Params nbuf1a_0_0_382_params;
    nbuf1a_0_0_382_params.head_1_depth = 1;
    nbuf1a_0_0_382_params.layout = params_.ptconvlstm__conv_layer__weight_0_0_87.at_address(0);
    nbuf1a_0_0_382_params.load_from_dram = true;
    nbuf1a_0_0_382_ = create_node<NBuffer>("nbuf1a_0_0_382", partition_0_0_, plasma_, nbuf1a_0_0_382_params);
    nbuf1a_0_0_382_->set_mac_id("");
    nbuf1a_0_0_382_->set_mac_latency(-1.000000e+00);
    
    NBuffer::Params nbuf2u_0_0_173_params;
    nbuf2u_0_0_173_params.head1_ctrl_flow_enable = true;
    nbuf2u_0_0_173_params.head_1_depth = 2;
    nbuf2u_0_0_173_params.layout = params_.inp_window_0_0_262.at_address(0);
    nbuf2u_0_0_173_params.load_from_dram = true;
    nbuf2u_0_0_173_params.num_head1_rd_en = 2;
    nbuf2u_0_0_173_ = create_node<NBuffer>("nbuf2u_0_0_173", partition_0_0_, plasma_, nbuf2u_0_0_173_params);
    nbuf2u_0_0_173_->set_mac_id("");
    nbuf2u_0_0_173_->set_mac_latency(-1.000000e+00);
    
    NBuffer::Params nbuf1u_0_0_174_params;
    nbuf1u_0_0_174_params.head1_ctrl_flow_enable = true;
    nbuf1u_0_0_174_params.head_1_depth = 1;
    nbuf1u_0_0_174_params.layout = params_.inp_window_slice_1_0_0_83.at_address(0);
    nbuf1u_0_0_174_params.load_from_dram = true;
    nbuf1u_0_0_174_params.num_head1_rd_en = 2;
    nbuf1u_0_0_174_ = create_node<NBuffer>("nbuf1u_0_0_174", partition_0_0_, plasma_, nbuf1u_0_0_174_params);
    nbuf1u_0_0_174_->set_mac_id("");
    nbuf1u_0_0_174_->set_mac_latency(-1.000000e+00);
    
    Index::Params ptconvlstm__lambda_layer__indexselect_params;
    ptconvlstm__lambda_layer__indexselect_params.frontingpmu_load = false;
    ptconvlstm__lambda_layer__indexselect_params.index_along_dim = 0;
    ptconvlstm__lambda_layer__indexselect_params.index_tensor_layout = nbuf1u_0_0_174_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lambda_layer__indexselect_params.lkup_tensor_layout = nbuf2u_0_0_173_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lambda_layer__indexselect_params.microbatch = 1;
    ptconvlstm__lambda_layer__indexselect_params.perf_mode = true;
    ptconvlstm__lambda_layer__indexselect_params.read_zeros_outside_range = true;
    ptconvlstm__lambda_layer__indexselect_ = create_node<Index>("ptconvlstm__lambda_layer__indexselect", partition_0_0_, plasma_, ptconvlstm__lambda_layer__indexselect_params);
    ptconvlstm__lambda_layer__indexselect_->set_mac_id("ptconvlstm__lambda_layer__indexselect");
    ptconvlstm__lambda_layer__indexselect_->set_mac_latency(1.100000e+01);
    
    GBuffer::Params gbuf2u_0_0_176_params;
    gbuf2u_0_0_176_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_176_params.head1_linear = true;
    gbuf2u_0_0_176_params.head1_streaming_window = true;
    gbuf2u_0_0_176_params.head_1_depth = 2;
    gbuf2u_0_0_176_params.layout = ptconvlstm__lambda_layer__indexselect_->result_layout().at_address(0);
    gbuf2u_0_0_176_params.num_head1_rd_en = 2;
    gbuf2u_0_0_176_params.num_iterations = 1;
    gbuf2u_0_0_176_ = create_node<GBuffer>("gbuf2u_0_0_176", partition_0_0_, plasma_, gbuf2u_0_0_176_params);
    gbuf2u_0_0_176_->set_mac_id("");
    gbuf2u_0_0_176_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params ptconvlstm__permute_params;
    ptconvlstm__permute_params.input_layout = gbuf2u_0_0_176_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__permute_params.permute = {1, 0};
    ptconvlstm__permute_ = create_node<PermuteView>("ptconvlstm__permute", partition_0_0_, plasma_, ptconvlstm__permute_params);
    ptconvlstm__permute_->set_mac_id("ptconvlstm__permute");
    ptconvlstm__permute_->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2u_0_0_178_params;
    gbuf2u_0_0_178_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_178_params.head1_linear = true;
    gbuf2u_0_0_178_params.head1_streaming_window = true;
    gbuf2u_0_0_178_params.head_1_depth = 2;
    gbuf2u_0_0_178_params.layout = ptconvlstm__permute_->result_layout();
    gbuf2u_0_0_178_params.num_head1_rd_en = 2;
    gbuf2u_0_0_178_params.num_iterations = 1;
    gbuf2u_0_0_178_ = create_node<GBuffer>("gbuf2u_0_0_178", partition_0_0_, plasma_, gbuf2u_0_0_178_params);
    gbuf2u_0_0_178_->set_mac_id("");
    gbuf2u_0_0_178_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_params;
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_params.input_layout = gbuf2u_0_0_178_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_params.reshape = {136, 3, 1};
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_ = create_node<ReshapeView>("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape", partition_0_0_, plasma_, ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_params);
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->set_mac_id("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape");
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2u_0_0_180_params;
    gbuf2u_0_0_180_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_180_params.head1_linear = false;
    gbuf2u_0_0_180_params.head1_streaming_window = true;
    gbuf2u_0_0_180_params.head_1_depth = 2;
    gbuf2u_0_0_180_params.layout = ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->result_layout();
    gbuf2u_0_0_180_params.num_head1_rd_en = 2;
    gbuf2u_0_0_180_params.num_iterations = 1;
    gbuf2u_0_0_180_ = create_node<GBuffer>("gbuf2u_0_0_180", partition_0_0_, plasma_, gbuf2u_0_0_180_params);
    gbuf2u_0_0_180_->set_mac_id("");
    gbuf2u_0_0_180_->set_mac_latency(-1.000000e+00);
    
    ListBuffer::Params lbuf1a_0_0_383_params;
    lbuf1a_0_0_383_params.allow_oob = false;
    lbuf1a_0_0_383_params.allow_overflow = false;
    lbuf1a_0_0_383_params.base_list_tile_counters = 0;
    lbuf1a_0_0_383_params.base_max = {1, 96, 5, 32};
    lbuf1a_0_0_383_params.base_mult = {0, 0, 64, 0};
    lbuf1a_0_0_383_params.base_stride = {1, 32, 1, 1};
    lbuf1a_0_0_383_params.batch_size = 1;
    lbuf1a_0_0_383_params.channels = 136;
    lbuf1a_0_0_383_params.depth2col = true;
    lbuf1a_0_0_383_params.enable_fronting_pmu = true;
    lbuf1a_0_0_383_params.filter_area = 3;
    lbuf1a_0_0_383_params.head1_linear = false;
    lbuf1a_0_0_383_params.head_1_depth = 1;
    lbuf1a_0_0_383_params.layout = params_.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374;
    lbuf1a_0_0_383_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    lbuf1a_0_0_383_params.length_fixed = 32;
    lbuf1a_0_0_383_params.list_length = 96;
    lbuf1a_0_0_383_params.list_tiles = 1;
    lbuf1a_0_0_383_params.list_type = ListBuffer::kElement;
    lbuf1a_0_0_383_params.loaded_by_broadcast = false;
    lbuf1a_0_0_383_params.num_iterations = 1;
    lbuf1a_0_0_383_params.offset_list_tile_counters = 0;
    lbuf1a_0_0_383_params.offset_max = {1, 96, 5, 32};
    lbuf1a_0_0_383_params.offset_mult = {0, 1, 0, 1};
    lbuf1a_0_0_383_params.offset_stride = {1, 32, 1, 1};
    lbuf1a_0_0_383_params.permute = true;
    lbuf1a_0_0_383_params.use_tile_counter = false;
    lbuf1a_0_0_383_ = create_node<ListBuffer>("lbuf1a_0_0_383", partition_0_0_, plasma_, lbuf1a_0_0_383_params);
    lbuf1a_0_0_383_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    lbuf1a_0_0_383_->set_mac_latency(-1.000000e+00);
    
    ScatterBuffer::Params sbuf2u_0_0_289_params;
    sbuf2u_0_0_289_params.element = true;
    sbuf2u_0_0_289_params.head1_linear = true;
    sbuf2u_0_0_289_params.head_1_depth = 2;
    sbuf2u_0_0_289_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 408}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf2u_0_0_289_params.length_fixed = 32;
    sbuf2u_0_0_289_params.num_iterations = 1;
    sbuf2u_0_0_289_params.pace_shape = {32, 408};
    sbuf2u_0_0_289_params.paced = true;
    sbuf2u_0_0_289_params.read_group_packed_vectors = 480;
    sbuf2u_0_0_289_params.streaming = true;
    sbuf2u_0_0_289_params.streaming_transpose_shape = {136, 96};
    sbuf2u_0_0_289_params.write_group_unpacked_vectors = 480;
    sbuf2u_0_0_289_params.write_total_unpacked_vectors = 480;
    sbuf2u_0_0_289_ = create_node<ScatterBuffer>("sbuf2u_0_0_289", partition_0_0_, plasma_, sbuf2u_0_0_289_params);
    sbuf2u_0_0_289_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    sbuf2u_0_0_289_->set_mac_latency(-1.000000e+00);
    
    KernelGBuffer::Params split_kernel_gbuf_0_0_290_params;
    split_kernel_gbuf_0_0_290_params.M = 1;
    split_kernel_gbuf_0_0_290_params.column_par = 44;
    split_kernel_gbuf_0_0_290_params.head_1_depth = 1;
    split_kernel_gbuf_0_0_290_params.int_column_par = 2;
    split_kernel_gbuf_0_0_290_params.layout = nbuf1a_0_0_382_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    split_kernel_gbuf_0_0_290_params.num_sub_iters = 1;
    split_kernel_gbuf_0_0_290_ = create_node<KernelGBuffer>("split_kernel_gbuf_0_0_290", partition_0_0_, plasma_, split_kernel_gbuf_0_0_290_params);
    split_kernel_gbuf_0_0_290_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    split_kernel_gbuf_0_0_290_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_291_params;
    biggemm_0_0_291_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_291_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 0)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_291_params.batch_size = 1;
    biggemm_0_0_291_params.batch_size_b = 1;
    biggemm_0_0_291_params.box_layout = true;
    biggemm_0_0_291_params.box_per_partition = false;
    biggemm_0_0_291_params.concat_group = true;
    biggemm_0_0_291_params.concat_group_par = 4;
    biggemm_0_0_291_params.connected_to_accumulator = false;
    biggemm_0_0_291_params.enable_gradient = false;
    biggemm_0_0_291_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_291_params.exclusive_vc_a = false;
    biggemm_0_0_291_params.external_input_a = true;
    biggemm_0_0_291_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_291_params.num_col_compute_units = 2;
    biggemm_0_0_291_params.num_partitions = 1;
    biggemm_0_0_291_params.num_row_compute_units = 1;
    biggemm_0_0_291_params.output_gbuf = true;
    biggemm_0_0_291_params.partition_start_delay = 10;
    biggemm_0_0_291_params.seqID_base = 0;
    biggemm_0_0_291_params.set_exclusive_routes = false;
    biggemm_0_0_291_params.streaming_col_par = true;
    biggemm_0_0_291_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_291_params.write_done_used = false;
    biggemm_0_0_291_ = create_node<BigGemm>("biggemm_0_0_291", partition_0_0_, plasma_, biggemm_0_0_291_params);
    biggemm_0_0_291_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_291_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_292_params;
    biggemm_0_0_292_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_292_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 1)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_292_params.batch_size = 1;
    biggemm_0_0_292_params.batch_size_b = 1;
    biggemm_0_0_292_params.box_layout = true;
    biggemm_0_0_292_params.box_per_partition = false;
    biggemm_0_0_292_params.concat_group = true;
    biggemm_0_0_292_params.concat_group_par = 4;
    biggemm_0_0_292_params.connected_to_accumulator = false;
    biggemm_0_0_292_params.enable_gradient = false;
    biggemm_0_0_292_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_292_params.exclusive_vc_a = false;
    biggemm_0_0_292_params.external_input_a = true;
    biggemm_0_0_292_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_292_params.num_col_compute_units = 2;
    biggemm_0_0_292_params.num_partitions = 1;
    biggemm_0_0_292_params.num_row_compute_units = 1;
    biggemm_0_0_292_params.output_gbuf = true;
    biggemm_0_0_292_params.partition_start_delay = 10;
    biggemm_0_0_292_params.seqID_base = 12;
    biggemm_0_0_292_params.set_exclusive_routes = false;
    biggemm_0_0_292_params.streaming_col_par = true;
    biggemm_0_0_292_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_292_params.write_done_used = false;
    biggemm_0_0_292_ = create_node<BigGemm>("biggemm_0_0_292", partition_0_0_, plasma_, biggemm_0_0_292_params);
    biggemm_0_0_292_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_292_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_293_params;
    biggemm_0_0_293_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_293_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 2)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_293_params.batch_size = 1;
    biggemm_0_0_293_params.batch_size_b = 1;
    biggemm_0_0_293_params.box_layout = true;
    biggemm_0_0_293_params.box_per_partition = false;
    biggemm_0_0_293_params.concat_group = true;
    biggemm_0_0_293_params.concat_group_par = 4;
    biggemm_0_0_293_params.connected_to_accumulator = false;
    biggemm_0_0_293_params.enable_gradient = false;
    biggemm_0_0_293_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_293_params.exclusive_vc_a = false;
    biggemm_0_0_293_params.external_input_a = true;
    biggemm_0_0_293_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_293_params.num_col_compute_units = 2;
    biggemm_0_0_293_params.num_partitions = 1;
    biggemm_0_0_293_params.num_row_compute_units = 1;
    biggemm_0_0_293_params.output_gbuf = true;
    biggemm_0_0_293_params.partition_start_delay = 10;
    biggemm_0_0_293_params.seqID_base = 24;
    biggemm_0_0_293_params.set_exclusive_routes = false;
    biggemm_0_0_293_params.streaming_col_par = true;
    biggemm_0_0_293_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_293_params.write_done_used = false;
    biggemm_0_0_293_ = create_node<BigGemm>("biggemm_0_0_293", partition_0_0_, plasma_, biggemm_0_0_293_params);
    biggemm_0_0_293_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_293_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_294_params;
    biggemm_0_0_294_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_294_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 3)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_294_params.batch_size = 1;
    biggemm_0_0_294_params.batch_size_b = 1;
    biggemm_0_0_294_params.box_layout = true;
    biggemm_0_0_294_params.box_per_partition = false;
    biggemm_0_0_294_params.concat_group = true;
    biggemm_0_0_294_params.concat_group_par = 4;
    biggemm_0_0_294_params.connected_to_accumulator = false;
    biggemm_0_0_294_params.enable_gradient = false;
    biggemm_0_0_294_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_294_params.exclusive_vc_a = false;
    biggemm_0_0_294_params.external_input_a = true;
    biggemm_0_0_294_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_294_params.num_col_compute_units = 2;
    biggemm_0_0_294_params.num_partitions = 1;
    biggemm_0_0_294_params.num_row_compute_units = 1;
    biggemm_0_0_294_params.output_gbuf = true;
    biggemm_0_0_294_params.partition_start_delay = 10;
    biggemm_0_0_294_params.seqID_base = 36;
    biggemm_0_0_294_params.set_exclusive_routes = false;
    biggemm_0_0_294_params.streaming_col_par = true;
    biggemm_0_0_294_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_294_params.write_done_used = false;
    biggemm_0_0_294_ = create_node<BigGemm>("biggemm_0_0_294", partition_0_0_, plasma_, biggemm_0_0_294_params);
    biggemm_0_0_294_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_294_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_295_params;
    biggemm_0_0_295_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_295_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 4)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_295_params.batch_size = 1;
    biggemm_0_0_295_params.batch_size_b = 1;
    biggemm_0_0_295_params.box_layout = true;
    biggemm_0_0_295_params.box_per_partition = false;
    biggemm_0_0_295_params.concat_group = true;
    biggemm_0_0_295_params.concat_group_par = 4;
    biggemm_0_0_295_params.connected_to_accumulator = false;
    biggemm_0_0_295_params.enable_gradient = false;
    biggemm_0_0_295_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_295_params.exclusive_vc_a = false;
    biggemm_0_0_295_params.external_input_a = true;
    biggemm_0_0_295_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_295_params.num_col_compute_units = 2;
    biggemm_0_0_295_params.num_partitions = 1;
    biggemm_0_0_295_params.num_row_compute_units = 1;
    biggemm_0_0_295_params.output_gbuf = true;
    biggemm_0_0_295_params.partition_start_delay = 10;
    biggemm_0_0_295_params.seqID_base = 0;
    biggemm_0_0_295_params.set_exclusive_routes = false;
    biggemm_0_0_295_params.streaming_col_par = true;
    biggemm_0_0_295_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_295_params.write_done_used = false;
    biggemm_0_0_295_ = create_node<BigGemm>("biggemm_0_0_295", partition_0_0_, plasma_, biggemm_0_0_295_params);
    biggemm_0_0_295_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_295_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_296_params;
    biggemm_0_0_296_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_296_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 5)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_296_params.batch_size = 1;
    biggemm_0_0_296_params.batch_size_b = 1;
    biggemm_0_0_296_params.box_layout = true;
    biggemm_0_0_296_params.box_per_partition = false;
    biggemm_0_0_296_params.concat_group = true;
    biggemm_0_0_296_params.concat_group_par = 4;
    biggemm_0_0_296_params.connected_to_accumulator = false;
    biggemm_0_0_296_params.enable_gradient = false;
    biggemm_0_0_296_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_296_params.exclusive_vc_a = false;
    biggemm_0_0_296_params.external_input_a = true;
    biggemm_0_0_296_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_296_params.num_col_compute_units = 2;
    biggemm_0_0_296_params.num_partitions = 1;
    biggemm_0_0_296_params.num_row_compute_units = 1;
    biggemm_0_0_296_params.output_gbuf = true;
    biggemm_0_0_296_params.partition_start_delay = 10;
    biggemm_0_0_296_params.seqID_base = 12;
    biggemm_0_0_296_params.set_exclusive_routes = false;
    biggemm_0_0_296_params.streaming_col_par = true;
    biggemm_0_0_296_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_296_params.write_done_used = false;
    biggemm_0_0_296_ = create_node<BigGemm>("biggemm_0_0_296", partition_0_0_, plasma_, biggemm_0_0_296_params);
    biggemm_0_0_296_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_296_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_297_params;
    biggemm_0_0_297_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_297_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 6)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_297_params.batch_size = 1;
    biggemm_0_0_297_params.batch_size_b = 1;
    biggemm_0_0_297_params.box_layout = true;
    biggemm_0_0_297_params.box_per_partition = false;
    biggemm_0_0_297_params.concat_group = true;
    biggemm_0_0_297_params.concat_group_par = 4;
    biggemm_0_0_297_params.connected_to_accumulator = false;
    biggemm_0_0_297_params.enable_gradient = false;
    biggemm_0_0_297_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_297_params.exclusive_vc_a = false;
    biggemm_0_0_297_params.external_input_a = true;
    biggemm_0_0_297_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_297_params.num_col_compute_units = 2;
    biggemm_0_0_297_params.num_partitions = 1;
    biggemm_0_0_297_params.num_row_compute_units = 1;
    biggemm_0_0_297_params.output_gbuf = true;
    biggemm_0_0_297_params.partition_start_delay = 10;
    biggemm_0_0_297_params.seqID_base = 24;
    biggemm_0_0_297_params.set_exclusive_routes = false;
    biggemm_0_0_297_params.streaming_col_par = true;
    biggemm_0_0_297_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_297_params.write_done_used = false;
    biggemm_0_0_297_ = create_node<BigGemm>("biggemm_0_0_297", partition_0_0_, plasma_, biggemm_0_0_297_params);
    biggemm_0_0_297_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_297_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_298_params;
    biggemm_0_0_298_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_298_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 7)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_298_params.batch_size = 1;
    biggemm_0_0_298_params.batch_size_b = 1;
    biggemm_0_0_298_params.box_layout = true;
    biggemm_0_0_298_params.box_per_partition = false;
    biggemm_0_0_298_params.concat_group = true;
    biggemm_0_0_298_params.concat_group_par = 4;
    biggemm_0_0_298_params.connected_to_accumulator = false;
    biggemm_0_0_298_params.enable_gradient = false;
    biggemm_0_0_298_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_298_params.exclusive_vc_a = false;
    biggemm_0_0_298_params.external_input_a = true;
    biggemm_0_0_298_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_298_params.num_col_compute_units = 2;
    biggemm_0_0_298_params.num_partitions = 1;
    biggemm_0_0_298_params.num_row_compute_units = 1;
    biggemm_0_0_298_params.output_gbuf = true;
    biggemm_0_0_298_params.partition_start_delay = 10;
    biggemm_0_0_298_params.seqID_base = 36;
    biggemm_0_0_298_params.set_exclusive_routes = false;
    biggemm_0_0_298_params.streaming_col_par = true;
    biggemm_0_0_298_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_298_params.write_done_used = false;
    biggemm_0_0_298_ = create_node<BigGemm>("biggemm_0_0_298", partition_0_0_, plasma_, biggemm_0_0_298_params);
    biggemm_0_0_298_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_298_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_299_params;
    biggemm_0_0_299_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_299_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 8)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_299_params.batch_size = 1;
    biggemm_0_0_299_params.batch_size_b = 1;
    biggemm_0_0_299_params.box_layout = true;
    biggemm_0_0_299_params.box_per_partition = false;
    biggemm_0_0_299_params.concat_group = true;
    biggemm_0_0_299_params.concat_group_par = 4;
    biggemm_0_0_299_params.connected_to_accumulator = false;
    biggemm_0_0_299_params.enable_gradient = false;
    biggemm_0_0_299_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_299_params.exclusive_vc_a = false;
    biggemm_0_0_299_params.external_input_a = true;
    biggemm_0_0_299_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_299_params.num_col_compute_units = 2;
    biggemm_0_0_299_params.num_partitions = 1;
    biggemm_0_0_299_params.num_row_compute_units = 1;
    biggemm_0_0_299_params.output_gbuf = true;
    biggemm_0_0_299_params.partition_start_delay = 10;
    biggemm_0_0_299_params.seqID_base = 0;
    biggemm_0_0_299_params.set_exclusive_routes = false;
    biggemm_0_0_299_params.streaming_col_par = true;
    biggemm_0_0_299_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_299_params.write_done_used = false;
    biggemm_0_0_299_ = create_node<BigGemm>("biggemm_0_0_299", partition_0_0_, plasma_, biggemm_0_0_299_params);
    biggemm_0_0_299_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_299_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_300_params;
    biggemm_0_0_300_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_300_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 9)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_300_params.batch_size = 1;
    biggemm_0_0_300_params.batch_size_b = 1;
    biggemm_0_0_300_params.box_layout = true;
    biggemm_0_0_300_params.box_per_partition = false;
    biggemm_0_0_300_params.concat_group = true;
    biggemm_0_0_300_params.concat_group_par = 4;
    biggemm_0_0_300_params.connected_to_accumulator = false;
    biggemm_0_0_300_params.enable_gradient = false;
    biggemm_0_0_300_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_300_params.exclusive_vc_a = false;
    biggemm_0_0_300_params.external_input_a = true;
    biggemm_0_0_300_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_300_params.num_col_compute_units = 2;
    biggemm_0_0_300_params.num_partitions = 1;
    biggemm_0_0_300_params.num_row_compute_units = 1;
    biggemm_0_0_300_params.output_gbuf = true;
    biggemm_0_0_300_params.partition_start_delay = 10;
    biggemm_0_0_300_params.seqID_base = 12;
    biggemm_0_0_300_params.set_exclusive_routes = false;
    biggemm_0_0_300_params.streaming_col_par = true;
    biggemm_0_0_300_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_300_params.write_done_used = false;
    biggemm_0_0_300_ = create_node<BigGemm>("biggemm_0_0_300", partition_0_0_, plasma_, biggemm_0_0_300_params);
    biggemm_0_0_300_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_300_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_301_params;
    biggemm_0_0_301_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_301_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 10)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_301_params.batch_size = 1;
    biggemm_0_0_301_params.batch_size_b = 1;
    biggemm_0_0_301_params.box_layout = true;
    biggemm_0_0_301_params.box_per_partition = false;
    biggemm_0_0_301_params.concat_group = true;
    biggemm_0_0_301_params.concat_group_par = 4;
    biggemm_0_0_301_params.connected_to_accumulator = false;
    biggemm_0_0_301_params.enable_gradient = false;
    biggemm_0_0_301_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_301_params.exclusive_vc_a = false;
    biggemm_0_0_301_params.external_input_a = true;
    biggemm_0_0_301_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_301_params.num_col_compute_units = 2;
    biggemm_0_0_301_params.num_partitions = 1;
    biggemm_0_0_301_params.num_row_compute_units = 1;
    biggemm_0_0_301_params.output_gbuf = true;
    biggemm_0_0_301_params.partition_start_delay = 10;
    biggemm_0_0_301_params.seqID_base = 24;
    biggemm_0_0_301_params.set_exclusive_routes = false;
    biggemm_0_0_301_params.streaming_col_par = true;
    biggemm_0_0_301_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_301_params.write_done_used = false;
    biggemm_0_0_301_ = create_node<BigGemm>("biggemm_0_0_301", partition_0_0_, plasma_, biggemm_0_0_301_params);
    biggemm_0_0_301_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_301_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_302_params;
    biggemm_0_0_302_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_302_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 11)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_302_params.batch_size = 1;
    biggemm_0_0_302_params.batch_size_b = 1;
    biggemm_0_0_302_params.box_layout = true;
    biggemm_0_0_302_params.box_per_partition = false;
    biggemm_0_0_302_params.concat_group = true;
    biggemm_0_0_302_params.concat_group_par = 4;
    biggemm_0_0_302_params.connected_to_accumulator = false;
    biggemm_0_0_302_params.enable_gradient = false;
    biggemm_0_0_302_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_302_params.exclusive_vc_a = false;
    biggemm_0_0_302_params.external_input_a = true;
    biggemm_0_0_302_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_302_params.num_col_compute_units = 2;
    biggemm_0_0_302_params.num_partitions = 1;
    biggemm_0_0_302_params.num_row_compute_units = 1;
    biggemm_0_0_302_params.output_gbuf = true;
    biggemm_0_0_302_params.partition_start_delay = 10;
    biggemm_0_0_302_params.seqID_base = 36;
    biggemm_0_0_302_params.set_exclusive_routes = false;
    biggemm_0_0_302_params.streaming_col_par = true;
    biggemm_0_0_302_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_302_params.write_done_used = false;
    biggemm_0_0_302_ = create_node<BigGemm>("biggemm_0_0_302", partition_0_0_, plasma_, biggemm_0_0_302_params);
    biggemm_0_0_302_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_302_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_303_params;
    biggemm_0_0_303_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_303_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 12)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_303_params.batch_size = 1;
    biggemm_0_0_303_params.batch_size_b = 1;
    biggemm_0_0_303_params.box_layout = true;
    biggemm_0_0_303_params.box_per_partition = false;
    biggemm_0_0_303_params.concat_group = true;
    biggemm_0_0_303_params.concat_group_par = 4;
    biggemm_0_0_303_params.connected_to_accumulator = false;
    biggemm_0_0_303_params.enable_gradient = false;
    biggemm_0_0_303_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_303_params.exclusive_vc_a = false;
    biggemm_0_0_303_params.external_input_a = true;
    biggemm_0_0_303_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_303_params.num_col_compute_units = 2;
    biggemm_0_0_303_params.num_partitions = 1;
    biggemm_0_0_303_params.num_row_compute_units = 1;
    biggemm_0_0_303_params.output_gbuf = true;
    biggemm_0_0_303_params.partition_start_delay = 10;
    biggemm_0_0_303_params.seqID_base = 0;
    biggemm_0_0_303_params.set_exclusive_routes = false;
    biggemm_0_0_303_params.streaming_col_par = true;
    biggemm_0_0_303_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_303_params.write_done_used = false;
    biggemm_0_0_303_ = create_node<BigGemm>("biggemm_0_0_303", partition_0_0_, plasma_, biggemm_0_0_303_params);
    biggemm_0_0_303_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_303_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_304_params;
    biggemm_0_0_304_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_304_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 13)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_304_params.batch_size = 1;
    biggemm_0_0_304_params.batch_size_b = 1;
    biggemm_0_0_304_params.box_layout = true;
    biggemm_0_0_304_params.box_per_partition = false;
    biggemm_0_0_304_params.concat_group = true;
    biggemm_0_0_304_params.concat_group_par = 4;
    biggemm_0_0_304_params.connected_to_accumulator = false;
    biggemm_0_0_304_params.enable_gradient = false;
    biggemm_0_0_304_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_304_params.exclusive_vc_a = false;
    biggemm_0_0_304_params.external_input_a = true;
    biggemm_0_0_304_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_304_params.num_col_compute_units = 2;
    biggemm_0_0_304_params.num_partitions = 1;
    biggemm_0_0_304_params.num_row_compute_units = 1;
    biggemm_0_0_304_params.output_gbuf = true;
    biggemm_0_0_304_params.partition_start_delay = 10;
    biggemm_0_0_304_params.seqID_base = 12;
    biggemm_0_0_304_params.set_exclusive_routes = false;
    biggemm_0_0_304_params.streaming_col_par = true;
    biggemm_0_0_304_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_304_params.write_done_used = false;
    biggemm_0_0_304_ = create_node<BigGemm>("biggemm_0_0_304", partition_0_0_, plasma_, biggemm_0_0_304_params);
    biggemm_0_0_304_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_304_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_305_params;
    biggemm_0_0_305_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_305_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 14)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_305_params.batch_size = 1;
    biggemm_0_0_305_params.batch_size_b = 1;
    biggemm_0_0_305_params.box_layout = true;
    biggemm_0_0_305_params.box_per_partition = false;
    biggemm_0_0_305_params.concat_group = true;
    biggemm_0_0_305_params.concat_group_par = 4;
    biggemm_0_0_305_params.connected_to_accumulator = false;
    biggemm_0_0_305_params.enable_gradient = false;
    biggemm_0_0_305_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_305_params.exclusive_vc_a = false;
    biggemm_0_0_305_params.external_input_a = true;
    biggemm_0_0_305_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_305_params.num_col_compute_units = 2;
    biggemm_0_0_305_params.num_partitions = 1;
    biggemm_0_0_305_params.num_row_compute_units = 1;
    biggemm_0_0_305_params.output_gbuf = true;
    biggemm_0_0_305_params.partition_start_delay = 10;
    biggemm_0_0_305_params.seqID_base = 24;
    biggemm_0_0_305_params.set_exclusive_routes = false;
    biggemm_0_0_305_params.streaming_col_par = true;
    biggemm_0_0_305_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_305_params.write_done_used = false;
    biggemm_0_0_305_ = create_node<BigGemm>("biggemm_0_0_305", partition_0_0_, plasma_, biggemm_0_0_305_params);
    biggemm_0_0_305_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_305_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_306_params;
    biggemm_0_0_306_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_306_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 15)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_306_params.batch_size = 1;
    biggemm_0_0_306_params.batch_size_b = 1;
    biggemm_0_0_306_params.box_layout = true;
    biggemm_0_0_306_params.box_per_partition = false;
    biggemm_0_0_306_params.concat_group = true;
    biggemm_0_0_306_params.concat_group_par = 4;
    biggemm_0_0_306_params.connected_to_accumulator = false;
    biggemm_0_0_306_params.enable_gradient = false;
    biggemm_0_0_306_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_306_params.exclusive_vc_a = false;
    biggemm_0_0_306_params.external_input_a = true;
    biggemm_0_0_306_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_306_params.num_col_compute_units = 2;
    biggemm_0_0_306_params.num_partitions = 1;
    biggemm_0_0_306_params.num_row_compute_units = 1;
    biggemm_0_0_306_params.output_gbuf = true;
    biggemm_0_0_306_params.partition_start_delay = 10;
    biggemm_0_0_306_params.seqID_base = 36;
    biggemm_0_0_306_params.set_exclusive_routes = false;
    biggemm_0_0_306_params.streaming_col_par = true;
    biggemm_0_0_306_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_306_params.write_done_used = false;
    biggemm_0_0_306_ = create_node<BigGemm>("biggemm_0_0_306", partition_0_0_, plasma_, biggemm_0_0_306_params);
    biggemm_0_0_306_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_306_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_307_params;
    biggemm_0_0_307_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_307_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 16)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_307_params.batch_size = 1;
    biggemm_0_0_307_params.batch_size_b = 1;
    biggemm_0_0_307_params.box_layout = true;
    biggemm_0_0_307_params.box_per_partition = false;
    biggemm_0_0_307_params.concat_group = true;
    biggemm_0_0_307_params.concat_group_par = 4;
    biggemm_0_0_307_params.connected_to_accumulator = false;
    biggemm_0_0_307_params.enable_gradient = false;
    biggemm_0_0_307_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_307_params.exclusive_vc_a = false;
    biggemm_0_0_307_params.external_input_a = true;
    biggemm_0_0_307_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_307_params.num_col_compute_units = 2;
    biggemm_0_0_307_params.num_partitions = 1;
    biggemm_0_0_307_params.num_row_compute_units = 1;
    biggemm_0_0_307_params.output_gbuf = true;
    biggemm_0_0_307_params.partition_start_delay = 10;
    biggemm_0_0_307_params.seqID_base = 0;
    biggemm_0_0_307_params.set_exclusive_routes = false;
    biggemm_0_0_307_params.streaming_col_par = true;
    biggemm_0_0_307_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_307_params.write_done_used = false;
    biggemm_0_0_307_ = create_node<BigGemm>("biggemm_0_0_307", partition_0_0_, plasma_, biggemm_0_0_307_params);
    biggemm_0_0_307_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_307_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_308_params;
    biggemm_0_0_308_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_308_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 17)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_308_params.batch_size = 1;
    biggemm_0_0_308_params.batch_size_b = 1;
    biggemm_0_0_308_params.box_layout = true;
    biggemm_0_0_308_params.box_per_partition = false;
    biggemm_0_0_308_params.concat_group = true;
    biggemm_0_0_308_params.concat_group_par = 4;
    biggemm_0_0_308_params.connected_to_accumulator = false;
    biggemm_0_0_308_params.enable_gradient = false;
    biggemm_0_0_308_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_308_params.exclusive_vc_a = false;
    biggemm_0_0_308_params.external_input_a = true;
    biggemm_0_0_308_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_308_params.num_col_compute_units = 2;
    biggemm_0_0_308_params.num_partitions = 1;
    biggemm_0_0_308_params.num_row_compute_units = 1;
    biggemm_0_0_308_params.output_gbuf = true;
    biggemm_0_0_308_params.partition_start_delay = 10;
    biggemm_0_0_308_params.seqID_base = 12;
    biggemm_0_0_308_params.set_exclusive_routes = false;
    biggemm_0_0_308_params.streaming_col_par = true;
    biggemm_0_0_308_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_308_params.write_done_used = false;
    biggemm_0_0_308_ = create_node<BigGemm>("biggemm_0_0_308", partition_0_0_, plasma_, biggemm_0_0_308_params);
    biggemm_0_0_308_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_308_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_309_params;
    biggemm_0_0_309_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_309_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 18)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_309_params.batch_size = 1;
    biggemm_0_0_309_params.batch_size_b = 1;
    biggemm_0_0_309_params.box_layout = true;
    biggemm_0_0_309_params.box_per_partition = false;
    biggemm_0_0_309_params.concat_group = true;
    biggemm_0_0_309_params.concat_group_par = 4;
    biggemm_0_0_309_params.connected_to_accumulator = false;
    biggemm_0_0_309_params.enable_gradient = false;
    biggemm_0_0_309_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_309_params.exclusive_vc_a = false;
    biggemm_0_0_309_params.external_input_a = true;
    biggemm_0_0_309_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_309_params.num_col_compute_units = 2;
    biggemm_0_0_309_params.num_partitions = 1;
    biggemm_0_0_309_params.num_row_compute_units = 1;
    biggemm_0_0_309_params.output_gbuf = true;
    biggemm_0_0_309_params.partition_start_delay = 10;
    biggemm_0_0_309_params.seqID_base = 24;
    biggemm_0_0_309_params.set_exclusive_routes = false;
    biggemm_0_0_309_params.streaming_col_par = true;
    biggemm_0_0_309_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_309_params.write_done_used = false;
    biggemm_0_0_309_ = create_node<BigGemm>("biggemm_0_0_309", partition_0_0_, plasma_, biggemm_0_0_309_params);
    biggemm_0_0_309_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_309_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_310_params;
    biggemm_0_0_310_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_310_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 19)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_310_params.batch_size = 1;
    biggemm_0_0_310_params.batch_size_b = 1;
    biggemm_0_0_310_params.box_layout = true;
    biggemm_0_0_310_params.box_per_partition = false;
    biggemm_0_0_310_params.concat_group = true;
    biggemm_0_0_310_params.concat_group_par = 4;
    biggemm_0_0_310_params.connected_to_accumulator = false;
    biggemm_0_0_310_params.enable_gradient = false;
    biggemm_0_0_310_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_310_params.exclusive_vc_a = false;
    biggemm_0_0_310_params.external_input_a = true;
    biggemm_0_0_310_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_310_params.num_col_compute_units = 2;
    biggemm_0_0_310_params.num_partitions = 1;
    biggemm_0_0_310_params.num_row_compute_units = 1;
    biggemm_0_0_310_params.output_gbuf = true;
    biggemm_0_0_310_params.partition_start_delay = 10;
    biggemm_0_0_310_params.seqID_base = 36;
    biggemm_0_0_310_params.set_exclusive_routes = false;
    biggemm_0_0_310_params.streaming_col_par = true;
    biggemm_0_0_310_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_310_params.write_done_used = false;
    biggemm_0_0_310_ = create_node<BigGemm>("biggemm_0_0_310", partition_0_0_, plasma_, biggemm_0_0_310_params);
    biggemm_0_0_310_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_310_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_311_params;
    biggemm_0_0_311_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_311_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 20)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_311_params.batch_size = 1;
    biggemm_0_0_311_params.batch_size_b = 1;
    biggemm_0_0_311_params.box_layout = true;
    biggemm_0_0_311_params.box_per_partition = false;
    biggemm_0_0_311_params.concat_group = true;
    biggemm_0_0_311_params.concat_group_par = 2;
    biggemm_0_0_311_params.connected_to_accumulator = false;
    biggemm_0_0_311_params.enable_gradient = false;
    biggemm_0_0_311_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_311_params.exclusive_vc_a = false;
    biggemm_0_0_311_params.external_input_a = true;
    biggemm_0_0_311_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_311_params.num_col_compute_units = 2;
    biggemm_0_0_311_params.num_partitions = 1;
    biggemm_0_0_311_params.num_row_compute_units = 1;
    biggemm_0_0_311_params.output_gbuf = true;
    biggemm_0_0_311_params.partition_start_delay = 10;
    biggemm_0_0_311_params.seqID_base = 0;
    biggemm_0_0_311_params.set_exclusive_routes = false;
    biggemm_0_0_311_params.streaming_col_par = true;
    biggemm_0_0_311_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_311_params.write_done_used = false;
    biggemm_0_0_311_ = create_node<BigGemm>("biggemm_0_0_311", partition_0_0_, plasma_, biggemm_0_0_311_params);
    biggemm_0_0_311_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_311_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_0_0_312_params;
    biggemm_0_0_312_params.A_layout = sbuf2u_0_0_289_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_0_0_312_params.B_layout = split_kernel_gbuf_0_0_290_->result_layout(GBuffer::get_head_output(1, 21)).at_address(0).with_vector_transpose(true);
    biggemm_0_0_312_params.batch_size = 1;
    biggemm_0_0_312_params.batch_size_b = 1;
    biggemm_0_0_312_params.box_layout = true;
    biggemm_0_0_312_params.box_per_partition = false;
    biggemm_0_0_312_params.concat_group = true;
    biggemm_0_0_312_params.concat_group_par = 2;
    biggemm_0_0_312_params.connected_to_accumulator = false;
    biggemm_0_0_312_params.enable_gradient = false;
    biggemm_0_0_312_params.enable_seqID_pacing_interval = true;
    biggemm_0_0_312_params.exclusive_vc_a = false;
    biggemm_0_0_312_params.external_input_a = true;
    biggemm_0_0_312_params.maximum_fwd_b_fanout = 32;
    biggemm_0_0_312_params.num_col_compute_units = 2;
    biggemm_0_0_312_params.num_partitions = 1;
    biggemm_0_0_312_params.num_row_compute_units = 1;
    biggemm_0_0_312_params.output_gbuf = true;
    biggemm_0_0_312_params.partition_start_delay = 10;
    biggemm_0_0_312_params.seqID_base = 12;
    biggemm_0_0_312_params.set_exclusive_routes = false;
    biggemm_0_0_312_params.streaming_col_par = true;
    biggemm_0_0_312_params.use_wbuf_transpose_atom_move = false;
    biggemm_0_0_312_params.write_done_used = false;
    biggemm_0_0_312_ = create_node<BigGemm>("biggemm_0_0_312", partition_0_0_, plasma_, biggemm_0_0_312_params);
    biggemm_0_0_312_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    biggemm_0_0_312_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_0_0_315_params;
    gbuf2u_0_0_315_params.allow_pob = false;
    gbuf2u_0_0_315_params.concat = GBuffer::kConcatN;
    gbuf2u_0_0_315_params.fronting_group = 4;
    gbuf2u_0_0_315_params.fronting_group_int_col_par_vectors = 12;
    gbuf2u_0_0_315_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_315_params.head1_linear = true;
    gbuf2u_0_0_315_params.head1_streaming_window = true;
    gbuf2u_0_0_315_params.head_1_depth = 2;
    gbuf2u_0_0_315_params.layout = biggemm_0_0_291_->result_layout(BigGemm::kOutput).at_address(0).with_logical_shape({1, 256}).at_address(0);
    gbuf2u_0_0_315_params.num_head1_rd_en = 2;
    gbuf2u_0_0_315_params.num_iterations = 1;
    gbuf2u_0_0_315_params.write_group_layouts = {biggemm_0_0_291_->result_layouts(BigGemm::kOutput), biggemm_0_0_292_->result_layouts(BigGemm::kOutput), biggemm_0_0_293_->result_layouts(BigGemm::kOutput), biggemm_0_0_294_->result_layouts(BigGemm::kOutput), biggemm_0_0_295_->result_layouts(BigGemm::kOutput), biggemm_0_0_296_->result_layouts(BigGemm::kOutput), biggemm_0_0_297_->result_layouts(BigGemm::kOutput), biggemm_0_0_298_->result_layouts(BigGemm::kOutput), biggemm_0_0_299_->result_layouts(BigGemm::kOutput), biggemm_0_0_300_->result_layouts(BigGemm::kOutput), biggemm_0_0_301_->result_layouts(BigGemm::kOutput), biggemm_0_0_302_->result_layouts(BigGemm::kOutput), biggemm_0_0_303_->result_layouts(BigGemm::kOutput), biggemm_0_0_304_->result_layouts(BigGemm::kOutput), biggemm_0_0_305_->result_layouts(BigGemm::kOutput), biggemm_0_0_306_->result_layouts(BigGemm::kOutput), biggemm_0_0_307_->result_layouts(BigGemm::kOutput), biggemm_0_0_308_->result_layouts(BigGemm::kOutput), biggemm_0_0_309_->result_layouts(BigGemm::kOutput), biggemm_0_0_310_->result_layouts(BigGemm::kOutput), biggemm_0_0_311_->result_layouts(BigGemm::kOutput), biggemm_0_0_312_->result_layouts(BigGemm::kOutput)};
    gbuf2u_0_0_315_params.write_group_partitions = {biggemm_0_0_291_->num_partitions(), biggemm_0_0_292_->num_partitions(), biggemm_0_0_293_->num_partitions(), biggemm_0_0_294_->num_partitions(), biggemm_0_0_295_->num_partitions(), biggemm_0_0_296_->num_partitions(), biggemm_0_0_297_->num_partitions(), biggemm_0_0_298_->num_partitions(), biggemm_0_0_299_->num_partitions(), biggemm_0_0_300_->num_partitions(), biggemm_0_0_301_->num_partitions(), biggemm_0_0_302_->num_partitions(), biggemm_0_0_303_->num_partitions(), biggemm_0_0_304_->num_partitions(), biggemm_0_0_305_->num_partitions(), biggemm_0_0_306_->num_partitions(), biggemm_0_0_307_->num_partitions(), biggemm_0_0_308_->num_partitions(), biggemm_0_0_309_->num_partitions(), biggemm_0_0_310_->num_partitions(), biggemm_0_0_311_->num_partitions(), biggemm_0_0_312_->num_partitions()};
    gbuf2u_0_0_315_params.write_layouts_spread = true;
    gbuf2u_0_0_315_params.write_time_concat = true;
    gbuf2u_0_0_315_params.write_time_concat_slices = {12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 12, 4};
    gbuf2u_0_0_315_ = create_node<GBuffer>("gbuf2u_0_0_315", partition_0_0_, plasma_, gbuf2u_0_0_315_params);
    gbuf2u_0_0_315_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    gbuf2u_0_0_315_->set_mac_latency(-1.000000e+00);
    
    BiasTransposeAdd::Params bias_transpose_add_0_0_316_params;
    bias_transpose_add_0_0_316_params.batch_size = 1;
    bias_transpose_add_0_0_316_params.bias_layout = params_.ptconvlstm__conv_layer__bias_0_0_88.at_address(0);
    bias_transpose_add_0_0_316_params.input_layout = gbuf2u_0_0_315_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    bias_transpose_add_0_0_316_ = create_node<BiasTransposeAdd>("bias_transpose_add_0_0_316", partition_0_0_, plasma_, bias_transpose_add_0_0_316_params);
    bias_transpose_add_0_0_316_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    bias_transpose_add_0_0_316_->set_mac_latency(-1.000000e+00);
    
    StreamingTranspose::Params streaming_transpose_0_0_317_params;
    streaming_transpose_0_0_317_params.cvrm_to_dvdm3d_atom_wise_transpose = true;
    streaming_transpose_0_0_317_params.dvdm_image_h = 1;
    streaming_transpose_0_0_317_params.dvdm_image_w = 1;
    streaming_transpose_0_0_317_params.image_layout = bias_transpose_add_0_0_316_->result_layout().at_address(0);
    streaming_transpose_0_0_317_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::CVRM_To_DVDM;
    streaming_transpose_0_0_317_ = create_node<StreamingTranspose>("streaming_transpose_0_0_317", partition_0_0_, plasma_, streaming_transpose_0_0_317_params);
    streaming_transpose_0_0_317_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d");
    streaming_transpose_0_0_317_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_0_0_182_params;
    gbuf2u_0_0_182_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_182_params.head1_linear = true;
    gbuf2u_0_0_182_params.head1_streaming_window = true;
    gbuf2u_0_0_182_params.head_1_depth = 2;
    gbuf2u_0_0_182_params.layout = streaming_transpose_0_0_317_->result_layout().at_address(0);
    gbuf2u_0_0_182_params.num_head1_rd_en = 2;
    gbuf2u_0_0_182_params.num_iterations = 1;
    gbuf2u_0_0_182_ = create_node<GBuffer>("gbuf2u_0_0_182", partition_0_0_, plasma_, gbuf2u_0_0_182_params);
    gbuf2u_0_0_182_->set_mac_id("");
    gbuf2u_0_0_182_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__conv_layer__conv1d__squeeze_Reshape_params;
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_params.input_layout = gbuf2u_0_0_182_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_params.reshape = {256, 1};
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_ = create_node<ReshapeView>("ptconvlstm__conv_layer__conv1d__squeeze_Reshape", partition_0_0_, plasma_, ptconvlstm__conv_layer__conv1d__squeeze_Reshape_params);
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->set_mac_id("ptconvlstm__conv_layer__conv1d__squeeze_Reshape");
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2a_0_0_415_params;
    gbuf2a_0_0_415_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_415_params.head0_linear = true;
    gbuf2a_0_0_415_params.head1_ctrl_flow_enable = true;
    gbuf2a_0_0_415_params.head1_linear = false;
    gbuf2a_0_0_415_params.head_0_depth = 2;
    gbuf2a_0_0_415_params.head_1_depth = 2;
    gbuf2a_0_0_415_params.layout = ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->result_layout();
    gbuf2a_0_0_415_params.num_head0_rd_en = 1;
    gbuf2a_0_0_415_params.num_head1_rd_en = 2;
    gbuf2a_0_0_415_params.num_iterations = 1;
    gbuf2a_0_0_415_ = create_node<GBuffer>("gbuf2a_0_0_415", partition_0_0_, plasma_, gbuf2a_0_0_415_params);
    gbuf2a_0_0_415_->set_mac_id("");
    gbuf2a_0_0_415_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params ptconvlstm__dense_layer__linear_params;
    ptconvlstm__dense_layer__linear_params.A_layout = params_.ptconvlstm__dense_layer__weight_0_0_92.with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_params.B_layout = gbuf2a_0_0_415_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_params.batch_size = 1;
    ptconvlstm__dense_layer__linear_params.batch_size_b = 1;
    ptconvlstm__dense_layer__linear_params.box_layout = true;
    ptconvlstm__dense_layer__linear_params.box_per_partition = true;
    ptconvlstm__dense_layer__linear_params.connected_to_accumulator = false;
    ptconvlstm__dense_layer__linear_params.enable_gradient = false;
    ptconvlstm__dense_layer__linear_params.enable_seqID_pacing_interval = true;
    ptconvlstm__dense_layer__linear_params.exclusive_vc_a = false;
    ptconvlstm__dense_layer__linear_params.external_input_a = false;
    ptconvlstm__dense_layer__linear_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_params.no_reload_weight = false;
    ptconvlstm__dense_layer__linear_params.num_col_compute_units = 1;
    ptconvlstm__dense_layer__linear_params.num_partitions = 4;
    ptconvlstm__dense_layer__linear_params.num_row_compute_units = 32;
    ptconvlstm__dense_layer__linear_params.output_gbuf = true;
    ptconvlstm__dense_layer__linear_params.partition_start_delay = 10;
    ptconvlstm__dense_layer__linear_params.seqID_base = 0;
    ptconvlstm__dense_layer__linear_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_params.streaming_col_par = false;
    ptconvlstm__dense_layer__linear_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_params.write_done_used = false;
    ptconvlstm__dense_layer__linear_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear", partition_0_0_, plasma_, ptconvlstm__dense_layer__linear_params);
    ptconvlstm__dense_layer__linear_->set_mac_id("ptconvlstm__dense_layer__linear");
    ptconvlstm__dense_layer__linear_->set_mac_latency(4.570000e+02);
    
    GBuffer::Params gbuf1a_0_0_381_params;
    gbuf1a_0_0_381_params.head1_linear = true;
    gbuf1a_0_0_381_params.head_1_depth = 1;
    gbuf1a_0_0_381_params.layout = ptconvlstm__dense_layer__linear_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf1a_0_0_381_params.num_iterations = 1;
    gbuf1a_0_0_381_params.write_group_layouts = {ptconvlstm__dense_layer__linear_->result_layouts(BigGemm::kOutput)};
    gbuf1a_0_0_381_params.write_group_partitions = {ptconvlstm__dense_layer__linear_->num_partitions()};
    gbuf1a_0_0_381_ = create_node<GBuffer>("gbuf1a_0_0_381", partition_0_0_, plasma_, gbuf1a_0_0_381_params);
    gbuf1a_0_0_381_->set_mac_id("");
    gbuf1a_0_0_381_->set_mac_latency(-1.000000e+00);
    
    BiasAdd::Params bias_add_0_0_378_params;
    bias_add_0_0_378_params.batch_size = 1;
    bias_add_0_0_378_params.layout_bias = params_.ptconvlstm__dense_layer__bias_0_0_93;
    bias_add_0_0_378_params.layout_input = {gbuf1a_0_0_381_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0)};
    bias_add_0_0_378_params.no_reload_bias = false;
    bias_add_0_0_378_params.wbuf_split = false;
    bias_add_0_0_378_ = create_node<BiasAdd>("bias_add_0_0_378", partition_0_0_, plasma_, bias_add_0_0_378_params);
    bias_add_0_0_378_->set_mac_id("");
    bias_add_0_0_378_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_0_0_186_params;
    gbuf2u_0_0_186_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_186_params.head1_linear = false;
    gbuf2u_0_0_186_params.head1_streaming_window = true;
    gbuf2u_0_0_186_params.head_1_depth = 2;
    gbuf2u_0_0_186_params.head_1_transposed = true;
    gbuf2u_0_0_186_params.layout = bias_add_0_0_378_->result_layout(BiasAdd::Output::kOutput).at_address(0);
    gbuf2u_0_0_186_params.num_head1_rd_en = 2;
    gbuf2u_0_0_186_params.num_iterations = 1;
    gbuf2u_0_0_186_ = create_node<GBuffer>("gbuf2u_0_0_186", partition_0_0_, plasma_, gbuf2u_0_0_186_params);
    gbuf2u_0_0_186_->set_mac_id("");
    gbuf2u_0_0_186_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_output0_params;
    ptconvlstm__dense_layer__linear_t_output0_params.input_layout = gbuf2u_0_0_186_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    ptconvlstm__dense_layer__linear_t_output0_params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_output0_ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_output0", partition_0_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_params);
    ptconvlstm__dense_layer__linear_t_output0_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0");
    ptconvlstm__dense_layer__linear_t_output0_->set_mac_latency(0.000000e+00);
    
    GBuffer::Params gbuf2a_0_0_416_params;
    gbuf2a_0_0_416_params.head0_any_empty_stage = true;
    gbuf2a_0_0_416_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_416_params.head0_linear = true;
    gbuf2a_0_0_416_params.head1_ctrl_flow_enable = true;
    gbuf2a_0_0_416_params.head1_linear = false;
    gbuf2a_0_0_416_params.head1_streaming_window = true;
    gbuf2a_0_0_416_params.head_0_depth = 2;
    gbuf2a_0_0_416_params.head_1_depth = 2;
    gbuf2a_0_0_416_params.head_1_transposed = true;
    gbuf2a_0_0_416_params.layout = ptconvlstm__dense_layer__linear_t_output0_->result_layout();
    gbuf2a_0_0_416_params.num_head0_rd_en = 4;
    gbuf2a_0_0_416_params.num_head1_rd_en = 2;
    gbuf2a_0_0_416_params.num_iterations = 1;
    gbuf2a_0_0_416_ = create_node<GBuffer>("gbuf2a_0_0_416", partition_0_0_, plasma_, gbuf2a_0_0_416_params);
    gbuf2a_0_0_416_->set_mac_id("");
    gbuf2a_0_0_416_->set_mac_latency(-1.000000e+00);
    
    Transpose::Params transpose_0_0_398_params;
    transpose_0_0_398_params.depth = 1;
    transpose_0_0_398_params.layout = gbuf2a_0_0_416_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    transpose_0_0_398_params.transpose_type = Transpose::kPhysical;
    transpose_0_0_398_ = create_node<Transpose>("transpose_0_0_398", partition_0_0_, plasma_, transpose_0_0_398_params);
    transpose_0_0_398_->set_mac_id("");
    transpose_0_0_398_->set_mac_latency(-1.000000e+00);
    
    LayoutCast::Params layout_cast_0_0_399_params;
    layout_cast_0_0_399_params.checked = false;
    layout_cast_0_0_399_params.input_layout = transpose_0_0_398_->result_layout().at_address(0);
    layout_cast_0_0_399_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    layout_cast_0_0_399_ = create_node<LayoutCast>("layout_cast_0_0_399", partition_0_0_, plasma_, layout_cast_0_0_399_params);
    layout_cast_0_0_399_->set_mac_id("");
    layout_cast_0_0_399_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__reshape_params;
    ptconvlstm__reshape_params.input_layout = layout_cast_0_0_399_->result_layout();
    ptconvlstm__reshape_params.output_alignment = -1;
    ptconvlstm__reshape_params.reshape = {4080};
    ptconvlstm__reshape_ = create_node<ReshapeView>("ptconvlstm__reshape", partition_0_0_, plasma_, ptconvlstm__reshape_params);
    ptconvlstm__reshape_->set_mac_id("ptconvlstm__reshape");
    ptconvlstm__reshape_->set_mac_latency(1.300000e+01);
    
    NBuffer::Params nbuf2u_0_0_191_params;
    nbuf2u_0_0_191_params.head1_ctrl_flow_enable = true;
    nbuf2u_0_0_191_params.head_1_depth = 2;
    nbuf2u_0_0_191_params.layout = params_.out_window_0_0_263.at_address(0);
    nbuf2u_0_0_191_params.load_from_dram = true;
    nbuf2u_0_0_191_params.num_head1_rd_en = 2;
    nbuf2u_0_0_191_ = create_node<NBuffer>("nbuf2u_0_0_191", partition_0_0_, plasma_, nbuf2u_0_0_191_params);
    nbuf2u_0_0_191_->set_mac_id("");
    nbuf2u_0_0_191_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_0_0_194_params;
    gbuf2u_0_0_194_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_194_params.head1_linear = true;
    gbuf2u_0_0_194_params.head_1_depth = 2;
    gbuf2u_0_0_194_params.layout = gbuf2a_0_0_416_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    gbuf2u_0_0_194_params.num_head1_rd_en = 2;
    gbuf2u_0_0_194_params.num_iterations = 1;
    gbuf2u_0_0_194_ = create_node<GBuffer>("gbuf2u_0_0_194", partition_0_0_, plasma_, gbuf2u_0_0_194_params);
    gbuf2u_0_0_194_->set_mac_id("");
    gbuf2u_0_0_194_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params reshape_0_0_322_params;
    reshape_0_0_322_params.input_layout = nbuf2u_0_0_191_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    reshape_0_0_322_params.output_alignment = -1;
    reshape_0_0_322_params.reshape = {1, 4080};
    reshape_0_0_322_ = create_node<ReshapeView>("reshape_0_0_322", partition_0_0_, plasma_, reshape_0_0_322_params);
    reshape_0_0_322_->set_mac_id("");
    reshape_0_0_322_->set_mac_latency(-1.000000e+00);
    
    LayoutCast::Params layout_cast_0_0_401_params;
    layout_cast_0_0_401_params.checked = false;
    layout_cast_0_0_401_params.input_layout = reshape_0_0_322_->result_layout();
    layout_cast_0_0_401_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    layout_cast_0_0_401_ = create_node<LayoutCast>("layout_cast_0_0_401", partition_0_0_, plasma_, layout_cast_0_0_401_params);
    layout_cast_0_0_401_->set_mac_id("");
    layout_cast_0_0_401_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_0_0_196_params;
    gbuf2u_0_0_196_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_196_params.head1_linear = false;
    gbuf2u_0_0_196_params.head_1_depth = 2;
    gbuf2u_0_0_196_params.head_1_transposed = true;
    gbuf2u_0_0_196_params.layout = layout_cast_0_0_401_->result_layout();
    gbuf2u_0_0_196_params.num_head1_rd_en = 2;
    gbuf2u_0_0_196_params.num_iterations = 1;
    gbuf2u_0_0_196_ = create_node<GBuffer>("gbuf2u_0_0_196", partition_0_0_, plasma_, gbuf2u_0_0_196_params);
    gbuf2u_0_0_196_->set_mac_id("");
    gbuf2u_0_0_196_->set_mac_latency(-1.000000e+00);
    
    BinaryOps::Params sub_0_0_323_params;
    sub_0_0_323_params.layout_a = gbuf2u_0_0_194_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    sub_0_0_323_params.layout_b = gbuf2u_0_0_196_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    sub_0_0_323_params.op = node_constants::TemplateOpcodes::kSub;
    sub_0_0_323_params.streaming_a = true;
    sub_0_0_323_params.streaming_b = true;
    sub_0_0_323_ = create_node<BinaryOps>("sub_0_0_323", partition_0_0_, plasma_, sub_0_0_323_params);
    sub_0_0_323_->set_mac_id("");
    sub_0_0_323_->set_mac_latency(3.190000e+02);
    
    GBuffer::Params gbuf1a_0_0_417_params;
    gbuf1a_0_0_417_params.head0_linear = true;
    gbuf1a_0_0_417_params.head1_linear = true;
    gbuf1a_0_0_417_params.head_0_depth = 1;
    gbuf1a_0_0_417_params.head_1_depth = 1;
    gbuf1a_0_0_417_params.layout = sub_0_0_323_->result_layout().at_address(0);
    gbuf1a_0_0_417_params.num_iterations = 1;
    gbuf1a_0_0_417_ = create_node<GBuffer>("gbuf1a_0_0_417", partition_0_0_, plasma_, gbuf1a_0_0_417_params);
    gbuf1a_0_0_417_->set_mac_id("");
    gbuf1a_0_0_417_->set_mac_latency(-1.000000e+00);
    
    BinaryOps::Params mul_0_0_324_params;
    mul_0_0_324_params.layout_a = gbuf1a_0_0_417_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    mul_0_0_324_params.layout_b = gbuf1a_0_0_417_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    mul_0_0_324_params.op = node_constants::TemplateOpcodes::kMul;
    mul_0_0_324_params.streaming_a = true;
    mul_0_0_324_params.streaming_b = true;
    mul_0_0_324_ = create_node<BinaryOps>("mul_0_0_324", partition_0_0_, plasma_, mul_0_0_324_params);
    mul_0_0_324_->set_mac_id("");
    mul_0_0_324_->set_mac_latency(3.190000e+02);
    
    MeanP::Params mean_p_0_0_325_params;
    mean_p_0_0_325_params.axis = 1;
    mean_p_0_0_325_params.keep_dim = false;
    mean_p_0_0_325_params.layout = mul_0_0_324_->result_layout().at_address(0);
    mean_p_0_0_325_params.streaming = true;
    mean_p_0_0_325_ = create_node<MeanP>("mean_p_0_0_325", partition_0_0_, plasma_, mean_p_0_0_325_params);
    mean_p_0_0_325_->set_mac_id("");
    mean_p_0_0_325_->set_mac_latency(3.190000e+02);
    
    LayoutCast::Params layout_cast_0_0_402_params;
    layout_cast_0_0_402_params.checked = false;
    layout_cast_0_0_402_params.input_layout = gbuf2a_0_0_416_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    layout_cast_0_0_402_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    layout_cast_0_0_402_ = create_node<LayoutCast>("layout_cast_0_0_402", partition_0_0_, plasma_, layout_cast_0_0_402_params);
    layout_cast_0_0_402_->set_mac_id("");
    layout_cast_0_0_402_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__view_params;
    ptconvlstm__view_params.input_layout = layout_cast_0_0_402_->result_layout();
    ptconvlstm__view_params.output_alignment = -2;
    ptconvlstm__view_params.reshape = {30, 136};
    ptconvlstm__view_ = create_node<ReshapeView>("ptconvlstm__view", partition_0_0_, plasma_, ptconvlstm__view_params);
    ptconvlstm__view_->set_mac_id("ptconvlstm__view");
    ptconvlstm__view_->set_mac_latency(1.300000e+01);
    
    Buf::Params output_buf_0_0_408_params;
    output_buf_0_0_408_params.layout = gbuf2a_0_0_415_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    output_buf_0_0_408_params.depth = 2;
    output_buf_0_0_408_ = create_node<Buf>("output_buf_0_0_408", partition_0_0_, plasma_, output_buf_0_0_408_params);
    
    NBuffer::Params nbuf2a_0_0_385_params;
    nbuf2a_0_0_385_params.head_1_depth = 2;
    nbuf2a_0_0_385_params.layout = ptconvlstm__reshape_->result_layout();
    nbuf2a_0_0_385_params.store_to_dram = true;
    nbuf2a_0_0_385_ = create_node<NBuffer>("nbuf2a_0_0_385", partition_0_0_, plasma_, nbuf2a_0_0_385_params);
    nbuf2a_0_0_385_->set_mac_id("");
    nbuf2a_0_0_385_->set_mac_latency(-1.000000e+00);
    
    NBuffer::Params nbuf2a_0_0_386_params;
    nbuf2a_0_0_386_params.head_1_depth = 2;
    nbuf2a_0_0_386_params.layout = mean_p_0_0_325_->result_layout().at_address(0);
    nbuf2a_0_0_386_params.store_to_dram = true;
    nbuf2a_0_0_386_ = create_node<NBuffer>("nbuf2a_0_0_386", partition_0_0_, plasma_, nbuf2a_0_0_386_params);
    nbuf2a_0_0_386_->set_mac_id("");
    nbuf2a_0_0_386_->set_mac_latency(-1.000000e+00);
    
    NBuffer::Params nbuf2a_0_0_387_params;
    nbuf2a_0_0_387_params.head_1_depth = 2;
    nbuf2a_0_0_387_params.layout = ptconvlstm__view_->result_layout();
    nbuf2a_0_0_387_params.store_to_dram = true;
    nbuf2a_0_0_387_ = create_node<NBuffer>("nbuf2a_0_0_387", partition_0_0_, plasma_, nbuf2a_0_0_387_params);
    nbuf2a_0_0_387_->set_mac_id("");
    nbuf2a_0_0_387_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<SuperNode>("partition_1_0_", this, plasma_);
    
    partition_1_0_->set_section_latency(7.827415e-05);
    NBuffer::Params nbuf2u_1_0_213_params;
    nbuf2u_1_0_213_params.head1_ctrl_flow_enable = true;
    nbuf2u_1_0_213_params.head_1_depth = 2;
    nbuf2u_1_0_213_params.layout = params_.out_window_1_0_264.at_address(0);
    nbuf2u_1_0_213_params.load_from_dram = true;
    nbuf2u_1_0_213_params.num_head1_rd_en = 2;
    nbuf2u_1_0_213_ = create_node<NBuffer>("nbuf2u_1_0_213", partition_1_0_, plasma_, nbuf2u_1_0_213_params);
    nbuf2u_1_0_213_->set_mac_id("");
    nbuf2u_1_0_213_->set_mac_latency(-1.000000e+00);
    
    NBuffer::Params nbuf2u_1_0_216_params;
    nbuf2u_1_0_216_params.head1_ctrl_flow_enable = true;
    nbuf2u_1_0_216_params.head_1_depth = 2;
    nbuf2u_1_0_216_params.layout = params_.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.at_address(0);
    nbuf2u_1_0_216_params.load_from_dram = true;
    nbuf2u_1_0_216_params.num_head1_rd_en = 2;
    nbuf2u_1_0_216_ = create_node<NBuffer>("nbuf2u_1_0_216", partition_1_0_, plasma_, nbuf2u_1_0_216_params);
    nbuf2u_1_0_216_->set_mac_id("");
    nbuf2u_1_0_216_->set_mac_latency(-1.000000e+00);
    
    MeanPB::Params ptconvlstm__criterion__mseloss_bwd_expand_params;
    ptconvlstm__criterion__mseloss_bwd_expand_params.divisor = 1;
    ptconvlstm__criterion__mseloss_bwd_expand_params.input_layout = nbuf2u_1_0_216_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__criterion__mseloss_bwd_expand_params.reduced_axis = 1;
    ptconvlstm__criterion__mseloss_bwd_expand_params.reduced_size = 4080;
    ptconvlstm__criterion__mseloss_bwd_expand_ = create_node<MeanPB>("ptconvlstm__criterion__mseloss_bwd_expand", partition_1_0_, plasma_, ptconvlstm__criterion__mseloss_bwd_expand_params);
    ptconvlstm__criterion__mseloss_bwd_expand_->set_mac_id("ptconvlstm__criterion__mseloss_bwd_expand");
    ptconvlstm__criterion__mseloss_bwd_expand_->set_mac_latency(0.000000e+00);
    
    NBuffer::Params nbuf2u_1_0_219_params;
    nbuf2u_1_0_219_params.head1_ctrl_flow_enable = true;
    nbuf2u_1_0_219_params.head_1_depth = 2;
    nbuf2u_1_0_219_params.layout = params_.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.at_address(0);
    nbuf2u_1_0_219_params.load_from_dram = true;
    nbuf2u_1_0_219_params.num_head1_rd_en = 2;
    nbuf2u_1_0_219_ = create_node<NBuffer>("nbuf2u_1_0_219", partition_1_0_, plasma_, nbuf2u_1_0_219_params);
    nbuf2u_1_0_219_->set_mac_id("");
    nbuf2u_1_0_219_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params reshape_1_0_328_params;
    reshape_1_0_328_params.input_layout = nbuf2u_1_0_213_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    reshape_1_0_328_params.output_alignment = -1;
    reshape_1_0_328_params.reshape = {1, 4080};
    reshape_1_0_328_ = create_node<ReshapeView>("reshape_1_0_328", partition_1_0_, plasma_, reshape_1_0_328_params);
    reshape_1_0_328_->set_mac_id("");
    reshape_1_0_328_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_221_params;
    gbuf2u_1_0_221_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_221_params.head1_linear = true;
    gbuf2u_1_0_221_params.head_1_depth = 2;
    gbuf2u_1_0_221_params.layout = reshape_1_0_328_->result_layout();
    gbuf2u_1_0_221_params.num_head1_rd_en = 2;
    gbuf2u_1_0_221_params.num_iterations = 1;
    gbuf2u_1_0_221_ = create_node<GBuffer>("gbuf2u_1_0_221", partition_1_0_, plasma_, gbuf2u_1_0_221_params);
    gbuf2u_1_0_221_->set_mac_id("");
    gbuf2u_1_0_221_->set_mac_latency(-1.000000e+00);
    
    BinaryOps::Params ptconvlstm__criterion__mseloss_bwd_sub_params;
    ptconvlstm__criterion__mseloss_bwd_sub_params.layout_a = nbuf2u_1_0_219_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__criterion__mseloss_bwd_sub_params.layout_b = gbuf2u_1_0_221_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__criterion__mseloss_bwd_sub_params.op = node_constants::TemplateOpcodes::kSub;
    ptconvlstm__criterion__mseloss_bwd_sub_params.streaming_a = true;
    ptconvlstm__criterion__mseloss_bwd_sub_params.streaming_b = true;
    ptconvlstm__criterion__mseloss_bwd_sub_ = create_node<BinaryOps>("ptconvlstm__criterion__mseloss_bwd_sub", partition_1_0_, plasma_, ptconvlstm__criterion__mseloss_bwd_sub_params);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_mac_id("ptconvlstm__criterion__mseloss_bwd");
    ptconvlstm__criterion__mseloss_bwd_sub_->set_mac_latency(1.060000e+02);
    
    ScaleS::Params ptconvlstm__criterion__mseloss_bwd_scale_params;
    ptconvlstm__criterion__mseloss_bwd_scale_params.argin_value = 0.000492096;
    ptconvlstm__criterion__mseloss_bwd_scale_params.batch_size = 1;
    ptconvlstm__criterion__mseloss_bwd_scale_params.conditional_scaling = false;
    ptconvlstm__criterion__mseloss_bwd_scale_params.layout_a = ptconvlstm__criterion__mseloss_bwd_sub_->result_layout().at_address(0);
    ptconvlstm__criterion__mseloss_bwd_scale_params.using_input_b = false;
    ptconvlstm__criterion__mseloss_bwd_scale_ = create_node<ScaleS>("ptconvlstm__criterion__mseloss_bwd_scale", partition_1_0_, plasma_, ptconvlstm__criterion__mseloss_bwd_scale_params);
    ptconvlstm__criterion__mseloss_bwd_scale_->set_mac_id("ptconvlstm__criterion__mseloss_bwd");
    ptconvlstm__criterion__mseloss_bwd_scale_->set_mac_latency(1.060000e+02);
    
    GBuffer::Params gbuf2u_1_0_224_params;
    gbuf2u_1_0_224_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_224_params.head1_linear = true;
    gbuf2u_1_0_224_params.head_1_depth = 2;
    gbuf2u_1_0_224_params.layout = ptconvlstm__criterion__mseloss_bwd_scale_->result_layout().at_address(0);
    gbuf2u_1_0_224_params.num_head1_rd_en = 2;
    gbuf2u_1_0_224_params.num_iterations = 1;
    gbuf2u_1_0_224_ = create_node<GBuffer>("gbuf2u_1_0_224", partition_1_0_, plasma_, gbuf2u_1_0_224_params);
    gbuf2u_1_0_224_->set_mac_id("");
    gbuf2u_1_0_224_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_225_params;
    gbuf2u_1_0_225_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_225_params.head1_linear = true;
    gbuf2u_1_0_225_params.head_1_depth = 2;
    gbuf2u_1_0_225_params.layout = ptconvlstm__criterion__mseloss_bwd_expand_->result_layout().at_address(0);
    gbuf2u_1_0_225_params.num_head1_rd_en = 2;
    gbuf2u_1_0_225_params.num_iterations = 1;
    gbuf2u_1_0_225_ = create_node<GBuffer>("gbuf2u_1_0_225", partition_1_0_, plasma_, gbuf2u_1_0_225_params);
    gbuf2u_1_0_225_->set_mac_id("");
    gbuf2u_1_0_225_->set_mac_latency(-1.000000e+00);
    
    LayoutCast::Params layout_cast_1_0_413_params;
    layout_cast_1_0_413_params.checked = false;
    layout_cast_1_0_413_params.input_layout = gbuf2u_1_0_225_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    layout_cast_1_0_413_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    layout_cast_1_0_413_ = create_node<LayoutCast>("layout_cast_1_0_413", partition_1_0_, plasma_, layout_cast_1_0_413_params);
    layout_cast_1_0_413_->set_mac_id("");
    layout_cast_1_0_413_->set_mac_latency(-1.000000e+00);
    
    BinaryOps::Params ptconvlstm__criterion__mseloss_bwd_mul_params;
    ptconvlstm__criterion__mseloss_bwd_mul_params.layout_a = gbuf2u_1_0_224_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__criterion__mseloss_bwd_mul_params.layout_b = layout_cast_1_0_413_->result_layout();
    ptconvlstm__criterion__mseloss_bwd_mul_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__criterion__mseloss_bwd_mul_params.streaming_a = true;
    ptconvlstm__criterion__mseloss_bwd_mul_params.streaming_b = true;
    ptconvlstm__criterion__mseloss_bwd_mul_ = create_node<BinaryOps>("ptconvlstm__criterion__mseloss_bwd_mul", partition_1_0_, plasma_, ptconvlstm__criterion__mseloss_bwd_mul_params);
    ptconvlstm__criterion__mseloss_bwd_mul_->set_mac_id("ptconvlstm__criterion__mseloss_bwd_mul");
    ptconvlstm__criterion__mseloss_bwd_mul_->set_mac_latency(1.360000e+02);
    
    GBuffer::Params gbuf2u_1_0_228_params;
    gbuf2u_1_0_228_params.enable_fronting_pmu = true;
    gbuf2u_1_0_228_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_228_params.head1_linear = true;
    gbuf2u_1_0_228_params.head1_streaming_window = true;
    gbuf2u_1_0_228_params.head_1_depth = 2;
    gbuf2u_1_0_228_params.layout = params_.ptconvlstm__view__outputs__0__grad_1_0_267.at_address(0);
    gbuf2u_1_0_228_params.loaded_by_broadcast = false;
    gbuf2u_1_0_228_params.num_head1_rd_en = 2;
    gbuf2u_1_0_228_params.num_iterations = 1;
    gbuf2u_1_0_228_ = create_node<GBuffer>("gbuf2u_1_0_228", partition_1_0_, plasma_, gbuf2u_1_0_228_params);
    gbuf2u_1_0_228_->set_mac_id("");
    gbuf2u_1_0_228_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__view_bwd_params;
    ptconvlstm__view_bwd_params.input_layout = gbuf2u_1_0_228_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__view_bwd_params.output_alignment = -1;
    ptconvlstm__view_bwd_params.reshape = {1, 4080};
    ptconvlstm__view_bwd_ = create_node<ReshapeView>("ptconvlstm__view_bwd", partition_1_0_, plasma_, ptconvlstm__view_bwd_params);
    ptconvlstm__view_bwd_->set_mac_id("ptconvlstm__view_bwd");
    ptconvlstm__view_bwd_->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2u_1_0_233_params;
    gbuf2u_1_0_233_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_233_params.head1_linear = true;
    gbuf2u_1_0_233_params.head1_streaming_window = true;
    gbuf2u_1_0_233_params.head_1_depth = 2;
    gbuf2u_1_0_233_params.layout = ptconvlstm__criterion__mseloss_bwd_mul_->result_layout().at_address(0);
    gbuf2u_1_0_233_params.num_head1_rd_en = 2;
    gbuf2u_1_0_233_params.num_iterations = 1;
    gbuf2u_1_0_233_ = create_node<GBuffer>("gbuf2u_1_0_233", partition_1_0_, plasma_, gbuf2u_1_0_233_params);
    gbuf2u_1_0_233_->set_mac_id("");
    gbuf2u_1_0_233_->set_mac_latency(-1.000000e+00);
    
    AddN::Params ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params;
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params.layout_input = gbuf2u_1_0_233_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params.num_of_inputs = 2;
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_ = create_node<AddN>("ptconvlstm__dense_layer__linear_t_output0_bwd_addn0", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_mac_latency(1.060000e+02);
    
    GBuffer::Params gbuf2u_1_0_236_params;
    gbuf2u_1_0_236_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_236_params.head1_linear = true;
    gbuf2u_1_0_236_params.head1_streaming_window = true;
    gbuf2u_1_0_236_params.head_1_depth = 2;
    gbuf2u_1_0_236_params.layout = ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0);
    gbuf2u_1_0_236_params.num_head1_rd_en = 4;
    gbuf2u_1_0_236_params.num_iterations = 1;
    gbuf2u_1_0_236_ = create_node<GBuffer>("gbuf2u_1_0_236", partition_1_0_, plasma_, gbuf2u_1_0_236_params);
    gbuf2u_1_0_236_->set_mac_id("");
    gbuf2u_1_0_236_->set_mac_latency(-1.000000e+00);
    
    LayoutCast::Params layout_cast_1_0_414_params;
    layout_cast_1_0_414_params.checked = false;
    layout_cast_1_0_414_params.input_layout = gbuf2u_1_0_236_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    layout_cast_1_0_414_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    layout_cast_1_0_414_ = create_node<LayoutCast>("layout_cast_1_0_414", partition_1_0_, plasma_, layout_cast_1_0_414_params);
    layout_cast_1_0_414_->set_mac_id("");
    layout_cast_1_0_414_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_output0_bwd_params;
    ptconvlstm__dense_layer__linear_t_output0_bwd_params.input_layout = layout_cast_1_0_414_->result_layout();
    ptconvlstm__dense_layer__linear_t_output0_bwd_params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_output0_bwd_ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_output0_bwd", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_bwd_params);
    ptconvlstm__dense_layer__linear_t_output0_bwd_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0_bwd");
    ptconvlstm__dense_layer__linear_t_output0_bwd_->set_mac_latency(0.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_238_params;
    gbuf2u_1_0_238_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_238_params.head1_linear = false;
    gbuf2u_1_0_238_params.head_1_depth = 2;
    gbuf2u_1_0_238_params.layout = ptconvlstm__dense_layer__linear_t_output0_bwd_->result_layout();
    gbuf2u_1_0_238_params.num_head1_rd_en = 2;
    gbuf2u_1_0_238_params.num_iterations = 1;
    gbuf2u_1_0_238_ = create_node<GBuffer>("gbuf2u_1_0_238", partition_1_0_, plasma_, gbuf2u_1_0_238_params);
    gbuf2u_1_0_238_->set_mac_id("");
    gbuf2u_1_0_238_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf1a_1_0_388_params;
    gbuf1a_1_0_388_params.enable_fronting_pmu = true;
    gbuf1a_1_0_388_params.head1_linear = false;
    gbuf1a_1_0_388_params.head_1_depth = 1;
    gbuf1a_1_0_388_params.head_1_transposed = true;
    gbuf1a_1_0_388_params.layout = params_.ptconvlstm__dense_layer__weight_1_0_335.at_address(0);
    gbuf1a_1_0_388_params.loaded_by_broadcast = false;
    gbuf1a_1_0_388_params.num_iterations = 1;
    gbuf1a_1_0_388_ = create_node<GBuffer>("gbuf1a_1_0_388", partition_1_0_, plasma_, gbuf1a_1_0_388_params);
    gbuf1a_1_0_388_->set_mac_id("");
    gbuf1a_1_0_388_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.A_layout = gbuf1a_1_0_388_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.B_layout = gbuf2u_1_0_238_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.batch_size = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.batch_size_b = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.box_layout = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.box_per_partition = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.connected_to_accumulator = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.enable_gradient = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.enable_seqID_pacing_interval = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.exclusive_vc_a = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.external_input_a = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.no_reload_weight = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_col_compute_units = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_partitions = 1;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_row_compute_units = 8;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.output_gbuf = true;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.partition_start_delay = 10;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.seqID_base = 0;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.streaming_col_par = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear_bwd_loss_grad_b", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_loss");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_mac_latency(4.367000e+03);
    
    NBuffer::Params nbuf2u_1_0_241_params;
    nbuf2u_1_0_241_params.head1_ctrl_flow_enable = true;
    nbuf2u_1_0_241_params.head_1_depth = 2;
    nbuf2u_1_0_241_params.layout = params_.inp_window_1_0_268.at_address(0);
    nbuf2u_1_0_241_params.load_from_dram = true;
    nbuf2u_1_0_241_params.num_head1_rd_en = 2;
    nbuf2u_1_0_241_ = create_node<NBuffer>("nbuf2u_1_0_241", partition_1_0_, plasma_, nbuf2u_1_0_241_params);
    nbuf2u_1_0_241_->set_mac_id("");
    nbuf2u_1_0_241_->set_mac_latency(-1.000000e+00);
    
    NBuffer::Params nbuf1u_1_0_242_params;
    nbuf1u_1_0_242_params.head1_ctrl_flow_enable = true;
    nbuf1u_1_0_242_params.head_1_depth = 1;
    nbuf1u_1_0_242_params.layout = params_.inp_window_slice_1_1_0_124.at_address(0);
    nbuf1u_1_0_242_params.load_from_dram = true;
    nbuf1u_1_0_242_params.num_head1_rd_en = 2;
    nbuf1u_1_0_242_ = create_node<NBuffer>("nbuf1u_1_0_242", partition_1_0_, plasma_, nbuf1u_1_0_242_params);
    nbuf1u_1_0_242_->set_mac_id("");
    nbuf1u_1_0_242_->set_mac_latency(-1.000000e+00);
    
    Index::Params ptconvlstm__lambda_layer__indexselect_recompute__params;
    ptconvlstm__lambda_layer__indexselect_recompute__params.frontingpmu_load = false;
    ptconvlstm__lambda_layer__indexselect_recompute__params.index_along_dim = 0;
    ptconvlstm__lambda_layer__indexselect_recompute__params.index_tensor_layout = nbuf1u_1_0_242_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lambda_layer__indexselect_recompute__params.lkup_tensor_layout = nbuf2u_1_0_241_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lambda_layer__indexselect_recompute__params.microbatch = 1;
    ptconvlstm__lambda_layer__indexselect_recompute__params.perf_mode = true;
    ptconvlstm__lambda_layer__indexselect_recompute__params.read_zeros_outside_range = true;
    ptconvlstm__lambda_layer__indexselect_recompute__ = create_node<Index>("ptconvlstm__lambda_layer__indexselect_recompute_", partition_1_0_, plasma_, ptconvlstm__lambda_layer__indexselect_recompute__params);
    ptconvlstm__lambda_layer__indexselect_recompute__->set_mac_id("ptconvlstm__lambda_layer__indexselect_recompute_");
    ptconvlstm__lambda_layer__indexselect_recompute__->set_mac_latency(1.100000e+01);
    
    GBuffer::Params gbuf2u_1_0_244_params;
    gbuf2u_1_0_244_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_244_params.head1_linear = true;
    gbuf2u_1_0_244_params.head1_streaming_window = true;
    gbuf2u_1_0_244_params.head_1_depth = 2;
    gbuf2u_1_0_244_params.layout = ptconvlstm__lambda_layer__indexselect_recompute__->result_layout().at_address(0);
    gbuf2u_1_0_244_params.num_head1_rd_en = 2;
    gbuf2u_1_0_244_params.num_iterations = 1;
    gbuf2u_1_0_244_ = create_node<GBuffer>("gbuf2u_1_0_244", partition_1_0_, plasma_, gbuf2u_1_0_244_params);
    gbuf2u_1_0_244_->set_mac_id("");
    gbuf2u_1_0_244_->set_mac_latency(-1.000000e+00);
    
    PermuteView::Params ptconvlstm__permute_recompute__params;
    ptconvlstm__permute_recompute__params.input_layout = gbuf2u_1_0_244_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__permute_recompute__params.permute = {1, 0};
    ptconvlstm__permute_recompute__ = create_node<PermuteView>("ptconvlstm__permute_recompute_", partition_1_0_, plasma_, ptconvlstm__permute_recompute__params);
    ptconvlstm__permute_recompute__->set_mac_id("ptconvlstm__permute_recompute_");
    ptconvlstm__permute_recompute__->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2u_1_0_246_params;
    gbuf2u_1_0_246_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_246_params.head1_linear = true;
    gbuf2u_1_0_246_params.head1_streaming_window = true;
    gbuf2u_1_0_246_params.head_1_depth = 2;
    gbuf2u_1_0_246_params.layout = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf2u_1_0_246_params.num_head1_rd_en = 2;
    gbuf2u_1_0_246_params.num_iterations = 1;
    gbuf2u_1_0_246_params.write_group_layouts = {ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_246_params.write_group_partitions = {ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions()};
    gbuf2u_1_0_246_ = create_node<GBuffer>("gbuf2u_1_0_246", partition_1_0_, plasma_, gbuf2u_1_0_246_params);
    gbuf2u_1_0_246_->set_mac_id("");
    gbuf2u_1_0_246_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_params;
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_params.input_layout = gbuf2u_1_0_246_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_params.reshape = {256, 1, 1};
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_ = create_node<ReshapeView>("ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd", partition_1_0_, plasma_, ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_params);
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->set_mac_id("ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd");
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2u_1_0_248_params;
    gbuf2u_1_0_248_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_248_params.head1_linear = true;
    gbuf2u_1_0_248_params.head1_streaming_window = true;
    gbuf2u_1_0_248_params.head_1_depth = 2;
    gbuf2u_1_0_248_params.layout = ptconvlstm__permute_recompute__->result_layout();
    gbuf2u_1_0_248_params.num_head1_rd_en = 2;
    gbuf2u_1_0_248_params.num_iterations = 1;
    gbuf2u_1_0_248_ = create_node<GBuffer>("gbuf2u_1_0_248", partition_1_0_, plasma_, gbuf2u_1_0_248_params);
    gbuf2u_1_0_248_->set_mac_id("");
    gbuf2u_1_0_248_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__params;
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__params.input_layout = gbuf2u_1_0_248_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__params.reshape = {136, 3, 1};
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__ = create_node<ReshapeView>("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute_", partition_1_0_, plasma_, ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__params);
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->set_mac_id("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute_");
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->set_mac_latency(1.300000e+01);
    
    GBuffer::Params gbuf2a_1_0_418_params;
    gbuf2a_1_0_418_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_418_params.head0_linear = false;
    gbuf2a_1_0_418_params.head0_streaming_window = true;
    gbuf2a_1_0_418_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_418_params.head1_linear = false;
    gbuf2a_1_0_418_params.head1_streaming_window = true;
    gbuf2a_1_0_418_params.head_0_depth = 2;
    gbuf2a_1_0_418_params.head_1_depth = 2;
    gbuf2a_1_0_418_params.layout = ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->result_layout();
    gbuf2a_1_0_418_params.num_head0_rd_en = 2;
    gbuf2a_1_0_418_params.num_head1_rd_en = 2;
    gbuf2a_1_0_418_params.num_iterations = 1;
    gbuf2a_1_0_418_ = create_node<GBuffer>("gbuf2a_1_0_418", partition_1_0_, plasma_, gbuf2a_1_0_418_params);
    gbuf2a_1_0_418_->set_mac_id("");
    gbuf2a_1_0_418_->set_mac_latency(-1.000000e+00);
    
    StreamingTranspose::Params streaming_transpose_1_0_354_params;
    streaming_transpose_1_0_354_params.dvdm_to_cvrm_atom_wise_transpose = true;
    streaming_transpose_1_0_354_params.image_layout = gbuf2a_1_0_418_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    streaming_transpose_1_0_354_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::DVDM_TO_CVRM;
    streaming_transpose_1_0_354_ = create_node<StreamingTranspose>("streaming_transpose_1_0_354", partition_1_0_, plasma_, streaming_transpose_1_0_354_params);
    streaming_transpose_1_0_354_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    streaming_transpose_1_0_354_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_355_params;
    gbuf2u_1_0_355_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_355_params.head1_linear = false;
    gbuf2u_1_0_355_params.head1_streaming_window = true;
    gbuf2u_1_0_355_params.head_1_depth = 2;
    gbuf2u_1_0_355_params.layout = ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->result_layout();
    gbuf2u_1_0_355_params.num_head1_rd_en = 2;
    gbuf2u_1_0_355_params.num_iterations = 1;
    gbuf2u_1_0_355_params.overlapped_split = true;
    gbuf2u_1_0_355_params.overlapped_split_base = 0;
    gbuf2u_1_0_355_params.overlapped_split_bound = 4;
    gbuf2u_1_0_355_params.overlapped_split_parts = 3;
    gbuf2u_1_0_355_params.overlapped_split_stride = 5;
    gbuf2u_1_0_355_ = create_node<GBuffer>("gbuf2u_1_0_355", partition_1_0_, plasma_, gbuf2u_1_0_355_params);
    gbuf2u_1_0_355_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    gbuf2u_1_0_355_->set_mac_latency(-1.000000e+00);
    
    ListBuffer::Params lbuf1a_1_0_391_params;
    lbuf1a_1_0_391_params.allow_oob = true;
    lbuf1a_1_0_391_params.allow_overflow = false;
    lbuf1a_1_0_391_params.base_list_tile_counters = 0;
    lbuf1a_1_0_391_params.base_max = {320, 3, 1};
    lbuf1a_1_0_391_params.base_mult = {1, 0, 0};
    lbuf1a_1_0_391_params.base_stride = {64, 1, 1};
    lbuf1a_1_0_391_params.batch_size = 1;
    lbuf1a_1_0_391_params.depth2col = false;
    lbuf1a_1_0_391_params.enable_fronting_pmu = true;
    lbuf1a_1_0_391_params.filter_area = 0;
    lbuf1a_1_0_391_params.head1_linear = false;
    lbuf1a_1_0_391_params.head_1_depth = 1;
    lbuf1a_1_0_391_params.layout = params_.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376;
    lbuf1a_1_0_391_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {136, 3, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 2, 0}, 0).vector_align();
    lbuf1a_1_0_391_params.length_fixed = 32;
    lbuf1a_1_0_391_params.list_length = 3;
    lbuf1a_1_0_391_params.list_tiles = 1;
    lbuf1a_1_0_391_params.list_type = ListBuffer::kElement;
    lbuf1a_1_0_391_params.loaded_by_broadcast = true;
    lbuf1a_1_0_391_params.num_iterations = 1;
    lbuf1a_1_0_391_params.offset_list_tile_counters = 0;
    lbuf1a_1_0_391_params.offset_max = {160, 3};
    lbuf1a_1_0_391_params.offset_mult = {0, 1};
    lbuf1a_1_0_391_params.offset_stride = {32, 1};
    lbuf1a_1_0_391_params.overlapped_split = true;
    lbuf1a_1_0_391_params.overlapped_split_base = 0;
    lbuf1a_1_0_391_params.overlapped_split_bound = 4;
    lbuf1a_1_0_391_params.overlapped_split_parts = 3;
    lbuf1a_1_0_391_params.overlapped_split_stride = 5;
    lbuf1a_1_0_391_params.permute = false;
    lbuf1a_1_0_391_params.use_tile_counter = false;
    lbuf1a_1_0_391_ = create_node<ListBuffer>("lbuf1a_1_0_391", partition_1_0_, plasma_, lbuf1a_1_0_391_params);
    lbuf1a_1_0_391_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    lbuf1a_1_0_391_->set_mac_latency(-1.000000e+00);
    
    ScatterBuffer::Params sbuf2u_1_0_358_params;
    sbuf2u_1_0_358_params.element = true;
    sbuf2u_1_0_358_params.head1_linear = true;
    sbuf2u_1_0_358_params.head_1_depth = 2;
    sbuf2u_1_0_358_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {480, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf2u_1_0_358_params.length_fixed = 32;
    sbuf2u_1_0_358_params.num_iterations = 1;
    sbuf2u_1_0_358_params.pace_shape = {32, 1};
    sbuf2u_1_0_358_params.paced = true;
    sbuf2u_1_0_358_params.read_group_packed_vectors = 15;
    sbuf2u_1_0_358_params.streaming = true;
    sbuf2u_1_0_358_params.write_group_unpacked_vectors = 15;
    sbuf2u_1_0_358_params.write_total_unpacked_vectors = 15;
    sbuf2u_1_0_358_ = create_node<ScatterBuffer>("sbuf2u_1_0_358", partition_1_0_, plasma_, sbuf2u_1_0_358_params);
    sbuf2u_1_0_358_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    sbuf2u_1_0_358_->set_mac_latency(-1.000000e+00);
    
    KernelGBuffer::Params split_kernel_gbuf_1_0_359_params;
    split_kernel_gbuf_1_0_359_params.M = 480;
    split_kernel_gbuf_1_0_359_params.column_par = 8;
    split_kernel_gbuf_1_0_359_params.head_1_depth = 2;
    split_kernel_gbuf_1_0_359_params.int_column_par = 2;
    split_kernel_gbuf_1_0_359_params.layout = streaming_transpose_1_0_354_->result_layout().at_address(0);
    split_kernel_gbuf_1_0_359_params.num_sub_iters = 6;
    split_kernel_gbuf_1_0_359_ = create_node<KernelGBuffer>("split_kernel_gbuf_1_0_359", partition_1_0_, plasma_, split_kernel_gbuf_1_0_359_params);
    split_kernel_gbuf_1_0_359_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    split_kernel_gbuf_1_0_359_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params biggemm_1_0_360_params;
    biggemm_1_0_360_params.A_layout = sbuf2u_1_0_358_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_360_params.B_layout = split_kernel_gbuf_1_0_359_->result_layout(GBuffer::get_head_output(1, 0)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_360_params.batch_size = 1;
    biggemm_1_0_360_params.batch_size_b = 1;
    biggemm_1_0_360_params.box_layout = true;
    biggemm_1_0_360_params.box_per_partition = false;
    biggemm_1_0_360_params.concat_group = true;
    biggemm_1_0_360_params.concat_group_par = 4;
    biggemm_1_0_360_params.connected_to_accumulator = false;
    biggemm_1_0_360_params.enable_gradient = false;
    biggemm_1_0_360_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_360_params.exclusive_vc_a = false;
    biggemm_1_0_360_params.external_input_a = true;
    biggemm_1_0_360_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_360_params.num_col_compute_units = 2;
    biggemm_1_0_360_params.num_partitions = 1;
    biggemm_1_0_360_params.num_row_compute_units = 1;
    biggemm_1_0_360_params.output_gbuf = true;
    biggemm_1_0_360_params.partition_start_delay = 10;
    biggemm_1_0_360_params.seqID_base = 0;
    biggemm_1_0_360_params.set_exclusive_routes = false;
    biggemm_1_0_360_params.streaming_col_par = true;
    biggemm_1_0_360_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_360_params.write_done_used = false;
    biggemm_1_0_360_ = create_node<BigGemm>("biggemm_1_0_360", partition_1_0_, plasma_, biggemm_1_0_360_params);
    biggemm_1_0_360_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    biggemm_1_0_360_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_360_->set_stage_multiplier(15);
    
    BigGemm::Params biggemm_1_0_361_params;
    biggemm_1_0_361_params.A_layout = sbuf2u_1_0_358_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_361_params.B_layout = split_kernel_gbuf_1_0_359_->result_layout(GBuffer::get_head_output(1, 1)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_361_params.batch_size = 1;
    biggemm_1_0_361_params.batch_size_b = 1;
    biggemm_1_0_361_params.box_layout = true;
    biggemm_1_0_361_params.box_per_partition = false;
    biggemm_1_0_361_params.concat_group = true;
    biggemm_1_0_361_params.concat_group_par = 4;
    biggemm_1_0_361_params.connected_to_accumulator = false;
    biggemm_1_0_361_params.enable_gradient = false;
    biggemm_1_0_361_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_361_params.exclusive_vc_a = false;
    biggemm_1_0_361_params.external_input_a = true;
    biggemm_1_0_361_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_361_params.num_col_compute_units = 2;
    biggemm_1_0_361_params.num_partitions = 1;
    biggemm_1_0_361_params.num_row_compute_units = 1;
    biggemm_1_0_361_params.output_gbuf = true;
    biggemm_1_0_361_params.partition_start_delay = 10;
    biggemm_1_0_361_params.seqID_base = 72;
    biggemm_1_0_361_params.set_exclusive_routes = false;
    biggemm_1_0_361_params.streaming_col_par = true;
    biggemm_1_0_361_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_361_params.write_done_used = false;
    biggemm_1_0_361_ = create_node<BigGemm>("biggemm_1_0_361", partition_1_0_, plasma_, biggemm_1_0_361_params);
    biggemm_1_0_361_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    biggemm_1_0_361_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_361_->set_stage_multiplier(15);
    
    BigGemm::Params biggemm_1_0_362_params;
    biggemm_1_0_362_params.A_layout = sbuf2u_1_0_358_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_362_params.B_layout = split_kernel_gbuf_1_0_359_->result_layout(GBuffer::get_head_output(1, 2)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_362_params.batch_size = 1;
    biggemm_1_0_362_params.batch_size_b = 1;
    biggemm_1_0_362_params.box_layout = true;
    biggemm_1_0_362_params.box_per_partition = false;
    biggemm_1_0_362_params.concat_group = true;
    biggemm_1_0_362_params.concat_group_par = 4;
    biggemm_1_0_362_params.connected_to_accumulator = false;
    biggemm_1_0_362_params.enable_gradient = false;
    biggemm_1_0_362_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_362_params.exclusive_vc_a = false;
    biggemm_1_0_362_params.external_input_a = true;
    biggemm_1_0_362_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_362_params.num_col_compute_units = 2;
    biggemm_1_0_362_params.num_partitions = 1;
    biggemm_1_0_362_params.num_row_compute_units = 1;
    biggemm_1_0_362_params.output_gbuf = true;
    biggemm_1_0_362_params.partition_start_delay = 10;
    biggemm_1_0_362_params.seqID_base = 144;
    biggemm_1_0_362_params.set_exclusive_routes = false;
    biggemm_1_0_362_params.streaming_col_par = true;
    biggemm_1_0_362_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_362_params.write_done_used = false;
    biggemm_1_0_362_ = create_node<BigGemm>("biggemm_1_0_362", partition_1_0_, plasma_, biggemm_1_0_362_params);
    biggemm_1_0_362_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    biggemm_1_0_362_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_362_->set_stage_multiplier(15);
    
    BigGemm::Params biggemm_1_0_363_params;
    biggemm_1_0_363_params.A_layout = sbuf2u_1_0_358_->result_layout(ScatterBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    biggemm_1_0_363_params.B_layout = split_kernel_gbuf_1_0_359_->result_layout(GBuffer::get_head_output(1, 3)).at_address(0).with_vector_transpose(true);
    biggemm_1_0_363_params.batch_size = 1;
    biggemm_1_0_363_params.batch_size_b = 1;
    biggemm_1_0_363_params.box_layout = true;
    biggemm_1_0_363_params.box_per_partition = false;
    biggemm_1_0_363_params.concat_group = true;
    biggemm_1_0_363_params.concat_group_par = 4;
    biggemm_1_0_363_params.connected_to_accumulator = false;
    biggemm_1_0_363_params.enable_gradient = false;
    biggemm_1_0_363_params.enable_seqID_pacing_interval = true;
    biggemm_1_0_363_params.exclusive_vc_a = false;
    biggemm_1_0_363_params.external_input_a = true;
    biggemm_1_0_363_params.maximum_fwd_b_fanout = 32;
    biggemm_1_0_363_params.num_col_compute_units = 2;
    biggemm_1_0_363_params.num_partitions = 1;
    biggemm_1_0_363_params.num_row_compute_units = 1;
    biggemm_1_0_363_params.output_gbuf = true;
    biggemm_1_0_363_params.partition_start_delay = 10;
    biggemm_1_0_363_params.seqID_base = 216;
    biggemm_1_0_363_params.set_exclusive_routes = false;
    biggemm_1_0_363_params.streaming_col_par = true;
    biggemm_1_0_363_params.use_wbuf_transpose_atom_move = false;
    biggemm_1_0_363_params.write_done_used = false;
    biggemm_1_0_363_ = create_node<BigGemm>("biggemm_1_0_363", partition_1_0_, plasma_, biggemm_1_0_363_params);
    biggemm_1_0_363_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    biggemm_1_0_363_->set_mac_latency(-1.000000e+00);
    biggemm_1_0_363_->set_stage_multiplier(15);
    
    GBuffer::Params gbuf2u_1_0_365_params;
    gbuf2u_1_0_365_params.allow_pob = false;
    gbuf2u_1_0_365_params.concat = GBuffer::kConcatN;
    gbuf2u_1_0_365_params.fronting_group = 4;
    gbuf2u_1_0_365_params.fronting_group_int_col_par_vectors = 72;
    gbuf2u_1_0_365_params.head1_linear = true;
    gbuf2u_1_0_365_params.head_1_depth = 2;
    gbuf2u_1_0_365_params.layout = biggemm_1_0_360_->result_layout(BigGemm::kOutput).at_address(0).with_logical_shape({480, 256}).at_address(0);
    gbuf2u_1_0_365_params.num_iterations = 1;
    gbuf2u_1_0_365_params.write_group_layouts = {biggemm_1_0_360_->result_layouts(BigGemm::kOutput), biggemm_1_0_361_->result_layouts(BigGemm::kOutput), biggemm_1_0_362_->result_layouts(BigGemm::kOutput), biggemm_1_0_363_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_365_params.write_group_partitions = {biggemm_1_0_360_->num_partitions(), biggemm_1_0_361_->num_partitions(), biggemm_1_0_362_->num_partitions(), biggemm_1_0_363_->num_partitions()};
    gbuf2u_1_0_365_params.write_layouts_spread = true;
    gbuf2u_1_0_365_params.write_time_concat = true;
    gbuf2u_1_0_365_params.write_time_concat_slices = {72, 72, 72, 40};
    gbuf2u_1_0_365_ = create_node<GBuffer>("gbuf2u_1_0_365", partition_1_0_, plasma_, gbuf2u_1_0_365_params);
    gbuf2u_1_0_365_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    gbuf2u_1_0_365_->set_mac_latency(-1.000000e+00);
    
    BiasTransposeGrad::Params bias_transpose_grad_1_0_367_params;
    bias_transpose_grad_1_0_367_params.loss_layout = gbuf2a_1_0_418_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    bias_transpose_grad_1_0_367_ = create_node<BiasTransposeGrad>("bias_transpose_grad_1_0_367", partition_1_0_, plasma_, bias_transpose_grad_1_0_367_params);
    bias_transpose_grad_1_0_367_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    bias_transpose_grad_1_0_367_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2a_1_0_392_params;
    gbuf2a_1_0_392_params.head1_linear = true;
    gbuf2a_1_0_392_params.head_1_depth = 2;
    gbuf2a_1_0_392_params.layout = bias_transpose_grad_1_0_367_->result_layout().at_address(0);
    gbuf2a_1_0_392_params.num_iterations = 1;
    gbuf2a_1_0_392_ = create_node<GBuffer>("gbuf2a_1_0_392", partition_1_0_, plasma_, gbuf2a_1_0_392_params);
    gbuf2a_1_0_392_->set_mac_id("");
    gbuf2a_1_0_392_->set_mac_latency(-1.000000e+00);
    
    ReshapeView::Params reshape_1_0_368_params;
    reshape_1_0_368_params.input_layout = gbuf2a_1_0_392_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    reshape_1_0_368_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    reshape_1_0_368_params.reshape = {256, 1};
    reshape_1_0_368_ = create_node<ReshapeView>("reshape_1_0_368", partition_1_0_, plasma_, reshape_1_0_368_params);
    reshape_1_0_368_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    reshape_1_0_368_->set_mac_latency(-1.000000e+00);
    
    LayoutCast::Params layout_cast_1_0_369_params;
    layout_cast_1_0_369_params.checked = false;
    layout_cast_1_0_369_params.input_layout = reshape_1_0_368_->result_layout();
    layout_cast_1_0_369_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {256, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    layout_cast_1_0_369_ = create_node<LayoutCast>("layout_cast_1_0_369", partition_1_0_, plasma_, layout_cast_1_0_369_params);
    layout_cast_1_0_369_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    layout_cast_1_0_369_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_254_params;
    gbuf2u_1_0_254_params.enable_fronting_pmu = true;
    gbuf2u_1_0_254_params.head1_linear = false;
    gbuf2u_1_0_254_params.head_1_depth = 2;
    gbuf2u_1_0_254_params.head_1_transposed = true;
    gbuf2u_1_0_254_params.layout = params_.ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269.at_address(0);
    gbuf2u_1_0_254_params.loaded_by_broadcast = false;
    gbuf2u_1_0_254_params.num_iterations = 1;
    gbuf2u_1_0_254_params.write_vector_transposed = true;
    gbuf2u_1_0_254_ = create_node<GBuffer>("gbuf2u_1_0_254", partition_1_0_, plasma_, gbuf2u_1_0_254_params);
    gbuf2u_1_0_254_->set_mac_id("");
    gbuf2u_1_0_254_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_255_params;
    gbuf2u_1_0_255_params.head0_ctrl_flow_enable = true;
    gbuf2u_1_0_255_params.head0_linear = true;
    gbuf2u_1_0_255_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_255_params.head1_linear = true;
    gbuf2u_1_0_255_params.head_0_depth = 2;
    gbuf2u_1_0_255_params.head_1_depth = 2;
    gbuf2u_1_0_255_params.layout = ptconvlstm__dense_layer__linear_t_output0_bwd_->result_layout();
    gbuf2u_1_0_255_params.num_head0_rd_en = 1;
    gbuf2u_1_0_255_params.num_head1_rd_en = 1;
    gbuf2u_1_0_255_params.num_iterations = 1;
    gbuf2u_1_0_255_ = create_node<GBuffer>("gbuf2u_1_0_255", partition_1_0_, plasma_, gbuf2u_1_0_255_params);
    gbuf2u_1_0_255_->set_mac_id("");
    gbuf2u_1_0_255_->set_mac_latency(-1.000000e+00);
    
    BigGemm::Params ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.A_layout = gbuf2u_1_0_255_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf2u_1_0_254_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accum_direct_dram_store = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accum_enable_loop_buffer = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.batch_size = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.bias_accum_direct_dram_store = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_layout = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_output_pmu = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.box_per_partition = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.broadcast_hydra = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_bias = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_instrumentation = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.external_accumulator = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.external_bias_accumulator = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.external_input_a = true;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.is_streaming_output = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_col_compute_units = 3;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_partitions = 16;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.optimized_accum = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear_bwd_weight_grad_a", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_mac_latency(3.928000e+03);
    
    ParAccum::Params ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.acc_stoc_rnd = false;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.acc_stoc_rnd_seed = 43690;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.accum_version = "3";
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.batch_size = 1;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.dram_store = false;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.layout = gbuf2u_1_0_365_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({480, 256}).at_address(0);
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.partitions = {gbuf2u_1_0_365_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0)};
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params.rvrm_init_output_layout = false;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_ = create_node<ParAccum>("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_params);
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->set_mac_latency(-1.000000e+00);
    
    ParAccum::Params ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.acc_stoc_rnd = false;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.acc_stoc_rnd_seed = 43690;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.accum_version = "3";
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.batch_size = 1;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.dram_store = true;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.layout = layout_cast_1_0_369_->result_layout();
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.partitions = {layout_cast_1_0_369_->result_layout()};
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.read_credit = 1;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params.rvrm_init_output_layout = false;
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_ = create_node<ParAccum>("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_params);
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->set_mac_id("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd");
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->set_mac_latency(-1.000000e+00);
    
    GBuffer::Params gbuf2u_1_0_131_params;
    gbuf2u_1_0_131_params.head1_linear = false;
    gbuf2u_1_0_131_params.head_1_depth = 2;
    gbuf2u_1_0_131_params.layout = gbuf2u_1_0_365_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({480, 256}).with_logical_shape({480, 256}).at_address(0);
    gbuf2u_1_0_131_params.num_iterations = 1;
    gbuf2u_1_0_131_ = create_node<GBuffer>("gbuf2u_1_0_131", partition_1_0_, plasma_, gbuf2u_1_0_131_params);
    gbuf2u_1_0_131_->set_mac_id("");
    gbuf2u_1_0_131_->set_mac_latency(-1.000000e+00);
    
    ListBuffer::Params lbuf1a_1_0_393_params;
    lbuf1a_1_0_393_params.allow_oob = false;
    lbuf1a_1_0_393_params.allow_overflow = false;
    lbuf1a_1_0_393_params.base_list_tile_counters = 0;
    lbuf1a_1_0_393_params.base_max = {1, 13, 256, 3};
    lbuf1a_1_0_393_params.base_mult = {0, 0, 64, 0};
    lbuf1a_1_0_393_params.base_stride = {1, 1, 1, 1};
    lbuf1a_1_0_393_params.batch_size = 1;
    lbuf1a_1_0_393_params.depth2col = false;
    lbuf1a_1_0_393_params.enable_fronting_pmu = true;
    lbuf1a_1_0_393_params.filter_area = 0;
    lbuf1a_1_0_393_params.head1_linear = false;
    lbuf1a_1_0_393_params.head_1_depth = 1;
    lbuf1a_1_0_393_params.layout = params_.gather_gradient_output_reshape_id1__gather_list_1_0_375;
    lbuf1a_1_0_393_params.layout_data = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {480, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    lbuf1a_1_0_393_params.length_fixed = 0;
    lbuf1a_1_0_393_params.list_length = 39;
    lbuf1a_1_0_393_params.list_tiles = 1;
    lbuf1a_1_0_393_params.list_type = ListBuffer::kElement;
    lbuf1a_1_0_393_params.loaded_by_broadcast = true;
    lbuf1a_1_0_393_params.num_iterations = 1;
    lbuf1a_1_0_393_params.offset_list_tile_counters = 0;
    lbuf1a_1_0_393_params.offset_max = {1, 13, 256, 3};
    lbuf1a_1_0_393_params.offset_mult = {0, 3, 0, 1};
    lbuf1a_1_0_393_params.offset_stride = {1, 1, 1, 1};
    lbuf1a_1_0_393_params.permute = false;
    lbuf1a_1_0_393_params.use_tile_counter = false;
    lbuf1a_1_0_393_ = create_node<ListBuffer>("lbuf1a_1_0_393", partition_1_0_, plasma_, lbuf1a_1_0_393_params);
    lbuf1a_1_0_393_->set_mac_id("");
    lbuf1a_1_0_393_->set_mac_latency(-1.000000e+00);
    
    ScatterBuffer::Params sbuf1a_1_0_394_params;
    sbuf1a_1_0_394_params.element = true;
    sbuf1a_1_0_394_params.head1_ctrl_flow_enable = true;
    sbuf1a_1_0_394_params.head1_linear = false;
    sbuf1a_1_0_394_params.head1_streaming_window = true;
    sbuf1a_1_0_394_params.head_1_depth = 1;
    sbuf1a_1_0_394_params.layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {408, 256}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 0).vector_align();
    sbuf1a_1_0_394_params.length_fixed = 0;
    sbuf1a_1_0_394_params.num_iterations = 1;
    sbuf1a_1_0_394_params.read_group_packed_vectors = 13;
    sbuf1a_1_0_394_params.read_total_packed_vectors = 3328;
    sbuf1a_1_0_394_params.streaming = true;
    sbuf1a_1_0_394_params.write_group_unpacked_vectors = 39;
    sbuf1a_1_0_394_params.write_total_unpacked_vectors = 9984;
    sbuf1a_1_0_394_ = create_node<ScatterBuffer>("sbuf1a_1_0_394", partition_1_0_, plasma_, sbuf1a_1_0_394_params);
    sbuf1a_1_0_394_->set_mac_id("");
    sbuf1a_1_0_394_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section2() {
    bool layouts_match = true;
    /** Section 2, Chip 0 **/
    partition_2_0_ = create_node<SuperNode>("partition_2_0_", this, plasma_);
    
    partition_2_0_->set_section_latency(1.209249e-04);
    OptimizerSGD::Params ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.box_layout = true;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.decay = 0.0003;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.layout_dw = params_.ptconvlstm__conv_layer__bias__grad_2_0_143;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.layout_mw = params_.ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.layout_w = params_.ptconvlstm__conv_layer__bias_2_0_142;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.lr = 0.0015;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.mixp = false;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.momentum = 0;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.w_output_interface = false;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt", partition_2_0_, plasma_, ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params);
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_mac_id("ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt");
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_mac_latency(-1.000000e+00);
    
    OptimizerSGD::Params ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.box_layout = true;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.decay = 0.0003;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.layout_dw = params_.ptconvlstm__conv_layer__weight__grad_2_0_149;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.layout_mw = params_.ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.layout_w = params_.ptconvlstm__conv_layer__weight_2_0_148;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.lr = 0.0015;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.mixp = false;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.momentum = 0;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params.w_output_interface = false;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt", partition_2_0_, plasma_, ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_params);
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_mac_id("ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt");
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_mac_latency(-1.000000e+00);
    
    OptimizerSGD::Params ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.decay = 0.0003;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvlstm__dense_layer__bias__grad_2_0_155;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvlstm__dense_layer__bias_2_0_154;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.lr = 0.0015;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.mixp = false;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.momentum = 0;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    
    OptimizerSGD::Params ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.decay = 0.0003;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvlstm__dense_layer__weight__grad_2_0_161;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvlstm__dense_layer__weight_2_0_160;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.lr = 0.0015;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.mixp = false;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.momentum = 0;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("software/compiler/mac/src/pybind/py_air.cpp":1503:0): tlir.Buffer
    nbuf1a_0_0_382_->configure_node();
    PmuSetupWrite nbuf1a_0_0_382_wr_params = {};
    nbuf1a_0_0_382_->configure_wr(nbuf1a_0_0_382_wr_params);
    PmuSetupRead nbuf1a_0_0_382_rd1_params0 = {};
    SN_ASSERT(nbuf1a_0_0_382_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of split_kernel_gbuf_0_0_290");
    nbuf1a_0_0_382_->configure_rd_head_1(nbuf1a_0_0_382_rd1_params0, {1});
    
    // loc("logreg_ts.py":191:0): tlir.Buffer
    nbuf2u_0_0_173_->configure_node();
    PmuSetupWrite nbuf2u_0_0_173_wr_params = {};
    nbuf2u_0_0_173_->configure_wr(nbuf2u_0_0_173_wr_params);
    PmuSetupRead nbuf2u_0_0_173_rd1_params0 = {};
    nbuf2u_0_0_173_->configure_rd_head_1(nbuf2u_0_0_173_rd1_params0, {1, 2});
    
    // loc("logreg_ts.py":191:0): tlir.Buffer
    nbuf1u_0_0_174_->configure_node();
    PmuSetupWrite nbuf1u_0_0_174_wr_params = {};
    nbuf1u_0_0_174_->configure_wr(nbuf1u_0_0_174_wr_params);
    PmuSetupRead nbuf1u_0_0_174_rd1_params1 = {};
    nbuf1u_0_0_174_->configure_rd_head_1(nbuf1u_0_0_174_rd1_params1, {1, 2});
    
    // loc("logreg_ts.py":191:0): tlir.Index
    ptconvlstm__lambda_layer__indexselect_->set_source_context("logreg_ts.py:191:0");
    ptconvlstm__lambda_layer__indexselect_->set_op_name("tlir.Index");
    ptconvlstm__lambda_layer__indexselect_->configure_node();
    
    // loc("logreg_ts.py":212:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_176_wr_params = ptconvlstm__lambda_layer__indexselect_->write_params(Index::kOutput);
    gbuf2u_0_0_176_->configure_wr(gbuf2u_0_0_176_wr_params);
    PmuSetupRead gbuf2u_0_0_176_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_176_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__permute");
    gbuf2u_0_0_176_->configure_rd_head_1(gbuf2u_0_0_176_rd1_params0, {2, 2});
    gbuf2u_0_0_176_->configure_node();
    
    // loc("logreg_ts.py":212:0): tlir.PermuteView
    ptconvlstm__permute_->set_source_context("logreg_ts.py:212:0");
    ptconvlstm__permute_->set_op_name("tlir.PermuteView");
    ptconvlstm__permute_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_178_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_178_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__permute");
    gbuf2u_0_0_178_->configure_wr(gbuf2u_0_0_178_wr_params);
    PmuSetupRead gbuf2u_0_0_178_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_178_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape");
    gbuf2u_0_0_178_->configure_rd_head_1(gbuf2u_0_0_178_rd1_params0, {2, 2});
    gbuf2u_0_0_178_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Reshape
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->set_source_context("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape:0:0");
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":205:0): tlir.Buffer
    PmuSetupRead sbuf2u_0_0_289_rd1_params0 = biggemm_0_0_312_->input_nbuf_read_params(BigGemm::kA);
    SN_ASSERT(sbuf2u_0_0_289_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of biggemm_0_0_312");
    sbuf2u_0_0_289_rd1_params0.buffer_pace_order = true;
    sbuf2u_0_0_289_rd1_params0.buffer_pace_order_credits = biggemm_0_0_312_->wbuf_depth();
    sbuf2u_0_0_289_rd1_params0.buffer_pace_order_vectors = biggemm_0_0_312_->wbuf_vectors();
    sbuf2u_0_0_289_->configure_rd_head_1(sbuf2u_0_0_289_rd1_params0, {1});
    sbuf2u_0_0_289_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":40:0): tlir.Split
    PmuSetupWrite split_kernel_gbuf_0_0_290_wr_params = {};
    split_kernel_gbuf_0_0_290_->configure_wr(split_kernel_gbuf_0_0_290_wr_params);
    split_kernel_gbuf_0_0_290_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0");
    split_kernel_gbuf_0_0_290_->set_op_name("tlir.Split");
    split_kernel_gbuf_0_0_290_->set_batch_size_b(1);
    split_kernel_gbuf_0_0_290_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_291_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_291_->set_op_name("tlir.Linear");
    biggemm_0_0_291_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_292_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_292_->set_op_name("tlir.Linear");
    biggemm_0_0_292_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_293_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_293_->set_op_name("tlir.Linear");
    biggemm_0_0_293_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_294_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_294_->set_op_name("tlir.Linear");
    biggemm_0_0_294_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_295_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_295_->set_op_name("tlir.Linear");
    biggemm_0_0_295_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_296_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_296_->set_op_name("tlir.Linear");
    biggemm_0_0_296_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_297_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_297_->set_op_name("tlir.Linear");
    biggemm_0_0_297_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_298_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_298_->set_op_name("tlir.Linear");
    biggemm_0_0_298_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_299_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_299_->set_op_name("tlir.Linear");
    biggemm_0_0_299_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_300_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_300_->set_op_name("tlir.Linear");
    biggemm_0_0_300_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_301_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_301_->set_op_name("tlir.Linear");
    biggemm_0_0_301_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_302_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_302_->set_op_name("tlir.Linear");
    biggemm_0_0_302_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_303_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_303_->set_op_name("tlir.Linear");
    biggemm_0_0_303_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_304_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_304_->set_op_name("tlir.Linear");
    biggemm_0_0_304_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_305_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_305_->set_op_name("tlir.Linear");
    biggemm_0_0_305_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_306_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_306_->set_op_name("tlir.Linear");
    biggemm_0_0_306_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_307_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_307_->set_op_name("tlir.Linear");
    biggemm_0_0_307_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_308_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_308_->set_op_name("tlir.Linear");
    biggemm_0_0_308_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_309_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_309_->set_op_name("tlir.Linear");
    biggemm_0_0_309_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_310_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_310_->set_op_name("tlir.Linear");
    biggemm_0_0_310_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_311_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_311_->set_op_name("tlir.Linear");
    biggemm_0_0_311_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_0_0_312_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_0_0_312_->set_op_name("tlir.Linear");
    biggemm_0_0_312_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":295:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_315_wr_params = {};
    gbuf2u_0_0_315_->configure_wr(0, biggemm_0_0_291_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(1, biggemm_0_0_292_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(2, biggemm_0_0_293_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(3, biggemm_0_0_294_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(4, biggemm_0_0_295_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(5, biggemm_0_0_296_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(6, biggemm_0_0_297_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(7, biggemm_0_0_298_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(8, biggemm_0_0_299_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(9, biggemm_0_0_300_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(10, biggemm_0_0_301_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(11, biggemm_0_0_302_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(12, biggemm_0_0_303_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(13, biggemm_0_0_304_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(14, biggemm_0_0_305_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(15, biggemm_0_0_306_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(16, biggemm_0_0_307_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(17, biggemm_0_0_308_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(18, biggemm_0_0_309_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(19, biggemm_0_0_310_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(20, biggemm_0_0_311_->write_params(BigGemm::kOutput));
    gbuf2u_0_0_315_->configure_wr(21, biggemm_0_0_312_->write_params(BigGemm::kOutput));
    PmuSetupRead gbuf2u_0_0_315_rd1_params0 = bias_transpose_add_0_0_316_->read_params(BiasTransposeAdd::kInput);
    SN_ASSERT(gbuf2u_0_0_315_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of bias_transpose_add_0_0_316");
    gbuf2u_0_0_315_->configure_rd_head_1(gbuf2u_0_0_315_rd1_params0, {2, 2});
    gbuf2u_0_0_315_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":296:0): tlir.BiasTransposeAdd
    bias_transpose_add_0_0_316_->set_source_context("software/arc/src/lib/templates/ConvIm2Col.cpp:296:0");
    bias_transpose_add_0_0_316_->set_op_name("tlir.BiasTransposeAdd");
    bias_transpose_add_0_0_316_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":368:0): tlir.StreamingPermute
    streaming_transpose_0_0_317_->set_source_context("software/arc/src/lib/templates/ConvIm2Col.cpp:368:0");
    streaming_transpose_0_0_317_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_0_0_317_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_182_wr_params = streaming_transpose_0_0_317_->write_params(StreamingTranspose::kHead1Buffer);
    gbuf2u_0_0_182_->configure_wr(gbuf2u_0_0_182_wr_params);
    PmuSetupRead gbuf2u_0_0_182_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_182_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__conv1d__squeeze_Reshape");
    gbuf2u_0_0_182_->configure_rd_head_1(gbuf2u_0_0_182_rd1_params0, {2, 2});
    gbuf2u_0_0_182_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Reshape
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->set_source_context("ptconvlstm__conv_layer__conv1d__squeeze_Reshape:0:0");
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    ptconvlstm__dense_layer__linear_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__dense_layer__linear_->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_381_wr_params = ptconvlstm__dense_layer__linear_->write_params(BigGemm::kOutput);
    gbuf1a_0_0_381_->configure_wr(gbuf1a_0_0_381_wr_params);
    PmuSetupRead gbuf1a_0_0_381_rd1_params1 = {};
    SN_ASSERT(gbuf1a_0_0_381_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of bias_add_0_0_378");
    gbuf1a_0_0_381_->configure_rd_head_1(gbuf1a_0_0_381_rd1_params1, {1});
    gbuf1a_0_0_381_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AddBias
    bias_add_0_0_378_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    bias_add_0_0_378_->set_op_name("tlir.AddBias");
    bias_add_0_0_378_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_186_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_186_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of bias_add_0_0_378");
    gbuf2u_0_0_186_wr_params.is_transpose = true;
    gbuf2u_0_0_186_->configure_wr(gbuf2u_0_0_186_wr_params);
    PmuSetupRead gbuf2u_0_0_186_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_186_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__dense_layer__linear_t_output0");
    gbuf2u_0_0_186_rd1_params0.is_transpose = true;
    gbuf2u_0_0_186_->configure_rd_head_1(gbuf2u_0_0_186_rd1_params0, {2, 2});
    gbuf2u_0_0_186_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_output0_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__dense_layer__linear_t_output0_->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_output0_->configure_node();
    
    // loc("logreg_ts.py":219:0): tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_416_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_416_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0");
    gbuf2a_0_0_416_wr_params.is_transpose = true;
    gbuf2a_0_0_416_->configure_wr(gbuf2a_0_0_416_wr_params);
    PmuSetupRead gbuf2a_0_0_416_rd0_params0 = {};
    SN_ASSERT(gbuf2a_0_0_416_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of transpose_0_0_398");
    gbuf2a_0_0_416_->configure_rd_head_0(gbuf2a_0_0_416_rd0_params0, {1, 2, nbuf2a_0_0_385_->tail_depth(), 2});
    PmuSetupRead gbuf2a_0_0_416_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_416_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_0_0_402");
    gbuf2a_0_0_416_rd1_params0.is_transpose = true;
    gbuf2a_0_0_416_->configure_rd_head_1(gbuf2a_0_0_416_rd1_params0, {nbuf2a_0_0_387_->tail_depth(), nbuf2a_0_0_387_->tail_depth()});
    gbuf2a_0_0_416_->configure_node();
    
    // loc("logreg_ts.py":219:0): tlir.Transpose
    transpose_0_0_398_->set_source_context("logreg_ts.py:219:0");
    transpose_0_0_398_->set_op_name("tlir.Transpose");
    transpose_0_0_398_->configure_node();
    
    // loc("logreg_ts.py":219:0): tlir.LayoutCast
    layout_cast_0_0_399_->set_source_context("logreg_ts.py:219:0");
    layout_cast_0_0_399_->set_op_name("tlir.LayoutCast");
    layout_cast_0_0_399_->configure_node();
    
    // loc("logreg_ts.py":219:0): tlir.Reshape
    ptconvlstm__reshape_->set_source_context("logreg_ts.py:219:0");
    ptconvlstm__reshape_->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_->configure_node();
    
    // loc("logreg_ts.py":220:0): tlir.Buffer
    nbuf2u_0_0_191_->configure_node();
    PmuSetupWrite nbuf2u_0_0_191_wr_params = {};
    nbuf2u_0_0_191_->configure_wr(nbuf2u_0_0_191_wr_params);
    PmuSetupRead nbuf2u_0_0_191_rd1_params0 = {};
    SN_ASSERT(nbuf2u_0_0_191_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_0_0_322");
    nbuf2u_0_0_191_->configure_rd_head_1(nbuf2u_0_0_191_rd1_params0, {2, 2});
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_194_wr_params = {};
    gbuf2u_0_0_194_->configure_wr(gbuf2u_0_0_194_wr_params);
    PmuSetupRead gbuf2u_0_0_194_rd1_params0 = sub_0_0_323_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2u_0_0_194_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of sub_0_0_323");
    gbuf2u_0_0_194_->configure_rd_head_1(gbuf2u_0_0_194_rd1_params0, {1, nbuf2a_0_0_386_->tail_depth()});
    gbuf2u_0_0_194_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Reshape
    reshape_0_0_322_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    reshape_0_0_322_->set_op_name("tlir.Reshape");
    reshape_0_0_322_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    layout_cast_0_0_401_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    layout_cast_0_0_401_->set_op_name("tlir.LayoutCast");
    layout_cast_0_0_401_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_196_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_196_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of layout_cast_0_0_401");
    gbuf2u_0_0_196_wr_params.is_transpose = true;
    gbuf2u_0_0_196_->configure_wr(gbuf2u_0_0_196_wr_params);
    PmuSetupRead gbuf2u_0_0_196_rd1_params1 = sub_0_0_323_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf2u_0_0_196_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of sub_0_0_323");
    gbuf2u_0_0_196_rd1_params1.is_transpose = true;
    gbuf2u_0_0_196_->configure_rd_head_1(gbuf2u_0_0_196_rd1_params1, {1, nbuf2a_0_0_386_->tail_depth()});
    gbuf2u_0_0_196_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Sub
    sub_0_0_323_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    sub_0_0_323_->set_op_name("tlir.Sub");
    sub_0_0_323_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_417_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_417_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of sub_0_0_323");
    gbuf1a_0_0_417_->configure_wr(gbuf1a_0_0_417_wr_params);
    PmuSetupRead gbuf1a_0_0_417_rd0_params1 = mul_0_0_324_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_417_rd0_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of mul_0_0_324");
    gbuf1a_0_0_417_->configure_rd_head_0(gbuf1a_0_0_417_rd0_params1, {1});
    PmuSetupRead gbuf1a_0_0_417_rd1_params0 = mul_0_0_324_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_417_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of mul_0_0_324");
    gbuf1a_0_0_417_->configure_rd_head_1(gbuf1a_0_0_417_rd1_params0, {1});
    gbuf1a_0_0_417_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mul
    mul_0_0_324_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    mul_0_0_324_->set_op_name("tlir.Mul");
    mul_0_0_324_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mean
    mean_p_0_0_325_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    mean_p_0_0_325_->set_op_name("tlir.Mean");
    mean_p_0_0_325_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    layout_cast_0_0_402_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    layout_cast_0_0_402_->set_op_name("tlir.LayoutCast");
    layout_cast_0_0_402_->configure_node();
    
    // loc("logreg_ts.py":226:0): tlir.Reshape
    ptconvlstm__view_->set_source_context("logreg_ts.py:226:0");
    ptconvlstm__view_->set_op_name("tlir.Reshape");
    ptconvlstm__view_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.OutputBuffer
    output_buf_0_0_408_->configure_node();
    PmuSetupWrite output_buf_0_0_408_wr_params;
    output_buf_0_0_408_wr_params.vectors_in_column = ceiling(gbuf2a_0_0_415_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0).physical_shape().at(1), gbuf2a_0_0_415_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0).vector_elements());
    output_buf_0_0_408_wr_params.deinterleave = true;
    output_buf_0_0_408_wr_params.mode = PmuMode(PmuModeType::kNbuff, 2);
    output_buf_0_0_408_->write(output_buf_0_0_408_wr_params);
    
    // loc("logreg_ts.py":219:0): tlir.Buffer
    nbuf2a_0_0_385_->configure_node();
    PmuSetupWrite nbuf2a_0_0_385_wr_params = {};
    SN_ASSERT(nbuf2a_0_0_385_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__reshape");
    nbuf2a_0_0_385_->configure_wr(nbuf2a_0_0_385_wr_params);
    PmuSetupRead nbuf2a_0_0_385_rd1_params1 = {};
    nbuf2a_0_0_385_->configure_rd_head_1(nbuf2a_0_0_385_rd1_params1, {1});
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    nbuf2a_0_0_386_->configure_node();
    PmuSetupWrite nbuf2a_0_0_386_wr_params = {};
    SN_ASSERT(nbuf2a_0_0_386_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of mean_p_0_0_325");
    nbuf2a_0_0_386_->configure_wr(nbuf2a_0_0_386_wr_params);
    PmuSetupRead nbuf2a_0_0_386_rd1_params1 = {};
    nbuf2a_0_0_386_->configure_rd_head_1(nbuf2a_0_0_386_rd1_params1, {1});
    
    // loc("logreg_ts.py":226:0): tlir.Buffer
    nbuf2a_0_0_387_->configure_node();
    PmuSetupWrite nbuf2a_0_0_387_wr_params = {};
    SN_ASSERT(nbuf2a_0_0_387_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__view");
    nbuf2a_0_0_387_->configure_wr(nbuf2a_0_0_387_wr_params);
    PmuSetupRead nbuf2a_0_0_387_rd1_params1 = {};
    nbuf2a_0_0_387_->configure_rd_head_1(nbuf2a_0_0_387_rd1_params1, {1});
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_180_wr_params = {};
    SN_ASSERT(gbuf2u_0_0_180_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape");
    gbuf2u_0_0_180_->configure_wr(gbuf2u_0_0_180_wr_params);
    PmuSetupRead gbuf2u_0_0_180_rd1_params0 = {};
    gbuf2u_0_0_180_rd1_params0.buffer_gather_list = true;
    gbuf2u_0_0_180_rd1_params0.buffer_overflow = false;
    gbuf2u_0_0_180_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_0_0_180_rd1_params0.buffer_gather_max = {1, 96, 5, 32};
    gbuf2u_0_0_180_rd1_params0.buffer_gather_stride = {1, 32, 1, 1};
    gbuf2u_0_0_180_rd1_params0.buffer_gather_mult = {0, 0, 64, 0};
    auto sbuf2u_0_0_289_scatter_control = sbuf2u_0_0_289_->get_pacing_control();
    gbuf2u_0_0_180_rd1_params0.buffer_pace_order  = sbuf2u_0_0_289_scatter_control.enable;
    gbuf2u_0_0_180_rd1_params0.buffer_pace_order_credits = sbuf2u_0_0_289_scatter_control.credits;
    gbuf2u_0_0_180_rd1_params0.buffer_pace_order_vectors = sbuf2u_0_0_289_scatter_control.vectors;
    gbuf2u_0_0_180_rd1_params0.buffer_pace_read_ceiling = sbuf2u_0_0_289_scatter_control.ceiling;
    gbuf2u_0_0_180_->configure_rd_head_1(gbuf2u_0_0_180_rd1_params0, {2, 2});
    gbuf2u_0_0_180_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_415_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_415_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv1d__squeeze_Reshape");
    gbuf2a_0_0_415_->configure_wr(gbuf2a_0_0_415_wr_params);
    PmuSetupRead gbuf2a_0_0_415_rd0_params0 = {};
    gbuf2a_0_0_415_->configure_rd_head_0(gbuf2a_0_0_415_rd0_params0, {2});
    PmuSetupRead gbuf2a_0_0_415_rd1_params1 = ptconvlstm__dense_layer__linear_->input_nbuf_read_params(BigGemm::kB);
    gbuf2a_0_0_415_->configure_rd_head_1(gbuf2a_0_0_415_rd1_params1, {1, 2});
    gbuf2a_0_0_415_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":200:0): tlir.Buffer
    lbuf1a_0_0_383_->set_data_buffer(gbuf2u_0_0_180_, 1);
    PmuSetupWrite lbuf1a_0_0_383_wr_params = {};
    lbuf1a_0_0_383_->configure_wr(lbuf1a_0_0_383_wr_params);
    lbuf1a_0_0_383_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    nbuf1a_0_0_382_->finalize();
    nbuf2u_0_0_173_->finalize();
    nbuf1u_0_0_174_->finalize();
    ptconvlstm__lambda_layer__indexselect_->finalize();
    gbuf2u_0_0_176_->finalize();
    ptconvlstm__permute_->finalize();
    gbuf2u_0_0_178_->finalize();
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->finalize();
    gbuf2u_0_0_180_->finalize();
    lbuf1a_0_0_383_->finalize();
    sbuf2u_0_0_289_->finalize();
    split_kernel_gbuf_0_0_290_->finalize();
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
    biggemm_0_0_311_->finalize();
    biggemm_0_0_312_->finalize();
    gbuf2u_0_0_315_->finalize();
    bias_transpose_add_0_0_316_->finalize();
    streaming_transpose_0_0_317_->finalize();
    gbuf2u_0_0_182_->finalize();
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->finalize();
    gbuf2a_0_0_415_->finalize();
    ptconvlstm__dense_layer__linear_->finalize();
    gbuf1a_0_0_381_->finalize();
    bias_add_0_0_378_->finalize();
    gbuf2u_0_0_186_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_->finalize();
    gbuf2a_0_0_416_->finalize();
    transpose_0_0_398_->finalize();
    layout_cast_0_0_399_->finalize();
    ptconvlstm__reshape_->finalize();
    nbuf2u_0_0_191_->finalize();
    gbuf2u_0_0_194_->finalize();
    reshape_0_0_322_->finalize();
    layout_cast_0_0_401_->finalize();
    gbuf2u_0_0_196_->finalize();
    sub_0_0_323_->finalize();
    gbuf1a_0_0_417_->finalize();
    mul_0_0_324_->finalize();
    mean_p_0_0_325_->finalize();
    layout_cast_0_0_402_->finalize();
    ptconvlstm__view_->finalize();
    output_buf_0_0_408_->finalize();
    nbuf2a_0_0_385_->finalize();
    nbuf2a_0_0_386_->finalize();
    nbuf2a_0_0_387_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("software/compiler/mac/src/pybind/py_air.cpp":1503:0): tlir.Buffer
    connect_by_interface(get_connect_interface(nbuf1a_0_0_382_->output_list(NBuffer::Output::kHead1Buffer)), split_kernel_gbuf_0_0_290_->get_connect_interface(KernelGBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":191:0): tlir.Buffer
    for (auto *input : ptconvlstm__lambda_layer__indexselect_->input_list(Index::kLookupTensor)) {
        PmuSetupWrite nbuf2u_0_0_173_1_wr_params = {};
        nbuf2u_0_0_173_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(nbuf2u_0_0_173_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0), nbuf2u_0_0_173_1_wr_params);
    }
    connect_by_interface(get_connect_interface(nbuf2u_0_0_173_->output_list(NBuffer::Output::kHead1Buffer)), ptconvlstm__lambda_layer__indexselect_->get_connect_interface(Index::kLookupTensor, true));
    // loc("logreg_ts.py":191:0): tlir.Buffer
    for (auto *input : ptconvlstm__lambda_layer__indexselect_->input_list(Index::kIndexTensor)) {
        PmuSetupWrite nbuf1u_0_0_174_1_wr_params = {};
        nbuf1u_0_0_174_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(nbuf1u_0_0_174_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0), nbuf1u_0_0_174_1_wr_params);
    }
    connect_by_interface(get_connect_interface(nbuf1u_0_0_174_->output_list(NBuffer::Output::kHead1Buffer)), ptconvlstm__lambda_layer__indexselect_->get_connect_interface(Index::kIndexTensor, true));
    // loc("logreg_ts.py":191:0): tlir.Index
    connect_by_interface(ptconvlstm__lambda_layer__indexselect_->get_connect_interface(Index::kOutput, false), gbuf2u_0_0_176_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":212:0): tlir.Buffer
    // loc("logreg_ts.py":212:0): tlir.PermuteView
    connect_by_interface(gbuf2u_0_0_176_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_0_0_178_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Buffer
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Reshape
    connect_by_interface(gbuf2u_0_0_178_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_0_0_180_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    connect_by_interface(gbuf2u_0_0_180_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf2u_0_0_289_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":200:0): tlir.Buffer
    connect_1_to_n(lbuf1a_0_0_383_->output(ListBuffer::kGatherAddress), gbuf2u_0_0_180_->input_list(GBuffer::get_read_scalar_input(1)));
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":200:0): tlir.Gather
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":205:0): tlir.Buffer
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_291_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_292_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_293_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_294_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_295_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_296_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_297_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_298_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_299_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_300_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_301_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_302_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_303_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_304_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_305_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_306_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_307_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_308_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_309_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_310_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_311_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_0_0_289_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_0_0_312_->get_connect_interface(BigGemm::kA, true));
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":40:0): tlir.Split
    std::vector<DataSink *> biggemm_0_0_291_schema_sinks = {};
    for (auto sink : biggemm_0_0_291_->input_list(BigGemm::kB)) {
        biggemm_0_0_291_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_291_connect_schemas = {};
    biggemm_0_0_291_connect_schemas.push_back(biggemm_0_0_291_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 0)), biggemm_0_0_291_schema_sinks, std::move(biggemm_0_0_291_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_292_schema_sinks = {};
    for (auto sink : biggemm_0_0_292_->input_list(BigGemm::kB)) {
        biggemm_0_0_292_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_292_connect_schemas = {};
    biggemm_0_0_292_connect_schemas.push_back(biggemm_0_0_292_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 1)), biggemm_0_0_292_schema_sinks, std::move(biggemm_0_0_292_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_293_schema_sinks = {};
    for (auto sink : biggemm_0_0_293_->input_list(BigGemm::kB)) {
        biggemm_0_0_293_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_293_connect_schemas = {};
    biggemm_0_0_293_connect_schemas.push_back(biggemm_0_0_293_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 2)), biggemm_0_0_293_schema_sinks, std::move(biggemm_0_0_293_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_294_schema_sinks = {};
    for (auto sink : biggemm_0_0_294_->input_list(BigGemm::kB)) {
        biggemm_0_0_294_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_294_connect_schemas = {};
    biggemm_0_0_294_connect_schemas.push_back(biggemm_0_0_294_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 3)), biggemm_0_0_294_schema_sinks, std::move(biggemm_0_0_294_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_295_schema_sinks = {};
    for (auto sink : biggemm_0_0_295_->input_list(BigGemm::kB)) {
        biggemm_0_0_295_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_295_connect_schemas = {};
    biggemm_0_0_295_connect_schemas.push_back(biggemm_0_0_295_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 4)), biggemm_0_0_295_schema_sinks, std::move(biggemm_0_0_295_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_296_schema_sinks = {};
    for (auto sink : biggemm_0_0_296_->input_list(BigGemm::kB)) {
        biggemm_0_0_296_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_296_connect_schemas = {};
    biggemm_0_0_296_connect_schemas.push_back(biggemm_0_0_296_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 5)), biggemm_0_0_296_schema_sinks, std::move(biggemm_0_0_296_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_297_schema_sinks = {};
    for (auto sink : biggemm_0_0_297_->input_list(BigGemm::kB)) {
        biggemm_0_0_297_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_297_connect_schemas = {};
    biggemm_0_0_297_connect_schemas.push_back(biggemm_0_0_297_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 6)), biggemm_0_0_297_schema_sinks, std::move(biggemm_0_0_297_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_298_schema_sinks = {};
    for (auto sink : biggemm_0_0_298_->input_list(BigGemm::kB)) {
        biggemm_0_0_298_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_298_connect_schemas = {};
    biggemm_0_0_298_connect_schemas.push_back(biggemm_0_0_298_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 7)), biggemm_0_0_298_schema_sinks, std::move(biggemm_0_0_298_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_299_schema_sinks = {};
    for (auto sink : biggemm_0_0_299_->input_list(BigGemm::kB)) {
        biggemm_0_0_299_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_299_connect_schemas = {};
    biggemm_0_0_299_connect_schemas.push_back(biggemm_0_0_299_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 8)), biggemm_0_0_299_schema_sinks, std::move(biggemm_0_0_299_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_300_schema_sinks = {};
    for (auto sink : biggemm_0_0_300_->input_list(BigGemm::kB)) {
        biggemm_0_0_300_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_300_connect_schemas = {};
    biggemm_0_0_300_connect_schemas.push_back(biggemm_0_0_300_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 9)), biggemm_0_0_300_schema_sinks, std::move(biggemm_0_0_300_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_301_schema_sinks = {};
    for (auto sink : biggemm_0_0_301_->input_list(BigGemm::kB)) {
        biggemm_0_0_301_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_301_connect_schemas = {};
    biggemm_0_0_301_connect_schemas.push_back(biggemm_0_0_301_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 10)), biggemm_0_0_301_schema_sinks, std::move(biggemm_0_0_301_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_302_schema_sinks = {};
    for (auto sink : biggemm_0_0_302_->input_list(BigGemm::kB)) {
        biggemm_0_0_302_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_302_connect_schemas = {};
    biggemm_0_0_302_connect_schemas.push_back(biggemm_0_0_302_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 11)), biggemm_0_0_302_schema_sinks, std::move(biggemm_0_0_302_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_303_schema_sinks = {};
    for (auto sink : biggemm_0_0_303_->input_list(BigGemm::kB)) {
        biggemm_0_0_303_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_303_connect_schemas = {};
    biggemm_0_0_303_connect_schemas.push_back(biggemm_0_0_303_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 12)), biggemm_0_0_303_schema_sinks, std::move(biggemm_0_0_303_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_304_schema_sinks = {};
    for (auto sink : biggemm_0_0_304_->input_list(BigGemm::kB)) {
        biggemm_0_0_304_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_304_connect_schemas = {};
    biggemm_0_0_304_connect_schemas.push_back(biggemm_0_0_304_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 13)), biggemm_0_0_304_schema_sinks, std::move(biggemm_0_0_304_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_305_schema_sinks = {};
    for (auto sink : biggemm_0_0_305_->input_list(BigGemm::kB)) {
        biggemm_0_0_305_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_305_connect_schemas = {};
    biggemm_0_0_305_connect_schemas.push_back(biggemm_0_0_305_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 14)), biggemm_0_0_305_schema_sinks, std::move(biggemm_0_0_305_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_306_schema_sinks = {};
    for (auto sink : biggemm_0_0_306_->input_list(BigGemm::kB)) {
        biggemm_0_0_306_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_306_connect_schemas = {};
    biggemm_0_0_306_connect_schemas.push_back(biggemm_0_0_306_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 15)), biggemm_0_0_306_schema_sinks, std::move(biggemm_0_0_306_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_307_schema_sinks = {};
    for (auto sink : biggemm_0_0_307_->input_list(BigGemm::kB)) {
        biggemm_0_0_307_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_307_connect_schemas = {};
    biggemm_0_0_307_connect_schemas.push_back(biggemm_0_0_307_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 16)), biggemm_0_0_307_schema_sinks, std::move(biggemm_0_0_307_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_308_schema_sinks = {};
    for (auto sink : biggemm_0_0_308_->input_list(BigGemm::kB)) {
        biggemm_0_0_308_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_308_connect_schemas = {};
    biggemm_0_0_308_connect_schemas.push_back(biggemm_0_0_308_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 17)), biggemm_0_0_308_schema_sinks, std::move(biggemm_0_0_308_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_309_schema_sinks = {};
    for (auto sink : biggemm_0_0_309_->input_list(BigGemm::kB)) {
        biggemm_0_0_309_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_309_connect_schemas = {};
    biggemm_0_0_309_connect_schemas.push_back(biggemm_0_0_309_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 18)), biggemm_0_0_309_schema_sinks, std::move(biggemm_0_0_309_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_310_schema_sinks = {};
    for (auto sink : biggemm_0_0_310_->input_list(BigGemm::kB)) {
        biggemm_0_0_310_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_310_connect_schemas = {};
    biggemm_0_0_310_connect_schemas.push_back(biggemm_0_0_310_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 19)), biggemm_0_0_310_schema_sinks, std::move(biggemm_0_0_310_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_311_schema_sinks = {};
    for (auto sink : biggemm_0_0_311_->input_list(BigGemm::kB)) {
        biggemm_0_0_311_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_311_connect_schemas = {};
    biggemm_0_0_311_connect_schemas.push_back(biggemm_0_0_311_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 20)), biggemm_0_0_311_schema_sinks, std::move(biggemm_0_0_311_connect_schemas));
    std::vector<DataSink *> biggemm_0_0_312_schema_sinks = {};
    for (auto sink : biggemm_0_0_312_->input_list(BigGemm::kB)) {
        biggemm_0_0_312_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_0_0_312_connect_schemas = {};
    biggemm_0_0_312_connect_schemas.push_back(biggemm_0_0_312_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_0_0_290_->output_list(GBuffer::get_head_output(1, 21)), biggemm_0_0_312_schema_sinks, std::move(biggemm_0_0_312_connect_schemas));
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_291_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_291_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_292_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_292_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(1, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_293_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_293_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(2, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_294_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_294_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(3, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_295_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_295_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(4, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_296_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_296_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(5, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_297_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_297_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(6, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_298_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_298_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(7, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_299_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_299_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(8, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_300_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_300_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(9, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_301_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_301_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(10, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_302_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_302_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(11, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_303_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_303_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(12, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_304_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_304_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(13, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_305_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_305_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(14, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_306_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_306_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(15, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_307_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_307_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(16, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_308_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_308_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(17, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_309_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_309_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(18, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_310_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_310_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(19, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_311_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_311_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(20, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_0_0_312_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_0_0_312_->output_list(BigGemm::get_partition_output(p)), gbuf2u_0_0_315_->input_list(gbuf2u_0_0_315_->get_tail_input(21, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":100:0): tlir.ConcatView
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":295:0): tlir.Buffer
    connect_by_interface(gbuf2u_0_0_315_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_transpose_add_0_0_316_->get_connect_interface(BiasTransposeAdd::kInput, true));
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":296:0): tlir.BiasTransposeAdd
    connect_by_interface(bias_transpose_add_0_0_316_->get_connect_interface(BiasTransposeAdd::kOutput, false), streaming_transpose_0_0_317_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":368:0): tlir.StreamingPermute
    connect_by_interface(streaming_transpose_0_0_317_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), gbuf2u_0_0_182_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Reshape
    connect_by_interface(gbuf2u_0_0_182_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_415_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    connect_by_interface(gbuf2a_0_0_415_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), output_buf_0_0_408_->get_connect_interface(Buf::Input::kInput, true));
    { // Connect partitioned input
        for(int64_t i = 0; i < ptconvlstm__dense_layer__linear_->get_b_input_partitions(); ++i) {
            connect_with_schema(gbuf2a_0_0_415_->output(gbuf2a_0_0_415_->get_head_output(1, 0, i)), ptconvlstm__dense_layer__linear_->input_list(ptconvlstm__dense_layer__linear_->get_partition_input(i+1)), ptconvlstm__dense_layer__linear_->get_connect_schema());
        }
    } // End partitioned input
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvlstm__dense_layer__linear_->num_partitions(); ++p) {
            connect_m_to_n(ptconvlstm__dense_layer__linear_->output_list(BigGemm::get_partition_output(p)), gbuf1a_0_0_381_->input_list(gbuf1a_0_0_381_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf1a_0_0_381_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_add_0_0_378_->get_connect_interface(BiasAdd::Input::kInput, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AddBias
    connect_by_interface(bias_add_0_0_378_->get_connect_interface(BiasAdd::Output::kOutput, false), gbuf2u_0_0_186_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    connect_by_interface(gbuf2u_0_0_186_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_416_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":219:0): tlir.Buffer
    connect_by_interface(gbuf2a_0_0_416_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), transpose_0_0_398_->get_connect_interface(Transpose::kDefaultInput, true));
    connect_by_interface(gbuf2a_0_0_416_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), gbuf2u_0_0_194_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":219:0): tlir.Transpose
    // loc("logreg_ts.py":219:0): tlir.LayoutCast
    // loc("logreg_ts.py":219:0): tlir.Reshape
    connect_by_interface(transpose_0_0_398_->get_connect_interface(Transpose::kDefaultOutput, false), nbuf2a_0_0_385_->get_connect_interface(NBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":220:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf2u_0_0_194_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_323_->get_connect_interface(BinaryOps::Input::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Reshape
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    connect_by_interface(nbuf2u_0_0_191_->get_connect_interface(NBuffer::Output::kHead1Buffer, false), gbuf2u_0_0_196_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf2u_0_0_196_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_323_->get_connect_interface(BinaryOps::Input::kB, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Sub
    connect_by_interface(sub_0_0_323_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_0_0_417_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf1a_0_0_417_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), mul_0_0_324_->get_connect_interface(BinaryOps::Input::kB, true));
    connect_by_interface(gbuf1a_0_0_417_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), mul_0_0_324_->get_connect_interface(BinaryOps::Input::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mul
    connect_by_interface(mul_0_0_324_->get_connect_interface(BinaryOps::Output::kOut, false), mean_p_0_0_325_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mean
    connect_by_interface(mean_p_0_0_325_->get_connect_interface(UnaryOps::kDefaultOutput, false), nbuf2a_0_0_386_->get_connect_interface(NBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    // loc("logreg_ts.py":226:0): tlir.Reshape
    connect_by_interface(gbuf2a_0_0_416_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), nbuf2a_0_0_387_->get_connect_interface(NBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.OutputBuffer
    // loc("logreg_ts.py":219:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    // loc("logreg_ts.py":226:0): tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    connect_ctl_1_to_n(gbuf2u_0_0_176_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf2u_0_0_173_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_176_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf2u_0_0_173_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_176_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf1u_0_0_174_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_176_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf1u_0_0_174_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_176_->ctrl_output(GBuffer::Output::kPacingWrDone), ptconvlstm__lambda_layer__indexselect_->ctrl_input_list(Index::CtrlInput::kWrSpecialDone));
    connect_ctl_1_to_n(gbuf2u_0_0_178_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_176_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_178_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_176_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_180_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_178_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_180_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_178_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_180_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_180_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(sbuf2u_0_0_289_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_0_0_180_->ctrl_input_list(gbuf2u_0_0_180_->get_pacing_order_enable(1)));
    auto sbuf2u_0_0_289_pacing_order_barrier1 = plasma_->create_barrier({biggemm_0_0_291_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_292_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_293_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_294_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_295_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_296_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_297_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_298_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_299_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_300_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_301_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_302_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_303_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_304_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_305_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_306_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_307_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_308_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_309_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_310_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_311_->ctrl_output(BigGemm::kRdDoneA), biggemm_0_0_312_->ctrl_output(BigGemm::kRdDoneA)});
    connect_ctl_1_to_n(sbuf2u_0_0_289_pacing_order_barrier1, sbuf2u_0_0_289_->ctrl_input_list(sbuf2u_0_0_289_->get_pacing_order_enable(1)));
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_291_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(0, p)), biggemm_0_0_291_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_291_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(0, p)), biggemm_0_0_291_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_291_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_292_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(1, p)), biggemm_0_0_292_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_292_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(1, p)), biggemm_0_0_292_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_292_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_293_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(2, p)), biggemm_0_0_293_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_293_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(2, p)), biggemm_0_0_293_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_293_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_294_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(3, p)), biggemm_0_0_294_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_294_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(3, p)), biggemm_0_0_294_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_294_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_295_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(4, p)), biggemm_0_0_295_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_295_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(4, p)), biggemm_0_0_295_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_295_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_296_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(5, p)), biggemm_0_0_296_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_296_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(5, p)), biggemm_0_0_296_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_296_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_297_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(6, p)), biggemm_0_0_297_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_297_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(6, p)), biggemm_0_0_297_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_297_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_298_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(7, p)), biggemm_0_0_298_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_298_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(7, p)), biggemm_0_0_298_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_298_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_299_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(8, p)), biggemm_0_0_299_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_299_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(8, p)), biggemm_0_0_299_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_299_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_300_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(9, p)), biggemm_0_0_300_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_300_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(9, p)), biggemm_0_0_300_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_300_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_301_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(10, p)), biggemm_0_0_301_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_301_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(10, p)), biggemm_0_0_301_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_301_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_302_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(11, p)), biggemm_0_0_302_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_302_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(11, p)), biggemm_0_0_302_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_302_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_303_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(12, p)), biggemm_0_0_303_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_303_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(12, p)), biggemm_0_0_303_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_303_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_304_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(13, p)), biggemm_0_0_304_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_304_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(13, p)), biggemm_0_0_304_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_304_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_305_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(14, p)), biggemm_0_0_305_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_305_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(14, p)), biggemm_0_0_305_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_305_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_306_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(15, p)), biggemm_0_0_306_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_306_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(15, p)), biggemm_0_0_306_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_306_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_307_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(16, p)), biggemm_0_0_307_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_307_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(16, p)), biggemm_0_0_307_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_307_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_308_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(17, p)), biggemm_0_0_308_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_308_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(17, p)), biggemm_0_0_308_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_308_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_309_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(18, p)), biggemm_0_0_309_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_309_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(18, p)), biggemm_0_0_309_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_309_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_310_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(19, p)), biggemm_0_0_310_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_310_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(19, p)), biggemm_0_0_310_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_310_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_311_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(20, p)), biggemm_0_0_311_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_311_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(20, p)), biggemm_0_0_311_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_311_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_0_0_312_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_pacing_wr_done(21, p)), biggemm_0_0_312_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_0_0_312_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_0_0_315_->ctrl_output(gbuf2u_0_0_315_->get_fronting_rd_done(21, p)), biggemm_0_0_312_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_0_0_312_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    connect_ctl_1_to_n(gbuf2u_0_0_182_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_315_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_182_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_315_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_415_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_182_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_415_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_182_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(output_buf_0_0_408_->pmu()->pmu_ctx(node_constants::PmuOp::kRead0, node_constants::Context::kZero)->control_src(node_constants::SymbolicCtrlPort::kRd0Done), gbuf2a_0_0_415_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_186_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_415_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_186_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_415_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvlstm__dense_layer__linear_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf1a_0_0_381_->ctrl_output(gbuf1a_0_0_381_->get_pacing_wr_done(0, p)), ptconvlstm__dense_layer__linear_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvlstm__dense_layer__linear_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf1a_0_0_381_->ctrl_output(gbuf1a_0_0_381_->get_fronting_rd_done(0, p)), ptconvlstm__dense_layer__linear_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvlstm__dense_layer__linear_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    connect_ctl_1_to_n(gbuf2a_0_0_416_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_186_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_416_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_186_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(nbuf2a_0_0_385_->ctrl_output(NBuffer::Output::kTailWrDone), gbuf2a_0_0_416_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_194_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_416_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(nbuf2a_0_0_385_->ctrl_output(NBuffer::Output::kTailRdDone), gbuf2a_0_0_416_->ctrl_input_list(GBuffer::Input::kHead0RdEn2));
    connect_ctl_1_to_n(gbuf2u_0_0_194_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_416_->ctrl_input_list(GBuffer::Input::kHead0RdEn3));
    connect_ctl_1_to_n(nbuf2a_0_0_387_->ctrl_output(NBuffer::Output::kTailWrDone), gbuf2a_0_0_416_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(nbuf2a_0_0_387_->ctrl_output(NBuffer::Output::kTailRdDone), gbuf2a_0_0_416_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_0_0_196_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf2u_0_0_191_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_196_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf2u_0_0_191_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(nbuf2a_0_0_386_->ctrl_output(NBuffer::Output::kTailWrDone), gbuf2u_0_0_194_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(nbuf2a_0_0_386_->ctrl_output(NBuffer::Output::kTailRdDone), gbuf2u_0_0_194_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(nbuf2a_0_0_386_->ctrl_output(NBuffer::Output::kTailWrDone), gbuf2u_0_0_196_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(nbuf2a_0_0_386_->ctrl_output(NBuffer::Output::kTailRdDone), gbuf2u_0_0_196_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kinp_window_slice_1_0_0_83, nbuf1u_0_0_174_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__conv_layer__weight_0_0_87, nbuf1a_0_0_382_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__conv_layer__bias_0_0_88, bias_transpose_add_0_0_316_->input_list(BiasTransposeAdd::kBias));
    // Input ptconvlstm__dense_layer__weight_0_0_92 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_0_0_93 uses a weight buffer
    add_node_input(kinp_window_0_0_262, nbuf2u_0_0_173_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374, lbuf1a_0_0_383_->input_list(ListBuffer::Input::kTailBuffer));
    add_node_input(kout_window_0_0_263, nbuf2u_0_0_191_->input_list(NBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270, output_buf_0_0_408_->output_list(Buf::Output::kOutput));
    add_node_output(kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271, nbuf2a_0_0_385_->output_list(NBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__criterion__mseloss__outputs__0_0_0_272, nbuf2a_0_0_386_->output_list(NBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__view__outputs__0_0_0_273, nbuf2a_0_0_387_->output_list(NBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    nbuf1a_0_0_382_->set_placement_hint({1, 0});
    nbuf2u_0_0_173_->set_placement_hint({1, 0});
    nbuf1u_0_0_174_->set_placement_hint({1, 0});
    ptconvlstm__lambda_layer__indexselect_->set_placement_hint({1, 0});
    gbuf2u_0_0_176_->set_placement_hint({1, 0});
    ptconvlstm__permute_->set_placement_hint({1, 0});
    gbuf2u_0_0_178_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_->set_placement_hint({1, 0});
    gbuf2u_0_0_180_->set_placement_hint({1, 0});
    lbuf1a_0_0_383_->set_placement_hint({1, 0});
    sbuf2u_0_0_289_->set_placement_hint({1, 0});
    split_kernel_gbuf_0_0_290_->set_placement_hint({1, 0});
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
    biggemm_0_0_311_->set_placement_hint({1, 0});
    biggemm_0_0_312_->set_placement_hint({1, 0});
    gbuf2u_0_0_315_->set_placement_hint({1, 0});
    bias_transpose_add_0_0_316_->set_placement_hint({1, 0});
    streaming_transpose_0_0_317_->set_placement_hint({1, 0});
    gbuf2u_0_0_182_->set_placement_hint({1, 0});
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_->set_placement_hint({1, 0});
    gbuf2a_0_0_415_->set_placement_hint({1, 0});
    ptconvlstm__dense_layer__linear_->set_placement_hint({1, 0});
    gbuf1a_0_0_381_->set_placement_hint({1, 0});
    bias_add_0_0_378_->set_placement_hint({1, 0});
    gbuf2u_0_0_186_->set_placement_hint({1, 0});
    ptconvlstm__dense_layer__linear_t_output0_->set_placement_hint({1, 0});
    gbuf2a_0_0_416_->set_placement_hint({1, 0});
    transpose_0_0_398_->set_placement_hint({1, 0});
    layout_cast_0_0_399_->set_placement_hint({1, 0});
    ptconvlstm__reshape_->set_placement_hint({1, 0});
    nbuf2u_0_0_191_->set_placement_hint({1, 0});
    gbuf2u_0_0_194_->set_placement_hint({1, 0});
    reshape_0_0_322_->set_placement_hint({1, 0});
    layout_cast_0_0_401_->set_placement_hint({1, 0});
    gbuf2u_0_0_196_->set_placement_hint({1, 0});
    sub_0_0_323_->set_placement_hint({1, 0});
    gbuf1a_0_0_417_->set_placement_hint({1, 0});
    mul_0_0_324_->set_placement_hint({1, 0});
    mean_p_0_0_325_->set_placement_hint({1, 0});
    layout_cast_0_0_402_->set_placement_hint({1, 0});
    ptconvlstm__view_->set_placement_hint({1, 0});
    output_buf_0_0_408_->set_placement_hint({1, 0});
    nbuf2a_0_0_385_->set_placement_hint({1, 0});
    nbuf2a_0_0_386_->set_placement_hint({1, 0});
    nbuf2a_0_0_387_->set_placement_hint({1, 0});
    
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
    partition_placement->assign_units(partition_0_0, {output_buf_0_0_408_->pmu()});
    
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
    // loc("logreg_ts.py":220:0): tlir.Buffer
    nbuf2u_1_0_213_->configure_node();
    PmuSetupWrite nbuf2u_1_0_213_wr_params = {};
    nbuf2u_1_0_213_->configure_wr(nbuf2u_1_0_213_wr_params);
    PmuSetupRead nbuf2u_1_0_213_rd1_params0 = {};
    SN_ASSERT(nbuf2u_1_0_213_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_1_0_328");
    nbuf2u_1_0_213_->configure_rd_head_1(nbuf2u_1_0_213_rd1_params0, {2, 2});
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    nbuf2u_1_0_216_->configure_node();
    PmuSetupWrite nbuf2u_1_0_216_wr_params = {};
    nbuf2u_1_0_216_->configure_wr(nbuf2u_1_0_216_wr_params);
    PmuSetupRead nbuf2u_1_0_216_rd1_params0 = ptconvlstm__criterion__mseloss_bwd_expand_->read_params();
    SN_ASSERT(nbuf2u_1_0_216_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__criterion__mseloss_bwd_expand");
    nbuf2u_1_0_216_->configure_rd_head_1(nbuf2u_1_0_216_rd1_params0, {1, 2});
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.SumGrad
    ptconvlstm__criterion__mseloss_bwd_expand_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__criterion__mseloss_bwd_expand_->set_op_name("tlir.SumGrad");
    ptconvlstm__criterion__mseloss_bwd_expand_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    nbuf2u_1_0_219_->configure_node();
    PmuSetupWrite nbuf2u_1_0_219_wr_params = {};
    nbuf2u_1_0_219_->configure_wr(nbuf2u_1_0_219_wr_params);
    PmuSetupRead nbuf2u_1_0_219_rd1_params0 = ptconvlstm__criterion__mseloss_bwd_sub_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(nbuf2u_1_0_219_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__criterion__mseloss_bwd_sub");
    nbuf2u_1_0_219_->configure_rd_head_1(nbuf2u_1_0_219_rd1_params0, {1, 2});
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Reshape
    reshape_1_0_328_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    reshape_1_0_328_->set_op_name("tlir.Reshape");
    reshape_1_0_328_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_221_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_221_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_328");
    gbuf2u_1_0_221_->configure_wr(gbuf2u_1_0_221_wr_params);
    PmuSetupRead gbuf2u_1_0_221_rd1_params1 = ptconvlstm__criterion__mseloss_bwd_sub_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf2u_1_0_221_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__criterion__mseloss_bwd_sub");
    gbuf2u_1_0_221_->configure_rd_head_1(gbuf2u_1_0_221_rd1_params1, {1, 2});
    gbuf2u_1_0_221_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Sub
    ptconvlstm__criterion__mseloss_bwd_sub_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__criterion__mseloss_bwd_sub_->set_op_name("tlir.Sub");
    ptconvlstm__criterion__mseloss_bwd_sub_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Scale
    ptconvlstm__criterion__mseloss_bwd_scale_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__criterion__mseloss_bwd_scale_->set_op_name("tlir.Scale");
    ptconvlstm__criterion__mseloss_bwd_scale_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_224_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_224_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__criterion__mseloss_bwd_scale");
    gbuf2u_1_0_224_->configure_wr(gbuf2u_1_0_224_wr_params);
    PmuSetupRead gbuf2u_1_0_224_rd1_params0 = ptconvlstm__criterion__mseloss_bwd_mul_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2u_1_0_224_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__criterion__mseloss_bwd_mul");
    gbuf2u_1_0_224_->configure_rd_head_1(gbuf2u_1_0_224_rd1_params0, {1, 2});
    gbuf2u_1_0_224_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_225_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_225_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__criterion__mseloss_bwd_expand");
    gbuf2u_1_0_225_->configure_wr(gbuf2u_1_0_225_wr_params);
    PmuSetupRead gbuf2u_1_0_225_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_225_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_1_0_413");
    gbuf2u_1_0_225_->configure_rd_head_1(gbuf2u_1_0_225_rd1_params0, {1, 2});
    gbuf2u_1_0_225_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    layout_cast_1_0_413_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    layout_cast_1_0_413_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_413_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mul
    ptconvlstm__criterion__mseloss_bwd_mul_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__criterion__mseloss_bwd_mul_->set_op_name("tlir.Mul");
    ptconvlstm__criterion__mseloss_bwd_mul_->configure_node();
    
    // loc("logreg_ts.py":226:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_228_wr_params = {};
    gbuf2u_1_0_228_->configure_wr(gbuf2u_1_0_228_wr_params);
    PmuSetupRead gbuf2u_1_0_228_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_228_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__view_bwd");
    gbuf2u_1_0_228_->configure_rd_head_1(gbuf2u_1_0_228_rd1_params0, {2, 2});
    gbuf2u_1_0_228_->configure_node();
    
    // loc("logreg_ts.py":226:0): tlir.Reshape
    ptconvlstm__view_bwd_->set_source_context("logreg_ts.py:226:0");
    ptconvlstm__view_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__view_bwd_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_233_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_233_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__criterion__mseloss_bwd_mul");
    gbuf2u_1_0_233_->configure_wr(gbuf2u_1_0_233_wr_params);
    PmuSetupRead gbuf2u_1_0_233_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_233_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_233_->configure_rd_head_1(gbuf2u_1_0_233_rd1_params0, {2, 2});
    gbuf2u_1_0_233_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AddN
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_op_name("tlir.AddN");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_236_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_236_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_236_->configure_wr(gbuf2u_1_0_236_wr_params);
    PmuSetupRead gbuf2u_1_0_236_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_236_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_1_0_414");
    gbuf2u_1_0_236_->configure_rd_head_1(gbuf2u_1_0_236_rd1_params0, {2, 2, 2, 2});
    gbuf2u_1_0_236_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    layout_cast_1_0_414_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    layout_cast_1_0_414_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_414_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_output0_bwd_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_output0_bwd_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_238_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_238_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd");
    gbuf2u_1_0_238_->configure_wr(gbuf2u_1_0_238_wr_params);
    PmuSetupRead gbuf2u_1_0_238_rd1_params1 = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->input_nbuf_read_params(BigGemm::kB);
    gbuf2u_1_0_238_->configure_rd_head_1(gbuf2u_1_0_238_rd1_params1, {1, 2});
    gbuf2u_1_0_238_->configure_node();
    
    // loc("software/compiler/mac/src/pybind/py_air.cpp":1503:0): tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_388_wr_params = {};
    gbuf1a_1_0_388_wr_params.is_transpose = true;
    gbuf1a_1_0_388_->configure_wr(gbuf1a_1_0_388_wr_params);
    PmuSetupRead gbuf1a_1_0_388_rd1_params0 = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->input_nbuf_read_params(BigGemm::kA);
    gbuf1a_1_0_388_rd1_params0.is_transpose = true;
    gbuf1a_1_0_388_->configure_rd_head_1(gbuf1a_1_0_388_rd1_params0, {1});
    gbuf1a_1_0_388_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->configure_node();
    
    // loc("logreg_ts.py":191:0): tlir.Buffer
    nbuf2u_1_0_241_->configure_node();
    PmuSetupWrite nbuf2u_1_0_241_wr_params = {};
    nbuf2u_1_0_241_->configure_wr(nbuf2u_1_0_241_wr_params);
    PmuSetupRead nbuf2u_1_0_241_rd1_params0 = {};
    nbuf2u_1_0_241_->configure_rd_head_1(nbuf2u_1_0_241_rd1_params0, {1, 2});
    
    // loc("logreg_ts.py":191:0): tlir.Buffer
    nbuf1u_1_0_242_->configure_node();
    PmuSetupWrite nbuf1u_1_0_242_wr_params = {};
    nbuf1u_1_0_242_->configure_wr(nbuf1u_1_0_242_wr_params);
    PmuSetupRead nbuf1u_1_0_242_rd1_params1 = {};
    nbuf1u_1_0_242_->configure_rd_head_1(nbuf1u_1_0_242_rd1_params1, {1, 2});
    
    // loc("logreg_ts.py":191:0): tlir.Index
    ptconvlstm__lambda_layer__indexselect_recompute__->set_source_context("logreg_ts.py:191:0");
    ptconvlstm__lambda_layer__indexselect_recompute__->set_op_name("tlir.Index");
    ptconvlstm__lambda_layer__indexselect_recompute__->configure_node();
    
    // loc("logreg_ts.py":212:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_244_wr_params = ptconvlstm__lambda_layer__indexselect_recompute__->write_params(Index::kOutput);
    gbuf2u_1_0_244_->configure_wr(gbuf2u_1_0_244_wr_params);
    PmuSetupRead gbuf2u_1_0_244_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_244_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__permute_recompute_");
    gbuf2u_1_0_244_->configure_rd_head_1(gbuf2u_1_0_244_rd1_params0, {2, 2});
    gbuf2u_1_0_244_->configure_node();
    
    // loc("logreg_ts.py":212:0): tlir.PermuteView
    ptconvlstm__permute_recompute__->set_source_context("logreg_ts.py:212:0");
    ptconvlstm__permute_recompute__->set_op_name("tlir.PermuteView");
    ptconvlstm__permute_recompute__->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_246_wr_params = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->write_params(BigGemm::kOutput);
    gbuf2u_1_0_246_->configure_wr(gbuf2u_1_0_246_wr_params);
    PmuSetupRead gbuf2u_1_0_246_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_246_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd");
    gbuf2u_1_0_246_->configure_rd_head_1(gbuf2u_1_0_246_rd1_params0, {2, 2});
    gbuf2u_1_0_246_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Reshape
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->set_source_context("ptconvlstm__conv_layer__conv1d__squeeze_Reshape:0:0");
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_248_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_248_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__permute_recompute_");
    gbuf2u_1_0_248_->configure_wr(gbuf2u_1_0_248_wr_params);
    PmuSetupRead gbuf2u_1_0_248_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_248_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute_");
    gbuf2u_1_0_248_->configure_rd_head_1(gbuf2u_1_0_248_rd1_params0, {2, 2});
    gbuf2u_1_0_248_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Reshape
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->set_source_context("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape:0:0");
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->set_op_name("tlir.Reshape");
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_418_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_418_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd");
    gbuf2a_1_0_418_->configure_wr(gbuf2a_1_0_418_wr_params);
    PmuSetupRead gbuf2a_1_0_418_rd0_params0 = streaming_transpose_1_0_354_->read_params(StreamingTranspose::kTailBuffer);
    gbuf2a_1_0_418_->configure_rd_head_0(gbuf2a_1_0_418_rd0_params0, {2, 2});
    PmuSetupRead gbuf2a_1_0_418_rd1_params0 = bias_transpose_grad_1_0_367_->read_params(BiasTransposeGrad::kLoss_Input);
    gbuf2a_1_0_418_->configure_rd_head_1(gbuf2a_1_0_418_rd1_params0, {2, 2});
    gbuf2a_1_0_418_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1022:0): tlir.StreamingPermute
    streaming_transpose_1_0_354_->set_source_context("software/arc/src/lib/templates/ConvGradIm2Col.cpp:1022:0");
    streaming_transpose_1_0_354_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_1_0_354_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":469:0): tlir.Buffer
    PmuSetupRead sbuf2u_1_0_358_rd1_params0 = biggemm_1_0_363_->input_nbuf_read_params(BigGemm::kA);
    SN_ASSERT(sbuf2u_1_0_358_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of biggemm_1_0_363");
    sbuf2u_1_0_358_rd1_params0.buffer_pace_order = true;
    sbuf2u_1_0_358_rd1_params0.buffer_pace_order_credits = biggemm_1_0_363_->wbuf_depth();
    sbuf2u_1_0_358_rd1_params0.buffer_pace_order_vectors = biggemm_1_0_363_->wbuf_vectors();
    sbuf2u_1_0_358_->configure_rd_head_1(sbuf2u_1_0_358_rd1_params0, {1});
    sbuf2u_1_0_358_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":40:0): tlir.Split
    PmuSetupWrite split_kernel_gbuf_1_0_359_wr_params = streaming_transpose_1_0_354_->write_params(StreamingTranspose::kHead1Buffer);
    split_kernel_gbuf_1_0_359_->configure_wr(split_kernel_gbuf_1_0_359_wr_params);
    split_kernel_gbuf_1_0_359_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0");
    split_kernel_gbuf_1_0_359_->set_op_name("tlir.Split");
    split_kernel_gbuf_1_0_359_->set_batch_size_b(1);
    split_kernel_gbuf_1_0_359_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_1_0_360_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_360_->set_op_name("tlir.Linear");
    biggemm_1_0_360_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_1_0_361_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_361_->set_op_name("tlir.Linear");
    biggemm_1_0_361_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_1_0_362_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_362_->set_op_name("tlir.Linear");
    biggemm_1_0_362_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    biggemm_1_0_363_->set_source_context("software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0");
    biggemm_1_0_363_->set_op_name("tlir.Linear");
    biggemm_1_0_363_->configure_node();
    
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":110:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_365_wr_params = {};
    gbuf2u_1_0_365_->configure_wr(0, biggemm_1_0_360_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_365_->configure_wr(1, biggemm_1_0_361_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_365_->configure_wr(2, biggemm_1_0_362_->write_params(BigGemm::kOutput));
    gbuf2u_1_0_365_->configure_wr(3, biggemm_1_0_363_->write_params(BigGemm::kOutput));
    PmuSetupRead gbuf2u_1_0_365_rd1_params0 = {};
    gbuf2u_1_0_365_->configure_rd_head_1(gbuf2u_1_0_365_rd1_params0, {1});
    gbuf2u_1_0_365_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1118:0): tlir.BiasTransposeGrad
    bias_transpose_grad_1_0_367_->set_source_context("software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0");
    bias_transpose_grad_1_0_367_->set_op_name("tlir.BiasTransposeGrad");
    bias_transpose_grad_1_0_367_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1118:0): tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_392_wr_params = {};
    gbuf2a_1_0_392_->configure_wr(gbuf2a_1_0_392_wr_params);
    PmuSetupRead gbuf2a_1_0_392_rd1_params0 = {};
    SN_ASSERT(gbuf2a_1_0_392_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_1_0_368");
    gbuf2a_1_0_392_->configure_rd_head_1(gbuf2a_1_0_392_rd1_params0, {1});
    gbuf2a_1_0_392_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1120:0): tlir.Reshape
    reshape_1_0_368_->set_source_context("software/arc/src/lib/templates/ConvGradIm2Col.cpp:1120:0");
    reshape_1_0_368_->set_op_name("tlir.Reshape");
    reshape_1_0_368_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1121:0): tlir.LayoutCast
    layout_cast_1_0_369_->set_source_context("software/arc/src/lib/templates/ConvGradIm2Col.cpp:1121:0");
    layout_cast_1_0_369_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_369_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_255_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_255_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd");
    gbuf2u_1_0_255_->configure_wr(gbuf2u_1_0_255_wr_params);
    PmuSetupRead gbuf2u_1_0_255_rd0_params2 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->input_nbuf_read_params(BigGemm::kBiasGradAccumInput);
    gbuf2u_1_0_255_->configure_rd_head_0(gbuf2u_1_0_255_rd0_params2, {1});
    PmuSetupRead gbuf2u_1_0_255_rd1_params0 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->input_nbuf_read_params(BigGemm::kA);
    gbuf2u_1_0_255_->configure_rd_head_1(gbuf2u_1_0_255_rd1_params0, {ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->wbuf_depth()});
    gbuf2u_1_0_255_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.BigLinearGrad
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_source_context("/usr/local/lib/python3.7/site-packages/torch/overrides.py:1202:0");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.mutate.Accumulate
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->set_source_context("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d:0:0");
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.mutate.Accumulate
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->set_source_context("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d:0:0");
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    PmuSetupRead sbuf1a_1_0_394_rd1_params1 = {};
    sbuf1a_1_0_394_rd1_params1.enable_backing_pmu_read = true;
    sbuf1a_1_0_394_->configure_rd_head_1(sbuf1a_1_0_394_rd1_params1, {1});
    sbuf1a_1_0_394_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1074:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_355_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_355_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute_");
    gbuf2u_1_0_355_wr_params.buffer_overlapped_split = true; 
    gbuf2u_1_0_355_wr_params.buffer_overlapped_split_base = 0;
    gbuf2u_1_0_355_wr_params.buffer_overlapped_split_bound = 4;
    gbuf2u_1_0_355_wr_params.buffer_overlapped_split_stride = 5;
    gbuf2u_1_0_355_wr_params.buffer_overlapped_split_parts = 3;
    gbuf2u_1_0_355_->configure_wr(gbuf2u_1_0_355_wr_params);
    PmuSetupRead gbuf2u_1_0_355_rd1_params0 = {};
    gbuf2u_1_0_355_rd1_params0.buffer_gather_list = true;
    gbuf2u_1_0_355_rd1_params0.buffer_overflow = false;
    gbuf2u_1_0_355_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_1_0_355_rd1_params0.buffer_gather_max = {320, 3, 1};
    gbuf2u_1_0_355_rd1_params0.buffer_gather_stride = {64, 1, 1};
    gbuf2u_1_0_355_rd1_params0.buffer_gather_mult = {1, 0, 0};
    auto sbuf2u_1_0_358_scatter_control = sbuf2u_1_0_358_->get_pacing_control();
    gbuf2u_1_0_355_rd1_params0.buffer_pace_order  = sbuf2u_1_0_358_scatter_control.enable;
    gbuf2u_1_0_355_rd1_params0.buffer_pace_order_credits = sbuf2u_1_0_358_scatter_control.credits;
    gbuf2u_1_0_355_rd1_params0.buffer_pace_order_vectors = sbuf2u_1_0_358_scatter_control.vectors;
    gbuf2u_1_0_355_rd1_params0.buffer_pace_read_ceiling = sbuf2u_1_0_358_scatter_control.ceiling;
    gbuf2u_1_0_355_->configure_rd_head_1(gbuf2u_1_0_355_rd1_params0, {2, 2});
    gbuf2u_1_0_355_->configure_node();
    
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_254_wr_params = {};
    gbuf2u_1_0_254_wr_params.is_transpose = true;
    gbuf2u_1_0_254_wr_params.setup_scratchpad = true;
    gbuf2u_1_0_254_wr_params.mode = PmuMode(PmuModeType::kNbuff, 2);
    gbuf2u_1_0_254_->configure_wr(gbuf2u_1_0_254_wr_params);
    PmuSetupRead gbuf2u_1_0_254_rd1_params1 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->input_nbuf_read_params(BigGemm::kB);
    gbuf2u_1_0_254_rd1_params1.is_transpose = true;
    gbuf2u_1_0_254_->configure_rd_head_1(gbuf2u_1_0_254_rd1_params1, {1});
    gbuf2u_1_0_254_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_131_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_131_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_buffer");
    gbuf2u_1_0_131_->configure_wr(gbuf2u_1_0_131_wr_params);
    PmuSetupRead gbuf2u_1_0_131_rd1_params0 = {};
    gbuf2u_1_0_131_rd1_params0.buffer_gather_list = true;
    gbuf2u_1_0_131_rd1_params0.buffer_overflow = false;
    gbuf2u_1_0_131_rd1_params0.buffer_gather_by_element = true;
    gbuf2u_1_0_131_rd1_params0.buffer_gather_max = {1, 13, 256, 3};
    gbuf2u_1_0_131_rd1_params0.buffer_gather_stride = {1, 1, 1, 1};
    gbuf2u_1_0_131_rd1_params0.buffer_gather_mult = {0, 0, 64, 0};
    auto sbuf1a_1_0_394_scatter_control = sbuf1a_1_0_394_->get_pacing_control();
    gbuf2u_1_0_131_rd1_params0.buffer_pace_order  = sbuf1a_1_0_394_scatter_control.enable;
    gbuf2u_1_0_131_rd1_params0.buffer_pace_order_credits = sbuf1a_1_0_394_scatter_control.credits;
    gbuf2u_1_0_131_rd1_params0.buffer_pace_order_vectors = sbuf1a_1_0_394_scatter_control.vectors;
    gbuf2u_1_0_131_rd1_params0.buffer_pace_read_ceiling = sbuf1a_1_0_394_scatter_control.ceiling;
    gbuf2u_1_0_131_->configure_rd_head_1(gbuf2u_1_0_131_rd1_params0, {1});
    gbuf2u_1_0_131_->configure_node();
    
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":419:0): tlir.Buffer
    lbuf1a_1_0_391_->set_data_buffer(gbuf2u_1_0_355_, 1);
    lbuf1a_1_0_391_->configure_node();
    
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    lbuf1a_1_0_393_->set_data_buffer(gbuf2u_1_0_131_, 1);
    lbuf1a_1_0_393_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    nbuf2u_1_0_213_->finalize();
    nbuf2u_1_0_216_->finalize();
    ptconvlstm__criterion__mseloss_bwd_expand_->finalize();
    nbuf2u_1_0_219_->finalize();
    reshape_1_0_328_->finalize();
    gbuf2u_1_0_221_->finalize();
    ptconvlstm__criterion__mseloss_bwd_sub_->finalize();
    ptconvlstm__criterion__mseloss_bwd_scale_->finalize();
    gbuf2u_1_0_224_->finalize();
    gbuf2u_1_0_225_->finalize();
    layout_cast_1_0_413_->finalize();
    ptconvlstm__criterion__mseloss_bwd_mul_->finalize();
    gbuf2u_1_0_228_->finalize();
    ptconvlstm__view_bwd_->finalize();
    gbuf2u_1_0_233_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->finalize();
    gbuf2u_1_0_236_->finalize();
    layout_cast_1_0_414_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_bwd_->finalize();
    gbuf2u_1_0_238_->finalize();
    gbuf1a_1_0_388_->finalize();
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->finalize();
    nbuf2u_1_0_241_->finalize();
    nbuf1u_1_0_242_->finalize();
    ptconvlstm__lambda_layer__indexselect_recompute__->finalize();
    gbuf2u_1_0_244_->finalize();
    ptconvlstm__permute_recompute__->finalize();
    gbuf2u_1_0_246_->finalize();
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->finalize();
    gbuf2u_1_0_248_->finalize();
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->finalize();
    gbuf2a_1_0_418_->finalize();
    streaming_transpose_1_0_354_->finalize();
    gbuf2u_1_0_355_->finalize();
    lbuf1a_1_0_391_->finalize();
    sbuf2u_1_0_358_->finalize();
    split_kernel_gbuf_1_0_359_->finalize();
    biggemm_1_0_360_->finalize();
    biggemm_1_0_361_->finalize();
    biggemm_1_0_362_->finalize();
    biggemm_1_0_363_->finalize();
    gbuf2u_1_0_365_->finalize();
    bias_transpose_grad_1_0_367_->finalize();
    gbuf2a_1_0_392_->finalize();
    reshape_1_0_368_->finalize();
    layout_cast_1_0_369_->finalize();
    gbuf2u_1_0_254_->finalize();
    gbuf2u_1_0_255_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->finalize();
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->finalize();
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->finalize();
    gbuf2u_1_0_131_->finalize();
    lbuf1a_1_0_393_->finalize();
    sbuf1a_1_0_394_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->output_list(ParAccum::Output::kOut)), gbuf2u_1_0_131_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.AccumBuffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AccumBuffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AccumBuffer
    // loc("logreg_ts.py":220:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(get_connect_interface(nbuf2u_1_0_216_->output_list(NBuffer::Output::kHead1Buffer)), ptconvlstm__criterion__mseloss_bwd_expand_->get_connect_interface(MeanPB::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.SumGrad
    connect_by_interface(ptconvlstm__criterion__mseloss_bwd_expand_->get_connect_interface(MeanPB::Output::kOutput, false), gbuf2u_1_0_225_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(get_connect_interface(nbuf2u_1_0_219_->output_list(NBuffer::Output::kHead1Buffer)), ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Reshape
    connect_by_interface(nbuf2u_1_0_213_->get_connect_interface(NBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_221_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_221_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kB, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Sub
    connect_by_interface(ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__criterion__mseloss_bwd_scale_->get_connect_interface(ScaleS::Input::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Scale
    connect_by_interface(ptconvlstm__criterion__mseloss_bwd_scale_->get_connect_interface(ScaleS::Output::kA_SCALED, false), gbuf2u_1_0_224_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_224_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_mul_->get_connect_interface(BinaryOps::Input::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    connect_by_interface(gbuf2u_1_0_225_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_mul_->get_connect_interface(BinaryOps::Input::kB, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mul
    connect_by_interface(ptconvlstm__criterion__mseloss_bwd_mul_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2u_1_0_233_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":226:0): tlir.Buffer
    // loc("logreg_ts.py":226:0): tlir.Reshape
    connect_by_interface(gbuf2u_1_0_228_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(1, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_233_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AddN
    connect_by_interface(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_236_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    connect_by_interface(gbuf2u_1_0_236_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_238_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf2u_1_0_236_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_255_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    std::vector<DataSink *> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks = {};
    for (auto sink : ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->input_list(BigGemm::kB)) {
        ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas = {};
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas.push_back(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->get_connect_schema());
    connect_with_schema(gbuf2u_1_0_238_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks, std::move(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas));
    // loc("software/compiler/mac/src/pybind/py_air.cpp":1503:0): tlir.Buffer
    connect_by_interface(gbuf1a_1_0_388_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->get_connect_interface(BigGemm::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_m_to_n(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_246_->input_list(gbuf2u_1_0_246_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // loc("logreg_ts.py":191:0): tlir.Buffer
    for (auto *input : ptconvlstm__lambda_layer__indexselect_recompute__->input_list(Index::kLookupTensor)) {
        PmuSetupWrite nbuf2u_1_0_241_1_wr_params = {};
        nbuf2u_1_0_241_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(nbuf2u_1_0_241_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0), nbuf2u_1_0_241_1_wr_params);
    }
    connect_by_interface(get_connect_interface(nbuf2u_1_0_241_->output_list(NBuffer::Output::kHead1Buffer)), ptconvlstm__lambda_layer__indexselect_recompute__->get_connect_interface(Index::kLookupTensor, true));
    // loc("logreg_ts.py":191:0): tlir.Buffer
    for (auto *input : ptconvlstm__lambda_layer__indexselect_recompute__->input_list(Index::kIndexTensor)) {
        PmuSetupWrite nbuf1u_1_0_242_1_wr_params = {};
        nbuf1u_1_0_242_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(nbuf1u_1_0_242_->result_layout(NBuffer::Output::kHead1Buffer).at_address(0), nbuf1u_1_0_242_1_wr_params);
    }
    connect_by_interface(get_connect_interface(nbuf1u_1_0_242_->output_list(NBuffer::Output::kHead1Buffer)), ptconvlstm__lambda_layer__indexselect_recompute__->get_connect_interface(Index::kIndexTensor, true));
    // loc("logreg_ts.py":191:0): tlir.Index
    connect_by_interface(ptconvlstm__lambda_layer__indexselect_recompute__->get_connect_interface(Index::kOutput, false), gbuf2u_1_0_244_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("logreg_ts.py":212:0): tlir.Buffer
    // loc("logreg_ts.py":212:0): tlir.PermuteView
    connect_by_interface(gbuf2u_1_0_244_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_248_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Reshape
    connect_by_interface(gbuf2u_1_0_246_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_1_0_418_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Buffer
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Reshape
    connect_by_interface(gbuf2u_1_0_248_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_355_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    connect_by_interface(gbuf2a_1_0_418_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), streaming_transpose_1_0_354_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    connect_by_interface(gbuf2a_1_0_418_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), bias_transpose_grad_1_0_367_->get_connect_interface(BiasTransposeGrad::kLoss_Input, true));
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1022:0): tlir.StreamingPermute
    connect_by_interface(streaming_transpose_1_0_354_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), split_kernel_gbuf_1_0_359_->get_connect_interface(KernelGBuffer::Input::kTailBuffer, true));
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1074:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_355_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf2u_1_0_358_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":419:0): tlir.Buffer
    connect_1_to_n(lbuf1a_1_0_391_->output(ListBuffer::kGatherAddress), gbuf2u_1_0_355_->input_list(GBuffer::get_read_scalar_input(1)));
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":419:0): tlir.Gather
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":469:0): tlir.Buffer
    connect_by_interface(sbuf2u_1_0_358_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_360_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_358_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_361_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_358_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_362_->get_connect_interface(BigGemm::kA, true));
    connect_by_interface(sbuf2u_1_0_358_->get_connect_interface(ScatterBuffer::Output::kHead1Buffer, false), biggemm_1_0_363_->get_connect_interface(BigGemm::kA, true));
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":40:0): tlir.Split
    std::vector<DataSink *> biggemm_1_0_360_schema_sinks = {};
    for (auto sink : biggemm_1_0_360_->input_list(BigGemm::kB)) {
        biggemm_1_0_360_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_360_connect_schemas = {};
    biggemm_1_0_360_connect_schemas.push_back(biggemm_1_0_360_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_359_->output_list(GBuffer::get_head_output(1, 0)), biggemm_1_0_360_schema_sinks, std::move(biggemm_1_0_360_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_361_schema_sinks = {};
    for (auto sink : biggemm_1_0_361_->input_list(BigGemm::kB)) {
        biggemm_1_0_361_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_361_connect_schemas = {};
    biggemm_1_0_361_connect_schemas.push_back(biggemm_1_0_361_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_359_->output_list(GBuffer::get_head_output(1, 1)), biggemm_1_0_361_schema_sinks, std::move(biggemm_1_0_361_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_362_schema_sinks = {};
    for (auto sink : biggemm_1_0_362_->input_list(BigGemm::kB)) {
        biggemm_1_0_362_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_362_connect_schemas = {};
    biggemm_1_0_362_connect_schemas.push_back(biggemm_1_0_362_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_359_->output_list(GBuffer::get_head_output(1, 2)), biggemm_1_0_362_schema_sinks, std::move(biggemm_1_0_362_connect_schemas));
    std::vector<DataSink *> biggemm_1_0_363_schema_sinks = {};
    for (auto sink : biggemm_1_0_363_->input_list(BigGemm::kB)) {
        biggemm_1_0_363_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> biggemm_1_0_363_connect_schemas = {};
    biggemm_1_0_363_connect_schemas.push_back(biggemm_1_0_363_->get_connect_schema());
    connect_with_schema(split_kernel_gbuf_1_0_359_->output_list(GBuffer::get_head_output(1, 3)), biggemm_1_0_363_schema_sinks, std::move(biggemm_1_0_363_connect_schemas));
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_360_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_360_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_365_->input_list(gbuf2u_1_0_365_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_361_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_361_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_365_->input_list(gbuf2u_1_0_365_->get_tail_input(1, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_362_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_362_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_365_->input_list(gbuf2u_1_0_365_->get_tail_input(2, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < biggemm_1_0_363_->num_partitions(); ++p) {
            connect_m_to_n(biggemm_1_0_363_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_365_->input_list(gbuf2u_1_0_365_->get_tail_input(3, p)));
        }
    } // End partitioned data connection
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":100:0): tlir.ConcatView
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":110:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_365_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->input_list(ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->get_node_input(0))));
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1112:0): tlir.ConcatView
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1118:0): tlir.BiasTransposeGrad
    connect_by_interface(bias_transpose_grad_1_0_367_->get_connect_interface(BiasTransposeGrad::kGrad, false), gbuf2a_1_0_392_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1118:0): tlir.Buffer
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1120:0): tlir.Reshape
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1121:0): tlir.LayoutCast
    connect_by_interface(gbuf2a_1_0_392_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->get_connect_interface(ParAccum::kIn, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    { // Connect partitioned input
        for(int64_t i = 0; i < ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_b_input_partitions(); ++i) {
            connect_with_schema(gbuf2u_1_0_254_->output(gbuf2u_1_0_254_->get_head_output(1, 0, i)), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->input_list(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_partition_input(i+1)), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_schema());
        }
    } // End partitioned input
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_255_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2u_1_0_255_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.BigLinearGrad
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.mutate.Accumulate
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.mutate.Accumulate
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.mutate.Accumulate
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.mutate.Accumulate
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    connect_by_interface(gbuf2u_1_0_131_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(sbuf1a_1_0_394_->input_list(ScatterBuffer::Input::kTailBuffer)));
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    connect_1_to_n(lbuf1a_1_0_393_->output(ListBuffer::kGatherAddress), gbuf2u_1_0_131_->input_list(GBuffer::get_read_scalar_input(1)));
    connect_1_to_n(lbuf1a_1_0_393_->output(ListBuffer::kGatherLengthOutput), sbuf1a_1_0_394_->input_list(ScatterBuffer::kGatherLengthInput));
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Gather
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    connect_ctl_1_to_n(gbuf2u_1_0_221_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf2u_1_0_213_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_221_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf2u_1_0_213_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_225_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf2u_1_0_216_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_225_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf2u_1_0_216_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_224_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf2u_1_0_219_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_224_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf2u_1_0_219_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_224_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_221_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_224_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_221_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_233_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_224_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_233_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_224_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_233_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_225_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_233_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_225_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_228_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_228_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_233_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_236_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_233_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_238_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_236_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_255_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_236_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_238_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_236_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_255_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_236_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2u_1_0_246_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_238_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_246_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_238_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_246_->ctrl_output(gbuf2u_1_0_246_->get_pacing_wr_done(0, p)), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_246_->ctrl_output(gbuf2u_1_0_246_->get_fronting_rd_done(0, p)), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf2u_1_0_241_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf2u_1_0_241_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailWrDone), nbuf1u_1_0_242_->ctrl_input_list(NBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kTailRdDone), nbuf1u_1_0_242_->ctrl_input_list(NBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_244_->ctrl_output(GBuffer::Output::kPacingWrDone), ptconvlstm__lambda_layer__indexselect_recompute__->ctrl_input_list(Index::CtrlInput::kWrSpecialDone));
    connect_ctl_1_to_n(gbuf2u_1_0_248_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_244_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_248_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_244_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_418_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_246_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_418_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_246_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_355_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_248_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_355_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_248_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(split_kernel_gbuf_1_0_359_->ctrl_output(KernelGBuffer::Output::kTailWrDone), gbuf2a_1_0_418_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(split_kernel_gbuf_1_0_359_->ctrl_output(KernelGBuffer::Output::kTailRdDone), gbuf2a_1_0_418_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_392_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_418_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_392_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_418_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_355_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_355_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(sbuf2u_1_0_358_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_1_0_355_->ctrl_input_list(gbuf2u_1_0_355_->get_pacing_order_enable(1)));
    auto sbuf2u_1_0_358_pacing_order_barrier1 = plasma_->create_barrier({biggemm_1_0_360_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_361_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_362_->ctrl_output(BigGemm::kRdDoneA), biggemm_1_0_363_->ctrl_output(BigGemm::kRdDoneA)});
    connect_ctl_1_to_n(sbuf2u_1_0_358_pacing_order_barrier1, sbuf2u_1_0_358_->ctrl_input_list(sbuf2u_1_0_358_->get_pacing_order_enable(1)));
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_360_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_pacing_wr_done(0, p)), biggemm_1_0_360_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_360_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_fronting_rd_done(0, p)), biggemm_1_0_360_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_360_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_361_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_pacing_wr_done(1, p)), biggemm_1_0_361_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_361_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_fronting_rd_done(1, p)), biggemm_1_0_361_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_361_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_362_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_pacing_wr_done(2, p)), biggemm_1_0_362_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_362_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_fronting_rd_done(2, p)), biggemm_1_0_362_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_362_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    { // Connect partitioned output control
        for(size_t p = 0; p < biggemm_1_0_363_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_pacing_wr_done(3, p)), biggemm_1_0_363_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (biggemm_1_0_363_->output_gbuf_with_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_365_->ctrl_output(gbuf2u_1_0_365_->get_fronting_rd_done(3, p)), biggemm_1_0_363_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        biggemm_1_0_363_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2u_1_0_255_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2u_1_0_255_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(sbuf1a_1_0_394_->ctrl_output(ScatterBuffer::Output::kTailRdDone), gbuf2u_1_0_131_->ctrl_input_list(gbuf2u_1_0_131_->get_pacing_order_enable(1)));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kinp_window_slice_1_1_0_124, nbuf1u_1_0_242_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kout_window_1_0_264, nbuf2u_1_0_213_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265, nbuf2u_1_0_216_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266, nbuf2u_1_0_219_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__view__outputs__0__grad_1_0_267, gbuf2u_1_0_228_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__dense_layer__weight_1_0_335, gbuf1a_1_0_388_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_1_0_268, nbuf2u_1_0_241_->input_list(NBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269, gbuf2u_1_0_254_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor, sbuf1a_1_0_394_->output_list(ScatterBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1, ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->output_list(BigGemm::kOutput));
    add_node_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor1, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->output_list(BigGemm::kBiasGradAccumOutput));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_ctrl_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output_list(BigGemm::kOutputStoreStart));
    add_node_ctrl_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor1, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output_list(BigGemm::kBiasGradStoreStart));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    nbuf2u_1_0_213_->set_placement_hint({0, 1, 1, 0});
    nbuf2u_1_0_216_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__criterion__mseloss_bwd_expand_->set_placement_hint({0, 1, 1, 0});
    nbuf2u_1_0_219_->set_placement_hint({0, 1, 1, 0});
    reshape_1_0_328_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_221_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__criterion__mseloss_bwd_sub_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__criterion__mseloss_bwd_scale_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_224_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_225_->set_placement_hint({0, 1, 1, 0});
    layout_cast_1_0_413_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__criterion__mseloss_bwd_mul_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_228_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__view_bwd_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_233_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_236_->set_placement_hint({0, 1, 1, 0});
    layout_cast_1_0_414_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__dense_layer__linear_t_output0_bwd_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_238_->set_placement_hint({0, 1, 1, 0});
    gbuf1a_1_0_388_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_placement_hint({0, 1, 1, 0});
    nbuf2u_1_0_241_->set_placement_hint({0, 1, 1, 0});
    nbuf1u_1_0_242_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__lambda_layer__indexselect_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_244_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__permute_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_246_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_248_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__->set_placement_hint({0, 1, 1, 0});
    gbuf2a_1_0_418_->set_placement_hint({0, 1, 1, 0});
    streaming_transpose_1_0_354_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_355_->set_placement_hint({0, 1, 1, 0});
    lbuf1a_1_0_391_->set_placement_hint({0, 1, 1, 0});
    sbuf2u_1_0_358_->set_placement_hint({0, 1, 1, 0});
    split_kernel_gbuf_1_0_359_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_360_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_361_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_362_->set_placement_hint({0, 1, 1, 0});
    biggemm_1_0_363_->set_placement_hint({0, 1, 1, 0});
    gbuf2u_1_0_365_->set_placement_hint({0, 1, 1, 0});
    ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_->set_placement_hint({0, 1, 1, 0});
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    nbuf2u_1_0_219_->set_linear_grad_a_input_hint(1);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_linear_grad_a_input_hint(1);
    ptconvlstm__criterion__mseloss_bwd_scale_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_224_->set_linear_grad_a_input_hint(1);
    ptconvlstm__criterion__mseloss_bwd_mul_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_233_->set_linear_grad_a_input_hint(1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_236_->set_linear_grad_a_input_hint(1);
    layout_cast_1_0_414_->set_linear_grad_a_input_hint(1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_->set_linear_grad_a_input_hint(1);
    gbuf2u_1_0_254_->set_linear_grad_b_input_hint(1);
    gbuf2u_1_0_255_->set_linear_grad_a_input_hint(1);
    
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
    add_node_result_layout(kptconvlstm__dense_layer__linear_bwd_weight_tensor, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::kOutput));
    
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
    // loc("ptconvlstm__conv_layer__bias":0:0): tlir.SGD
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_source_context("ptconvlstm__conv_layer__bias:0:0");
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->configure_node();
    
    // loc("ptconvlstm__conv_layer__weight":0:0): tlir.SGD
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_source_context("ptconvlstm__conv_layer__weight:0:0");
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->configure_node();
    
    // loc("ptconvlstm__dense_layer__bias":0:0): tlir.SGD
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_source_context("ptconvlstm__dense_layer__bias:0:0");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->configure_node();
    
    // loc("ptconvlstm__dense_layer__weight":0:0): tlir.SGD
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_source_context("ptconvlstm__dense_layer__weight:0:0");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_op_name("tlir.SGD");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->finalize();
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->finalize();
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->finalize();
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // loc("ptconvlstm__conv_layer__bias":0:0): tlir.SGD
    // loc("ptconvlstm__conv_layer__weight":0:0): tlir.SGD
    // loc("ptconvlstm__dense_layer__bias":0:0): tlir.SGD
    // loc("ptconvlstm__dense_layer__weight":0:0): tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input ptconvlstm__conv_layer__bias_2_0_142 uses a weight buffer
    // Input ptconvlstm__conv_layer__bias__grad_2_0_143 uses a weight buffer
    // Input ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144 uses a weight buffer
    // Input ptconvlstm__conv_layer__weight_2_0_148 uses a weight buffer
    // Input ptconvlstm__conv_layer__weight__grad_2_0_149 uses a weight buffer
    // Input ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_2_0_154 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias__grad_2_0_155 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight_2_0_160 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight__grad_2_0_161 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Outputptconvlstm__conv_layer__bias_2_0_146 uses a weight buffer
    // Outputptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147 uses a weight buffer
    // Outputptconvlstm__conv_layer__weight_2_0_152 uses a weight buffer
    // Outputptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153 uses a weight buffer
    // Outputptconvlstm__dense_layer__bias_2_0_158 uses a weight buffer
    // Outputptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159 uses a weight buffer
    // Outputptconvlstm__dense_layer__weight_2_0_164 uses a weight buffer
    // Outputptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165 uses a weight buffer
    
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
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kRNGSeed;
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_argins_strnd_seed_enable_info);
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
        case kgbuf2u_0_0_176: return gbuf2u_0_0_176_;
        case kgbuf2u_0_0_178: return gbuf2u_0_0_178_;
        case kgbuf2u_0_0_180: return gbuf2u_0_0_180_;
        case klbuf1a_0_0_383: return lbuf1a_0_0_383_;
        case ksbuf2u_0_0_289: return sbuf2u_0_0_289_;
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
        case kbiggemm_0_0_311: return biggemm_0_0_311_;
        case kbiggemm_0_0_312: return biggemm_0_0_312_;
        case kgbuf2u_0_0_315: return gbuf2u_0_0_315_;
        case kgbuf2u_0_0_182: return gbuf2u_0_0_182_;
        case kgbuf2a_0_0_415: return gbuf2a_0_0_415_;
        case kptconvlstm__dense_layer__linear: return ptconvlstm__dense_layer__linear_;
        case kgbuf1a_0_0_381: return gbuf1a_0_0_381_;
        case kgbuf2u_0_0_186: return gbuf2u_0_0_186_;
        case kgbuf2a_0_0_416: return gbuf2a_0_0_416_;
        case kgbuf2u_0_0_194: return gbuf2u_0_0_194_;
        case kgbuf2u_0_0_196: return gbuf2u_0_0_196_;
        case kgbuf1a_0_0_417: return gbuf1a_0_0_417_;
        case kgbuf2u_1_0_221: return gbuf2u_1_0_221_;
        case kgbuf2u_1_0_224: return gbuf2u_1_0_224_;
        case kgbuf2u_1_0_225: return gbuf2u_1_0_225_;
        case kgbuf2u_1_0_228: return gbuf2u_1_0_228_;
        case kgbuf2u_1_0_233: return gbuf2u_1_0_233_;
        case kgbuf2u_1_0_236: return gbuf2u_1_0_236_;
        case kgbuf2u_1_0_238: return gbuf2u_1_0_238_;
        case kgbuf1a_1_0_388: return gbuf1a_1_0_388_;
        case kptconvlstm__dense_layer__linear_bwd_loss_grad_b: return ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
        case kgbuf2u_1_0_244: return gbuf2u_1_0_244_;
        case kgbuf2u_1_0_246: return gbuf2u_1_0_246_;
        case kgbuf2u_1_0_248: return gbuf2u_1_0_248_;
        case kgbuf2a_1_0_418: return gbuf2a_1_0_418_;
        case kgbuf2u_1_0_355: return gbuf2u_1_0_355_;
        case klbuf1a_1_0_391: return lbuf1a_1_0_391_;
        case ksbuf2u_1_0_358: return sbuf2u_1_0_358_;
        case kbiggemm_1_0_360: return biggemm_1_0_360_;
        case kbiggemm_1_0_361: return biggemm_1_0_361_;
        case kbiggemm_1_0_362: return biggemm_1_0_362_;
        case kbiggemm_1_0_363: return biggemm_1_0_363_;
        case kgbuf2u_1_0_365: return gbuf2u_1_0_365_;
        case kgbuf2a_1_0_392: return gbuf2a_1_0_392_;
        case kgbuf2u_1_0_254: return gbuf2u_1_0_254_;
        case kgbuf2u_1_0_255: return gbuf2u_1_0_255_;
        case kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum: return ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_;
        case kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1: return ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_;
        case kgbuf2u_1_0_131: return gbuf2u_1_0_131_;
        case klbuf1a_1_0_393: return lbuf1a_1_0_393_;
        case ksbuf1a_1_0_394: return sbuf1a_1_0_394_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism

