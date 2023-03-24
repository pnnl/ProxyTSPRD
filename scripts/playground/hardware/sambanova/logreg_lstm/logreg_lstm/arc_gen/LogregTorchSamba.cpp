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
    
    partition_0_0_->set_section_latency(4.052610e-03);
    GBuffer::Params gbuf1a_0_0_890_params;
    gbuf1a_0_0_890_params.enable_fronting_pmu = true;
    gbuf1a_0_0_890_params.head1_linear = true;
    gbuf1a_0_0_890_params.head1_p2p = false;
    gbuf1a_0_0_890_params.head_1_depth = 1;
    gbuf1a_0_0_890_params.layout = params_.lstm_operand_0_0_0_122;
    gbuf1a_0_0_890_params.loaded_by_broadcast = false;
    gbuf1a_0_0_890_params.num_iterations = 1;
    gbuf1a_0_0_890_ = create_node<GBuffer>("gbuf1a_0_0_890", partition_0_0_, plasma_, gbuf1a_0_0_890_params);
    gbuf1a_0_0_890_->set_tile_id(-1);
    gbuf1a_0_0_890_->set_die_id(-1);
    gbuf1a_0_0_890_->set_mac_id("default_890");
    gbuf1a_0_0_890_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_890_->set_metapipe_iterations({1});
    gbuf1a_0_0_890_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_825_params;
    gbuf1a_0_0_825_params.head1_linear = true;
    gbuf1a_0_0_825_params.head1_p2p = false;
    gbuf1a_0_0_825_params.head_1_depth = 1;
    gbuf1a_0_0_825_params.layout = gbuf1a_0_0_890_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose_flipped();
    gbuf1a_0_0_825_params.num_iterations = 1;
    gbuf1a_0_0_825_ = create_node<GBuffer>("gbuf1a_0_0_825", partition_0_0_, plasma_, gbuf1a_0_0_825_params);
    gbuf1a_0_0_825_->set_tile_id(-1);
    gbuf1a_0_0_825_->set_die_id(-1);
    gbuf1a_0_0_825_->set_mac_id("default_825");
    gbuf1a_0_0_825_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_825_->set_metapipe_iterations({1});
    gbuf1a_0_0_825_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvlstm__lstm_layer__lstm_hidden_r_params;
    ptconvlstm__lstm_layer__lstm_hidden_r_params.input_layout = gbuf1a_0_0_825_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_hidden_r_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__lstm_layer__lstm_hidden_r_params.reshape = {60, 64};
    ptconvlstm__lstm_layer__lstm_hidden_r_ = create_node<ReshapeView>("ptconvlstm__lstm_layer__lstm_hidden_r", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_hidden_r_params);
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_hidden_r_t_params;
    ptconvlstm__lstm_layer__lstm_hidden_r_t_params.input_layout = ptconvlstm__lstm_layer__lstm_hidden_r_->result_layout();
    ptconvlstm__lstm_layer__lstm_hidden_r_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_hidden_r_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_hidden_r_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_hidden_r_t_params);
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_827_params;
    gbuf1a_0_0_827_params.enable_fronting_pmu = true;
    gbuf1a_0_0_827_params.head1_linear = true;
    gbuf1a_0_0_827_params.head1_p2p = false;
    gbuf1a_0_0_827_params.head_1_depth = 1;
    gbuf1a_0_0_827_params.layout = params_.lstm_operand_1_0_0_125.at_address(0);
    gbuf1a_0_0_827_params.loaded_by_broadcast = false;
    gbuf1a_0_0_827_params.num_iterations = 1;
    gbuf1a_0_0_827_params.write_vector_transposed = true;
    gbuf1a_0_0_827_ = create_node<GBuffer>("gbuf1a_0_0_827", partition_0_0_, plasma_, gbuf1a_0_0_827_params);
    gbuf1a_0_0_827_->set_tile_id(-1);
    gbuf1a_0_0_827_->set_die_id(-1);
    gbuf1a_0_0_827_->set_mac_id("default_827");
    gbuf1a_0_0_827_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_827_->set_metapipe_iterations({1});
    gbuf1a_0_0_827_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvlstm__lstm_layer__lstm_cell_r_params;
    ptconvlstm__lstm_layer__lstm_cell_r_params.input_layout = gbuf1a_0_0_827_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_cell_r_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__lstm_layer__lstm_cell_r_params.reshape = {60, 64};
    ptconvlstm__lstm_layer__lstm_cell_r_ = create_node<ReshapeView>("ptconvlstm__lstm_layer__lstm_cell_r", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_cell_r_params);
    ptconvlstm__lstm_layer__lstm_cell_r_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_r_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_r_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_cell_r_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_cell_r_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_cell_r_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_cell_r_t_params;
    ptconvlstm__lstm_layer__lstm_cell_r_t_params.input_layout = ptconvlstm__lstm_layer__lstm_cell_r_->result_layout();
    ptconvlstm__lstm_layer__lstm_cell_r_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_cell_r_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_cell_r_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_cell_r_t_params);
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    LoopBuffer::Params ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.export_loop_read_done = true;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.export_loop_write_done = true;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.final_read_layout = ptconvlstm__lstm_layer__lstm_hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head0_linear = true;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head0_p2p = false;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head1_ctrl_flow_enable = true;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head1_linear = false;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head1_streaming_window = true;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head_0_depth = 1;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.layout = ptconvlstm__lstm_layer__lstm_hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.loop_read_layout = ptconvlstm__lstm_layer__lstm_hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.loop_read_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.loop_times = 100;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.loop_write_layout = ptconvlstm__lstm_layer__lstm_hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.loop_write_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.num_head1_rd_en = 6;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params.num_iterations = 1;
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_ = create_node<LoopBuffer>("ptconvlstm__lstm_layer__lstm_hidden_loop_buffer", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_params);
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->set_metapipe_iter_counts(sn::Dimensions{});
    
    LoopBuffer::Params ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.export_loop_read_done = true;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.export_loop_write_done = true;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.final_read_layout = ptconvlstm__lstm_layer__lstm_cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head0_linear = true;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head0_p2p = false;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head1_ctrl_flow_enable = true;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head1_streaming_window = true;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head_0_depth = 1;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.layout = ptconvlstm__lstm_layer__lstm_cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.loop_read_layout = ptconvlstm__lstm_layer__lstm_cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.loop_read_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.loop_times = 100;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.loop_write_layout = ptconvlstm__lstm_layer__lstm_cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.loop_write_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.num_head1_rd_en = 5;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params.num_iterations = 1;
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_ = create_node<LoopBuffer>("ptconvlstm__lstm_layer__lstm_cell_loop_buffer", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_cell_loop_buffer_params);
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->set_metapipe_iter_counts(sn::Dimensions{});
    
    GBuffer::Params gbuf4a_0_0_828_params;
    gbuf4a_0_0_828_params.enable_fronting_pmu = true;
    gbuf4a_0_0_828_params.head1_ctrl_flow_enable = true;
    gbuf4a_0_0_828_params.head1_linear = false;
    gbuf4a_0_0_828_params.head1_p2p = false;
    gbuf4a_0_0_828_params.head_1_depth = 4;
    gbuf4a_0_0_828_params.layout = PermuteView::permute_layout(params_.inp_window_0_0_482.at_address(0), {1, 0});
    gbuf4a_0_0_828_params.loaded_by_broadcast = false;
    gbuf4a_0_0_828_params.num_head1_rd_en = 6;
    gbuf4a_0_0_828_params.num_iterations = 100;
    gbuf4a_0_0_828_params.write_vector_transposed = true;
    gbuf4a_0_0_828_ = create_node<GBuffer>("gbuf4a_0_0_828", partition_0_0_, plasma_, gbuf4a_0_0_828_params);
    gbuf4a_0_0_828_->set_tile_id(-1);
    gbuf4a_0_0_828_->set_die_id(-1);
    gbuf4a_0_0_828_->set_mac_id("default_828");
    gbuf4a_0_0_828_->set_mac_latency(-1.000000e+00);
    gbuf4a_0_0_828_->set_metapipe_iterations({100});
    gbuf4a_0_0_828_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_w_0_params;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_0_0_519.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.fwd_prop_b = gbuf4a_0_0_828_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_0_0_527;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_0_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_w_0", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_w_0_params);
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_947_params;
    gbuf1a_0_0_947_params.head1_linear = true;
    gbuf1a_0_0_947_params.head1_p2p = false;
    gbuf1a_0_0_947_params.head_1_depth = 1;
    gbuf1a_0_0_947_params.layout = ptconvlstm__lstm_layer__lstm_linear_w_0_->result_layout().at_address(0);
    gbuf1a_0_0_947_params.num_iterations = 100;
    gbuf1a_0_0_947_ = create_node<GBuffer>("gbuf1a_0_0_947", partition_0_0_, plasma_, gbuf1a_0_0_947_params);
    gbuf1a_0_0_947_->set_tile_id(-1);
    gbuf1a_0_0_947_->set_die_id(-1);
    gbuf1a_0_0_947_->set_mac_id("default_947");
    gbuf1a_0_0_947_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_947_->set_metapipe_iterations({100});
    gbuf1a_0_0_947_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_v_0_params;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_0_0_523.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_0_0_531;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_0_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_v_0", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_v_0_params);
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_946_params;
    gbuf1a_0_0_946_params.head1_linear = true;
    gbuf1a_0_0_946_params.head1_p2p = false;
    gbuf1a_0_0_946_params.head_1_depth = 1;
    gbuf1a_0_0_946_params.layout = ptconvlstm__lstm_layer__lstm_linear_v_0_->result_layout().at_address(0);
    gbuf1a_0_0_946_params.num_iterations = 100;
    gbuf1a_0_0_946_ = create_node<GBuffer>("gbuf1a_0_0_946", partition_0_0_, plasma_, gbuf1a_0_0_946_params);
    gbuf1a_0_0_946_->set_tile_id(-1);
    gbuf1a_0_0_946_->set_die_id(-1);
    gbuf1a_0_0_946_->set_mac_id("default_946");
    gbuf1a_0_0_946_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_946_->set_metapipe_iterations({100});
    gbuf1a_0_0_946_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_add_0_params;
    ptconvlstm__lstm_layer__lstm_add_0_params.layout_a = gbuf1a_0_0_946_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_0_params.layout_b = gbuf1a_0_0_947_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_0_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_add_0_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_add_0_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_add_0_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_add_0", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_add_0_params);
    ptconvlstm__lstm_layer__lstm_add_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_add_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_add_0_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_add_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_add_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_add_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_w_1_params;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_0_0_520.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.fwd_prop_b = gbuf4a_0_0_828_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_0_0_528;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_1_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_w_1", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_w_1_params);
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_949_params;
    gbuf1a_0_0_949_params.head1_linear = true;
    gbuf1a_0_0_949_params.head1_p2p = false;
    gbuf1a_0_0_949_params.head_1_depth = 1;
    gbuf1a_0_0_949_params.layout = ptconvlstm__lstm_layer__lstm_linear_w_1_->result_layout().at_address(0);
    gbuf1a_0_0_949_params.num_iterations = 100;
    gbuf1a_0_0_949_ = create_node<GBuffer>("gbuf1a_0_0_949", partition_0_0_, plasma_, gbuf1a_0_0_949_params);
    gbuf1a_0_0_949_->set_tile_id(-1);
    gbuf1a_0_0_949_->set_die_id(-1);
    gbuf1a_0_0_949_->set_mac_id("default_949");
    gbuf1a_0_0_949_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_949_->set_metapipe_iterations({100});
    gbuf1a_0_0_949_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_v_1_params;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_0_0_524.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_0_0_532;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_1_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_v_1", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_v_1_params);
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_948_params;
    gbuf1a_0_0_948_params.head1_linear = true;
    gbuf1a_0_0_948_params.head1_p2p = false;
    gbuf1a_0_0_948_params.head_1_depth = 1;
    gbuf1a_0_0_948_params.layout = ptconvlstm__lstm_layer__lstm_linear_v_1_->result_layout().at_address(0);
    gbuf1a_0_0_948_params.num_iterations = 100;
    gbuf1a_0_0_948_ = create_node<GBuffer>("gbuf1a_0_0_948", partition_0_0_, plasma_, gbuf1a_0_0_948_params);
    gbuf1a_0_0_948_->set_tile_id(-1);
    gbuf1a_0_0_948_->set_die_id(-1);
    gbuf1a_0_0_948_->set_mac_id("default_948");
    gbuf1a_0_0_948_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_948_->set_metapipe_iterations({100});
    gbuf1a_0_0_948_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_add_1_params;
    ptconvlstm__lstm_layer__lstm_add_1_params.layout_a = gbuf1a_0_0_948_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_1_params.layout_b = gbuf1a_0_0_949_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_1_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_add_1_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_add_1_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_add_1_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_add_1", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_add_1_params);
    ptconvlstm__lstm_layer__lstm_add_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_add_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_add_1_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_add_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_add_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_add_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_w_2_params;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_0_0_521.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.fwd_prop_b = gbuf4a_0_0_828_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_0_0_529;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_2_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_w_2", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_w_2_params);
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_951_params;
    gbuf1a_0_0_951_params.head1_linear = true;
    gbuf1a_0_0_951_params.head1_p2p = false;
    gbuf1a_0_0_951_params.head_1_depth = 1;
    gbuf1a_0_0_951_params.layout = ptconvlstm__lstm_layer__lstm_linear_w_2_->result_layout().at_address(0);
    gbuf1a_0_0_951_params.num_iterations = 100;
    gbuf1a_0_0_951_ = create_node<GBuffer>("gbuf1a_0_0_951", partition_0_0_, plasma_, gbuf1a_0_0_951_params);
    gbuf1a_0_0_951_->set_tile_id(-1);
    gbuf1a_0_0_951_->set_die_id(-1);
    gbuf1a_0_0_951_->set_mac_id("default_951");
    gbuf1a_0_0_951_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_951_->set_metapipe_iterations({100});
    gbuf1a_0_0_951_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_v_2_params;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_0_0_525.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_0_0_533;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_2_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_v_2", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_v_2_params);
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_950_params;
    gbuf1a_0_0_950_params.head1_linear = true;
    gbuf1a_0_0_950_params.head1_p2p = false;
    gbuf1a_0_0_950_params.head_1_depth = 1;
    gbuf1a_0_0_950_params.layout = ptconvlstm__lstm_layer__lstm_linear_v_2_->result_layout().at_address(0);
    gbuf1a_0_0_950_params.num_iterations = 100;
    gbuf1a_0_0_950_ = create_node<GBuffer>("gbuf1a_0_0_950", partition_0_0_, plasma_, gbuf1a_0_0_950_params);
    gbuf1a_0_0_950_->set_tile_id(-1);
    gbuf1a_0_0_950_->set_die_id(-1);
    gbuf1a_0_0_950_->set_mac_id("default_950");
    gbuf1a_0_0_950_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_950_->set_metapipe_iterations({100});
    gbuf1a_0_0_950_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_add_2_params;
    ptconvlstm__lstm_layer__lstm_add_2_params.layout_a = gbuf1a_0_0_950_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_2_params.layout_b = gbuf1a_0_0_951_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_2_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_add_2_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_add_2_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_add_2_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_add_2", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_add_2_params);
    ptconvlstm__lstm_layer__lstm_add_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_add_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_add_2_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_add_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_add_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_add_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_w_3_params;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_0_0_522.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.fwd_prop_b = gbuf4a_0_0_828_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_0_0_530;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_w_3_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_w_3", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_w_3_params);
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_953_params;
    gbuf1a_0_0_953_params.head1_linear = true;
    gbuf1a_0_0_953_params.head1_p2p = false;
    gbuf1a_0_0_953_params.head_1_depth = 1;
    gbuf1a_0_0_953_params.layout = ptconvlstm__lstm_layer__lstm_linear_w_3_->result_layout().at_address(0);
    gbuf1a_0_0_953_params.num_iterations = 100;
    gbuf1a_0_0_953_ = create_node<GBuffer>("gbuf1a_0_0_953", partition_0_0_, plasma_, gbuf1a_0_0_953_params);
    gbuf1a_0_0_953_->set_tile_id(-1);
    gbuf1a_0_0_953_->set_die_id(-1);
    gbuf1a_0_0_953_->set_mac_id("default_953");
    gbuf1a_0_0_953_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_953_->set_metapipe_iterations({100});
    gbuf1a_0_0_953_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_linear_v_3_params;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_0_0_526.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_0_0_534;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_linear_v_3_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_linear_v_3", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_linear_v_3_params);
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_952_params;
    gbuf1a_0_0_952_params.head1_linear = true;
    gbuf1a_0_0_952_params.head1_p2p = false;
    gbuf1a_0_0_952_params.head_1_depth = 1;
    gbuf1a_0_0_952_params.layout = ptconvlstm__lstm_layer__lstm_linear_v_3_->result_layout().at_address(0);
    gbuf1a_0_0_952_params.num_iterations = 100;
    gbuf1a_0_0_952_ = create_node<GBuffer>("gbuf1a_0_0_952", partition_0_0_, plasma_, gbuf1a_0_0_952_params);
    gbuf1a_0_0_952_->set_tile_id(-1);
    gbuf1a_0_0_952_->set_die_id(-1);
    gbuf1a_0_0_952_->set_mac_id("default_952");
    gbuf1a_0_0_952_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_952_->set_metapipe_iterations({100});
    gbuf1a_0_0_952_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_add_3_params;
    ptconvlstm__lstm_layer__lstm_add_3_params.layout_a = gbuf1a_0_0_952_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_3_params.layout_b = gbuf1a_0_0_953_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_add_3_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_add_3_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_add_3_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_add_3_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_add_3", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_add_3_params);
    ptconvlstm__lstm_layer__lstm_add_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_add_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_add_3_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_add_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_add_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_add_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_i_t_params;
    ptconvlstm__lstm_layer__lstm_i_t_params.layout = ptconvlstm__lstm_layer__lstm_add_0_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_i_t_params.op = node_constants::TemplateOpcodes::kSigmoid;
    ptconvlstm__lstm_layer__lstm_i_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_i_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_i_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_i_t_params);
    ptconvlstm__lstm_layer__lstm_i_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_i_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_i_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_i_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_i_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_i_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_955_params;
    gbuf1a_0_0_955_params.head1_linear = true;
    gbuf1a_0_0_955_params.head1_p2p = false;
    gbuf1a_0_0_955_params.head_1_depth = 1;
    gbuf1a_0_0_955_params.layout = ptconvlstm__lstm_layer__lstm_i_t_->result_layout().at_address(0);
    gbuf1a_0_0_955_params.num_iterations = 100;
    gbuf1a_0_0_955_ = create_node<GBuffer>("gbuf1a_0_0_955", partition_0_0_, plasma_, gbuf1a_0_0_955_params);
    gbuf1a_0_0_955_->set_tile_id(-1);
    gbuf1a_0_0_955_->set_die_id(-1);
    gbuf1a_0_0_955_->set_mac_id("default_955");
    gbuf1a_0_0_955_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_955_->set_metapipe_iterations({100});
    gbuf1a_0_0_955_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_f_t_params;
    ptconvlstm__lstm_layer__lstm_f_t_params.layout = ptconvlstm__lstm_layer__lstm_add_1_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_f_t_params.op = node_constants::TemplateOpcodes::kSigmoid;
    ptconvlstm__lstm_layer__lstm_f_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_f_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_f_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_f_t_params);
    ptconvlstm__lstm_layer__lstm_f_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_f_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_f_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_f_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_f_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_f_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_954_params;
    gbuf1a_0_0_954_params.head1_linear = true;
    gbuf1a_0_0_954_params.head1_p2p = false;
    gbuf1a_0_0_954_params.head_1_depth = 1;
    gbuf1a_0_0_954_params.layout = ptconvlstm__lstm_layer__lstm_f_t_->result_layout().at_address(0);
    gbuf1a_0_0_954_params.num_iterations = 100;
    gbuf1a_0_0_954_ = create_node<GBuffer>("gbuf1a_0_0_954", partition_0_0_, plasma_, gbuf1a_0_0_954_params);
    gbuf1a_0_0_954_->set_tile_id(-1);
    gbuf1a_0_0_954_->set_die_id(-1);
    gbuf1a_0_0_954_->set_mac_id("default_954");
    gbuf1a_0_0_954_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_954_->set_metapipe_iterations({100});
    gbuf1a_0_0_954_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_g_t_params;
    ptconvlstm__lstm_layer__lstm_g_t_params.layout = ptconvlstm__lstm_layer__lstm_add_2_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_g_t_params.op = node_constants::TemplateOpcodes::kTanh;
    ptconvlstm__lstm_layer__lstm_g_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_g_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_g_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_g_t_params);
    ptconvlstm__lstm_layer__lstm_g_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_g_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_g_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_g_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_g_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_g_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_956_params;
    gbuf1a_0_0_956_params.head1_linear = true;
    gbuf1a_0_0_956_params.head1_p2p = false;
    gbuf1a_0_0_956_params.head_1_depth = 1;
    gbuf1a_0_0_956_params.layout = ptconvlstm__lstm_layer__lstm_g_t_->result_layout().at_address(0);
    gbuf1a_0_0_956_params.num_iterations = 100;
    gbuf1a_0_0_956_ = create_node<GBuffer>("gbuf1a_0_0_956", partition_0_0_, plasma_, gbuf1a_0_0_956_params);
    gbuf1a_0_0_956_->set_tile_id(-1);
    gbuf1a_0_0_956_->set_die_id(-1);
    gbuf1a_0_0_956_->set_mac_id("default_956");
    gbuf1a_0_0_956_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_956_->set_metapipe_iterations({100});
    gbuf1a_0_0_956_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_o_t_params;
    ptconvlstm__lstm_layer__lstm_o_t_params.layout = ptconvlstm__lstm_layer__lstm_add_3_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_o_t_params.op = node_constants::TemplateOpcodes::kSigmoid;
    ptconvlstm__lstm_layer__lstm_o_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_o_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_o_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_o_t_params);
    ptconvlstm__lstm_layer__lstm_o_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_o_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_o_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_o_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_o_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_o_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_959_params;
    gbuf1a_0_0_959_params.head1_linear = true;
    gbuf1a_0_0_959_params.head1_p2p = false;
    gbuf1a_0_0_959_params.head_1_depth = 1;
    gbuf1a_0_0_959_params.layout = ptconvlstm__lstm_layer__lstm_o_t_->result_layout().at_address(0);
    gbuf1a_0_0_959_params.num_iterations = 100;
    gbuf1a_0_0_959_ = create_node<GBuffer>("gbuf1a_0_0_959", partition_0_0_, plasma_, gbuf1a_0_0_959_params);
    gbuf1a_0_0_959_->set_tile_id(-1);
    gbuf1a_0_0_959_->set_die_id(-1);
    gbuf1a_0_0_959_->set_mac_id("default_959");
    gbuf1a_0_0_959_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_959_->set_metapipe_iterations({100});
    gbuf1a_0_0_959_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_829_params;
    gbuf1a_0_0_829_params.head1_linear = true;
    gbuf1a_0_0_829_params.head1_p2p = false;
    gbuf1a_0_0_829_params.head_1_depth = 1;
    gbuf1a_0_0_829_params.layout = ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_0_0_829_params.num_iterations = 100;
    gbuf1a_0_0_829_ = create_node<GBuffer>("gbuf1a_0_0_829", partition_0_0_, plasma_, gbuf1a_0_0_829_params);
    gbuf1a_0_0_829_->set_tile_id(-1);
    gbuf1a_0_0_829_->set_die_id(-1);
    gbuf1a_0_0_829_->set_mac_id("default_829");
    gbuf1a_0_0_829_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_829_->set_metapipe_iterations({100});
    gbuf1a_0_0_829_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_mul0_params;
    ptconvlstm__lstm_layer__lstm_mul0_params.layout_a = gbuf1a_0_0_954_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_mul0_params.layout_b = gbuf1a_0_0_829_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_mul0_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_mul0_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_mul0_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_mul0_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_mul0", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_mul0_params);
    ptconvlstm__lstm_layer__lstm_mul0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_mul0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_mul0_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_mul0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_mul0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_mul0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_957_params;
    gbuf1a_0_0_957_params.head1_linear = true;
    gbuf1a_0_0_957_params.head1_p2p = false;
    gbuf1a_0_0_957_params.head_1_depth = 1;
    gbuf1a_0_0_957_params.layout = ptconvlstm__lstm_layer__lstm_mul0_->result_layout().at_address(0);
    gbuf1a_0_0_957_params.num_iterations = 100;
    gbuf1a_0_0_957_ = create_node<GBuffer>("gbuf1a_0_0_957", partition_0_0_, plasma_, gbuf1a_0_0_957_params);
    gbuf1a_0_0_957_->set_tile_id(-1);
    gbuf1a_0_0_957_->set_die_id(-1);
    gbuf1a_0_0_957_->set_mac_id("default_957");
    gbuf1a_0_0_957_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_957_->set_metapipe_iterations({100});
    gbuf1a_0_0_957_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_mul1_params;
    ptconvlstm__lstm_layer__lstm_mul1_params.layout_a = gbuf1a_0_0_955_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_mul1_params.layout_b = gbuf1a_0_0_956_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_mul1_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_mul1_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_mul1_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_mul1_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_mul1", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_mul1_params);
    ptconvlstm__lstm_layer__lstm_mul1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_mul1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_mul1_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_mul1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_mul1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_mul1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_958_params;
    gbuf1a_0_0_958_params.head1_linear = true;
    gbuf1a_0_0_958_params.head1_p2p = false;
    gbuf1a_0_0_958_params.head_1_depth = 1;
    gbuf1a_0_0_958_params.layout = ptconvlstm__lstm_layer__lstm_mul1_->result_layout().at_address(0);
    gbuf1a_0_0_958_params.num_iterations = 100;
    gbuf1a_0_0_958_ = create_node<GBuffer>("gbuf1a_0_0_958", partition_0_0_, plasma_, gbuf1a_0_0_958_params);
    gbuf1a_0_0_958_->set_tile_id(-1);
    gbuf1a_0_0_958_->set_die_id(-1);
    gbuf1a_0_0_958_->set_mac_id("default_958");
    gbuf1a_0_0_958_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_958_->set_metapipe_iterations({100});
    gbuf1a_0_0_958_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_cell_params;
    ptconvlstm__lstm_layer__lstm_cell_params.layout_a = gbuf1a_0_0_957_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_cell_params.layout_b = gbuf1a_0_0_958_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_cell_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_cell_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_cell_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_cell_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_cell", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_cell_params);
    ptconvlstm__lstm_layer__lstm_cell_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_cell_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_cell_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_cell_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_cell_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_tanh_cell_params;
    ptconvlstm__lstm_layer__lstm_tanh_cell_params.layout = ptconvlstm__lstm_layer__lstm_cell_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_tanh_cell_params.op = node_constants::TemplateOpcodes::kTanh;
    ptconvlstm__lstm_layer__lstm_tanh_cell_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_tanh_cell_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_tanh_cell", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_tanh_cell_params);
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_0_0_960_params;
    gbuf1a_0_0_960_params.head1_linear = true;
    gbuf1a_0_0_960_params.head1_p2p = false;
    gbuf1a_0_0_960_params.head_1_depth = 1;
    gbuf1a_0_0_960_params.layout = ptconvlstm__lstm_layer__lstm_tanh_cell_->result_layout().at_address(0);
    gbuf1a_0_0_960_params.num_iterations = 100;
    gbuf1a_0_0_960_ = create_node<GBuffer>("gbuf1a_0_0_960", partition_0_0_, plasma_, gbuf1a_0_0_960_params);
    gbuf1a_0_0_960_->set_tile_id(-1);
    gbuf1a_0_0_960_->set_die_id(-1);
    gbuf1a_0_0_960_->set_mac_id("default_960");
    gbuf1a_0_0_960_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_960_->set_metapipe_iterations({100});
    gbuf1a_0_0_960_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_hidden_params;
    ptconvlstm__lstm_layer__lstm_hidden_params.layout_a = gbuf1a_0_0_959_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_hidden_params.layout_b = gbuf1a_0_0_960_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_hidden_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_hidden_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_hidden_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_hidden_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_hidden", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_hidden_params);
    ptconvlstm__lstm_layer__lstm_hidden_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_hidden_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_hidden_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_hidden_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_hidden_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    VectorTranspose::Params vector_transpose_0_0_906_params;
    vector_transpose_0_0_906_params.depth = 1;
    vector_transpose_0_0_906_params.input_is_vector_transposed = true;
    vector_transpose_0_0_906_params.layout = ptconvlstm__lstm_layer__lstm_hidden_->result_layout().at_address(0);
    vector_transpose_0_0_906_ = create_node<VectorTranspose>("vector_transpose_0_0_906", partition_0_0_, plasma_, vector_transpose_0_0_906_params);
    vector_transpose_0_0_906_->set_tile_id(-1);
    vector_transpose_0_0_906_->set_die_id(-1);
    vector_transpose_0_0_906_->set_mac_id("default_906");
    vector_transpose_0_0_906_->set_mac_latency(-1.000000e+00);
    vector_transpose_0_0_906_->set_metapipe_iterations({100});
    vector_transpose_0_0_906_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_output_i_t_params;
    ptconvlstm__lstm_layer__lstm_output_i_t_params.input_layout = vector_transpose_0_0_906_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_output_i_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_output_i_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_output_i_t", partition_0_0_, plasma_, ptconvlstm__lstm_layer__lstm_output_i_t_params);
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params tbuf2u_0_0_334_params;
    tbuf2u_0_0_334_params.buffer_depth = 2;
    tbuf2u_0_0_334_params.layout = ptconvlstm__lstm_layer__lstm_output_i_t_->result_layout().with_vector_transpose_flipped();
    tbuf2u_0_0_334_ = create_node<TBuffer>("tbuf2u_0_0_334", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_0_0_334_params);
    tbuf2u_0_0_334_->set_tile_id(-1);
    tbuf2u_0_0_334_->set_die_id(-1);
    tbuf2u_0_0_334_->set_mac_id("default_334");
    tbuf2u_0_0_334_->set_mac_latency(-1.000000e+00);
    tbuf2u_0_0_334_->set_metapipe_iterations({100});
    tbuf2u_0_0_334_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params rbuf1u_0_0_335_params;
    rbuf1u_0_0_335_params.buffer_depth = 1;
    rbuf1u_0_0_335_params.layout = params_.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149.at_address(0);
    rbuf1u_0_0_335_ = create_node<TBuffer>("rbuf1u_0_0_335", partition_0_0_, LOC, mlir::rail::RAIL::rail, rbuf1u_0_0_335_params);
    rbuf1u_0_0_335_->set_tile_id(-1);
    rbuf1u_0_0_335_->set_die_id(-1);
    rbuf1u_0_0_335_->set_mac_id("default_335");
    rbuf1u_0_0_335_->set_mac_latency(-1.000000e+00);
    rbuf1u_0_0_335_->set_metapipe_iterations({100});
    rbuf1u_0_0_335_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    RAILIndex::Params ptconvlstm__indexselect_params;
    ptconvlstm__indexselect_params.index_dim = 0;
    ptconvlstm__indexselect_params.index_tensor_layout = rbuf1u_0_0_335_->param().layout->at_address(0).at_address(0);
    ptconvlstm__indexselect_params.lut_tensor_layout = tbuf2u_0_0_334_->param().layout->at_address(0).at_address(0);
    ptconvlstm__indexselect_params.read_zeros_outside_range = true;
    ptconvlstm__indexselect_ = create_node<RAILIndex>("ptconvlstm__indexselect", partition_0_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__indexselect_params);
    ptconvlstm__indexselect_->set_tile_id(-1);
    ptconvlstm__indexselect_->set_die_id(-1);
    ptconvlstm__indexselect_->set_mac_id("ptconvlstm__indexselect");
    ptconvlstm__indexselect_->set_mac_latency(2.000000e+00);
    ptconvlstm__indexselect_->set_metapipe_iterations({100});
    ptconvlstm__indexselect_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params tbuf2u_0_0_342_params;
    tbuf2u_0_0_342_params.buffer_depth = 2;
    tbuf2u_0_0_342_params.layout = PermuteView::permute_layout(ptconvlstm__indexselect_->result_layout().at_address(0), {1, 0});
    tbuf2u_0_0_342_ = create_node<TBuffer>("tbuf2u_0_0_342", partition_0_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_0_0_342_params);
    tbuf2u_0_0_342_->set_tile_id(-1);
    tbuf2u_0_0_342_->set_die_id(-1);
    tbuf2u_0_0_342_->set_mac_id("default_342");
    tbuf2u_0_0_342_->set_mac_latency(-1.000000e+00);
    tbuf2u_0_0_342_->set_metapipe_iterations({100});
    tbuf2u_0_0_342_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__dense_layer__linear_params;
    ptconvlstm__dense_layer__linear_params.batch_size = 100;
    ptconvlstm__dense_layer__linear_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__dense_layer__linear_params.box_layout = true;
    ptconvlstm__dense_layer__linear_params.box_layout_bias_placement = false;
    ptconvlstm__dense_layer__linear_params.box_layout_max_height = 64;
    ptconvlstm__dense_layer__linear_params.box_layout_max_width = 4;
    ptconvlstm__dense_layer__linear_params.box_per_wbuf_split = false;
    ptconvlstm__dense_layer__linear_params.enable_instrumentation = false;
    ptconvlstm__dense_layer__linear_params.external_output = false;
    ptconvlstm__dense_layer__linear_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__dense_layer__linear_params.fwd_prop_a = params_.ptconvlstm__dense_layer__weight_0_0_153.with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_params.fwd_prop_b = tbuf2u_0_0_342_->param().layout->at_address(0).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_params.fwd_prop_bias = params_.ptconvlstm__dense_layer__bias_0_0_154;
    ptconvlstm__dense_layer__linear_params.integrated_bias = false;
    ptconvlstm__dense_layer__linear_params.integrated_relu = false;
    ptconvlstm__dense_layer__linear_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_params.no_reload_bias = false;
    ptconvlstm__dense_layer__linear_params.no_reload_weight = false;
    ptconvlstm__dense_layer__linear_params.num_compute_units = 1;
    ptconvlstm__dense_layer__linear_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_params.stream_into_wbuf = false;
    ptconvlstm__dense_layer__linear_params.strnd = false;
    ptconvlstm__dense_layer__linear_params.strnd_seed = 1;
    ptconvlstm__dense_layer__linear_params.subnet_type = SubnetType::kForward;
    ptconvlstm__dense_layer__linear_params.use_wbuf_for_bias = true;
    ptconvlstm__dense_layer__linear_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_params.wbuf_split = false;
    ptconvlstm__dense_layer__linear_ = create_node<GemmSubnet>("ptconvlstm__dense_layer__linear", partition_0_0_, plasma_, ptconvlstm__dense_layer__linear_params);
    ptconvlstm__dense_layer__linear_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_->set_mac_id("ptconvlstm__dense_layer__linear");
    ptconvlstm__dense_layer__linear_->set_mac_latency(1.235200e+04);
    ptconvlstm__dense_layer__linear_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_0_0_344_params;
    gbuf2u_0_0_344_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_344_params.head1_linear = true;
    gbuf2u_0_0_344_params.head1_p2p = false;
    gbuf2u_0_0_344_params.head1_streaming_window = true;
    gbuf2u_0_0_344_params.head_1_depth = 2;
    gbuf2u_0_0_344_params.layout = ptconvlstm__dense_layer__linear_->result_layout().at_address(0);
    gbuf2u_0_0_344_params.num_head1_rd_en = 2;
    gbuf2u_0_0_344_params.num_iterations = 100;
    gbuf2u_0_0_344_ = create_node<GBuffer>("gbuf2u_0_0_344", partition_0_0_, plasma_, gbuf2u_0_0_344_params);
    gbuf2u_0_0_344_->set_tile_id(-1);
    gbuf2u_0_0_344_->set_die_id(-1);
    gbuf2u_0_0_344_->set_mac_id("default_344");
    gbuf2u_0_0_344_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_344_->set_metapipe_iterations({100});
    gbuf2u_0_0_344_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    LayoutCast::Params layout_cast_0_0_995_params;
    layout_cast_0_0_995_params.checked = false;
    layout_cast_0_0_995_params.input_layout = gbuf2u_0_0_344_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    layout_cast_0_0_995_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 0).vector_align();
    layout_cast_0_0_995_ = create_node<LayoutCast>("layout_cast_0_0_995", partition_0_0_, plasma_, layout_cast_0_0_995_params);
    layout_cast_0_0_995_->set_tile_id(-1);
    layout_cast_0_0_995_->set_die_id(-1);
    layout_cast_0_0_995_->set_mac_id("default_995");
    layout_cast_0_0_995_->set_mac_latency(-1.000000e+00);
    layout_cast_0_0_995_->set_metapipe_iterations({100});
    layout_cast_0_0_995_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_output0_params;
    ptconvlstm__dense_layer__linear_t_output0_params.input_layout = layout_cast_0_0_995_->result_layout();
    ptconvlstm__dense_layer__linear_t_output0_params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_output0_ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_output0", partition_0_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_params);
    ptconvlstm__dense_layer__linear_t_output0_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0");
    ptconvlstm__dense_layer__linear_t_output0_->set_mac_latency(0.000000e+00);
    ptconvlstm__dense_layer__linear_t_output0_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_t_output0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_1001_params;
    gbuf2a_0_0_1001_params.head0_ctrl_flow_enable = true;
    gbuf2a_0_0_1001_params.head0_linear = true;
    gbuf2a_0_0_1001_params.head0_p2p = false;
    gbuf2a_0_0_1001_params.head0_streaming_window = true;
    gbuf2a_0_0_1001_params.head1_ctrl_flow_dividers = {100, 100};
    gbuf2a_0_0_1001_params.head1_ctrl_flow_enable = true;
    gbuf2a_0_0_1001_params.head1_linear = true;
    gbuf2a_0_0_1001_params.head1_p2p = false;
    gbuf2a_0_0_1001_params.head1_streaming_window = true;
    gbuf2a_0_0_1001_params.head_0_depth = 2;
    gbuf2a_0_0_1001_params.head_1_depth = 2;
    gbuf2a_0_0_1001_params.layout = ptconvlstm__dense_layer__linear_t_output0_->result_layout();
    gbuf2a_0_0_1001_params.num_head0_rd_en = 2;
    gbuf2a_0_0_1001_params.num_head1_rd_en = 2;
    gbuf2a_0_0_1001_params.num_iterations = 100;
    gbuf2a_0_0_1001_ = create_node<GBuffer>("gbuf2a_0_0_1001", partition_0_0_, plasma_, gbuf2a_0_0_1001_params);
    gbuf2a_0_0_1001_->set_tile_id(-1);
    gbuf2a_0_0_1001_->set_die_id(-1);
    gbuf2a_0_0_1001_->set_mac_id("default_1001");
    gbuf2a_0_0_1001_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_1001_->set_metapipe_iterations({100});
    gbuf2a_0_0_1001_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ReshapeView::Params ptconvlstm__view_params;
    ptconvlstm__view_params.input_layout = gbuf2a_0_0_1001_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvlstm__view_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {30, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).align({{-2,64}});
    ptconvlstm__view_params.reshape = {30, 136};
    ptconvlstm__view_ = create_node<ReshapeView>("ptconvlstm__view", partition_0_0_, plasma_, ptconvlstm__view_params);
    ptconvlstm__view_->set_tile_id(-1);
    ptconvlstm__view_->set_die_id(-1);
    ptconvlstm__view_->set_mac_id("ptconvlstm__view");
    ptconvlstm__view_->set_mac_latency(1.300000e+01);
    ptconvlstm__view_->set_metapipe_iterations({100});
    ptconvlstm__view_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_837_params;
    gbuf2a_0_0_837_params.head1_linear = false;
    gbuf2a_0_0_837_params.head1_p2p = false;
    gbuf2a_0_0_837_params.head_1_depth = 2;
    gbuf2a_0_0_837_params.layout = ptconvlstm__lstm_layer__lstm_output_i_t_->result_layout();
    gbuf2a_0_0_837_params.num_iterations = 100;
    gbuf2a_0_0_837_params.overlap = LoadTiler::enable_scatter_overlap(ptconvlstm__lstm_layer__lstm_output_i_t_->result_layout());
    gbuf2a_0_0_837_ = create_node<GBuffer>("gbuf2a_0_0_837", partition_0_0_, plasma_, gbuf2a_0_0_837_params);
    gbuf2a_0_0_837_->set_tile_id(-1);
    gbuf2a_0_0_837_->set_die_id(-1);
    gbuf2a_0_0_837_->set_mac_id("default_837");
    gbuf2a_0_0_837_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_837_->set_metapipe_iterations({100});
    gbuf2a_0_0_837_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_831_params;
    gbuf2a_0_0_831_params.head1_linear = false;
    gbuf2a_0_0_831_params.head1_p2p = false;
    gbuf2a_0_0_831_params.head_1_depth = 2;
    gbuf2a_0_0_831_params.layout = ptconvlstm__lstm_layer__lstm_i_t_->result_layout().at_address(0);
    gbuf2a_0_0_831_params.num_iterations = 100;
    gbuf2a_0_0_831_ = create_node<GBuffer>("gbuf2a_0_0_831", partition_0_0_, plasma_, gbuf2a_0_0_831_params);
    gbuf2a_0_0_831_->set_tile_id(-1);
    gbuf2a_0_0_831_->set_die_id(-1);
    gbuf2a_0_0_831_->set_mac_id("default_831");
    gbuf2a_0_0_831_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_831_->set_metapipe_iterations({100});
    gbuf2a_0_0_831_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_832_params;
    gbuf2a_0_0_832_params.head1_linear = false;
    gbuf2a_0_0_832_params.head1_p2p = false;
    gbuf2a_0_0_832_params.head_1_depth = 2;
    gbuf2a_0_0_832_params.layout = ptconvlstm__lstm_layer__lstm_f_t_->result_layout().at_address(0);
    gbuf2a_0_0_832_params.num_iterations = 100;
    gbuf2a_0_0_832_ = create_node<GBuffer>("gbuf2a_0_0_832", partition_0_0_, plasma_, gbuf2a_0_0_832_params);
    gbuf2a_0_0_832_->set_tile_id(-1);
    gbuf2a_0_0_832_->set_die_id(-1);
    gbuf2a_0_0_832_->set_mac_id("default_832");
    gbuf2a_0_0_832_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_832_->set_metapipe_iterations({100});
    gbuf2a_0_0_832_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_833_params;
    gbuf2a_0_0_833_params.head1_linear = false;
    gbuf2a_0_0_833_params.head1_p2p = false;
    gbuf2a_0_0_833_params.head_1_depth = 2;
    gbuf2a_0_0_833_params.layout = ptconvlstm__lstm_layer__lstm_g_t_->result_layout().at_address(0);
    gbuf2a_0_0_833_params.num_iterations = 100;
    gbuf2a_0_0_833_ = create_node<GBuffer>("gbuf2a_0_0_833", partition_0_0_, plasma_, gbuf2a_0_0_833_params);
    gbuf2a_0_0_833_->set_tile_id(-1);
    gbuf2a_0_0_833_->set_die_id(-1);
    gbuf2a_0_0_833_->set_mac_id("default_833");
    gbuf2a_0_0_833_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_833_->set_metapipe_iterations({100});
    gbuf2a_0_0_833_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_834_params;
    gbuf2a_0_0_834_params.head1_linear = false;
    gbuf2a_0_0_834_params.head1_p2p = false;
    gbuf2a_0_0_834_params.head_1_depth = 2;
    gbuf2a_0_0_834_params.layout = ptconvlstm__lstm_layer__lstm_o_t_->result_layout().at_address(0);
    gbuf2a_0_0_834_params.num_iterations = 100;
    gbuf2a_0_0_834_ = create_node<GBuffer>("gbuf2a_0_0_834", partition_0_0_, plasma_, gbuf2a_0_0_834_params);
    gbuf2a_0_0_834_->set_tile_id(-1);
    gbuf2a_0_0_834_->set_die_id(-1);
    gbuf2a_0_0_834_->set_mac_id("default_834");
    gbuf2a_0_0_834_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_834_->set_metapipe_iterations({100});
    gbuf2a_0_0_834_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_830_params;
    gbuf2a_0_0_830_params.head1_linear = false;
    gbuf2a_0_0_830_params.head1_p2p = false;
    gbuf2a_0_0_830_params.head_1_depth = 2;
    gbuf2a_0_0_830_params.layout = ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0);
    gbuf2a_0_0_830_params.num_iterations = 100;
    gbuf2a_0_0_830_ = create_node<GBuffer>("gbuf2a_0_0_830", partition_0_0_, plasma_, gbuf2a_0_0_830_params);
    gbuf2a_0_0_830_->set_tile_id(-1);
    gbuf2a_0_0_830_->set_die_id(-1);
    gbuf2a_0_0_830_->set_mac_id("default_830");
    gbuf2a_0_0_830_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_830_->set_metapipe_iterations({100});
    gbuf2a_0_0_830_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_838_params;
    gbuf2a_0_0_838_params.head1_linear = false;
    gbuf2a_0_0_838_params.head1_p2p = false;
    gbuf2a_0_0_838_params.head_1_depth = 2;
    gbuf2a_0_0_838_params.layout = ptconvlstm__view_->result_layout();
    gbuf2a_0_0_838_params.num_iterations = 100;
    gbuf2a_0_0_838_ = create_node<GBuffer>("gbuf2a_0_0_838", partition_0_0_, plasma_, gbuf2a_0_0_838_params);
    gbuf2a_0_0_838_->set_tile_id(-1);
    gbuf2a_0_0_838_->set_die_id(-1);
    gbuf2a_0_0_838_->set_mac_id("default_838");
    gbuf2a_0_0_838_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_838_->set_metapipe_iterations({100});
    gbuf2a_0_0_838_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_836_params;
    gbuf2a_0_0_836_params.head1_linear = true;
    gbuf2a_0_0_836_params.head1_p2p = false;
    gbuf2a_0_0_836_params.head_1_depth = 2;
    gbuf2a_0_0_836_params.layout = ptconvlstm__lstm_layer__lstm_hidden_->result_layout().at_address(0);
    gbuf2a_0_0_836_params.num_iterations = 100;
    gbuf2a_0_0_836_ = create_node<GBuffer>("gbuf2a_0_0_836", partition_0_0_, plasma_, gbuf2a_0_0_836_params);
    gbuf2a_0_0_836_->set_tile_id(-1);
    gbuf2a_0_0_836_->set_die_id(-1);
    gbuf2a_0_0_836_->set_mac_id("default_836");
    gbuf2a_0_0_836_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_836_->set_metapipe_iterations({100});
    gbuf2a_0_0_836_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_835_params;
    gbuf2a_0_0_835_params.head1_linear = true;
    gbuf2a_0_0_835_params.head1_p2p = false;
    gbuf2a_0_0_835_params.head_1_depth = 2;
    gbuf2a_0_0_835_params.layout = ptconvlstm__lstm_layer__lstm_cell_->result_layout().at_address(0);
    gbuf2a_0_0_835_params.num_iterations = 100;
    gbuf2a_0_0_835_ = create_node<GBuffer>("gbuf2a_0_0_835", partition_0_0_, plasma_, gbuf2a_0_0_835_params);
    gbuf2a_0_0_835_->set_tile_id(-1);
    gbuf2a_0_0_835_->set_die_id(-1);
    gbuf2a_0_0_835_->set_mac_id("default_835");
    gbuf2a_0_0_835_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_835_->set_metapipe_iterations({100});
    gbuf2a_0_0_835_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_0_0_944_params;
    gbuf2a_0_0_944_params.head1_linear = true;
    gbuf2a_0_0_944_params.head1_p2p = false;
    gbuf2a_0_0_944_params.head_1_depth = 2;
    gbuf2a_0_0_944_params.layout = gbuf2a_0_0_1001_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({100, 4080}).at_address(0);
    gbuf2a_0_0_944_params.num_iterations = 1;
    gbuf2a_0_0_944_ = create_node<GBuffer>("gbuf2a_0_0_944", partition_0_0_, plasma_, gbuf2a_0_0_944_params);
    gbuf2a_0_0_944_->set_tile_id(-1);
    gbuf2a_0_0_944_->set_die_id(-1);
    gbuf2a_0_0_944_->set_mac_id("default_944");
    gbuf2a_0_0_944_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_944_->set_metapipe_iterations({1});
    gbuf2a_0_0_944_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_0_0_563_params;
    permute_view_0_0_563_params.input_layout = ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead0Buffer).at_address(0);
    permute_view_0_0_563_params.permute = {1, 0};
    permute_view_0_0_563_ = create_node<PermuteView>("permute_view_0_0_563", partition_0_0_, plasma_, permute_view_0_0_563_params);
    permute_view_0_0_563_->set_tile_id(-1);
    permute_view_0_0_563_->set_die_id(-1);
    permute_view_0_0_563_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    permute_view_0_0_563_->set_mac_latency(-1.000000e+00);
    permute_view_0_0_563_->set_metapipe_iterations({1});
    permute_view_0_0_563_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_0_0_564_params;
    reshape_0_0_564_params.input_layout = permute_view_0_0_563_->result_layout();
    reshape_0_0_564_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_0_0_564_params.reshape = {1, 60, 64};
    reshape_0_0_564_ = create_node<ReshapeView>("reshape_0_0_564", partition_0_0_, plasma_, reshape_0_0_564_params);
    reshape_0_0_564_->set_tile_id(-1);
    reshape_0_0_564_->set_die_id(-1);
    reshape_0_0_564_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    reshape_0_0_564_->set_mac_latency(-1.000000e+00);
    reshape_0_0_564_->set_metapipe_iterations({1});
    reshape_0_0_564_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params permute_view_0_0_565_params;
    permute_view_0_0_565_params.input_layout = ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->result_layout(LoopBuffer::Output::kHead0Buffer).at_address(0);
    permute_view_0_0_565_params.permute = {1, 0};
    permute_view_0_0_565_ = create_node<PermuteView>("permute_view_0_0_565", partition_0_0_, plasma_, permute_view_0_0_565_params);
    permute_view_0_0_565_->set_tile_id(-1);
    permute_view_0_0_565_->set_die_id(-1);
    permute_view_0_0_565_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    permute_view_0_0_565_->set_mac_latency(-1.000000e+00);
    permute_view_0_0_565_->set_metapipe_iterations({1});
    permute_view_0_0_565_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_0_0_566_params;
    reshape_0_0_566_params.input_layout = permute_view_0_0_565_->result_layout();
    reshape_0_0_566_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_0_0_566_params.reshape = {1, 60, 64};
    reshape_0_0_566_ = create_node<ReshapeView>("reshape_0_0_566", partition_0_0_, plasma_, reshape_0_0_566_params);
    reshape_0_0_566_->set_tile_id(-1);
    reshape_0_0_566_->set_die_id(-1);
    reshape_0_0_566_->set_mac_id("ptconvlstm__lstm_layer__lstm");
    reshape_0_0_566_->set_mac_latency(-1.000000e+00);
    reshape_0_0_566_->set_metapipe_iterations({1});
    reshape_0_0_566_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_839_params;
    gbuf1a_0_0_839_params.head1_linear = false;
    gbuf1a_0_0_839_params.head1_p2p = false;
    gbuf1a_0_0_839_params.head_1_depth = 1;
    gbuf1a_0_0_839_params.layout = reshape_0_0_564_->result_layout();
    gbuf1a_0_0_839_params.num_iterations = 1;
    gbuf1a_0_0_839_ = create_node<GBuffer>("gbuf1a_0_0_839", partition_0_0_, plasma_, gbuf1a_0_0_839_params);
    gbuf1a_0_0_839_->set_tile_id(-1);
    gbuf1a_0_0_839_->set_die_id(-1);
    gbuf1a_0_0_839_->set_mac_id("default_839");
    gbuf1a_0_0_839_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_839_->set_metapipe_iterations({1});
    gbuf1a_0_0_839_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_840_params;
    gbuf1a_0_0_840_params.head1_linear = false;
    gbuf1a_0_0_840_params.head1_p2p = false;
    gbuf1a_0_0_840_params.head_1_depth = 1;
    gbuf1a_0_0_840_params.layout = reshape_0_0_566_->result_layout();
    gbuf1a_0_0_840_params.num_iterations = 1;
    gbuf1a_0_0_840_ = create_node<GBuffer>("gbuf1a_0_0_840", partition_0_0_, plasma_, gbuf1a_0_0_840_params);
    gbuf1a_0_0_840_->set_tile_id(-1);
    gbuf1a_0_0_840_->set_die_id(-1);
    gbuf1a_0_0_840_->set_mac_id("default_840");
    gbuf1a_0_0_840_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_840_->set_metapipe_iterations({1});
    gbuf1a_0_0_840_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_826_params;
    gbuf1a_0_0_826_params.head1_linear = false;
    gbuf1a_0_0_826_params.head1_p2p = false;
    gbuf1a_0_0_826_params.head_1_depth = 1;
    gbuf1a_0_0_826_params.layout = gbuf1a_0_0_890_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_0_0_826_params.num_iterations = 1;
    gbuf1a_0_0_826_params.overlap = LoadTiler::enable_scatter_overlap(gbuf1a_0_0_890_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0));
    gbuf1a_0_0_826_ = create_node<GBuffer>("gbuf1a_0_0_826", partition_0_0_, plasma_, gbuf1a_0_0_826_params);
    gbuf1a_0_0_826_->set_tile_id(-1);
    gbuf1a_0_0_826_->set_die_id(-1);
    gbuf1a_0_0_826_->set_mac_id("default_826");
    gbuf1a_0_0_826_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_826_->set_metapipe_iterations({1});
    gbuf1a_0_0_826_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_936_params;
    gbuf2a_0_0_936_params.enable_fronting_pmu = true;
    gbuf2a_0_0_936_params.head1_ctrl_flow_enable = true;
    gbuf2a_0_0_936_params.head1_linear = false;
    gbuf2a_0_0_936_params.head1_p2p = false;
    gbuf2a_0_0_936_params.head1_streaming_window = true;
    gbuf2a_0_0_936_params.head_1_depth = 2;
    gbuf2a_0_0_936_params.layout = params_.out_window_0_0_483.at_address(0);
    gbuf2a_0_0_936_params.loaded_by_broadcast = false;
    gbuf2a_0_0_936_params.num_head1_rd_en = 2;
    gbuf2a_0_0_936_params.num_iterations = 5;
    gbuf2a_0_0_936_params.overlap = LoadTiler::enable_scatter_overlap(params_.out_window_0_0_483.at_address(0));
    gbuf2a_0_0_936_ = create_node<GBuffer>("gbuf2a_0_0_936", partition_0_0_, plasma_, gbuf2a_0_0_936_params);
    gbuf2a_0_0_936_->set_tile_id(-1);
    gbuf2a_0_0_936_->set_die_id(-1);
    gbuf2a_0_0_936_->set_mac_id("default_936");
    gbuf2a_0_0_936_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_936_->set_metapipe_iterations({5});
    gbuf2a_0_0_936_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(5)});
    
    StreamingTranspose::Params streaming_transpose_0_0_909_params;
    streaming_transpose_0_0_909_params.activation_pmu_transpose = true;
    streaming_transpose_0_0_909_params.image_layout = gbuf2a_0_0_936_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    streaming_transpose_0_0_909_params.read_mode = StreamingTranspose::StreamingTransposeReadMode::RVRM_TO_DVDM;
    streaming_transpose_0_0_909_ = create_node<StreamingTranspose>("streaming_transpose_0_0_909", partition_0_0_, plasma_, streaming_transpose_0_0_909_params);
    streaming_transpose_0_0_909_->set_tile_id(-1);
    streaming_transpose_0_0_909_->set_die_id(-1);
    streaming_transpose_0_0_909_->set_mac_id("default_909");
    streaming_transpose_0_0_909_->set_mac_latency(-1.000000e+00);
    streaming_transpose_0_0_909_->set_metapipe_iterations({5});
    streaming_transpose_0_0_909_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(5)});
    
    GBuffer::Params gbuf2u_0_0_363_params;
    gbuf2u_0_0_363_params.head1_ctrl_flow_dividers = {5, 5};
    gbuf2u_0_0_363_params.head1_ctrl_flow_enable = true;
    gbuf2u_0_0_363_params.head1_linear = true;
    gbuf2u_0_0_363_params.head1_p2p = false;
    gbuf2u_0_0_363_params.head1_streaming_window = true;
    gbuf2u_0_0_363_params.head_1_depth = 2;
    gbuf2u_0_0_363_params.layout = streaming_transpose_0_0_909_->result_layout().at_address(0);
    gbuf2u_0_0_363_params.num_head1_rd_en = 2;
    gbuf2u_0_0_363_params.num_iterations = 5;
    gbuf2u_0_0_363_ = create_node<GBuffer>("gbuf2u_0_0_363", partition_0_0_, plasma_, gbuf2u_0_0_363_params);
    gbuf2u_0_0_363_->set_tile_id(-1);
    gbuf2u_0_0_363_->set_die_id(-1);
    gbuf2u_0_0_363_->set_mac_id("default_363");
    gbuf2u_0_0_363_->set_mac_latency(-1.000000e+00);
    gbuf2u_0_0_363_->set_metapipe_iterations({5});
    gbuf2u_0_0_363_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(5)});
    
    ReshapeView::Params ptconvlstm__reshape_2_params;
    ptconvlstm__reshape_2_params.input_layout = gbuf2u_0_0_363_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__reshape_2_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {100, 816}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 0).vector_align();
    ptconvlstm__reshape_2_params.reshape = {100, 816};
    ptconvlstm__reshape_2_ = create_node<ReshapeView>("ptconvlstm__reshape_2", partition_0_0_, plasma_, ptconvlstm__reshape_2_params);
    ptconvlstm__reshape_2_->set_tile_id(-1);
    ptconvlstm__reshape_2_->set_die_id(-1);
    ptconvlstm__reshape_2_->set_mac_id("ptconvlstm__reshape_2");
    ptconvlstm__reshape_2_->set_mac_latency(1.300000e+01);
    ptconvlstm__reshape_2_->set_metapipe_iterations({5});
    ptconvlstm__reshape_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(5)});
    
    GBuffer::Params gbuf2a_0_0_945_params;
    gbuf2a_0_0_945_params.head1_linear = true;
    gbuf2a_0_0_945_params.head1_p2p = false;
    gbuf2a_0_0_945_params.head_1_depth = 2;
    gbuf2a_0_0_945_params.layout = ptconvlstm__reshape_2_->result_layout().with_logical_shape({100, 4080}).at_address(0);
    gbuf2a_0_0_945_params.num_iterations = 1;
    gbuf2a_0_0_945_ = create_node<GBuffer>("gbuf2a_0_0_945", partition_0_0_, plasma_, gbuf2a_0_0_945_params);
    gbuf2a_0_0_945_->set_tile_id(-1);
    gbuf2a_0_0_945_->set_die_id(-1);
    gbuf2a_0_0_945_->set_mac_id("default_945");
    gbuf2a_0_0_945_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_945_->set_metapipe_iterations({1});
    gbuf2a_0_0_945_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf2a_0_0_994_params;
    gbuf2a_0_0_994_params.head1_linear = false;
    gbuf2a_0_0_994_params.head1_p2p = false;
    gbuf2a_0_0_994_params.head_1_depth = 2;
    gbuf2a_0_0_994_params.head_1_transposed = true;
    gbuf2a_0_0_994_params.layout = gbuf2a_0_0_944_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose_flipped();
    gbuf2a_0_0_994_params.num_iterations = 1;
    gbuf2a_0_0_994_ = create_node<GBuffer>("gbuf2a_0_0_994", partition_0_0_, plasma_, gbuf2a_0_0_994_params);
    gbuf2a_0_0_994_->set_tile_id(-1);
    gbuf2a_0_0_994_->set_die_id(-1);
    gbuf2a_0_0_994_->set_mac_id("default_994");
    gbuf2a_0_0_994_->set_mac_latency(-1.000000e+00);
    gbuf2a_0_0_994_->set_metapipe_iterations({1});
    gbuf2a_0_0_994_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_943_params;
    gbuf1a_0_0_943_params.head1_linear = true;
    gbuf1a_0_0_943_params.head1_p2p = false;
    gbuf1a_0_0_943_params.head_1_depth = 1;
    gbuf1a_0_0_943_params.layout = gbuf2a_0_0_945_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose_flipped();
    gbuf1a_0_0_943_params.num_iterations = 1;
    gbuf1a_0_0_943_ = create_node<GBuffer>("gbuf1a_0_0_943", partition_0_0_, plasma_, gbuf1a_0_0_943_params);
    gbuf1a_0_0_943_->set_tile_id(-1);
    gbuf1a_0_0_943_->set_die_id(-1);
    gbuf1a_0_0_943_->set_mac_id("default_943");
    gbuf1a_0_0_943_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_943_->set_metapipe_iterations({1});
    gbuf1a_0_0_943_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BinaryOps::Params sub_0_0_568_params;
    sub_0_0_568_params.layout_a = gbuf2a_0_0_994_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    sub_0_0_568_params.layout_b = gbuf1a_0_0_943_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    sub_0_0_568_params.op = node_constants::TemplateOpcodes::kSub;
    sub_0_0_568_params.streaming_a = true;
    sub_0_0_568_params.streaming_b = true;
    sub_0_0_568_ = create_node<BinaryOps>("sub_0_0_568", partition_0_0_, plasma_, sub_0_0_568_params);
    sub_0_0_568_->set_tile_id(-1);
    sub_0_0_568_->set_die_id(-1);
    sub_0_0_568_->set_mac_id("default_75");
    sub_0_0_568_->set_mac_latency(3.187500e+04);
    sub_0_0_568_->set_metapipe_iterations({1});
    sub_0_0_568_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_1002_params;
    gbuf1a_0_0_1002_params.head0_linear = true;
    gbuf1a_0_0_1002_params.head0_p2p = false;
    gbuf1a_0_0_1002_params.head1_linear = true;
    gbuf1a_0_0_1002_params.head1_p2p = false;
    gbuf1a_0_0_1002_params.head_0_depth = 1;
    gbuf1a_0_0_1002_params.head_1_depth = 1;
    gbuf1a_0_0_1002_params.layout = sub_0_0_568_->result_layout().at_address(0).with_vector_transpose_flipped();
    gbuf1a_0_0_1002_params.num_iterations = 1;
    gbuf1a_0_0_1002_ = create_node<GBuffer>("gbuf1a_0_0_1002", partition_0_0_, plasma_, gbuf1a_0_0_1002_params);
    gbuf1a_0_0_1002_->set_tile_id(-1);
    gbuf1a_0_0_1002_->set_die_id(-1);
    gbuf1a_0_0_1002_->set_mac_id("default_1002");
    gbuf1a_0_0_1002_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_1002_->set_metapipe_iterations({1});
    gbuf1a_0_0_1002_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BinaryOps::Params mul_0_0_569_params;
    mul_0_0_569_params.layout_a = gbuf1a_0_0_1002_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    mul_0_0_569_params.layout_b = gbuf1a_0_0_1002_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    mul_0_0_569_params.op = node_constants::TemplateOpcodes::kMul;
    mul_0_0_569_params.streaming_a = true;
    mul_0_0_569_params.streaming_b = true;
    mul_0_0_569_ = create_node<BinaryOps>("mul_0_0_569", partition_0_0_, plasma_, mul_0_0_569_params);
    mul_0_0_569_->set_tile_id(-1);
    mul_0_0_569_->set_die_id(-1);
    mul_0_0_569_->set_mac_id("default_76");
    mul_0_0_569_->set_mac_latency(3.187500e+04);
    mul_0_0_569_->set_metapipe_iterations({1});
    mul_0_0_569_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    MeanUnalign::Params mean_unalign_0_0_570_params;
    mean_unalign_0_0_570_params.layout = mul_0_0_569_->result_layout().at_address(0);
    mean_unalign_0_0_570_params.op = node_constants::TemplateOpcodes::kMeanUnalign;
    mean_unalign_0_0_570_params.streaming = true;
    mean_unalign_0_0_570_ = create_node<MeanUnalign>("mean_unalign_0_0_570", partition_0_0_, plasma_, mean_unalign_0_0_570_params);
    mean_unalign_0_0_570_->set_tile_id(-1);
    mean_unalign_0_0_570_->set_die_id(-1);
    mean_unalign_0_0_570_->set_mac_id("default_77");
    mean_unalign_0_0_570_->set_mac_latency(3.187500e+04);
    mean_unalign_0_0_570_->set_metapipe_iterations({1});
    mean_unalign_0_0_570_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_0_0_841_params;
    gbuf1a_0_0_841_params.head1_linear = false;
    gbuf1a_0_0_841_params.head1_p2p = false;
    gbuf1a_0_0_841_params.head_1_depth = 1;
    gbuf1a_0_0_841_params.layout = mean_unalign_0_0_570_->result_layout().at_address(0);
    gbuf1a_0_0_841_params.num_iterations = 1;
    gbuf1a_0_0_841_ = create_node<GBuffer>("gbuf1a_0_0_841", partition_0_0_, plasma_, gbuf1a_0_0_841_params);
    gbuf1a_0_0_841_->set_tile_id(-1);
    gbuf1a_0_0_841_->set_die_id(-1);
    gbuf1a_0_0_841_->set_mac_id("default_841");
    gbuf1a_0_0_841_->set_mac_latency(-1.000000e+00);
    gbuf1a_0_0_841_->set_metapipe_iterations({1});
    gbuf1a_0_0_841_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section1() {
    bool layouts_match = true;
    /** Section 1, Chip 0 **/
    partition_1_0_ = create_node<PartitionNode>("partition_1_0_", this, plasma_, 1, 0);
    mlir::rail::RAIL::rail->create_section(partition_1_0_);
    
    partition_1_0_->set_section_latency(4.053485e-03);
    GBuffer::Params gbuf1a_1_0_842_params;
    gbuf1a_1_0_842_params.enable_fronting_pmu = true;
    gbuf1a_1_0_842_params.head1_linear = true;
    gbuf1a_1_0_842_params.head1_p2p = false;
    gbuf1a_1_0_842_params.head_1_depth = 1;
    gbuf1a_1_0_842_params.layout = params_.lstm_operand_0_1_0_167.at_address(0);
    gbuf1a_1_0_842_params.loaded_by_broadcast = false;
    gbuf1a_1_0_842_params.num_iterations = 1;
    gbuf1a_1_0_842_params.write_vector_transposed = true;
    gbuf1a_1_0_842_ = create_node<GBuffer>("gbuf1a_1_0_842", partition_1_0_, plasma_, gbuf1a_1_0_842_params);
    gbuf1a_1_0_842_->set_tile_id(-1);
    gbuf1a_1_0_842_->set_die_id(-1);
    gbuf1a_1_0_842_->set_mac_id("default_842");
    gbuf1a_1_0_842_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_842_->set_metapipe_iterations({1});
    gbuf1a_1_0_842_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvlstm__lstm_layer__lstm_recompute__hidden_r_params;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_params.input_layout = gbuf1a_1_0_842_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_params.reshape = {60, 64};
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_ = create_node<ReshapeView>("ptconvlstm__lstm_layer__lstm_recompute__hidden_r", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__hidden_r_params);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_params.input_layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_843_params;
    gbuf1a_1_0_843_params.enable_fronting_pmu = true;
    gbuf1a_1_0_843_params.head1_linear = true;
    gbuf1a_1_0_843_params.head1_p2p = false;
    gbuf1a_1_0_843_params.head_1_depth = 1;
    gbuf1a_1_0_843_params.layout = params_.lstm_operand_1_1_0_170.at_address(0);
    gbuf1a_1_0_843_params.loaded_by_broadcast = false;
    gbuf1a_1_0_843_params.num_iterations = 1;
    gbuf1a_1_0_843_params.write_vector_transposed = true;
    gbuf1a_1_0_843_ = create_node<GBuffer>("gbuf1a_1_0_843", partition_1_0_, plasma_, gbuf1a_1_0_843_params);
    gbuf1a_1_0_843_->set_tile_id(-1);
    gbuf1a_1_0_843_->set_die_id(-1);
    gbuf1a_1_0_843_->set_mac_id("default_843");
    gbuf1a_1_0_843_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_843_->set_metapipe_iterations({1});
    gbuf1a_1_0_843_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvlstm__lstm_layer__lstm_recompute__cell_r_params;
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_params.input_layout = gbuf1a_1_0_843_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_params.reshape = {60, 64};
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_ = create_node<ReshapeView>("ptconvlstm__lstm_layer__lstm_recompute__cell_r", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__cell_r_params);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_params.input_layout = ptconvlstm__lstm_layer__lstm_recompute__cell_r_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_recompute__cell_r_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_844_params;
    gbuf1a_1_0_844_params.enable_fronting_pmu = true;
    gbuf1a_1_0_844_params.head1_linear = true;
    gbuf1a_1_0_844_params.head1_p2p = false;
    gbuf1a_1_0_844_params.head_1_depth = 1;
    gbuf1a_1_0_844_params.layout = params_.ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217.at_address(0);
    gbuf1a_1_0_844_params.loaded_by_broadcast = false;
    gbuf1a_1_0_844_params.num_iterations = 1;
    gbuf1a_1_0_844_params.write_vector_transposed = true;
    gbuf1a_1_0_844_ = create_node<GBuffer>("gbuf1a_1_0_844", partition_1_0_, plasma_, gbuf1a_1_0_844_params);
    gbuf1a_1_0_844_->set_tile_id(-1);
    gbuf1a_1_0_844_->set_die_id(-1);
    gbuf1a_1_0_844_->set_mac_id("default_844");
    gbuf1a_1_0_844_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_844_->set_metapipe_iterations({1});
    gbuf1a_1_0_844_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_params;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_params.input_layout = gbuf1a_1_0_844_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_params.reshape = {60, 64};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_ = create_node<ReshapeView>("ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_params);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_params;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_params.input_layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_params);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_845_params;
    gbuf1a_1_0_845_params.enable_fronting_pmu = true;
    gbuf1a_1_0_845_params.head1_linear = true;
    gbuf1a_1_0_845_params.head1_p2p = false;
    gbuf1a_1_0_845_params.head_1_depth = 1;
    gbuf1a_1_0_845_params.layout = params_.ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220.at_address(0);
    gbuf1a_1_0_845_params.loaded_by_broadcast = false;
    gbuf1a_1_0_845_params.num_iterations = 1;
    gbuf1a_1_0_845_params.write_vector_transposed = true;
    gbuf1a_1_0_845_ = create_node<GBuffer>("gbuf1a_1_0_845", partition_1_0_, plasma_, gbuf1a_1_0_845_params);
    gbuf1a_1_0_845_->set_tile_id(-1);
    gbuf1a_1_0_845_->set_die_id(-1);
    gbuf1a_1_0_845_->set_mac_id("default_845");
    gbuf1a_1_0_845_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_845_->set_metapipe_iterations({1});
    gbuf1a_1_0_845_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_params;
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_params.input_layout = gbuf1a_1_0_845_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_params.reshape = {60, 64};
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_ = create_node<ReshapeView>("ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_params);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_params;
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_params.input_layout = ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_params);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    LoopBuffer::Params ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.export_loop_read_done = true;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.export_loop_write_done = true;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.final_read_layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.head1_ctrl_flow_enable = true;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.head1_linear = false;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.head1_streaming_window = true;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.loop_read_layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.loop_read_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.loop_times = 100;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.loop_write_layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.loop_write_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.num_head1_rd_en = 6;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params.num_iterations = 1;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_ = create_node<LoopBuffer>("ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_params);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->set_metapipe_iter_counts(sn::Dimensions{});
    
    LoopBuffer::Params ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.export_loop_read_done = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.export_loop_write_done = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.final_read_layout = ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.head1_ctrl_flow_enable = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.head1_streaming_window = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.layout = ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.loop_read_layout = ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.loop_read_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.loop_times = 100;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.loop_write_layout = ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.loop_write_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.num_head1_rd_en = 6;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params.num_iterations = 1;
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_ = create_node<LoopBuffer>("ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_params);
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->set_metapipe_iter_counts(sn::Dimensions{});
    
    LoopBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.export_loop_read_done = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.export_loop_write_done = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.final_read_layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.head1_ctrl_flow_enable = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.head1_streaming_window = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.loop_read_layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.loop_read_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.loop_times = 100;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.loop_write_layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.loop_write_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.num_head1_rd_en = 6;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params.num_iterations = 1;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_ = create_node<LoopBuffer>("ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->set_metapipe_iter_counts(sn::Dimensions{});
    
    LoopBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.export_loop_read_done = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.export_loop_write_done = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.final_read_layout = ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.head1_ctrl_flow_enable = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.head1_streaming_window = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.layout = ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.loop_read_layout = ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.loop_read_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.loop_times = 100;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.loop_write_layout = ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.loop_write_stride_bytes = 0;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.num_head1_rd_en = 6;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params.num_iterations = 1;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_ = create_node<LoopBuffer>("ptconvlstm__lstm_layer__lstm_bwd_cell_i_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->set_metapipe_iter_counts(sn::Dimensions{});
    
    GBuffer::Params gbuf4a_1_0_846_params;
    gbuf4a_1_0_846_params.enable_fronting_pmu = true;
    gbuf4a_1_0_846_params.head1_ctrl_flow_enable = true;
    gbuf4a_1_0_846_params.head1_linear = false;
    gbuf4a_1_0_846_params.head1_p2p = false;
    gbuf4a_1_0_846_params.head_1_depth = 4;
    gbuf4a_1_0_846_params.layout = PermuteView::permute_layout(params_.inp_window_1_0_485.at_address(0), {1, 0});
    gbuf4a_1_0_846_params.loaded_by_broadcast = false;
    gbuf4a_1_0_846_params.num_head1_rd_en = 6;
    gbuf4a_1_0_846_params.num_iterations = 100;
    gbuf4a_1_0_846_params.write_vector_transposed = true;
    gbuf4a_1_0_846_ = create_node<GBuffer>("gbuf4a_1_0_846", partition_1_0_, plasma_, gbuf4a_1_0_846_params);
    gbuf4a_1_0_846_->set_tile_id(-1);
    gbuf4a_1_0_846_->set_die_id(-1);
    gbuf4a_1_0_846_->set_mac_id("default_846");
    gbuf4a_1_0_846_->set_mac_latency(-1.000000e+00);
    gbuf4a_1_0_846_->set_metapipe_iterations({100});
    gbuf4a_1_0_846_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_1_0_586.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.fwd_prop_b = gbuf4a_1_0_846_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_1_0_594;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_w_0", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_962_params;
    gbuf1a_1_0_962_params.head1_linear = true;
    gbuf1a_1_0_962_params.head1_p2p = false;
    gbuf1a_1_0_962_params.head_1_depth = 1;
    gbuf1a_1_0_962_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->result_layout().at_address(0);
    gbuf1a_1_0_962_params.num_iterations = 100;
    gbuf1a_1_0_962_ = create_node<GBuffer>("gbuf1a_1_0_962", partition_1_0_, plasma_, gbuf1a_1_0_962_params);
    gbuf1a_1_0_962_->set_tile_id(-1);
    gbuf1a_1_0_962_->set_die_id(-1);
    gbuf1a_1_0_962_->set_mac_id("default_962");
    gbuf1a_1_0_962_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_962_->set_metapipe_iterations({100});
    gbuf1a_1_0_962_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_590.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_1_0_598;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_v_0", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_961_params;
    gbuf1a_1_0_961_params.head1_linear = true;
    gbuf1a_1_0_961_params.head1_p2p = false;
    gbuf1a_1_0_961_params.head_1_depth = 1;
    gbuf1a_1_0_961_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->result_layout().at_address(0);
    gbuf1a_1_0_961_params.num_iterations = 100;
    gbuf1a_1_0_961_ = create_node<GBuffer>("gbuf1a_1_0_961", partition_1_0_, plasma_, gbuf1a_1_0_961_params);
    gbuf1a_1_0_961_->set_tile_id(-1);
    gbuf1a_1_0_961_->set_die_id(-1);
    gbuf1a_1_0_961_->set_mac_id("default_961");
    gbuf1a_1_0_961_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_961_->set_metapipe_iterations({100});
    gbuf1a_1_0_961_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__add_0_params;
    ptconvlstm__lstm_layer__lstm_recompute__add_0_params.layout_a = gbuf1a_1_0_961_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_0_params.layout_b = gbuf1a_1_0_962_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_0_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_recompute__add_0_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_0_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_0_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__add_0", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__add_0_params);
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_1_0_587.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.fwd_prop_b = gbuf4a_1_0_846_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_1_0_595;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_w_1", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_964_params;
    gbuf1a_1_0_964_params.head1_linear = true;
    gbuf1a_1_0_964_params.head1_p2p = false;
    gbuf1a_1_0_964_params.head_1_depth = 1;
    gbuf1a_1_0_964_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->result_layout().at_address(0);
    gbuf1a_1_0_964_params.num_iterations = 100;
    gbuf1a_1_0_964_ = create_node<GBuffer>("gbuf1a_1_0_964", partition_1_0_, plasma_, gbuf1a_1_0_964_params);
    gbuf1a_1_0_964_->set_tile_id(-1);
    gbuf1a_1_0_964_->set_die_id(-1);
    gbuf1a_1_0_964_->set_mac_id("default_964");
    gbuf1a_1_0_964_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_964_->set_metapipe_iterations({100});
    gbuf1a_1_0_964_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_591.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_1_0_599;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_v_1", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_963_params;
    gbuf1a_1_0_963_params.head1_linear = true;
    gbuf1a_1_0_963_params.head1_p2p = false;
    gbuf1a_1_0_963_params.head_1_depth = 1;
    gbuf1a_1_0_963_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->result_layout().at_address(0);
    gbuf1a_1_0_963_params.num_iterations = 100;
    gbuf1a_1_0_963_ = create_node<GBuffer>("gbuf1a_1_0_963", partition_1_0_, plasma_, gbuf1a_1_0_963_params);
    gbuf1a_1_0_963_->set_tile_id(-1);
    gbuf1a_1_0_963_->set_die_id(-1);
    gbuf1a_1_0_963_->set_mac_id("default_963");
    gbuf1a_1_0_963_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_963_->set_metapipe_iterations({100});
    gbuf1a_1_0_963_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__add_1_params;
    ptconvlstm__lstm_layer__lstm_recompute__add_1_params.layout_a = gbuf1a_1_0_963_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_1_params.layout_b = gbuf1a_1_0_964_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_1_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_recompute__add_1_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_1_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_1_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__add_1", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__add_1_params);
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_1_0_588.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.fwd_prop_b = gbuf4a_1_0_846_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_1_0_596;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_w_2", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_966_params;
    gbuf1a_1_0_966_params.head1_linear = true;
    gbuf1a_1_0_966_params.head1_p2p = false;
    gbuf1a_1_0_966_params.head_1_depth = 1;
    gbuf1a_1_0_966_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->result_layout().at_address(0);
    gbuf1a_1_0_966_params.num_iterations = 100;
    gbuf1a_1_0_966_ = create_node<GBuffer>("gbuf1a_1_0_966", partition_1_0_, plasma_, gbuf1a_1_0_966_params);
    gbuf1a_1_0_966_->set_tile_id(-1);
    gbuf1a_1_0_966_->set_die_id(-1);
    gbuf1a_1_0_966_->set_mac_id("default_966");
    gbuf1a_1_0_966_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_966_->set_metapipe_iterations({100});
    gbuf1a_1_0_966_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_592.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_1_0_600;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_v_2", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_965_params;
    gbuf1a_1_0_965_params.head1_linear = true;
    gbuf1a_1_0_965_params.head1_p2p = false;
    gbuf1a_1_0_965_params.head_1_depth = 1;
    gbuf1a_1_0_965_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->result_layout().at_address(0);
    gbuf1a_1_0_965_params.num_iterations = 100;
    gbuf1a_1_0_965_ = create_node<GBuffer>("gbuf1a_1_0_965", partition_1_0_, plasma_, gbuf1a_1_0_965_params);
    gbuf1a_1_0_965_->set_tile_id(-1);
    gbuf1a_1_0_965_->set_die_id(-1);
    gbuf1a_1_0_965_->set_mac_id("default_965");
    gbuf1a_1_0_965_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_965_->set_metapipe_iterations({100});
    gbuf1a_1_0_965_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__add_2_params;
    ptconvlstm__lstm_layer__lstm_recompute__add_2_params.layout_a = gbuf1a_1_0_965_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_2_params.layout_b = gbuf1a_1_0_966_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_2_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_recompute__add_2_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_2_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_2_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__add_2", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__add_2_params);
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_ih_l0_1_0_589.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.fwd_prop_b = gbuf4a_1_0_846_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_ih_l0_1_0_597;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_w_3", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_968_params;
    gbuf1a_1_0_968_params.head1_linear = true;
    gbuf1a_1_0_968_params.head1_p2p = false;
    gbuf1a_1_0_968_params.head_1_depth = 1;
    gbuf1a_1_0_968_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->result_layout().at_address(0);
    gbuf1a_1_0_968_params.num_iterations = 100;
    gbuf1a_1_0_968_ = create_node<GBuffer>("gbuf1a_1_0_968", partition_1_0_, plasma_, gbuf1a_1_0_968_params);
    gbuf1a_1_0_968_->set_tile_id(-1);
    gbuf1a_1_0_968_->set_die_id(-1);
    gbuf1a_1_0_968_->set_mac_id("default_968");
    gbuf1a_1_0_968_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_968_->set_metapipe_iterations({100});
    gbuf1a_1_0_968_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.box_layout = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.box_layout_bias_placement = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.box_layout_max_height = 64;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.box_layout_max_width = 4;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.box_per_wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.external_output = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_593.with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.fwd_prop_b = ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.fwd_prop_bias = params_.ptconvlstm__lstm_layer__bias_hh_l0_1_0_601;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.integrated_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.integrated_relu = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.no_reload_bias = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.no_reload_weight = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.stream_into_wbuf = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.strnd = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.strnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.subnet_type = SubnetType::kForward;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.use_wbuf_for_bias = true;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params.wbuf_split = false;
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_recompute__linear_v_3", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_params);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_967_params;
    gbuf1a_1_0_967_params.head1_linear = true;
    gbuf1a_1_0_967_params.head1_p2p = false;
    gbuf1a_1_0_967_params.head_1_depth = 1;
    gbuf1a_1_0_967_params.layout = ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->result_layout().at_address(0);
    gbuf1a_1_0_967_params.num_iterations = 100;
    gbuf1a_1_0_967_ = create_node<GBuffer>("gbuf1a_1_0_967", partition_1_0_, plasma_, gbuf1a_1_0_967_params);
    gbuf1a_1_0_967_->set_tile_id(-1);
    gbuf1a_1_0_967_->set_die_id(-1);
    gbuf1a_1_0_967_->set_mac_id("default_967");
    gbuf1a_1_0_967_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_967_->set_metapipe_iterations({100});
    gbuf1a_1_0_967_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__add_3_params;
    ptconvlstm__lstm_layer__lstm_recompute__add_3_params.layout_a = gbuf1a_1_0_967_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_params.layout_b = gbuf1a_1_0_968_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_recompute__add_3_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_3_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__add_3_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__add_3", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__add_3_params);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params;
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params.layout = ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_recompute__temp_cell", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__temp_cell_params);
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__i_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__i_t_params.layout = ptconvlstm__lstm_layer__lstm_recompute__add_0_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__i_t_params.op = node_constants::TemplateOpcodes::kSigmoid;
    ptconvlstm__lstm_layer__lstm_recompute__i_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_recompute__i_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_recompute__i_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__i_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_970_params;
    gbuf1a_1_0_970_params.head1_linear = true;
    gbuf1a_1_0_970_params.head1_p2p = false;
    gbuf1a_1_0_970_params.head_1_depth = 1;
    gbuf1a_1_0_970_params.layout = ptconvlstm__lstm_layer__lstm_recompute__i_t_->result_layout().at_address(0);
    gbuf1a_1_0_970_params.num_iterations = 100;
    gbuf1a_1_0_970_ = create_node<GBuffer>("gbuf1a_1_0_970", partition_1_0_, plasma_, gbuf1a_1_0_970_params);
    gbuf1a_1_0_970_->set_tile_id(-1);
    gbuf1a_1_0_970_->set_die_id(-1);
    gbuf1a_1_0_970_->set_mac_id("default_970");
    gbuf1a_1_0_970_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_970_->set_metapipe_iterations({100});
    gbuf1a_1_0_970_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__f_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__f_t_params.layout = ptconvlstm__lstm_layer__lstm_recompute__add_1_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__f_t_params.op = node_constants::TemplateOpcodes::kSigmoid;
    ptconvlstm__lstm_layer__lstm_recompute__f_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_recompute__f_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_recompute__f_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__f_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_969_params;
    gbuf1a_1_0_969_params.head1_linear = true;
    gbuf1a_1_0_969_params.head1_p2p = false;
    gbuf1a_1_0_969_params.head_1_depth = 1;
    gbuf1a_1_0_969_params.layout = ptconvlstm__lstm_layer__lstm_recompute__f_t_->result_layout().at_address(0);
    gbuf1a_1_0_969_params.num_iterations = 100;
    gbuf1a_1_0_969_ = create_node<GBuffer>("gbuf1a_1_0_969", partition_1_0_, plasma_, gbuf1a_1_0_969_params);
    gbuf1a_1_0_969_->set_tile_id(-1);
    gbuf1a_1_0_969_->set_die_id(-1);
    gbuf1a_1_0_969_->set_mac_id("default_969");
    gbuf1a_1_0_969_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_969_->set_metapipe_iterations({100});
    gbuf1a_1_0_969_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__g_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__g_t_params.layout = ptconvlstm__lstm_layer__lstm_recompute__add_2_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__g_t_params.op = node_constants::TemplateOpcodes::kTanh;
    ptconvlstm__lstm_layer__lstm_recompute__g_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_recompute__g_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_recompute__g_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__g_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_971_params;
    gbuf1a_1_0_971_params.head1_linear = true;
    gbuf1a_1_0_971_params.head1_p2p = false;
    gbuf1a_1_0_971_params.head_1_depth = 1;
    gbuf1a_1_0_971_params.layout = ptconvlstm__lstm_layer__lstm_recompute__g_t_->result_layout().at_address(0);
    gbuf1a_1_0_971_params.num_iterations = 100;
    gbuf1a_1_0_971_ = create_node<GBuffer>("gbuf1a_1_0_971", partition_1_0_, plasma_, gbuf1a_1_0_971_params);
    gbuf1a_1_0_971_->set_tile_id(-1);
    gbuf1a_1_0_971_->set_die_id(-1);
    gbuf1a_1_0_971_->set_mac_id("default_971");
    gbuf1a_1_0_971_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_971_->set_metapipe_iterations({100});
    gbuf1a_1_0_971_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__o_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__o_t_params.layout = ptconvlstm__lstm_layer__lstm_recompute__add_3_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__o_t_params.op = node_constants::TemplateOpcodes::kSigmoid;
    ptconvlstm__lstm_layer__lstm_recompute__o_t_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_recompute__o_t_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_recompute__o_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__o_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_974_params;
    gbuf1a_1_0_974_params.head1_linear = true;
    gbuf1a_1_0_974_params.head1_p2p = false;
    gbuf1a_1_0_974_params.head_1_depth = 1;
    gbuf1a_1_0_974_params.layout = ptconvlstm__lstm_layer__lstm_recompute__o_t_->result_layout().at_address(0);
    gbuf1a_1_0_974_params.num_iterations = 100;
    gbuf1a_1_0_974_ = create_node<GBuffer>("gbuf1a_1_0_974", partition_1_0_, plasma_, gbuf1a_1_0_974_params);
    gbuf1a_1_0_974_->set_tile_id(-1);
    gbuf1a_1_0_974_->set_die_id(-1);
    gbuf1a_1_0_974_->set_mac_id("default_974");
    gbuf1a_1_0_974_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_974_->set_metapipe_iterations({100});
    gbuf1a_1_0_974_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__mul0_params;
    ptconvlstm__lstm_layer__lstm_recompute__mul0_params.layout_a = gbuf1a_1_0_969_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__mul0_params.layout_b = ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__mul0_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_recompute__mul0_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__mul0_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__mul0_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__mul0", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__mul0_params);
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_972_params;
    gbuf1a_1_0_972_params.head1_linear = true;
    gbuf1a_1_0_972_params.head1_p2p = false;
    gbuf1a_1_0_972_params.head_1_depth = 1;
    gbuf1a_1_0_972_params.layout = ptconvlstm__lstm_layer__lstm_recompute__mul0_->result_layout().at_address(0);
    gbuf1a_1_0_972_params.num_iterations = 100;
    gbuf1a_1_0_972_ = create_node<GBuffer>("gbuf1a_1_0_972", partition_1_0_, plasma_, gbuf1a_1_0_972_params);
    gbuf1a_1_0_972_->set_tile_id(-1);
    gbuf1a_1_0_972_->set_die_id(-1);
    gbuf1a_1_0_972_->set_mac_id("default_972");
    gbuf1a_1_0_972_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_972_->set_metapipe_iterations({100});
    gbuf1a_1_0_972_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__mul1_params;
    ptconvlstm__lstm_layer__lstm_recompute__mul1_params.layout_a = gbuf1a_1_0_970_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__mul1_params.layout_b = gbuf1a_1_0_971_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__mul1_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_recompute__mul1_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__mul1_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__mul1_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__mul1", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__mul1_params);
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_973_params;
    gbuf1a_1_0_973_params.head1_linear = true;
    gbuf1a_1_0_973_params.head1_p2p = false;
    gbuf1a_1_0_973_params.head_1_depth = 1;
    gbuf1a_1_0_973_params.layout = ptconvlstm__lstm_layer__lstm_recompute__mul1_->result_layout().at_address(0);
    gbuf1a_1_0_973_params.num_iterations = 100;
    gbuf1a_1_0_973_ = create_node<GBuffer>("gbuf1a_1_0_973", partition_1_0_, plasma_, gbuf1a_1_0_973_params);
    gbuf1a_1_0_973_->set_tile_id(-1);
    gbuf1a_1_0_973_->set_die_id(-1);
    gbuf1a_1_0_973_->set_mac_id("default_973");
    gbuf1a_1_0_973_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_973_->set_metapipe_iterations({100});
    gbuf1a_1_0_973_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__cell_params;
    ptconvlstm__lstm_layer__lstm_recompute__cell_params.layout_a = gbuf1a_1_0_972_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__cell_params.layout_b = gbuf1a_1_0_973_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__cell_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_recompute__cell_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__cell_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__cell", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__cell_params);
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_params;
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_params.layout = ptconvlstm__lstm_layer__lstm_recompute__cell_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_params.op = node_constants::TemplateOpcodes::kTanh;
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_recompute__tanh_cell", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_params);
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_975_params;
    gbuf1a_1_0_975_params.head1_linear = true;
    gbuf1a_1_0_975_params.head1_p2p = false;
    gbuf1a_1_0_975_params.head_1_depth = 1;
    gbuf1a_1_0_975_params.layout = ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->result_layout().at_address(0);
    gbuf1a_1_0_975_params.num_iterations = 100;
    gbuf1a_1_0_975_ = create_node<GBuffer>("gbuf1a_1_0_975", partition_1_0_, plasma_, gbuf1a_1_0_975_params);
    gbuf1a_1_0_975_->set_tile_id(-1);
    gbuf1a_1_0_975_->set_die_id(-1);
    gbuf1a_1_0_975_->set_mac_id("default_975");
    gbuf1a_1_0_975_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_975_->set_metapipe_iterations({100});
    gbuf1a_1_0_975_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_recompute__hidden_params;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_params.layout_a = gbuf1a_1_0_974_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_params.layout_b = gbuf1a_1_0_975_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_recompute__hidden_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_recompute__hidden", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__hidden_params);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_recompute__output_i_t_params;
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_params.input_layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_recompute__output_i_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_recompute__output_i_t_params);
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_recompute_");
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf4u_1_0_399_params;
    gbuf4u_1_0_399_params.enable_fronting_pmu = true;
    gbuf4u_1_0_399_params.head1_ctrl_flow_enable = true;
    gbuf4u_1_0_399_params.head1_linear = true;
    gbuf4u_1_0_399_params.head1_p2p = false;
    gbuf4u_1_0_399_params.head_1_depth = 4;
    gbuf4u_1_0_399_params.layout = params_.out_window_1_0_487.at_address(0);
    gbuf4u_1_0_399_params.loaded_by_broadcast = false;
    gbuf4u_1_0_399_params.num_head1_rd_en = 2;
    gbuf4u_1_0_399_params.num_iterations = 100;
    gbuf4u_1_0_399_ = create_node<GBuffer>("gbuf4u_1_0_399", partition_1_0_, plasma_, gbuf4u_1_0_399_params);
    gbuf4u_1_0_399_->set_tile_id(-1);
    gbuf4u_1_0_399_->set_die_id(-1);
    gbuf4u_1_0_399_->set_mac_id("default_399");
    gbuf4u_1_0_399_->set_mac_latency(-1.000000e+00);
    gbuf4u_1_0_399_->set_metapipe_iterations({100});
    gbuf4u_1_0_399_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ReshapeView::Params ptconvlstm__reshape_2_recompute__params;
    ptconvlstm__reshape_2_recompute__params.input_layout = gbuf4u_1_0_399_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__reshape_2_recompute__params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0}, 0).vector_align();
    ptconvlstm__reshape_2_recompute__params.reshape = {4080};
    ptconvlstm__reshape_2_recompute__ = create_node<ReshapeView>("ptconvlstm__reshape_2_recompute_", partition_1_0_, plasma_, ptconvlstm__reshape_2_recompute__params);
    ptconvlstm__reshape_2_recompute__->set_tile_id(-1);
    ptconvlstm__reshape_2_recompute__->set_die_id(-1);
    ptconvlstm__reshape_2_recompute__->set_mac_id("ptconvlstm__reshape_2_recompute_");
    ptconvlstm__reshape_2_recompute__->set_mac_latency(1.300000e+01);
    ptconvlstm__reshape_2_recompute__->set_metapipe_iterations({100});
    ptconvlstm__reshape_2_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params tbuf2u_1_0_401_params;
    tbuf2u_1_0_401_params.buffer_depth = 2;
    tbuf2u_1_0_401_params.layout = ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->result_layout();
    tbuf2u_1_0_401_ = create_node<TBuffer>("tbuf2u_1_0_401", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_401_params);
    tbuf2u_1_0_401_->set_tile_id(-1);
    tbuf2u_1_0_401_->set_die_id(-1);
    tbuf2u_1_0_401_->set_mac_id("default_401");
    tbuf2u_1_0_401_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_401_->set_metapipe_iterations({100});
    tbuf2u_1_0_401_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params rbuf1u_1_0_402_params;
    rbuf1u_1_0_402_params.buffer_depth = 1;
    rbuf1u_1_0_402_params.layout = params_.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185.at_address(0);
    rbuf1u_1_0_402_ = create_node<TBuffer>("rbuf1u_1_0_402", partition_1_0_, LOC, mlir::rail::RAIL::rail, rbuf1u_1_0_402_params);
    rbuf1u_1_0_402_->set_tile_id(-1);
    rbuf1u_1_0_402_->set_die_id(-1);
    rbuf1u_1_0_402_->set_mac_id("default_402");
    rbuf1u_1_0_402_->set_mac_latency(-1.000000e+00);
    rbuf1u_1_0_402_->set_metapipe_iterations({100});
    rbuf1u_1_0_402_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params tbuf2a_1_0_850_params;
    tbuf2a_1_0_850_params.buffer_depth = 2;
    tbuf2a_1_0_850_params.layout = rbuf1u_1_0_402_->param().layout->at_address(0).at_address(0);
    tbuf2a_1_0_850_ = create_node<TBuffer>("tbuf2a_1_0_850", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2a_1_0_850_params);
    tbuf2a_1_0_850_->set_tile_id(-1);
    tbuf2a_1_0_850_->set_die_id(-1);
    tbuf2a_1_0_850_->set_mac_id("default_850");
    tbuf2a_1_0_850_->set_mac_latency(-1.000000e+00);
    tbuf2a_1_0_850_->set_metapipe_iterations({100});
    tbuf2a_1_0_850_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    RAILIndex::Params ptconvlstm__indexselect_recompute__params;
    ptconvlstm__indexselect_recompute__params.index_dim = 0;
    ptconvlstm__indexselect_recompute__params.index_tensor_layout = tbuf2a_1_0_850_->param().layout->at_address(0).at_address(0);
    ptconvlstm__indexselect_recompute__params.lut_tensor_layout = tbuf2u_1_0_401_->param().layout->at_address(0).at_address(0);
    ptconvlstm__indexselect_recompute__params.read_zeros_outside_range = true;
    ptconvlstm__indexselect_recompute__ = create_node<RAILIndex>("ptconvlstm__indexselect_recompute_", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__indexselect_recompute__params);
    ptconvlstm__indexselect_recompute__->set_tile_id(-1);
    ptconvlstm__indexselect_recompute__->set_die_id(-1);
    ptconvlstm__indexselect_recompute__->set_mac_id("ptconvlstm__indexselect_recompute_");
    ptconvlstm__indexselect_recompute__->set_mac_latency(2.000000e+00);
    ptconvlstm__indexselect_recompute__->set_metapipe_iterations({100});
    ptconvlstm__indexselect_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params tbuf2u_1_0_406_params;
    tbuf2u_1_0_406_params.buffer_depth = 2;
    tbuf2u_1_0_406_params.layout = ptconvlstm__indexselect_recompute__->result_layout().at_address(0);
    tbuf2u_1_0_406_ = create_node<TBuffer>("tbuf2u_1_0_406", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_406_params);
    tbuf2u_1_0_406_->set_tile_id(-1);
    tbuf2u_1_0_406_->set_die_id(-1);
    tbuf2u_1_0_406_->set_mac_id("default_406");
    tbuf2u_1_0_406_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_406_->set_metapipe_iterations({100});
    tbuf2u_1_0_406_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_input0_recompute__params;
    ptconvlstm__dense_layer__linear_t_input0_recompute__params.input_layout = tbuf2u_1_0_406_->param().layout->at_address(0).at_address(0);
    ptconvlstm__dense_layer__linear_t_input0_recompute__params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_input0_recompute__ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_input0_recompute_", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_input0_recompute__params);
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_mac_id("ptconvlstm__dense_layer__linear_t_input0_recompute_");
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_mac_latency(0.000000e+00);
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TBuffer::Params tbuf2u_1_0_409_params;
    tbuf2u_1_0_409_params.buffer_depth = 2;
    tbuf2u_1_0_409_params.layout = PermuteView::permute_layout(ptconvlstm__indexselect_recompute__->result_layout().at_address(0), {1, 0});
    tbuf2u_1_0_409_ = create_node<TBuffer>("tbuf2u_1_0_409", partition_1_0_, LOC, mlir::rail::RAIL::rail, tbuf2u_1_0_409_params);
    tbuf2u_1_0_409_->set_tile_id(-1);
    tbuf2u_1_0_409_->set_die_id(-1);
    tbuf2u_1_0_409_->set_mac_id("default_409");
    tbuf2u_1_0_409_->set_mac_latency(-1.000000e+00);
    tbuf2u_1_0_409_->set_metapipe_iterations({100});
    tbuf2u_1_0_409_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__dense_layer__linear_recompute__params;
    ptconvlstm__dense_layer__linear_recompute__params.batch_size = 100;
    ptconvlstm__dense_layer__linear_recompute__params.bias_mode = GemmSubnet::BiasMode::kForward;
    ptconvlstm__dense_layer__linear_recompute__params.box_layout = true;
    ptconvlstm__dense_layer__linear_recompute__params.box_layout_bias_placement = false;
    ptconvlstm__dense_layer__linear_recompute__params.box_layout_max_height = 64;
    ptconvlstm__dense_layer__linear_recompute__params.box_layout_max_width = 4;
    ptconvlstm__dense_layer__linear_recompute__params.box_per_wbuf_split = false;
    ptconvlstm__dense_layer__linear_recompute__params.enable_instrumentation = false;
    ptconvlstm__dense_layer__linear_recompute__params.external_output = false;
    ptconvlstm__dense_layer__linear_recompute__params.fwd_gemm_wbuf_external_load = false;
    ptconvlstm__dense_layer__linear_recompute__params.fwd_prop_a = params_.ptconvlstm__dense_layer__weight_1_0_189.with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_recompute__params.fwd_prop_b = tbuf2u_1_0_409_->param().layout->at_address(0).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_recompute__params.fwd_prop_bias = params_.ptconvlstm__dense_layer__bias_1_0_190;
    ptconvlstm__dense_layer__linear_recompute__params.integrated_bias = false;
    ptconvlstm__dense_layer__linear_recompute__params.integrated_relu = false;
    ptconvlstm__dense_layer__linear_recompute__params.maximum_fwd_b_fanout = 32;
    ptconvlstm__dense_layer__linear_recompute__params.no_reload_bias = false;
    ptconvlstm__dense_layer__linear_recompute__params.no_reload_weight = false;
    ptconvlstm__dense_layer__linear_recompute__params.num_compute_units = 1;
    ptconvlstm__dense_layer__linear_recompute__params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_recompute__params.stream_into_wbuf = false;
    ptconvlstm__dense_layer__linear_recompute__params.strnd = false;
    ptconvlstm__dense_layer__linear_recompute__params.strnd_seed = 1;
    ptconvlstm__dense_layer__linear_recompute__params.subnet_type = SubnetType::kForward;
    ptconvlstm__dense_layer__linear_recompute__params.use_wbuf_for_bias = true;
    ptconvlstm__dense_layer__linear_recompute__params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_recompute__params.wbuf_split = false;
    ptconvlstm__dense_layer__linear_recompute__ = create_node<GemmSubnet>("ptconvlstm__dense_layer__linear_recompute_", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_recompute__params);
    ptconvlstm__dense_layer__linear_recompute__->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_recompute__->set_die_id(-1);
    ptconvlstm__dense_layer__linear_recompute__->set_mac_id("ptconvlstm__dense_layer__linear_recompute_");
    ptconvlstm__dense_layer__linear_recompute__->set_mac_latency(1.235200e+04);
    ptconvlstm__dense_layer__linear_recompute__->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_411_params;
    gbuf2u_1_0_411_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_411_params.head1_linear = true;
    gbuf2u_1_0_411_params.head1_p2p = false;
    gbuf2u_1_0_411_params.head_1_depth = 2;
    gbuf2u_1_0_411_params.layout = ptconvlstm__dense_layer__linear_recompute__->result_layout().at_address(0);
    gbuf2u_1_0_411_params.num_head1_rd_en = 2;
    gbuf2u_1_0_411_params.num_iterations = 100;
    gbuf2u_1_0_411_ = create_node<GBuffer>("gbuf2u_1_0_411", partition_1_0_, plasma_, gbuf2u_1_0_411_params);
    gbuf2u_1_0_411_->set_tile_id(-1);
    gbuf2u_1_0_411_->set_die_id(-1);
    gbuf2u_1_0_411_->set_mac_id("default_411");
    gbuf2u_1_0_411_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_411_->set_metapipe_iterations({100});
    gbuf2u_1_0_411_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_output0_recompute__params;
    ptconvlstm__dense_layer__linear_t_output0_recompute__params.input_layout = gbuf2u_1_0_411_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__dense_layer__linear_t_output0_recompute__params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_output0_recompute__ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_output0_recompute_", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_recompute__params);
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_mac_id("ptconvlstm__dense_layer__linear_t_output0_recompute_");
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_mac_latency(0.000000e+00);
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ReshapeView::Params reshape_1_0_630_params;
    reshape_1_0_630_params.input_layout = ptconvlstm__dense_layer__linear_t_output0_recompute__->result_layout();
    reshape_1_0_630_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0}, 0).vector_align();
    reshape_1_0_630_params.reshape = {4080};
    reshape_1_0_630_ = create_node<ReshapeView>("reshape_1_0_630", partition_1_0_, plasma_, reshape_1_0_630_params);
    reshape_1_0_630_->set_tile_id(-1);
    reshape_1_0_630_->set_die_id(-1);
    reshape_1_0_630_->set_mac_id("default_414");
    reshape_1_0_630_->set_mac_latency(-1.000000e+00);
    reshape_1_0_630_->set_metapipe_iterations({100});
    reshape_1_0_630_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__criterion__mseloss_bwd_sub_params;
    ptconvlstm__criterion__mseloss_bwd_sub_params.layout_a = reshape_1_0_630_->result_layout();
    ptconvlstm__criterion__mseloss_bwd_sub_params.layout_b = ptconvlstm__reshape_2_recompute__->result_layout();
    ptconvlstm__criterion__mseloss_bwd_sub_params.op = node_constants::TemplateOpcodes::kSub;
    ptconvlstm__criterion__mseloss_bwd_sub_params.streaming_a = true;
    ptconvlstm__criterion__mseloss_bwd_sub_params.streaming_b = true;
    ptconvlstm__criterion__mseloss_bwd_sub_ = create_node<BinaryOps>("ptconvlstm__criterion__mseloss_bwd_sub", partition_1_0_, plasma_, ptconvlstm__criterion__mseloss_bwd_sub_params);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_tile_id(-1);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_die_id(-1);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_mac_id("ptconvlstm__criterion__mseloss_bwd");
    ptconvlstm__criterion__mseloss_bwd_sub_->set_mac_latency(1.060000e+02);
    ptconvlstm__criterion__mseloss_bwd_sub_->set_metapipe_iterations({100});
    ptconvlstm__criterion__mseloss_bwd_sub_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    Scale::Params scale_1_0_632_params;
    scale_1_0_632_params.argin_value = 4.887581e-06;
    scale_1_0_632_params.batch_size = 100;
    scale_1_0_632_params.conditional_scaling = false;
    scale_1_0_632_params.layout_a = ptconvlstm__criterion__mseloss_bwd_sub_->result_layout().at_address(0);
    scale_1_0_632_params.using_input_b = false;
    scale_1_0_632_ = create_node<Scale>("scale_1_0_632", partition_1_0_, plasma_, scale_1_0_632_params);
    scale_1_0_632_->set_tile_id(-1);
    scale_1_0_632_->set_die_id(-1);
    scale_1_0_632_->set_mac_id("default_80");
    scale_1_0_632_->set_mac_latency(1.060000e+02);
    scale_1_0_632_->set_metapipe_iterations({100});
    scale_1_0_632_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    Scale::Params scale_1_0_633_params;
    scale_1_0_633_params.batch_size = 100;
    scale_1_0_633_params.conditional_scaling = false;
    scale_1_0_633_params.layout_a = scale_1_0_632_->result_layout().at_address(0);
    scale_1_0_633_params.layout_b = params_.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.at_address(0);
    scale_1_0_633_params.using_input_b = true;
    scale_1_0_633_ = create_node<Scale>("scale_1_0_633", partition_1_0_, plasma_, scale_1_0_633_params);
    scale_1_0_633_->set_tile_id(-1);
    scale_1_0_633_->set_die_id(-1);
    scale_1_0_633_->set_mac_id("default_81");
    scale_1_0_633_->set_mac_latency(1.060000e+02);
    scale_1_0_633_->set_metapipe_iterations({100});
    scale_1_0_633_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf4u_1_0_419_params;
    gbuf4u_1_0_419_params.enable_fronting_pmu = true;
    gbuf4u_1_0_419_params.head1_ctrl_flow_enable = true;
    gbuf4u_1_0_419_params.head1_linear = true;
    gbuf4u_1_0_419_params.head1_p2p = false;
    gbuf4u_1_0_419_params.head1_streaming_window = true;
    gbuf4u_1_0_419_params.head_1_depth = 4;
    gbuf4u_1_0_419_params.layout = params_.ptconvlstm__view__outputs__0__grad_1_0_484.at_address(0);
    gbuf4u_1_0_419_params.loaded_by_broadcast = false;
    gbuf4u_1_0_419_params.num_head1_rd_en = 4;
    gbuf4u_1_0_419_params.num_iterations = 100;
    gbuf4u_1_0_419_ = create_node<GBuffer>("gbuf4u_1_0_419", partition_1_0_, plasma_, gbuf4u_1_0_419_params);
    gbuf4u_1_0_419_->set_tile_id(-1);
    gbuf4u_1_0_419_->set_die_id(-1);
    gbuf4u_1_0_419_->set_mac_id("default_419");
    gbuf4u_1_0_419_->set_mac_latency(-1.000000e+00);
    gbuf4u_1_0_419_->set_metapipe_iterations({100});
    gbuf4u_1_0_419_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ReshapeView::Params reshape_1_0_634_params;
    reshape_1_0_634_params.input_layout = gbuf4u_1_0_419_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    reshape_1_0_634_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align();
    reshape_1_0_634_params.reshape = {1, 4080};
    reshape_1_0_634_ = create_node<ReshapeView>("reshape_1_0_634", partition_1_0_, plasma_, reshape_1_0_634_params);
    reshape_1_0_634_->set_tile_id(-1);
    reshape_1_0_634_->set_die_id(-1);
    reshape_1_0_634_->set_mac_id("default_420");
    reshape_1_0_634_->set_mac_latency(-1.000000e+00);
    reshape_1_0_634_->set_metapipe_iterations({100});
    reshape_1_0_634_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_421_params;
    gbuf2u_1_0_421_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_421_params.head1_linear = true;
    gbuf2u_1_0_421_params.head1_p2p = false;
    gbuf2u_1_0_421_params.head1_streaming_window = true;
    gbuf2u_1_0_421_params.head_1_depth = 2;
    gbuf2u_1_0_421_params.layout = scale_1_0_633_->result_layout().at_address(0);
    gbuf2u_1_0_421_params.num_head1_rd_en = 4;
    gbuf2u_1_0_421_params.num_iterations = 100;
    gbuf2u_1_0_421_ = create_node<GBuffer>("gbuf2u_1_0_421", partition_1_0_, plasma_, gbuf2u_1_0_421_params);
    gbuf2u_1_0_421_->set_tile_id(-1);
    gbuf2u_1_0_421_->set_die_id(-1);
    gbuf2u_1_0_421_->set_mac_id("default_421");
    gbuf2u_1_0_421_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_421_->set_metapipe_iterations({100});
    gbuf2u_1_0_421_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ReshapeView::Params reshape_1_0_635_params;
    reshape_1_0_635_params.input_layout = gbuf2u_1_0_421_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    reshape_1_0_635_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    reshape_1_0_635_params.reshape = {1, 4080};
    reshape_1_0_635_ = create_node<ReshapeView>("reshape_1_0_635", partition_1_0_, plasma_, reshape_1_0_635_params);
    reshape_1_0_635_->set_tile_id(-1);
    reshape_1_0_635_->set_die_id(-1);
    reshape_1_0_635_->set_mac_id("default_422");
    reshape_1_0_635_->set_mac_latency(-1.000000e+00);
    reshape_1_0_635_->set_metapipe_iterations({100});
    reshape_1_0_635_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    LayoutCast::Params layout_cast_1_0_928_params;
    layout_cast_1_0_928_params.checked = false;
    layout_cast_1_0_928_params.input_layout = reshape_1_0_634_->result_layout();
    layout_cast_1_0_928_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 4080}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align();
    layout_cast_1_0_928_ = create_node<LayoutCast>("layout_cast_1_0_928", partition_1_0_, plasma_, layout_cast_1_0_928_params);
    layout_cast_1_0_928_->set_tile_id(-1);
    layout_cast_1_0_928_->set_die_id(-1);
    layout_cast_1_0_928_->set_mac_id("default_928");
    layout_cast_1_0_928_->set_mac_latency(-1.000000e+00);
    layout_cast_1_0_928_->set_metapipe_iterations({100});
    layout_cast_1_0_928_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    AddN::Params ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params;
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params.layout_input = layout_cast_1_0_928_->result_layout();
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params.num_of_inputs = 2;
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_ = create_node<AddN>("ptconvlstm__dense_layer__linear_t_output0_bwd_addn0", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_params);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_mac_id("ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_mac_latency(1.060000e+02);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_426_params;
    gbuf2u_1_0_426_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_426_params.head1_linear = false;
    gbuf2u_1_0_426_params.head1_p2p = false;
    gbuf2u_1_0_426_params.head_1_depth = 2;
    gbuf2u_1_0_426_params.layout = PermuteView::permute_layout(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0), {1, 0});
    gbuf2u_1_0_426_params.num_head1_rd_en = 2;
    gbuf2u_1_0_426_params.num_iterations = 100;
    gbuf2u_1_0_426_ = create_node<GBuffer>("gbuf2u_1_0_426", partition_1_0_, plasma_, gbuf2u_1_0_426_params);
    gbuf2u_1_0_426_->set_tile_id(-1);
    gbuf2u_1_0_426_->set_die_id(-1);
    gbuf2u_1_0_426_->set_mac_id("default_426");
    gbuf2u_1_0_426_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_426_->set_metapipe_iterations({100});
    gbuf2u_1_0_426_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_851_params;
    gbuf1a_1_0_851_params.enable_fronting_pmu = true;
    gbuf1a_1_0_851_params.head1_linear = false;
    gbuf1a_1_0_851_params.head1_p2p = false;
    gbuf1a_1_0_851_params.head_1_depth = 1;
    gbuf1a_1_0_851_params.head_1_transposed = true;
    gbuf1a_1_0_851_params.layout = params_.ptconvlstm__dense_layer__weight_1_0_638.at_address(0);
    gbuf1a_1_0_851_params.loaded_by_broadcast = false;
    gbuf1a_1_0_851_params.num_iterations = 1;
    gbuf1a_1_0_851_ = create_node<GBuffer>("gbuf1a_1_0_851", partition_1_0_, plasma_, gbuf1a_1_0_851_params);
    gbuf1a_1_0_851_->set_tile_id(-1);
    gbuf1a_1_0_851_->set_die_id(-1);
    gbuf1a_1_0_851_->set_mac_id("default_851");
    gbuf1a_1_0_851_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_851_->set_metapipe_iterations({1});
    gbuf1a_1_0_851_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    BigGemm::Params ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.A_layout = gbuf1a_1_0_851_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.B_layout = gbuf2u_1_0_426_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.batch_size = 100;
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
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.num_row_compute_units = 2;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.seqID_base = 0;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.streaming_col_par = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.use_wbuf_transpose_atom_move = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params.wbuf_split = false;
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear_bwd_loss_grad_b", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_bwd_loss_grad_b_params);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_loss");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_mac_latency(4.362000e+03);
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf7u_1_0_428_params;
    gbuf7u_1_0_428_params.head1_ctrl_flow_dividers = {100, 100};
    gbuf7u_1_0_428_params.head1_ctrl_flow_enable = true;
    gbuf7u_1_0_428_params.head1_linear = false;
    gbuf7u_1_0_428_params.head1_p2p = false;
    gbuf7u_1_0_428_params.head_1_depth = 7;
    gbuf7u_1_0_428_params.head_1_transposed = true;
    gbuf7u_1_0_428_params.layout = ptconvlstm__dense_layer__linear_t_input0_recompute__->result_layout();
    gbuf7u_1_0_428_params.num_head1_rd_en = 2;
    gbuf7u_1_0_428_params.num_iterations = 100;
    gbuf7u_1_0_428_ = create_node<GBuffer>("gbuf7u_1_0_428", partition_1_0_, plasma_, gbuf7u_1_0_428_params);
    gbuf7u_1_0_428_->set_tile_id(-1);
    gbuf7u_1_0_428_->set_die_id(-1);
    gbuf7u_1_0_428_->set_mac_id("default_428");
    gbuf7u_1_0_428_->set_mac_latency(-1.000000e+00);
    gbuf7u_1_0_428_->set_metapipe_iterations({100});
    gbuf7u_1_0_428_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_429_params;
    gbuf2u_1_0_429_params.head0_ctrl_flow_enable = true;
    gbuf2u_1_0_429_params.head0_linear = true;
    gbuf2u_1_0_429_params.head0_p2p = false;
    gbuf2u_1_0_429_params.head0_streaming_window = true;
    gbuf2u_1_0_429_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_429_params.head1_linear = true;
    gbuf2u_1_0_429_params.head1_p2p = false;
    gbuf2u_1_0_429_params.head1_streaming_window = true;
    gbuf2u_1_0_429_params.head_0_depth = 2;
    gbuf2u_1_0_429_params.head_1_depth = 2;
    gbuf2u_1_0_429_params.layout = PermuteView::permute_layout(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->result_layout().at_address(0), {1, 0});
    gbuf2u_1_0_429_params.num_head0_rd_en = 1;
    gbuf2u_1_0_429_params.num_head1_rd_en = 1;
    gbuf2u_1_0_429_params.num_iterations = 100;
    gbuf2u_1_0_429_ = create_node<GBuffer>("gbuf2u_1_0_429", partition_1_0_, plasma_, gbuf2u_1_0_429_params);
    gbuf2u_1_0_429_->set_tile_id(-1);
    gbuf2u_1_0_429_->set_die_id(-1);
    gbuf2u_1_0_429_->set_mac_id("default_429");
    gbuf2u_1_0_429_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_429_->set_metapipe_iterations({100});
    gbuf2u_1_0_429_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.A_layout = gbuf2u_1_0_429_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.B_layout = gbuf7u_1_0_428_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.batch_size = 100;
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
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_partitions = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.optimized_accum = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_ = create_node<BigGemm>("ptconvlstm__dense_layer__linear_bwd_weight_grad_a", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_bwd_weight_grad_a_params);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_mac_latency(3.276800e+04);
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_431_params;
    gbuf2u_1_0_431_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_431_params.head1_linear = true;
    gbuf2u_1_0_431_params.head1_p2p = false;
    gbuf2u_1_0_431_params.head_1_depth = 2;
    gbuf2u_1_0_431_params.layout = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->result_layout(BigGemm::kOutput).at_address(0);
    gbuf2u_1_0_431_params.num_head1_rd_en = 2;
    gbuf2u_1_0_431_params.num_iterations = 100;
    gbuf2u_1_0_431_params.write_group_layouts = {ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->result_layouts(BigGemm::kOutput)};
    gbuf2u_1_0_431_params.write_group_partitions = {ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions()};
    gbuf2u_1_0_431_ = create_node<GBuffer>("gbuf2u_1_0_431", partition_1_0_, plasma_, gbuf2u_1_0_431_params);
    gbuf2u_1_0_431_->set_tile_id(-1);
    gbuf2u_1_0_431_->set_die_id(-1);
    gbuf2u_1_0_431_->set_mac_id("default_431");
    gbuf2u_1_0_431_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_431_->set_metapipe_iterations({100});
    gbuf2u_1_0_431_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    LayoutCast::Params layout_cast_1_0_996_params;
    layout_cast_1_0_996_params.checked = false;
    layout_cast_1_0_996_params.input_layout = gbuf2u_1_0_431_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    layout_cast_1_0_996_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 0).vector_align();
    layout_cast_1_0_996_ = create_node<LayoutCast>("layout_cast_1_0_996", partition_1_0_, plasma_, layout_cast_1_0_996_params);
    layout_cast_1_0_996_->set_tile_id(-1);
    layout_cast_1_0_996_->set_die_id(-1);
    layout_cast_1_0_996_->set_mac_id("default_996");
    layout_cast_1_0_996_->set_mac_latency(-1.000000e+00);
    layout_cast_1_0_996_->set_metapipe_iterations({100});
    layout_cast_1_0_996_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__dense_layer__linear_t_input0_bwd_params;
    ptconvlstm__dense_layer__linear_t_input0_bwd_params.input_layout = layout_cast_1_0_996_->result_layout();
    ptconvlstm__dense_layer__linear_t_input0_bwd_params.permute = {1, 0};
    ptconvlstm__dense_layer__linear_t_input0_bwd_ = create_node<PermuteView>("ptconvlstm__dense_layer__linear_t_input0_bwd", partition_1_0_, plasma_, ptconvlstm__dense_layer__linear_t_input0_bwd_params);
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_mac_id("ptconvlstm__dense_layer__linear_t_input0_bwd");
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_mac_latency(0.000000e+00);
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf12u_1_0_437_params;
    gbuf12u_1_0_437_params.head1_ctrl_flow_enable = true;
    gbuf12u_1_0_437_params.head1_linear = true;
    gbuf12u_1_0_437_params.head1_p2p = false;
    gbuf12u_1_0_437_params.head_1_depth = 12;
    gbuf12u_1_0_437_params.layout = rbuf1u_1_0_402_->param().layout->at_address(0).at_address(0);
    gbuf12u_1_0_437_params.num_head1_rd_en = 2;
    gbuf12u_1_0_437_params.num_iterations = 100;
    gbuf12u_1_0_437_ = create_node<GBuffer>("gbuf12u_1_0_437", partition_1_0_, plasma_, gbuf12u_1_0_437_params);
    gbuf12u_1_0_437_->set_tile_id(-1);
    gbuf12u_1_0_437_->set_die_id(-1);
    gbuf12u_1_0_437_->set_mac_id("default_437");
    gbuf12u_1_0_437_->set_mac_latency(-1.000000e+00);
    gbuf12u_1_0_437_->set_metapipe_iterations({100});
    gbuf12u_1_0_437_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    IndexAdd::Params ptconvlstm__indexselect_bwd_loss_just_index_params;
    ptconvlstm__indexselect_bwd_loss_just_index_params.debug_mode = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.enable_frontingpmu_load = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.enable_sgd_learning = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.enable_stochastic_rounding = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.feed_backing_pmu = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.fwd_indices_size = 60;
    ptconvlstm__indexselect_bwd_loss_just_index_params.index_along_dim = 0;
    ptconvlstm__indexselect_bwd_loss_just_index_params.layout_gradloss_in = ptconvlstm__dense_layer__linear_t_input0_bwd_->result_layout();
    ptconvlstm__indexselect_bwd_loss_just_index_params.layout_indices = gbuf12u_1_0_437_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__indexselect_bwd_loss_just_index_params.learning_rate = 5.000000e-01;
    ptconvlstm__indexselect_bwd_loss_just_index_params.optimize_predication = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.perf_mode = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.real_fwd_indices_size = 60;
    ptconvlstm__indexselect_bwd_loss_just_index_params.record_conflicts = false;
    ptconvlstm__indexselect_bwd_loss_just_index_params.strnd_seed = 43690;
    ptconvlstm__indexselect_bwd_loss_just_index_params.total_indices_elems = 1;
    ptconvlstm__indexselect_bwd_loss_just_index_ = create_node<IndexAdd>("ptconvlstm__indexselect_bwd_loss_just_index", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__indexselect_bwd_loss_just_index_params);
    ptconvlstm__indexselect_bwd_loss_just_index_->set_tile_id(-1);
    ptconvlstm__indexselect_bwd_loss_just_index_->set_die_id(-1);
    ptconvlstm__indexselect_bwd_loss_just_index_->set_mac_id("ptconvlstm__indexselect_bwd_loss");
    ptconvlstm__indexselect_bwd_loss_just_index_->set_mac_latency(1.000000e+01);
    ptconvlstm__indexselect_bwd_loss_just_index_->set_metapipe_iterations({100});
    ptconvlstm__indexselect_bwd_loss_just_index_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf4u_1_0_440_params;
    gbuf4u_1_0_440_params.enable_fronting_pmu = true;
    gbuf4u_1_0_440_params.head1_ctrl_flow_enable = true;
    gbuf4u_1_0_440_params.head1_linear = true;
    gbuf4u_1_0_440_params.head1_p2p = false;
    gbuf4u_1_0_440_params.head_1_depth = 4;
    gbuf4u_1_0_440_params.layout = params_.inp_window_1_0_486.at_address(0);
    gbuf4u_1_0_440_params.loaded_by_broadcast = false;
    gbuf4u_1_0_440_params.num_head1_rd_en = 2;
    gbuf4u_1_0_440_params.num_iterations = 100;
    gbuf4u_1_0_440_params.write_vector_transposed = true;
    gbuf4u_1_0_440_ = create_node<GBuffer>("gbuf4u_1_0_440", partition_1_0_, plasma_, gbuf4u_1_0_440_params);
    gbuf4u_1_0_440_->set_tile_id(-1);
    gbuf4u_1_0_440_->set_die_id(-1);
    gbuf4u_1_0_440_->set_mac_id("default_440");
    gbuf4u_1_0_440_->set_mac_latency(-1.000000e+00);
    gbuf4u_1_0_440_->set_metapipe_iterations({100});
    gbuf4u_1_0_440_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_bwd_input_i_t_params;
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_params.input_layout = gbuf4u_1_0_440_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_bwd_input_i_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_input_i_t_params);
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf3u_1_0_443_params;
    gbuf3u_1_0_443_params.enable_fronting_pmu = true;
    gbuf3u_1_0_443_params.head1_ctrl_flow_enable = true;
    gbuf3u_1_0_443_params.head1_linear = true;
    gbuf3u_1_0_443_params.head1_p2p = false;
    gbuf3u_1_0_443_params.head_1_depth = 3;
    gbuf3u_1_0_443_params.layout = params_.ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490.at_address(0);
    gbuf3u_1_0_443_params.loaded_by_broadcast = false;
    gbuf3u_1_0_443_params.num_head1_rd_en = 6;
    gbuf3u_1_0_443_params.num_iterations = 100;
    gbuf3u_1_0_443_ = create_node<GBuffer>("gbuf3u_1_0_443", partition_1_0_, plasma_, gbuf3u_1_0_443_params);
    gbuf3u_1_0_443_->set_tile_id(-1);
    gbuf3u_1_0_443_->set_die_id(-1);
    gbuf3u_1_0_443_->set_mac_id("default_443");
    gbuf3u_1_0_443_->set_mac_latency(-1.000000e+00);
    gbuf3u_1_0_443_->set_metapipe_iterations({100});
    gbuf3u_1_0_443_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf3u_1_0_445_params;
    gbuf3u_1_0_445_params.enable_fronting_pmu = true;
    gbuf3u_1_0_445_params.head1_ctrl_flow_enable = true;
    gbuf3u_1_0_445_params.head1_linear = true;
    gbuf3u_1_0_445_params.head1_p2p = false;
    gbuf3u_1_0_445_params.head_1_depth = 3;
    gbuf3u_1_0_445_params.layout = params_.ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491.at_address(0);
    gbuf3u_1_0_445_params.loaded_by_broadcast = false;
    gbuf3u_1_0_445_params.num_head1_rd_en = 6;
    gbuf3u_1_0_445_params.num_iterations = 100;
    gbuf3u_1_0_445_ = create_node<GBuffer>("gbuf3u_1_0_445", partition_1_0_, plasma_, gbuf3u_1_0_445_params);
    gbuf3u_1_0_445_->set_tile_id(-1);
    gbuf3u_1_0_445_->set_die_id(-1);
    gbuf3u_1_0_445_->set_mac_id("default_445");
    gbuf3u_1_0_445_->set_mac_latency(-1.000000e+00);
    gbuf3u_1_0_445_->set_metapipe_iterations({100});
    gbuf3u_1_0_445_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf3u_1_0_447_params;
    gbuf3u_1_0_447_params.enable_fronting_pmu = true;
    gbuf3u_1_0_447_params.head1_ctrl_flow_enable = true;
    gbuf3u_1_0_447_params.head1_linear = true;
    gbuf3u_1_0_447_params.head1_p2p = false;
    gbuf3u_1_0_447_params.head_1_depth = 3;
    gbuf3u_1_0_447_params.layout = params_.ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492.at_address(0);
    gbuf3u_1_0_447_params.loaded_by_broadcast = false;
    gbuf3u_1_0_447_params.num_head1_rd_en = 6;
    gbuf3u_1_0_447_params.num_iterations = 100;
    gbuf3u_1_0_447_ = create_node<GBuffer>("gbuf3u_1_0_447", partition_1_0_, plasma_, gbuf3u_1_0_447_params);
    gbuf3u_1_0_447_->set_tile_id(-1);
    gbuf3u_1_0_447_->set_die_id(-1);
    gbuf3u_1_0_447_->set_mac_id("default_447");
    gbuf3u_1_0_447_->set_mac_latency(-1.000000e+00);
    gbuf3u_1_0_447_->set_metapipe_iterations({100});
    gbuf3u_1_0_447_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf3u_1_0_449_params;
    gbuf3u_1_0_449_params.enable_fronting_pmu = true;
    gbuf3u_1_0_449_params.head1_ctrl_flow_enable = true;
    gbuf3u_1_0_449_params.head1_linear = true;
    gbuf3u_1_0_449_params.head1_p2p = false;
    gbuf3u_1_0_449_params.head_1_depth = 3;
    gbuf3u_1_0_449_params.layout = params_.ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493.at_address(0);
    gbuf3u_1_0_449_params.loaded_by_broadcast = false;
    gbuf3u_1_0_449_params.num_head1_rd_en = 6;
    gbuf3u_1_0_449_params.num_iterations = 100;
    gbuf3u_1_0_449_ = create_node<GBuffer>("gbuf3u_1_0_449", partition_1_0_, plasma_, gbuf3u_1_0_449_params);
    gbuf3u_1_0_449_->set_tile_id(-1);
    gbuf3u_1_0_449_->set_die_id(-1);
    gbuf3u_1_0_449_->set_mac_id("default_449");
    gbuf3u_1_0_449_->set_mac_latency(-1.000000e+00);
    gbuf3u_1_0_449_->set_metapipe_iterations({100});
    gbuf3u_1_0_449_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf3u_1_0_451_params;
    gbuf3u_1_0_451_params.enable_fronting_pmu = true;
    gbuf3u_1_0_451_params.head1_ctrl_flow_enable = true;
    gbuf3u_1_0_451_params.head1_linear = true;
    gbuf3u_1_0_451_params.head1_p2p = false;
    gbuf3u_1_0_451_params.head_1_depth = 3;
    gbuf3u_1_0_451_params.layout = params_.ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494.at_address(0);
    gbuf3u_1_0_451_params.loaded_by_broadcast = false;
    gbuf3u_1_0_451_params.num_head1_rd_en = 6;
    gbuf3u_1_0_451_params.num_iterations = 100;
    gbuf3u_1_0_451_ = create_node<GBuffer>("gbuf3u_1_0_451", partition_1_0_, plasma_, gbuf3u_1_0_451_params);
    gbuf3u_1_0_451_->set_tile_id(-1);
    gbuf3u_1_0_451_->set_die_id(-1);
    gbuf3u_1_0_451_->set_mac_id("default_451");
    gbuf3u_1_0_451_->set_mac_latency(-1.000000e+00);
    gbuf3u_1_0_451_->set_metapipe_iterations({100});
    gbuf3u_1_0_451_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_1007_params;
    gbuf1a_1_0_1007_params.head1_linear = true;
    gbuf1a_1_0_1007_params.head1_p2p = false;
    gbuf1a_1_0_1007_params.head_1_depth = 1;
    gbuf1a_1_0_1007_params.layout = gbuf3u_1_0_451_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_1007_params.num_iterations = 100;
    gbuf1a_1_0_1007_ = create_node<GBuffer>("gbuf1a_1_0_1007", partition_1_0_, plasma_, gbuf1a_1_0_1007_params);
    gbuf1a_1_0_1007_->set_tile_id(-1);
    gbuf1a_1_0_1007_->set_die_id(-1);
    gbuf1a_1_0_1007_->set_mac_id("default_1007");
    gbuf1a_1_0_1007_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_1007_->set_metapipe_iterations({100});
    gbuf1a_1_0_1007_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_938_params;
    gbuf2a_1_0_938_params.enable_fronting_pmu = true;
    gbuf2a_1_0_938_params.head1_all_empty_stage = true;
    gbuf2a_1_0_938_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_938_params.head1_linear = true;
    gbuf2a_1_0_938_params.head1_p2p = false;
    gbuf2a_1_0_938_params.head_1_depth = 2;
    gbuf2a_1_0_938_params.layout = params_.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488.at_address(0);
    gbuf2a_1_0_938_params.loaded_by_broadcast = false;
    gbuf2a_1_0_938_params.num_head1_rd_en = 2;
    gbuf2a_1_0_938_params.num_iterations = 100;
    gbuf2a_1_0_938_params.overlap = LoadTiler::enable_scatter_overlap(params_.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488.at_address(0));
    gbuf2a_1_0_938_ = create_node<GBuffer>("gbuf2a_1_0_938", partition_1_0_, plasma_, gbuf2a_1_0_938_params);
    gbuf2a_1_0_938_->set_tile_id(-1);
    gbuf2a_1_0_938_->set_die_id(-1);
    gbuf2a_1_0_938_->set_mac_id("default_938");
    gbuf2a_1_0_938_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_938_->set_metapipe_iterations({100});
    gbuf2a_1_0_938_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_453_params;
    gbuf2u_1_0_453_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_453_params.head1_linear = true;
    gbuf2u_1_0_453_params.head1_p2p = false;
    gbuf2u_1_0_453_params.head_1_depth = 2;
    gbuf2u_1_0_453_params.layout = gbuf2a_1_0_938_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose_flipped();
    gbuf2u_1_0_453_params.num_head1_rd_en = 2;
    gbuf2u_1_0_453_params.num_iterations = 100;
    gbuf2u_1_0_453_ = create_node<GBuffer>("gbuf2u_1_0_453", partition_1_0_, plasma_, gbuf2u_1_0_453_params);
    gbuf2u_1_0_453_->set_tile_id(-1);
    gbuf2u_1_0_453_->set_die_id(-1);
    gbuf2u_1_0_453_->set_mac_id("default_453");
    gbuf2u_1_0_453_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_453_->set_metapipe_iterations({100});
    gbuf2u_1_0_453_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_params;
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_params.input_layout = gbuf2u_1_0_453_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_params);
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_937_params;
    gbuf2a_1_0_937_params.head1_all_empty_stage = true;
    gbuf2a_1_0_937_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_937_params.head1_linear = true;
    gbuf2a_1_0_937_params.head1_p2p = false;
    gbuf2a_1_0_937_params.head_1_depth = 2;
    gbuf2a_1_0_937_params.layout = ptconvlstm__indexselect_bwd_loss_just_index_->result_layout().at_address(0);
    gbuf2a_1_0_937_params.num_head1_rd_en = 2;
    gbuf2a_1_0_937_params.num_iterations = 100;
    gbuf2a_1_0_937_ = create_node<GBuffer>("gbuf2a_1_0_937", partition_1_0_, plasma_, gbuf2a_1_0_937_params);
    gbuf2a_1_0_937_->set_tile_id(-1);
    gbuf2a_1_0_937_->set_die_id(-1);
    gbuf2a_1_0_937_->set_mac_id("default_937");
    gbuf2a_1_0_937_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_937_->set_metapipe_iterations({100});
    gbuf2a_1_0_937_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2u_1_0_455_params;
    gbuf2u_1_0_455_params.head1_ctrl_flow_enable = true;
    gbuf2u_1_0_455_params.head1_linear = true;
    gbuf2u_1_0_455_params.head1_p2p = false;
    gbuf2u_1_0_455_params.head_1_depth = 2;
    gbuf2u_1_0_455_params.layout = gbuf2a_1_0_937_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose_flipped();
    gbuf2u_1_0_455_params.num_head1_rd_en = 6;
    gbuf2u_1_0_455_params.num_iterations = 100;
    gbuf2u_1_0_455_ = create_node<GBuffer>("gbuf2u_1_0_455", partition_1_0_, plasma_, gbuf2u_1_0_455_params);
    gbuf2u_1_0_455_->set_tile_id(-1);
    gbuf2u_1_0_455_->set_die_id(-1);
    gbuf2u_1_0_455_->set_mac_id("default_455");
    gbuf2u_1_0_455_->set_mac_latency(-1.000000e+00);
    gbuf2u_1_0_455_->set_metapipe_iterations({100});
    gbuf2u_1_0_455_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    PermuteView::Params ptconvlstm__lstm_layer__lstm_bwd_output_g_t_params;
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_params.input_layout = gbuf2u_1_0_455_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_params.permute = {1, 0};
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_ = create_node<PermuteView>("ptconvlstm__lstm_layer__lstm_bwd_output_g_t", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_output_g_t_params);
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params.layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_params);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params.layout_a = ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->result_layout();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params.layout_b = ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_params);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_1003_params;
    gbuf1a_1_0_1003_params.head0_linear = true;
    gbuf1a_1_0_1003_params.head0_p2p = false;
    gbuf1a_1_0_1003_params.head1_linear = true;
    gbuf1a_1_0_1003_params.head1_p2p = false;
    gbuf1a_1_0_1003_params.head_0_depth = 1;
    gbuf1a_1_0_1003_params.head_1_depth = 1;
    gbuf1a_1_0_1003_params.layout = ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->result_layout().at_address(0);
    gbuf1a_1_0_1003_params.num_iterations = 100;
    gbuf1a_1_0_1003_ = create_node<GBuffer>("gbuf1a_1_0_1003", partition_1_0_, plasma_, gbuf1a_1_0_1003_params);
    gbuf1a_1_0_1003_->set_tile_id(-1);
    gbuf1a_1_0_1003_->set_die_id(-1);
    gbuf1a_1_0_1003_->set_mac_id("default_1003");
    gbuf1a_1_0_1003_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_1003_->set_metapipe_iterations({100});
    gbuf1a_1_0_1003_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params;
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params.layout = gbuf3u_1_0_443_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_temp_igates", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_temp_igates_params);
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params;
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params.layout = gbuf3u_1_0_445_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_temp_fgates", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_params);
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params.layout = gbuf3u_1_0_447_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_temp_ggates", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_params);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_1008_params;
    gbuf1a_1_0_1008_params.head1_linear = true;
    gbuf1a_1_0_1008_params.head1_p2p = false;
    gbuf1a_1_0_1008_params.head_1_depth = 1;
    gbuf1a_1_0_1008_params.layout = ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_1008_params.num_iterations = 100;
    gbuf1a_1_0_1008_ = create_node<GBuffer>("gbuf1a_1_0_1008", partition_1_0_, plasma_, gbuf1a_1_0_1008_params);
    gbuf1a_1_0_1008_->set_tile_id(-1);
    gbuf1a_1_0_1008_->set_die_id(-1);
    gbuf1a_1_0_1008_->set_mac_id("default_1008");
    gbuf1a_1_0_1008_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_1008_->set_metapipe_iterations({100});
    gbuf1a_1_0_1008_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params.layout = gbuf3u_1_0_449_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_temp_ogates", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_params);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params.layout = ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_params);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params.layout_a = ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params.layout_b = gbuf3u_1_0_451_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_params);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_976_params;
    gbuf1a_1_0_976_params.head1_linear = true;
    gbuf1a_1_0_976_params.head1_p2p = false;
    gbuf1a_1_0_976_params.head_1_depth = 1;
    gbuf1a_1_0_976_params.layout = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->result_layout().at_address(0);
    gbuf1a_1_0_976_params.num_iterations = 100;
    gbuf1a_1_0_976_ = create_node<GBuffer>("gbuf1a_1_0_976", partition_1_0_, plasma_, gbuf1a_1_0_976_params);
    gbuf1a_1_0_976_->set_tile_id(-1);
    gbuf1a_1_0_976_->set_die_id(-1);
    gbuf1a_1_0_976_->set_mac_id("default_976");
    gbuf1a_1_0_976_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_976_->set_metapipe_iterations({100});
    gbuf1a_1_0_976_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params.head1_linear = true;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params.head1_p2p = false;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params.head_1_depth = 1;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params.layout = ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params.num_iterations = 100;
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_ = create_node<GBuffer>("ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_params);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params.layout_a = ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params.layout_b = ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_params);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_977_params;
    gbuf1a_1_0_977_params.head1_linear = true;
    gbuf1a_1_0_977_params.head1_p2p = false;
    gbuf1a_1_0_977_params.head_1_depth = 1;
    gbuf1a_1_0_977_params.layout = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->result_layout().at_address(0);
    gbuf1a_1_0_977_params.num_iterations = 100;
    gbuf1a_1_0_977_ = create_node<GBuffer>("gbuf1a_1_0_977", partition_1_0_, plasma_, gbuf1a_1_0_977_params);
    gbuf1a_1_0_977_->set_tile_id(-1);
    gbuf1a_1_0_977_->set_die_id(-1);
    gbuf1a_1_0_977_->set_mac_id("default_977");
    gbuf1a_1_0_977_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_977_->set_metapipe_iterations({100});
    gbuf1a_1_0_977_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params.layout_a = gbuf1a_1_0_976_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params.layout_b = gbuf1a_1_0_977_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_params);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    UnaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_params;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_params.layout = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->result_layout().at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_params.op = node_constants::TemplateOpcodes::kTanh;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_params.streaming = true;
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_ = create_node<UnaryOps>("ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_params);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_1004_params;
    gbuf1a_1_0_1004_params.head0_linear = true;
    gbuf1a_1_0_1004_params.head0_p2p = false;
    gbuf1a_1_0_1004_params.head1_linear = true;
    gbuf1a_1_0_1004_params.head1_p2p = false;
    gbuf1a_1_0_1004_params.head_0_depth = 1;
    gbuf1a_1_0_1004_params.head_1_depth = 1;
    gbuf1a_1_0_1004_params.layout = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->result_layout().at_address(0);
    gbuf1a_1_0_1004_params.num_iterations = 100;
    gbuf1a_1_0_1004_ = create_node<GBuffer>("gbuf1a_1_0_1004", partition_1_0_, plasma_, gbuf1a_1_0_1004_params);
    gbuf1a_1_0_1004_->set_tile_id(-1);
    gbuf1a_1_0_1004_->set_die_id(-1);
    gbuf1a_1_0_1004_->set_mac_id("default_1004");
    gbuf1a_1_0_1004_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_1004_->set_metapipe_iterations({100});
    gbuf1a_1_0_1004_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params.layout_a = gbuf1a_1_0_1003_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params.layout_b = gbuf1a_1_0_1004_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_ogate_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_ogate_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_991_params;
    gbuf1a_1_0_991_params.head1_linear = true;
    gbuf1a_1_0_991_params.head1_p2p = false;
    gbuf1a_1_0_991_params.head_1_depth = 1;
    gbuf1a_1_0_991_params.layout = ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->result_layout().at_address(0);
    gbuf1a_1_0_991_params.num_iterations = 100;
    gbuf1a_1_0_991_ = create_node<GBuffer>("gbuf1a_1_0_991", partition_1_0_, plasma_, gbuf1a_1_0_991_params);
    gbuf1a_1_0_991_->set_tile_id(-1);
    gbuf1a_1_0_991_->set_die_id(-1);
    gbuf1a_1_0_991_->set_mac_id("default_991");
    gbuf1a_1_0_991_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_991_->set_metapipe_iterations({100});
    gbuf1a_1_0_991_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params.layout_a = gbuf1a_1_0_1003_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params.layout_b = ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_tanh_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_tanh_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_982_params;
    gbuf1a_1_0_982_params.head1_linear = true;
    gbuf1a_1_0_982_params.head1_p2p = false;
    gbuf1a_1_0_982_params.head_1_depth = 1;
    gbuf1a_1_0_982_params.layout = ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->result_layout().at_address(0);
    gbuf1a_1_0_982_params.num_iterations = 100;
    gbuf1a_1_0_982_ = create_node<GBuffer>("gbuf1a_1_0_982", partition_1_0_, plasma_, gbuf1a_1_0_982_params);
    gbuf1a_1_0_982_->set_tile_id(-1);
    gbuf1a_1_0_982_->set_die_id(-1);
    gbuf1a_1_0_982_->set_mac_id("default_982");
    gbuf1a_1_0_982_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_982_->set_metapipe_iterations({100});
    gbuf1a_1_0_982_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TanhB::Params ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params.layout_a = gbuf1a_1_0_1004_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params.layout_b = gbuf1a_1_0_982_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params.op = node_constants::TemplateOpcodes::kTanhB;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_ = create_node<TanhB>("ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_983_params;
    gbuf1a_1_0_983_params.head1_linear = true;
    gbuf1a_1_0_983_params.head1_p2p = false;
    gbuf1a_1_0_983_params.head_1_depth = 1;
    gbuf1a_1_0_983_params.layout = ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->result_layout().at_address(0);
    gbuf1a_1_0_983_params.num_iterations = 100;
    gbuf1a_1_0_983_ = create_node<GBuffer>("gbuf1a_1_0_983", partition_1_0_, plasma_, gbuf1a_1_0_983_params);
    gbuf1a_1_0_983_->set_tile_id(-1);
    gbuf1a_1_0_983_->set_die_id(-1);
    gbuf1a_1_0_983_->set_mac_id("default_983");
    gbuf1a_1_0_983_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_983_->set_metapipe_iterations({100});
    gbuf1a_1_0_983_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params.layout_a = ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->result_layout(LoopBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params.layout_b = gbuf1a_1_0_983_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params.op = node_constants::TemplateOpcodes::kAdd;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_params);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_1005_params;
    gbuf1a_1_0_1005_params.head0_linear = true;
    gbuf1a_1_0_1005_params.head0_p2p = false;
    gbuf1a_1_0_1005_params.head1_linear = true;
    gbuf1a_1_0_1005_params.head1_p2p = false;
    gbuf1a_1_0_1005_params.head_0_depth = 1;
    gbuf1a_1_0_1005_params.head_1_depth = 1;
    gbuf1a_1_0_1005_params.layout = ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->result_layout().at_address(0);
    gbuf1a_1_0_1005_params.num_iterations = 100;
    gbuf1a_1_0_1005_ = create_node<GBuffer>("gbuf1a_1_0_1005", partition_1_0_, plasma_, gbuf1a_1_0_1005_params);
    gbuf1a_1_0_1005_->set_tile_id(-1);
    gbuf1a_1_0_1005_->set_die_id(-1);
    gbuf1a_1_0_1005_->set_mac_id("default_1005");
    gbuf1a_1_0_1005_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_1005_->set_metapipe_iterations({100});
    gbuf1a_1_0_1005_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_1006_params;
    gbuf1a_1_0_1006_params.head0_linear = true;
    gbuf1a_1_0_1006_params.head0_p2p = false;
    gbuf1a_1_0_1006_params.head1_linear = true;
    gbuf1a_1_0_1006_params.head1_p2p = false;
    gbuf1a_1_0_1006_params.head_0_depth = 1;
    gbuf1a_1_0_1006_params.head_1_depth = 1;
    gbuf1a_1_0_1006_params.layout = ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->result_layout().at_address(0);
    gbuf1a_1_0_1006_params.num_iterations = 100;
    gbuf1a_1_0_1006_ = create_node<GBuffer>("gbuf1a_1_0_1006", partition_1_0_, plasma_, gbuf1a_1_0_1006_params);
    gbuf1a_1_0_1006_->set_tile_id(-1);
    gbuf1a_1_0_1006_->set_die_id(-1);
    gbuf1a_1_0_1006_->set_mac_id("default_1006");
    gbuf1a_1_0_1006_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_1006_->set_metapipe_iterations({100});
    gbuf1a_1_0_1006_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params.layout_a = gbuf1a_1_0_1006_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params.layout_b = gbuf1a_1_0_1007_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_fgate_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_fgate_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_989_params;
    gbuf1a_1_0_989_params.head1_linear = true;
    gbuf1a_1_0_989_params.head1_p2p = false;
    gbuf1a_1_0_989_params.head_1_depth = 1;
    gbuf1a_1_0_989_params.layout = ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->result_layout().at_address(0);
    gbuf1a_1_0_989_params.num_iterations = 100;
    gbuf1a_1_0_989_ = create_node<GBuffer>("gbuf1a_1_0_989", partition_1_0_, plasma_, gbuf1a_1_0_989_params);
    gbuf1a_1_0_989_->set_tile_id(-1);
    gbuf1a_1_0_989_->set_die_id(-1);
    gbuf1a_1_0_989_->set_mac_id("default_989");
    gbuf1a_1_0_989_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_989_->set_metapipe_iterations({100});
    gbuf1a_1_0_989_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_891_params;
    gbuf1a_1_0_891_params.head1_linear = true;
    gbuf1a_1_0_891_params.head1_p2p = false;
    gbuf1a_1_0_891_params.head_1_depth = 1;
    gbuf1a_1_0_891_params.layout = ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_891_params.num_iterations = 100;
    gbuf1a_1_0_891_ = create_node<GBuffer>("gbuf1a_1_0_891", partition_1_0_, plasma_, gbuf1a_1_0_891_params);
    gbuf1a_1_0_891_->set_tile_id(-1);
    gbuf1a_1_0_891_->set_die_id(-1);
    gbuf1a_1_0_891_->set_mac_id("default_891");
    gbuf1a_1_0_891_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_891_->set_metapipe_iterations({100});
    gbuf1a_1_0_891_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params.layout_a = gbuf1a_1_0_1006_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params.layout_b = gbuf1a_1_0_891_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_ct_1_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_igate_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_params.layout_a = gbuf1a_1_0_1005_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_params.layout_b = gbuf1a_1_0_1008_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_igate_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_igate_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_988_params;
    gbuf1a_1_0_988_params.head1_linear = true;
    gbuf1a_1_0_988_params.head1_p2p = false;
    gbuf1a_1_0_988_params.head_1_depth = 1;
    gbuf1a_1_0_988_params.layout = ptconvlstm__lstm_layer__lstm_bwd_igate_g_->result_layout().at_address(0);
    gbuf1a_1_0_988_params.num_iterations = 100;
    gbuf1a_1_0_988_ = create_node<GBuffer>("gbuf1a_1_0_988", partition_1_0_, plasma_, gbuf1a_1_0_988_params);
    gbuf1a_1_0_988_->set_tile_id(-1);
    gbuf1a_1_0_988_->set_die_id(-1);
    gbuf1a_1_0_988_->set_mac_id("default_988");
    gbuf1a_1_0_988_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_988_->set_metapipe_iterations({100});
    gbuf1a_1_0_988_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_892_params;
    gbuf1a_1_0_892_params.head1_linear = true;
    gbuf1a_1_0_892_params.head1_p2p = false;
    gbuf1a_1_0_892_params.head_1_depth = 1;
    gbuf1a_1_0_892_params.layout = ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_892_params.num_iterations = 100;
    gbuf1a_1_0_892_ = create_node<GBuffer>("gbuf1a_1_0_892", partition_1_0_, plasma_, gbuf1a_1_0_892_params);
    gbuf1a_1_0_892_->set_tile_id(-1);
    gbuf1a_1_0_892_->set_die_id(-1);
    gbuf1a_1_0_892_->set_mac_id("default_892");
    gbuf1a_1_0_892_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_892_->set_metapipe_iterations({100});
    gbuf1a_1_0_892_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BinaryOps::Params ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params;
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params.layout_a = gbuf1a_1_0_1005_->result_layout(GBuffer::Output::kHead0Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params.layout_b = gbuf1a_1_0_892_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params.op = node_constants::TemplateOpcodes::kMul;
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_ = create_node<BinaryOps>("ptconvlstm__lstm_layer__lstm_bwd_ggate_g", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_ggate_g_params);
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_990_params;
    gbuf1a_1_0_990_params.head1_linear = true;
    gbuf1a_1_0_990_params.head1_p2p = false;
    gbuf1a_1_0_990_params.head_1_depth = 1;
    gbuf1a_1_0_990_params.layout = ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->result_layout().at_address(0);
    gbuf1a_1_0_990_params.num_iterations = 100;
    gbuf1a_1_0_990_ = create_node<GBuffer>("gbuf1a_1_0_990", partition_1_0_, plasma_, gbuf1a_1_0_990_params);
    gbuf1a_1_0_990_->set_tile_id(-1);
    gbuf1a_1_0_990_->set_die_id(-1);
    gbuf1a_1_0_990_->set_mac_id("default_990");
    gbuf1a_1_0_990_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_990_->set_metapipe_iterations({100});
    gbuf1a_1_0_990_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_893_params;
    gbuf1a_1_0_893_params.head1_linear = true;
    gbuf1a_1_0_893_params.head1_p2p = false;
    gbuf1a_1_0_893_params.head_1_depth = 1;
    gbuf1a_1_0_893_params.layout = gbuf3u_1_0_443_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_893_params.num_iterations = 100;
    gbuf1a_1_0_893_ = create_node<GBuffer>("gbuf1a_1_0_893", partition_1_0_, plasma_, gbuf1a_1_0_893_params);
    gbuf1a_1_0_893_->set_tile_id(-1);
    gbuf1a_1_0_893_->set_die_id(-1);
    gbuf1a_1_0_893_->set_mac_id("default_893");
    gbuf1a_1_0_893_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_893_->set_metapipe_iterations({100});
    gbuf1a_1_0_893_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    SigmoidB::Params ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params.layout_a = gbuf1a_1_0_893_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params.layout_b = gbuf1a_1_0_988_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params.op = node_constants::TemplateOpcodes::kSigmoidB;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_ = create_node<SigmoidB>("ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_params);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_852_params;
    gbuf2a_1_0_852_params.head1_ctrl_flow_dividers = {100};
    gbuf2a_1_0_852_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_852_params.head1_linear = false;
    gbuf2a_1_0_852_params.head1_p2p = false;
    gbuf2a_1_0_852_params.head_1_depth = 2;
    gbuf2a_1_0_852_params.head_1_transposed = true;
    gbuf2a_1_0_852_params.layout = ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->result_layout();
    gbuf2a_1_0_852_params.num_head1_rd_en = 1;
    gbuf2a_1_0_852_params.num_iterations = 100;
    gbuf2a_1_0_852_ = create_node<GBuffer>("gbuf2a_1_0_852", partition_1_0_, plasma_, gbuf2a_1_0_852_params);
    gbuf2a_1_0_852_->set_tile_id(-1);
    gbuf2a_1_0_852_->set_die_id(-1);
    gbuf2a_1_0_852_->set_mac_id("default_852");
    gbuf2a_1_0_852_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_852_->set_metapipe_iterations({100});
    gbuf2a_1_0_852_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_857_params;
    gbuf2a_1_0_857_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_857_params.head0_linear = true;
    gbuf2a_1_0_857_params.head0_p2p = false;
    gbuf2a_1_0_857_params.head0_streaming_window = true;
    gbuf2a_1_0_857_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_857_params.head1_linear = true;
    gbuf2a_1_0_857_params.head1_p2p = false;
    gbuf2a_1_0_857_params.head1_streaming_window = true;
    gbuf2a_1_0_857_params.head_0_depth = 2;
    gbuf2a_1_0_857_params.head_1_depth = 2;
    gbuf2a_1_0_857_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->result_layout().at_address(0);
    gbuf2a_1_0_857_params.num_head0_rd_en = 1;
    gbuf2a_1_0_857_params.num_head1_rd_en = 1;
    gbuf2a_1_0_857_params.num_iterations = 100;
    gbuf2a_1_0_857_ = create_node<GBuffer>("gbuf2a_1_0_857", partition_1_0_, plasma_, gbuf2a_1_0_857_params);
    gbuf2a_1_0_857_->set_tile_id(-1);
    gbuf2a_1_0_857_->set_die_id(-1);
    gbuf2a_1_0_857_->set_mac_id("default_857");
    gbuf2a_1_0_857_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_857_->set_metapipe_iterations({100});
    gbuf2a_1_0_857_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.A_layout = gbuf2a_1_0_857_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.B_layout = gbuf2a_1_0_852_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_853_params;
    gbuf2a_1_0_853_params.head1_ctrl_flow_dividers = {100};
    gbuf2a_1_0_853_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_853_params.head1_linear = false;
    gbuf2a_1_0_853_params.head1_p2p = false;
    gbuf2a_1_0_853_params.head_1_depth = 2;
    gbuf2a_1_0_853_params.head_1_transposed = true;
    gbuf2a_1_0_853_params.layout = ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->result_layout();
    gbuf2a_1_0_853_params.num_head1_rd_en = 1;
    gbuf2a_1_0_853_params.num_iterations = 100;
    gbuf2a_1_0_853_ = create_node<GBuffer>("gbuf2a_1_0_853", partition_1_0_, plasma_, gbuf2a_1_0_853_params);
    gbuf2a_1_0_853_->set_tile_id(-1);
    gbuf2a_1_0_853_->set_die_id(-1);
    gbuf2a_1_0_853_->set_mac_id("default_853");
    gbuf2a_1_0_853_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_853_->set_metapipe_iterations({100});
    gbuf2a_1_0_853_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_856_params;
    gbuf2a_1_0_856_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_856_params.head0_linear = true;
    gbuf2a_1_0_856_params.head0_p2p = false;
    gbuf2a_1_0_856_params.head0_streaming_window = true;
    gbuf2a_1_0_856_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_856_params.head1_linear = true;
    gbuf2a_1_0_856_params.head1_p2p = false;
    gbuf2a_1_0_856_params.head1_streaming_window = true;
    gbuf2a_1_0_856_params.head_0_depth = 2;
    gbuf2a_1_0_856_params.head_1_depth = 2;
    gbuf2a_1_0_856_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->result_layout().at_address(0);
    gbuf2a_1_0_856_params.num_head0_rd_en = 1;
    gbuf2a_1_0_856_params.num_head1_rd_en = 1;
    gbuf2a_1_0_856_params.num_iterations = 100;
    gbuf2a_1_0_856_ = create_node<GBuffer>("gbuf2a_1_0_856", partition_1_0_, plasma_, gbuf2a_1_0_856_params);
    gbuf2a_1_0_856_->set_tile_id(-1);
    gbuf2a_1_0_856_->set_die_id(-1);
    gbuf2a_1_0_856_->set_mac_id("default_856");
    gbuf2a_1_0_856_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_856_->set_metapipe_iterations({100});
    gbuf2a_1_0_856_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.A_layout = gbuf2a_1_0_856_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.B_layout = gbuf2a_1_0_853_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_855_params;
    gbuf2a_1_0_855_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_855_params.head1_linear = false;
    gbuf2a_1_0_855_params.head1_p2p = false;
    gbuf2a_1_0_855_params.head_1_depth = 2;
    gbuf2a_1_0_855_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->result_layout().at_address(0);
    gbuf2a_1_0_855_params.num_head1_rd_en = 2;
    gbuf2a_1_0_855_params.num_iterations = 100;
    gbuf2a_1_0_855_ = create_node<GBuffer>("gbuf2a_1_0_855", partition_1_0_, plasma_, gbuf2a_1_0_855_params);
    gbuf2a_1_0_855_->set_tile_id(-1);
    gbuf2a_1_0_855_->set_die_id(-1);
    gbuf2a_1_0_855_->set_mac_id("default_855");
    gbuf2a_1_0_855_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_855_->set_metapipe_iterations({100});
    gbuf2a_1_0_855_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.bias_mode = GemmSubnet::BiasMode::kGradient;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.big_gemm_b_min_row_compute_units = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.disable_grad = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.disable_loss_bcast_filter = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.enable_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.enable_bias_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.enable_big_gemm_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_757;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.fwd_prop_b = gbuf2a_1_0_855_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_757.logical_shape()[1], gbuf2a_1_0_855_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).logical_shape()[1]}).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.is_spatial = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.loss_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.reduce_depth = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.subnet_type = SubnetType::kBackward;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.units_per_box = 16;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params.use_wbuf_for_bias = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_894_params;
    gbuf1a_1_0_894_params.head1_linear = true;
    gbuf1a_1_0_894_params.head1_p2p = false;
    gbuf1a_1_0_894_params.head_1_depth = 1;
    gbuf1a_1_0_894_params.layout = gbuf3u_1_0_445_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_894_params.num_iterations = 100;
    gbuf1a_1_0_894_ = create_node<GBuffer>("gbuf1a_1_0_894", partition_1_0_, plasma_, gbuf1a_1_0_894_params);
    gbuf1a_1_0_894_->set_tile_id(-1);
    gbuf1a_1_0_894_->set_die_id(-1);
    gbuf1a_1_0_894_->set_mac_id("default_894");
    gbuf1a_1_0_894_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_894_->set_metapipe_iterations({100});
    gbuf1a_1_0_894_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    SigmoidB::Params ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params.layout_a = gbuf1a_1_0_894_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params.layout_b = gbuf1a_1_0_989_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params.op = node_constants::TemplateOpcodes::kSigmoidB;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_ = create_node<SigmoidB>("ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_params);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_861_params;
    gbuf2a_1_0_861_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_861_params.head0_linear = true;
    gbuf2a_1_0_861_params.head0_p2p = false;
    gbuf2a_1_0_861_params.head0_streaming_window = true;
    gbuf2a_1_0_861_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_861_params.head1_linear = true;
    gbuf2a_1_0_861_params.head1_p2p = false;
    gbuf2a_1_0_861_params.head1_streaming_window = true;
    gbuf2a_1_0_861_params.head_0_depth = 2;
    gbuf2a_1_0_861_params.head_1_depth = 2;
    gbuf2a_1_0_861_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->result_layout().at_address(0);
    gbuf2a_1_0_861_params.num_head0_rd_en = 1;
    gbuf2a_1_0_861_params.num_head1_rd_en = 1;
    gbuf2a_1_0_861_params.num_iterations = 100;
    gbuf2a_1_0_861_ = create_node<GBuffer>("gbuf2a_1_0_861", partition_1_0_, plasma_, gbuf2a_1_0_861_params);
    gbuf2a_1_0_861_->set_tile_id(-1);
    gbuf2a_1_0_861_->set_die_id(-1);
    gbuf2a_1_0_861_->set_mac_id("default_861");
    gbuf2a_1_0_861_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_861_->set_metapipe_iterations({100});
    gbuf2a_1_0_861_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.A_layout = gbuf2a_1_0_861_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.B_layout = gbuf2a_1_0_852_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_860_params;
    gbuf2a_1_0_860_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_860_params.head0_linear = true;
    gbuf2a_1_0_860_params.head0_p2p = false;
    gbuf2a_1_0_860_params.head0_streaming_window = true;
    gbuf2a_1_0_860_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_860_params.head1_linear = true;
    gbuf2a_1_0_860_params.head1_p2p = false;
    gbuf2a_1_0_860_params.head1_streaming_window = true;
    gbuf2a_1_0_860_params.head_0_depth = 2;
    gbuf2a_1_0_860_params.head_1_depth = 2;
    gbuf2a_1_0_860_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->result_layout().at_address(0);
    gbuf2a_1_0_860_params.num_head0_rd_en = 1;
    gbuf2a_1_0_860_params.num_head1_rd_en = 1;
    gbuf2a_1_0_860_params.num_iterations = 100;
    gbuf2a_1_0_860_ = create_node<GBuffer>("gbuf2a_1_0_860", partition_1_0_, plasma_, gbuf2a_1_0_860_params);
    gbuf2a_1_0_860_->set_tile_id(-1);
    gbuf2a_1_0_860_->set_die_id(-1);
    gbuf2a_1_0_860_->set_mac_id("default_860");
    gbuf2a_1_0_860_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_860_->set_metapipe_iterations({100});
    gbuf2a_1_0_860_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.A_layout = gbuf2a_1_0_860_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.B_layout = gbuf2a_1_0_853_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_859_params;
    gbuf2a_1_0_859_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_859_params.head1_linear = false;
    gbuf2a_1_0_859_params.head1_p2p = false;
    gbuf2a_1_0_859_params.head_1_depth = 2;
    gbuf2a_1_0_859_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->result_layout().at_address(0);
    gbuf2a_1_0_859_params.num_head1_rd_en = 2;
    gbuf2a_1_0_859_params.num_iterations = 100;
    gbuf2a_1_0_859_ = create_node<GBuffer>("gbuf2a_1_0_859", partition_1_0_, plasma_, gbuf2a_1_0_859_params);
    gbuf2a_1_0_859_->set_tile_id(-1);
    gbuf2a_1_0_859_->set_die_id(-1);
    gbuf2a_1_0_859_->set_mac_id("default_859");
    gbuf2a_1_0_859_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_859_->set_metapipe_iterations({100});
    gbuf2a_1_0_859_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.bias_mode = GemmSubnet::BiasMode::kGradient;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.big_gemm_b_min_row_compute_units = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.disable_grad = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.disable_loss_bcast_filter = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.enable_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.enable_bias_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.enable_big_gemm_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_771;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.fwd_prop_b = gbuf2a_1_0_859_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_771.logical_shape()[1], gbuf2a_1_0_859_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).logical_shape()[1]}).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.is_spatial = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.loss_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.reduce_depth = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.subnet_type = SubnetType::kBackward;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.units_per_box = 16;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params.use_wbuf_for_bias = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf1a_1_0_895_params;
    gbuf1a_1_0_895_params.head1_linear = true;
    gbuf1a_1_0_895_params.head1_p2p = false;
    gbuf1a_1_0_895_params.head_1_depth = 1;
    gbuf1a_1_0_895_params.layout = gbuf3u_1_0_447_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    gbuf1a_1_0_895_params.num_iterations = 100;
    gbuf1a_1_0_895_ = create_node<GBuffer>("gbuf1a_1_0_895", partition_1_0_, plasma_, gbuf1a_1_0_895_params);
    gbuf1a_1_0_895_->set_tile_id(-1);
    gbuf1a_1_0_895_->set_die_id(-1);
    gbuf1a_1_0_895_->set_mac_id("default_895");
    gbuf1a_1_0_895_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_895_->set_metapipe_iterations({100});
    gbuf1a_1_0_895_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    TanhB::Params ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params.layout_a = gbuf1a_1_0_895_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params.layout_b = gbuf1a_1_0_990_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params.op = node_constants::TemplateOpcodes::kTanhB;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_ = create_node<TanhB>("ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_params);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_865_params;
    gbuf2a_1_0_865_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_865_params.head0_linear = true;
    gbuf2a_1_0_865_params.head0_p2p = false;
    gbuf2a_1_0_865_params.head0_streaming_window = true;
    gbuf2a_1_0_865_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_865_params.head1_linear = true;
    gbuf2a_1_0_865_params.head1_p2p = false;
    gbuf2a_1_0_865_params.head1_streaming_window = true;
    gbuf2a_1_0_865_params.head_0_depth = 2;
    gbuf2a_1_0_865_params.head_1_depth = 2;
    gbuf2a_1_0_865_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->result_layout().at_address(0);
    gbuf2a_1_0_865_params.num_head0_rd_en = 1;
    gbuf2a_1_0_865_params.num_head1_rd_en = 1;
    gbuf2a_1_0_865_params.num_iterations = 100;
    gbuf2a_1_0_865_ = create_node<GBuffer>("gbuf2a_1_0_865", partition_1_0_, plasma_, gbuf2a_1_0_865_params);
    gbuf2a_1_0_865_->set_tile_id(-1);
    gbuf2a_1_0_865_->set_die_id(-1);
    gbuf2a_1_0_865_->set_mac_id("default_865");
    gbuf2a_1_0_865_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_865_->set_metapipe_iterations({100});
    gbuf2a_1_0_865_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.A_layout = gbuf2a_1_0_865_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.B_layout = gbuf2a_1_0_852_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_864_params;
    gbuf2a_1_0_864_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_864_params.head0_linear = true;
    gbuf2a_1_0_864_params.head0_p2p = false;
    gbuf2a_1_0_864_params.head0_streaming_window = true;
    gbuf2a_1_0_864_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_864_params.head1_linear = true;
    gbuf2a_1_0_864_params.head1_p2p = false;
    gbuf2a_1_0_864_params.head1_streaming_window = true;
    gbuf2a_1_0_864_params.head_0_depth = 2;
    gbuf2a_1_0_864_params.head_1_depth = 2;
    gbuf2a_1_0_864_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->result_layout().at_address(0);
    gbuf2a_1_0_864_params.num_head0_rd_en = 1;
    gbuf2a_1_0_864_params.num_head1_rd_en = 1;
    gbuf2a_1_0_864_params.num_iterations = 100;
    gbuf2a_1_0_864_ = create_node<GBuffer>("gbuf2a_1_0_864", partition_1_0_, plasma_, gbuf2a_1_0_864_params);
    gbuf2a_1_0_864_->set_tile_id(-1);
    gbuf2a_1_0_864_->set_die_id(-1);
    gbuf2a_1_0_864_->set_mac_id("default_864");
    gbuf2a_1_0_864_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_864_->set_metapipe_iterations({100});
    gbuf2a_1_0_864_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.A_layout = gbuf2a_1_0_864_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.B_layout = gbuf2a_1_0_853_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_863_params;
    gbuf2a_1_0_863_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_863_params.head1_linear = false;
    gbuf2a_1_0_863_params.head1_p2p = false;
    gbuf2a_1_0_863_params.head_1_depth = 2;
    gbuf2a_1_0_863_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->result_layout().at_address(0);
    gbuf2a_1_0_863_params.num_head1_rd_en = 2;
    gbuf2a_1_0_863_params.num_iterations = 100;
    gbuf2a_1_0_863_ = create_node<GBuffer>("gbuf2a_1_0_863", partition_1_0_, plasma_, gbuf2a_1_0_863_params);
    gbuf2a_1_0_863_->set_tile_id(-1);
    gbuf2a_1_0_863_->set_die_id(-1);
    gbuf2a_1_0_863_->set_mac_id("default_863");
    gbuf2a_1_0_863_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_863_->set_metapipe_iterations({100});
    gbuf2a_1_0_863_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.bias_mode = GemmSubnet::BiasMode::kGradient;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.big_gemm_b_min_row_compute_units = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.disable_grad = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.disable_loss_bcast_filter = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.enable_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.enable_bias_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.enable_big_gemm_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_785;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.fwd_prop_b = gbuf2a_1_0_863_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_785.logical_shape()[1], gbuf2a_1_0_863_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).logical_shape()[1]}).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.is_spatial = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.loss_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.reduce_depth = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.subnet_type = SubnetType::kBackward;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.units_per_box = 16;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params.use_wbuf_for_bias = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    SigmoidB::Params ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params.layout_a = gbuf3u_1_0_449_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params.layout_b = gbuf1a_1_0_991_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params.op = node_constants::TemplateOpcodes::kSigmoidB;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params.streaming_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params.streaming_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_ = create_node<SigmoidB>("ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_params);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_869_params;
    gbuf2a_1_0_869_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_869_params.head0_linear = true;
    gbuf2a_1_0_869_params.head0_p2p = false;
    gbuf2a_1_0_869_params.head0_streaming_window = true;
    gbuf2a_1_0_869_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_869_params.head1_linear = true;
    gbuf2a_1_0_869_params.head1_p2p = false;
    gbuf2a_1_0_869_params.head1_streaming_window = true;
    gbuf2a_1_0_869_params.head_0_depth = 2;
    gbuf2a_1_0_869_params.head_1_depth = 2;
    gbuf2a_1_0_869_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->result_layout().at_address(0);
    gbuf2a_1_0_869_params.num_head0_rd_en = 1;
    gbuf2a_1_0_869_params.num_head1_rd_en = 1;
    gbuf2a_1_0_869_params.num_iterations = 100;
    gbuf2a_1_0_869_ = create_node<GBuffer>("gbuf2a_1_0_869", partition_1_0_, plasma_, gbuf2a_1_0_869_params);
    gbuf2a_1_0_869_->set_tile_id(-1);
    gbuf2a_1_0_869_->set_die_id(-1);
    gbuf2a_1_0_869_->set_mac_id("default_869");
    gbuf2a_1_0_869_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_869_->set_metapipe_iterations({100});
    gbuf2a_1_0_869_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.A_layout = gbuf2a_1_0_869_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.B_layout = gbuf2a_1_0_852_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_868_params;
    gbuf2a_1_0_868_params.head0_ctrl_flow_enable = true;
    gbuf2a_1_0_868_params.head0_linear = true;
    gbuf2a_1_0_868_params.head0_p2p = false;
    gbuf2a_1_0_868_params.head0_streaming_window = true;
    gbuf2a_1_0_868_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_868_params.head1_linear = true;
    gbuf2a_1_0_868_params.head1_p2p = false;
    gbuf2a_1_0_868_params.head1_streaming_window = true;
    gbuf2a_1_0_868_params.head_0_depth = 2;
    gbuf2a_1_0_868_params.head_1_depth = 2;
    gbuf2a_1_0_868_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->result_layout().at_address(0);
    gbuf2a_1_0_868_params.num_head0_rd_en = 1;
    gbuf2a_1_0_868_params.num_head1_rd_en = 1;
    gbuf2a_1_0_868_params.num_iterations = 100;
    gbuf2a_1_0_868_ = create_node<GBuffer>("gbuf2a_1_0_868", partition_1_0_, plasma_, gbuf2a_1_0_868_params);
    gbuf2a_1_0_868_->set_tile_id(-1);
    gbuf2a_1_0_868_->set_die_id(-1);
    gbuf2a_1_0_868_->set_mac_id("default_868");
    gbuf2a_1_0_868_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_868_->set_metapipe_iterations({100});
    gbuf2a_1_0_868_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    BigGemm::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.A_layout = gbuf2a_1_0_868_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.B_layout = gbuf2a_1_0_853_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_vector_transpose(true);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.bias_accum_direct_dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.bias_accumulator_stochastic_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.bias_accumulator_stochastic_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.box_accum_tail_pmu = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.box_output_pmu = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.box_per_partition = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.broadcast_hydra = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.connected_to_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.dotproduct_gemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.dotproduct_gemm_bf16_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.enable_gradient = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.enable_gradient_bias = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.enable_gradient_buf_sz = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.enable_instrumentation = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.enable_seqID_pacing_interval = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.exclusive_vc_a = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.external_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.external_bias_accumulator = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.external_input_a = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.fused_gradient_bias_en = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.is_streaming_output = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.num_col_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.num_partitions = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.num_row_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.optimized_accum = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params.set_exclusive_routes = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_ = create_node<BigGemm>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_867_params;
    gbuf2a_1_0_867_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_867_params.head1_linear = false;
    gbuf2a_1_0_867_params.head1_p2p = false;
    gbuf2a_1_0_867_params.head_1_depth = 2;
    gbuf2a_1_0_867_params.layout = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->result_layout().at_address(0);
    gbuf2a_1_0_867_params.num_head1_rd_en = 2;
    gbuf2a_1_0_867_params.num_iterations = 100;
    gbuf2a_1_0_867_ = create_node<GBuffer>("gbuf2a_1_0_867", partition_1_0_, plasma_, gbuf2a_1_0_867_params);
    gbuf2a_1_0_867_->set_tile_id(-1);
    gbuf2a_1_0_867_->set_die_id(-1);
    gbuf2a_1_0_867_->set_mac_id("default_867");
    gbuf2a_1_0_867_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_867_->set_metapipe_iterations({100});
    gbuf2a_1_0_867_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GemmSubnet::Params ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.batch_size = 100;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.bias_mode = GemmSubnet::BiasMode::kGradient;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.big_gemm_b_min_row_compute_units = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.box_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.disable_grad = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.disable_loss_bcast_filter = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.enable_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.enable_bias_accumulator = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.enable_big_gemm_b = true;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.fwd_prop_a = params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_799;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.fwd_prop_b = gbuf2a_1_0_867_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).with_logical_shape({params_.ptconvlstm__lstm_layer__weight_hh_l0_1_0_799.logical_shape()[1], gbuf2a_1_0_867_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).logical_shape()[1]}).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.is_spatial = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.loss_gemm_wbuf_external_load = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.maximum_fwd_b_fanout = 32;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.num_compute_units = 1;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.reduce_depth = 4;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.subnet_type = SubnetType::kBackward;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.units_per_box = 16;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params.use_wbuf_for_bias = false;
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_ = create_node<GemmSubnet>("ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b", partition_1_0_, plasma_, ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_params);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_858_params;
    gbuf2a_1_0_858_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_858_params.head1_linear = true;
    gbuf2a_1_0_858_params.head1_p2p = false;
    gbuf2a_1_0_858_params.head1_streaming_window = true;
    gbuf2a_1_0_858_params.head_1_depth = 2;
    gbuf2a_1_0_858_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->result_layout(GemmSubnet::IO::kBackPropOutput).at_address(0);
    gbuf2a_1_0_858_params.num_head1_rd_en = 2;
    gbuf2a_1_0_858_params.num_iterations = 100;
    gbuf2a_1_0_858_ = create_node<GBuffer>("gbuf2a_1_0_858", partition_1_0_, plasma_, gbuf2a_1_0_858_params);
    gbuf2a_1_0_858_->set_tile_id(-1);
    gbuf2a_1_0_858_->set_die_id(-1);
    gbuf2a_1_0_858_->set_mac_id("default_858");
    gbuf2a_1_0_858_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_858_->set_metapipe_iterations({100});
    gbuf2a_1_0_858_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_862_params;
    gbuf2a_1_0_862_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_862_params.head1_linear = true;
    gbuf2a_1_0_862_params.head1_p2p = false;
    gbuf2a_1_0_862_params.head1_streaming_window = true;
    gbuf2a_1_0_862_params.head_1_depth = 2;
    gbuf2a_1_0_862_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->result_layout(GemmSubnet::IO::kBackPropOutput).at_address(0);
    gbuf2a_1_0_862_params.num_head1_rd_en = 2;
    gbuf2a_1_0_862_params.num_iterations = 100;
    gbuf2a_1_0_862_ = create_node<GBuffer>("gbuf2a_1_0_862", partition_1_0_, plasma_, gbuf2a_1_0_862_params);
    gbuf2a_1_0_862_->set_tile_id(-1);
    gbuf2a_1_0_862_->set_die_id(-1);
    gbuf2a_1_0_862_->set_mac_id("default_862");
    gbuf2a_1_0_862_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_862_->set_metapipe_iterations({100});
    gbuf2a_1_0_862_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_866_params;
    gbuf2a_1_0_866_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_866_params.head1_linear = true;
    gbuf2a_1_0_866_params.head1_p2p = false;
    gbuf2a_1_0_866_params.head1_streaming_window = true;
    gbuf2a_1_0_866_params.head_1_depth = 2;
    gbuf2a_1_0_866_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->result_layout(GemmSubnet::IO::kBackPropOutput).at_address(0);
    gbuf2a_1_0_866_params.num_head1_rd_en = 2;
    gbuf2a_1_0_866_params.num_iterations = 100;
    gbuf2a_1_0_866_ = create_node<GBuffer>("gbuf2a_1_0_866", partition_1_0_, plasma_, gbuf2a_1_0_866_params);
    gbuf2a_1_0_866_->set_tile_id(-1);
    gbuf2a_1_0_866_->set_die_id(-1);
    gbuf2a_1_0_866_->set_mac_id("default_866");
    gbuf2a_1_0_866_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_866_->set_metapipe_iterations({100});
    gbuf2a_1_0_866_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_870_params;
    gbuf2a_1_0_870_params.head1_ctrl_flow_enable = true;
    gbuf2a_1_0_870_params.head1_linear = true;
    gbuf2a_1_0_870_params.head1_p2p = false;
    gbuf2a_1_0_870_params.head1_streaming_window = true;
    gbuf2a_1_0_870_params.head_1_depth = 2;
    gbuf2a_1_0_870_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->result_layout(GemmSubnet::IO::kBackPropOutput).at_address(0);
    gbuf2a_1_0_870_params.num_head1_rd_en = 2;
    gbuf2a_1_0_870_params.num_iterations = 100;
    gbuf2a_1_0_870_ = create_node<GBuffer>("gbuf2a_1_0_870", partition_1_0_, plasma_, gbuf2a_1_0_870_params);
    gbuf2a_1_0_870_->set_tile_id(-1);
    gbuf2a_1_0_870_->set_die_id(-1);
    gbuf2a_1_0_870_->set_mac_id("default_870");
    gbuf2a_1_0_870_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_870_->set_metapipe_iterations({100});
    gbuf2a_1_0_870_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    AddN::Params addn_1_0_688_params;
    addn_1_0_688_params.layout_input = gbuf2a_1_0_858_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    addn_1_0_688_params.num_of_inputs = 4;
    addn_1_0_688_ = create_node<AddN>("addn_1_0_688", partition_1_0_, plasma_, addn_1_0_688_params);
    addn_1_0_688_->set_tile_id(-1);
    addn_1_0_688_->set_die_id(-1);
    addn_1_0_688_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    addn_1_0_688_->set_mac_latency(-1.000000e+00);
    addn_1_0_688_->set_metapipe_iterations({100});
    addn_1_0_688_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__dense_layer__linear_bwd_weight_accum_params;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.acc_stoc_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.accum_version = "3";
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.dram_store = true;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.iter_per_accum = 100;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.layout = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.num_accums = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.optimized_biggemm = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.partitions = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.read_credit = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_params.rvrm_init_output_layout = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_ = create_node<ParAccum>("ptconvlstm__dense_layer__linear_bwd_weight_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__dense_layer__linear_bwd_weight_accum_params);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.acc_stoc_rnd = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.accum_version = "3";
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.dram_store = true;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.iter_per_accum = 100;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.layout = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.num_accums = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.optimized_biggemm = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.partitions = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.read_credit = 1;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params.rvrm_init_output_layout = false;
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_ = create_node<ParAccum>("ptconvlstm__dense_layer__linear_bwd_weight_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__dense_layer__linear_bwd_weight_accum_1_params);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_tile_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_die_id(-1);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_mac_id("ptconvlstm__dense_layer__linear_bwd_weight");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_metapipe_iterations({100});
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_1_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_1", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_1_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_2_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_2", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_2_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_3_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_3", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_3_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_4_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_4", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_4_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_5_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_5", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_5_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_6_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_6", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_6_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_7_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->result_layout(BigGemm::kOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->result_layouts(BigGemm::Output::kOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_7", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_7_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_8_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_8", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_8_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_9_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_9", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_9_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_10_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_10", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_10_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_11_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_11", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_11_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_12_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_12", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_12_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_13_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_13", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_13_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_14_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_14", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_14_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    ParAccum::Params ptconvlstm__lstm_layer__lstm_bwd_accum_15_params;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.acc_stoc_rnd = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.acc_stoc_rnd_seed = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.accum_version = "3";
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.dram_store = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.iter_per_accum = 100;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.layout = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->result_layout(BigGemm::kBiasGradAccumOutput).at_address(0);
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.num_accums = 1;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.optimized_biggemm = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.partitions = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->result_layouts(BigGemm::Output::kBiasGradAccumOutput);
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_params.rvrm_init_output_layout = false;
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_ = create_node<ParAccum>("ptconvlstm__lstm_layer__lstm_bwd_accum_15", partition_1_0_, LOC, mlir::rail::RAIL::rail, ptconvlstm__lstm_layer__lstm_bwd_accum_15_params);
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_tile_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_die_id(-1);
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_metapipe_iterations({100});
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_848_params;
    gbuf2a_1_0_848_params.head1_linear = true;
    gbuf2a_1_0_848_params.head1_p2p = false;
    gbuf2a_1_0_848_params.head_1_depth = 2;
    gbuf2a_1_0_848_params.layout = ptconvlstm__lstm_layer__lstm_recompute__hidden_->result_layout().at_address(0);
    gbuf2a_1_0_848_params.num_iterations = 100;
    gbuf2a_1_0_848_ = create_node<GBuffer>("gbuf2a_1_0_848", partition_1_0_, plasma_, gbuf2a_1_0_848_params);
    gbuf2a_1_0_848_->set_tile_id(-1);
    gbuf2a_1_0_848_->set_die_id(-1);
    gbuf2a_1_0_848_->set_mac_id("default_848");
    gbuf2a_1_0_848_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_848_->set_metapipe_iterations({100});
    gbuf2a_1_0_848_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_847_params;
    gbuf2a_1_0_847_params.head1_linear = true;
    gbuf2a_1_0_847_params.head1_p2p = false;
    gbuf2a_1_0_847_params.head_1_depth = 2;
    gbuf2a_1_0_847_params.layout = ptconvlstm__lstm_layer__lstm_recompute__cell_->result_layout().at_address(0);
    gbuf2a_1_0_847_params.num_iterations = 100;
    gbuf2a_1_0_847_ = create_node<GBuffer>("gbuf2a_1_0_847", partition_1_0_, plasma_, gbuf2a_1_0_847_params);
    gbuf2a_1_0_847_->set_tile_id(-1);
    gbuf2a_1_0_847_->set_die_id(-1);
    gbuf2a_1_0_847_->set_mac_id("default_847");
    gbuf2a_1_0_847_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_847_->set_metapipe_iterations({100});
    gbuf2a_1_0_847_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_871_params;
    gbuf2a_1_0_871_params.head1_linear = true;
    gbuf2a_1_0_871_params.head1_p2p = false;
    gbuf2a_1_0_871_params.head_1_depth = 2;
    gbuf2a_1_0_871_params.layout = addn_1_0_688_->result_layout().at_address(0);
    gbuf2a_1_0_871_params.num_iterations = 100;
    gbuf2a_1_0_871_ = create_node<GBuffer>("gbuf2a_1_0_871", partition_1_0_, plasma_, gbuf2a_1_0_871_params);
    gbuf2a_1_0_871_->set_tile_id(-1);
    gbuf2a_1_0_871_->set_die_id(-1);
    gbuf2a_1_0_871_->set_mac_id("default_871");
    gbuf2a_1_0_871_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_871_->set_metapipe_iterations({100});
    gbuf2a_1_0_871_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    GBuffer::Params gbuf2a_1_0_854_params;
    gbuf2a_1_0_854_params.head1_linear = true;
    gbuf2a_1_0_854_params.head1_p2p = false;
    gbuf2a_1_0_854_params.head_1_depth = 2;
    gbuf2a_1_0_854_params.layout = ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->result_layout().at_address(0);
    gbuf2a_1_0_854_params.num_iterations = 100;
    gbuf2a_1_0_854_ = create_node<GBuffer>("gbuf2a_1_0_854", partition_1_0_, plasma_, gbuf2a_1_0_854_params);
    gbuf2a_1_0_854_->set_tile_id(-1);
    gbuf2a_1_0_854_->set_die_id(-1);
    gbuf2a_1_0_854_->set_mac_id("default_854");
    gbuf2a_1_0_854_->set_mac_latency(-1.000000e+00);
    gbuf2a_1_0_854_->set_metapipe_iterations({100});
    gbuf2a_1_0_854_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    
    Transpose::Params transpose_1_0_912_params;
    transpose_1_0_912_params.depth = 1;
    transpose_1_0_912_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_912_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_912_ = create_node<Transpose>("transpose_1_0_912", partition_1_0_, plasma_, transpose_1_0_912_params);
    transpose_1_0_912_->set_tile_id(-1);
    transpose_1_0_912_->set_die_id(-1);
    transpose_1_0_912_->set_mac_id("default_912");
    transpose_1_0_912_->set_mac_latency(-1.000000e+00);
    transpose_1_0_912_->set_metapipe_iterations({1});
    transpose_1_0_912_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_690_params;
    reshape_1_0_690_params.input_layout = transpose_1_0_912_->result_layout().at_address(0);
    reshape_1_0_690_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_690_params.reshape = {1, 64, 64};
    reshape_1_0_690_ = create_node<ReshapeView>("reshape_1_0_690", partition_1_0_, plasma_, reshape_1_0_690_params);
    reshape_1_0_690_->set_tile_id(-1);
    reshape_1_0_690_->set_die_id(-1);
    reshape_1_0_690_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_690_->set_mac_latency(1.759000e+03);
    reshape_1_0_690_->set_metapipe_iterations({1});
    reshape_1_0_690_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_913_params;
    transpose_1_0_913_params.depth = 1;
    transpose_1_0_913_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_1_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_913_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_913_ = create_node<Transpose>("transpose_1_0_913", partition_1_0_, plasma_, transpose_1_0_913_params);
    transpose_1_0_913_->set_tile_id(-1);
    transpose_1_0_913_->set_die_id(-1);
    transpose_1_0_913_->set_mac_id("default_913");
    transpose_1_0_913_->set_mac_latency(-1.000000e+00);
    transpose_1_0_913_->set_metapipe_iterations({1});
    transpose_1_0_913_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_691_params;
    reshape_1_0_691_params.input_layout = transpose_1_0_913_->result_layout().at_address(0);
    reshape_1_0_691_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_691_params.reshape = {1, 64, 64};
    reshape_1_0_691_ = create_node<ReshapeView>("reshape_1_0_691", partition_1_0_, plasma_, reshape_1_0_691_params);
    reshape_1_0_691_->set_tile_id(-1);
    reshape_1_0_691_->set_die_id(-1);
    reshape_1_0_691_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_691_->set_mac_latency(1.759000e+03);
    reshape_1_0_691_->set_metapipe_iterations({1});
    reshape_1_0_691_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_914_params;
    transpose_1_0_914_params.depth = 1;
    transpose_1_0_914_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_2_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_914_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_914_ = create_node<Transpose>("transpose_1_0_914", partition_1_0_, plasma_, transpose_1_0_914_params);
    transpose_1_0_914_->set_tile_id(-1);
    transpose_1_0_914_->set_die_id(-1);
    transpose_1_0_914_->set_mac_id("default_914");
    transpose_1_0_914_->set_mac_latency(-1.000000e+00);
    transpose_1_0_914_->set_metapipe_iterations({1});
    transpose_1_0_914_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_692_params;
    reshape_1_0_692_params.input_layout = transpose_1_0_914_->result_layout().at_address(0);
    reshape_1_0_692_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_692_params.reshape = {1, 64, 64};
    reshape_1_0_692_ = create_node<ReshapeView>("reshape_1_0_692", partition_1_0_, plasma_, reshape_1_0_692_params);
    reshape_1_0_692_->set_tile_id(-1);
    reshape_1_0_692_->set_die_id(-1);
    reshape_1_0_692_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_692_->set_mac_latency(1.759000e+03);
    reshape_1_0_692_->set_metapipe_iterations({1});
    reshape_1_0_692_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_915_params;
    transpose_1_0_915_params.depth = 1;
    transpose_1_0_915_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_3_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_915_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_915_ = create_node<Transpose>("transpose_1_0_915", partition_1_0_, plasma_, transpose_1_0_915_params);
    transpose_1_0_915_->set_tile_id(-1);
    transpose_1_0_915_->set_die_id(-1);
    transpose_1_0_915_->set_mac_id("default_915");
    transpose_1_0_915_->set_mac_latency(-1.000000e+00);
    transpose_1_0_915_->set_metapipe_iterations({1});
    transpose_1_0_915_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_693_params;
    reshape_1_0_693_params.input_layout = transpose_1_0_915_->result_layout().at_address(0);
    reshape_1_0_693_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_693_params.reshape = {1, 64, 64};
    reshape_1_0_693_ = create_node<ReshapeView>("reshape_1_0_693", partition_1_0_, plasma_, reshape_1_0_693_params);
    reshape_1_0_693_->set_tile_id(-1);
    reshape_1_0_693_->set_die_id(-1);
    reshape_1_0_693_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_693_->set_mac_latency(1.759000e+03);
    reshape_1_0_693_->set_metapipe_iterations({1});
    reshape_1_0_693_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_872_params;
    gbuf1a_1_0_872_params.head1_linear = false;
    gbuf1a_1_0_872_params.head1_p2p = false;
    gbuf1a_1_0_872_params.head_1_depth = 1;
    gbuf1a_1_0_872_params.layout = reshape_1_0_690_->result_layout();
    gbuf1a_1_0_872_params.num_iterations = 1;
    gbuf1a_1_0_872_ = create_node<GBuffer>("gbuf1a_1_0_872", partition_1_0_, plasma_, gbuf1a_1_0_872_params);
    gbuf1a_1_0_872_->set_tile_id(-1);
    gbuf1a_1_0_872_->set_die_id(-1);
    gbuf1a_1_0_872_->set_mac_id("default_872");
    gbuf1a_1_0_872_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_872_->set_metapipe_iterations({1});
    gbuf1a_1_0_872_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_873_params;
    gbuf1a_1_0_873_params.head1_linear = false;
    gbuf1a_1_0_873_params.head1_p2p = false;
    gbuf1a_1_0_873_params.head_1_depth = 1;
    gbuf1a_1_0_873_params.layout = reshape_1_0_691_->result_layout();
    gbuf1a_1_0_873_params.num_iterations = 1;
    gbuf1a_1_0_873_ = create_node<GBuffer>("gbuf1a_1_0_873", partition_1_0_, plasma_, gbuf1a_1_0_873_params);
    gbuf1a_1_0_873_->set_tile_id(-1);
    gbuf1a_1_0_873_->set_die_id(-1);
    gbuf1a_1_0_873_->set_mac_id("default_873");
    gbuf1a_1_0_873_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_873_->set_metapipe_iterations({1});
    gbuf1a_1_0_873_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_874_params;
    gbuf1a_1_0_874_params.head1_linear = false;
    gbuf1a_1_0_874_params.head1_p2p = false;
    gbuf1a_1_0_874_params.head_1_depth = 1;
    gbuf1a_1_0_874_params.layout = reshape_1_0_692_->result_layout();
    gbuf1a_1_0_874_params.num_iterations = 1;
    gbuf1a_1_0_874_ = create_node<GBuffer>("gbuf1a_1_0_874", partition_1_0_, plasma_, gbuf1a_1_0_874_params);
    gbuf1a_1_0_874_->set_tile_id(-1);
    gbuf1a_1_0_874_->set_die_id(-1);
    gbuf1a_1_0_874_->set_mac_id("default_874");
    gbuf1a_1_0_874_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_874_->set_metapipe_iterations({1});
    gbuf1a_1_0_874_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_875_params;
    gbuf1a_1_0_875_params.head1_linear = false;
    gbuf1a_1_0_875_params.head1_p2p = false;
    gbuf1a_1_0_875_params.head_1_depth = 1;
    gbuf1a_1_0_875_params.layout = reshape_1_0_693_->result_layout();
    gbuf1a_1_0_875_params.num_iterations = 1;
    gbuf1a_1_0_875_ = create_node<GBuffer>("gbuf1a_1_0_875", partition_1_0_, plasma_, gbuf1a_1_0_875_params);
    gbuf1a_1_0_875_->set_tile_id(-1);
    gbuf1a_1_0_875_->set_die_id(-1);
    gbuf1a_1_0_875_->set_mac_id("default_875");
    gbuf1a_1_0_875_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_875_->set_metapipe_iterations({1});
    gbuf1a_1_0_875_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_916_params;
    transpose_1_0_916_params.depth = 1;
    transpose_1_0_916_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_4_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_916_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_916_ = create_node<Transpose>("transpose_1_0_916", partition_1_0_, plasma_, transpose_1_0_916_params);
    transpose_1_0_916_->set_tile_id(-1);
    transpose_1_0_916_->set_die_id(-1);
    transpose_1_0_916_->set_mac_id("default_916");
    transpose_1_0_916_->set_mac_latency(-1.000000e+00);
    transpose_1_0_916_->set_metapipe_iterations({1});
    transpose_1_0_916_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_694_params;
    reshape_1_0_694_params.input_layout = transpose_1_0_916_->result_layout().at_address(0);
    reshape_1_0_694_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_694_params.reshape = {1, 64, 136};
    reshape_1_0_694_ = create_node<ReshapeView>("reshape_1_0_694", partition_1_0_, plasma_, reshape_1_0_694_params);
    reshape_1_0_694_->set_tile_id(-1);
    reshape_1_0_694_->set_die_id(-1);
    reshape_1_0_694_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_694_->set_mac_latency(1.759000e+03);
    reshape_1_0_694_->set_metapipe_iterations({1});
    reshape_1_0_694_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_917_params;
    transpose_1_0_917_params.depth = 1;
    transpose_1_0_917_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_5_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_917_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_917_ = create_node<Transpose>("transpose_1_0_917", partition_1_0_, plasma_, transpose_1_0_917_params);
    transpose_1_0_917_->set_tile_id(-1);
    transpose_1_0_917_->set_die_id(-1);
    transpose_1_0_917_->set_mac_id("default_917");
    transpose_1_0_917_->set_mac_latency(-1.000000e+00);
    transpose_1_0_917_->set_metapipe_iterations({1});
    transpose_1_0_917_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_695_params;
    reshape_1_0_695_params.input_layout = transpose_1_0_917_->result_layout().at_address(0);
    reshape_1_0_695_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_695_params.reshape = {1, 64, 136};
    reshape_1_0_695_ = create_node<ReshapeView>("reshape_1_0_695", partition_1_0_, plasma_, reshape_1_0_695_params);
    reshape_1_0_695_->set_tile_id(-1);
    reshape_1_0_695_->set_die_id(-1);
    reshape_1_0_695_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_695_->set_mac_latency(1.759000e+03);
    reshape_1_0_695_->set_metapipe_iterations({1});
    reshape_1_0_695_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_918_params;
    transpose_1_0_918_params.depth = 1;
    transpose_1_0_918_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_6_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_918_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_918_ = create_node<Transpose>("transpose_1_0_918", partition_1_0_, plasma_, transpose_1_0_918_params);
    transpose_1_0_918_->set_tile_id(-1);
    transpose_1_0_918_->set_die_id(-1);
    transpose_1_0_918_->set_mac_id("default_918");
    transpose_1_0_918_->set_mac_latency(-1.000000e+00);
    transpose_1_0_918_->set_metapipe_iterations({1});
    transpose_1_0_918_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_696_params;
    reshape_1_0_696_params.input_layout = transpose_1_0_918_->result_layout().at_address(0);
    reshape_1_0_696_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_696_params.reshape = {1, 64, 136};
    reshape_1_0_696_ = create_node<ReshapeView>("reshape_1_0_696", partition_1_0_, plasma_, reshape_1_0_696_params);
    reshape_1_0_696_->set_tile_id(-1);
    reshape_1_0_696_->set_die_id(-1);
    reshape_1_0_696_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_696_->set_mac_latency(1.759000e+03);
    reshape_1_0_696_->set_metapipe_iterations({1});
    reshape_1_0_696_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_919_params;
    transpose_1_0_919_params.depth = 1;
    transpose_1_0_919_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_7_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_919_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_919_ = create_node<Transpose>("transpose_1_0_919", partition_1_0_, plasma_, transpose_1_0_919_params);
    transpose_1_0_919_->set_tile_id(-1);
    transpose_1_0_919_->set_die_id(-1);
    transpose_1_0_919_->set_mac_id("default_919");
    transpose_1_0_919_->set_mac_latency(-1.000000e+00);
    transpose_1_0_919_->set_metapipe_iterations({1});
    transpose_1_0_919_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_697_params;
    reshape_1_0_697_params.input_layout = transpose_1_0_919_->result_layout().at_address(0);
    reshape_1_0_697_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 136}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_697_params.reshape = {1, 64, 136};
    reshape_1_0_697_ = create_node<ReshapeView>("reshape_1_0_697", partition_1_0_, plasma_, reshape_1_0_697_params);
    reshape_1_0_697_->set_tile_id(-1);
    reshape_1_0_697_->set_die_id(-1);
    reshape_1_0_697_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_697_->set_mac_latency(1.759000e+03);
    reshape_1_0_697_->set_metapipe_iterations({1});
    reshape_1_0_697_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_876_params;
    gbuf1a_1_0_876_params.head1_linear = false;
    gbuf1a_1_0_876_params.head1_p2p = false;
    gbuf1a_1_0_876_params.head_1_depth = 1;
    gbuf1a_1_0_876_params.layout = reshape_1_0_694_->result_layout();
    gbuf1a_1_0_876_params.num_iterations = 1;
    gbuf1a_1_0_876_ = create_node<GBuffer>("gbuf1a_1_0_876", partition_1_0_, plasma_, gbuf1a_1_0_876_params);
    gbuf1a_1_0_876_->set_tile_id(-1);
    gbuf1a_1_0_876_->set_die_id(-1);
    gbuf1a_1_0_876_->set_mac_id("default_876");
    gbuf1a_1_0_876_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_876_->set_metapipe_iterations({1});
    gbuf1a_1_0_876_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_877_params;
    gbuf1a_1_0_877_params.head1_linear = false;
    gbuf1a_1_0_877_params.head1_p2p = false;
    gbuf1a_1_0_877_params.head_1_depth = 1;
    gbuf1a_1_0_877_params.layout = reshape_1_0_695_->result_layout();
    gbuf1a_1_0_877_params.num_iterations = 1;
    gbuf1a_1_0_877_ = create_node<GBuffer>("gbuf1a_1_0_877", partition_1_0_, plasma_, gbuf1a_1_0_877_params);
    gbuf1a_1_0_877_->set_tile_id(-1);
    gbuf1a_1_0_877_->set_die_id(-1);
    gbuf1a_1_0_877_->set_mac_id("default_877");
    gbuf1a_1_0_877_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_877_->set_metapipe_iterations({1});
    gbuf1a_1_0_877_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_878_params;
    gbuf1a_1_0_878_params.head1_linear = false;
    gbuf1a_1_0_878_params.head1_p2p = false;
    gbuf1a_1_0_878_params.head_1_depth = 1;
    gbuf1a_1_0_878_params.layout = reshape_1_0_696_->result_layout();
    gbuf1a_1_0_878_params.num_iterations = 1;
    gbuf1a_1_0_878_ = create_node<GBuffer>("gbuf1a_1_0_878", partition_1_0_, plasma_, gbuf1a_1_0_878_params);
    gbuf1a_1_0_878_->set_tile_id(-1);
    gbuf1a_1_0_878_->set_die_id(-1);
    gbuf1a_1_0_878_->set_mac_id("default_878");
    gbuf1a_1_0_878_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_878_->set_metapipe_iterations({1});
    gbuf1a_1_0_878_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_879_params;
    gbuf1a_1_0_879_params.head1_linear = false;
    gbuf1a_1_0_879_params.head1_p2p = false;
    gbuf1a_1_0_879_params.head_1_depth = 1;
    gbuf1a_1_0_879_params.layout = reshape_1_0_697_->result_layout();
    gbuf1a_1_0_879_params.num_iterations = 1;
    gbuf1a_1_0_879_ = create_node<GBuffer>("gbuf1a_1_0_879", partition_1_0_, plasma_, gbuf1a_1_0_879_params);
    gbuf1a_1_0_879_->set_tile_id(-1);
    gbuf1a_1_0_879_->set_die_id(-1);
    gbuf1a_1_0_879_->set_mac_id("default_879");
    gbuf1a_1_0_879_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_879_->set_metapipe_iterations({1});
    gbuf1a_1_0_879_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_924_params;
    transpose_1_0_924_params.depth = 1;
    transpose_1_0_924_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_12_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_924_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_924_ = create_node<Transpose>("transpose_1_0_924", partition_1_0_, plasma_, transpose_1_0_924_params);
    transpose_1_0_924_->set_tile_id(-1);
    transpose_1_0_924_->set_die_id(-1);
    transpose_1_0_924_->set_mac_id("default_924");
    transpose_1_0_924_->set_mac_latency(-1.000000e+00);
    transpose_1_0_924_->set_metapipe_iterations({1});
    transpose_1_0_924_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_698_params;
    reshape_1_0_698_params.input_layout = transpose_1_0_924_->result_layout().at_address(0);
    reshape_1_0_698_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_698_params.reshape = {1, 64, 1};
    reshape_1_0_698_ = create_node<ReshapeView>("reshape_1_0_698", partition_1_0_, plasma_, reshape_1_0_698_params);
    reshape_1_0_698_->set_tile_id(-1);
    reshape_1_0_698_->set_die_id(-1);
    reshape_1_0_698_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_698_->set_mac_latency(1.759000e+03);
    reshape_1_0_698_->set_metapipe_iterations({1});
    reshape_1_0_698_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_925_params;
    transpose_1_0_925_params.depth = 1;
    transpose_1_0_925_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_13_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_925_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_925_ = create_node<Transpose>("transpose_1_0_925", partition_1_0_, plasma_, transpose_1_0_925_params);
    transpose_1_0_925_->set_tile_id(-1);
    transpose_1_0_925_->set_die_id(-1);
    transpose_1_0_925_->set_mac_id("default_925");
    transpose_1_0_925_->set_mac_latency(-1.000000e+00);
    transpose_1_0_925_->set_metapipe_iterations({1});
    transpose_1_0_925_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_699_params;
    reshape_1_0_699_params.input_layout = transpose_1_0_925_->result_layout().at_address(0);
    reshape_1_0_699_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_699_params.reshape = {1, 64, 1};
    reshape_1_0_699_ = create_node<ReshapeView>("reshape_1_0_699", partition_1_0_, plasma_, reshape_1_0_699_params);
    reshape_1_0_699_->set_tile_id(-1);
    reshape_1_0_699_->set_die_id(-1);
    reshape_1_0_699_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_699_->set_mac_latency(1.759000e+03);
    reshape_1_0_699_->set_metapipe_iterations({1});
    reshape_1_0_699_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_926_params;
    transpose_1_0_926_params.depth = 1;
    transpose_1_0_926_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_14_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_926_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_926_ = create_node<Transpose>("transpose_1_0_926", partition_1_0_, plasma_, transpose_1_0_926_params);
    transpose_1_0_926_->set_tile_id(-1);
    transpose_1_0_926_->set_die_id(-1);
    transpose_1_0_926_->set_mac_id("default_926");
    transpose_1_0_926_->set_mac_latency(-1.000000e+00);
    transpose_1_0_926_->set_metapipe_iterations({1});
    transpose_1_0_926_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_700_params;
    reshape_1_0_700_params.input_layout = transpose_1_0_926_->result_layout().at_address(0);
    reshape_1_0_700_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_700_params.reshape = {1, 64, 1};
    reshape_1_0_700_ = create_node<ReshapeView>("reshape_1_0_700", partition_1_0_, plasma_, reshape_1_0_700_params);
    reshape_1_0_700_->set_tile_id(-1);
    reshape_1_0_700_->set_die_id(-1);
    reshape_1_0_700_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_700_->set_mac_latency(1.759000e+03);
    reshape_1_0_700_->set_metapipe_iterations({1});
    reshape_1_0_700_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_927_params;
    transpose_1_0_927_params.depth = 1;
    transpose_1_0_927_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_15_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_927_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_927_ = create_node<Transpose>("transpose_1_0_927", partition_1_0_, plasma_, transpose_1_0_927_params);
    transpose_1_0_927_->set_tile_id(-1);
    transpose_1_0_927_->set_die_id(-1);
    transpose_1_0_927_->set_mac_id("default_927");
    transpose_1_0_927_->set_mac_latency(-1.000000e+00);
    transpose_1_0_927_->set_metapipe_iterations({1});
    transpose_1_0_927_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_701_params;
    reshape_1_0_701_params.input_layout = transpose_1_0_927_->result_layout().at_address(0);
    reshape_1_0_701_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_701_params.reshape = {1, 64, 1};
    reshape_1_0_701_ = create_node<ReshapeView>("reshape_1_0_701", partition_1_0_, plasma_, reshape_1_0_701_params);
    reshape_1_0_701_->set_tile_id(-1);
    reshape_1_0_701_->set_die_id(-1);
    reshape_1_0_701_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_701_->set_mac_latency(1.759000e+03);
    reshape_1_0_701_->set_metapipe_iterations({1});
    reshape_1_0_701_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_880_params;
    gbuf1a_1_0_880_params.head1_linear = false;
    gbuf1a_1_0_880_params.head1_p2p = false;
    gbuf1a_1_0_880_params.head_1_depth = 1;
    gbuf1a_1_0_880_params.layout = reshape_1_0_698_->result_layout();
    gbuf1a_1_0_880_params.num_iterations = 1;
    gbuf1a_1_0_880_ = create_node<GBuffer>("gbuf1a_1_0_880", partition_1_0_, plasma_, gbuf1a_1_0_880_params);
    gbuf1a_1_0_880_->set_tile_id(-1);
    gbuf1a_1_0_880_->set_die_id(-1);
    gbuf1a_1_0_880_->set_mac_id("default_880");
    gbuf1a_1_0_880_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_880_->set_metapipe_iterations({1});
    gbuf1a_1_0_880_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_881_params;
    gbuf1a_1_0_881_params.head1_linear = false;
    gbuf1a_1_0_881_params.head1_p2p = false;
    gbuf1a_1_0_881_params.head_1_depth = 1;
    gbuf1a_1_0_881_params.layout = reshape_1_0_699_->result_layout();
    gbuf1a_1_0_881_params.num_iterations = 1;
    gbuf1a_1_0_881_ = create_node<GBuffer>("gbuf1a_1_0_881", partition_1_0_, plasma_, gbuf1a_1_0_881_params);
    gbuf1a_1_0_881_->set_tile_id(-1);
    gbuf1a_1_0_881_->set_die_id(-1);
    gbuf1a_1_0_881_->set_mac_id("default_881");
    gbuf1a_1_0_881_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_881_->set_metapipe_iterations({1});
    gbuf1a_1_0_881_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_882_params;
    gbuf1a_1_0_882_params.head1_linear = false;
    gbuf1a_1_0_882_params.head1_p2p = false;
    gbuf1a_1_0_882_params.head_1_depth = 1;
    gbuf1a_1_0_882_params.layout = reshape_1_0_700_->result_layout();
    gbuf1a_1_0_882_params.num_iterations = 1;
    gbuf1a_1_0_882_ = create_node<GBuffer>("gbuf1a_1_0_882", partition_1_0_, plasma_, gbuf1a_1_0_882_params);
    gbuf1a_1_0_882_->set_tile_id(-1);
    gbuf1a_1_0_882_->set_die_id(-1);
    gbuf1a_1_0_882_->set_mac_id("default_882");
    gbuf1a_1_0_882_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_882_->set_metapipe_iterations({1});
    gbuf1a_1_0_882_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_883_params;
    gbuf1a_1_0_883_params.head1_linear = false;
    gbuf1a_1_0_883_params.head1_p2p = false;
    gbuf1a_1_0_883_params.head_1_depth = 1;
    gbuf1a_1_0_883_params.layout = reshape_1_0_701_->result_layout();
    gbuf1a_1_0_883_params.num_iterations = 1;
    gbuf1a_1_0_883_ = create_node<GBuffer>("gbuf1a_1_0_883", partition_1_0_, plasma_, gbuf1a_1_0_883_params);
    gbuf1a_1_0_883_->set_tile_id(-1);
    gbuf1a_1_0_883_->set_die_id(-1);
    gbuf1a_1_0_883_->set_mac_id("default_883");
    gbuf1a_1_0_883_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_883_->set_metapipe_iterations({1});
    gbuf1a_1_0_883_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_920_params;
    transpose_1_0_920_params.depth = 1;
    transpose_1_0_920_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_8_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_920_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_920_ = create_node<Transpose>("transpose_1_0_920", partition_1_0_, plasma_, transpose_1_0_920_params);
    transpose_1_0_920_->set_tile_id(-1);
    transpose_1_0_920_->set_die_id(-1);
    transpose_1_0_920_->set_mac_id("default_920");
    transpose_1_0_920_->set_mac_latency(-1.000000e+00);
    transpose_1_0_920_->set_metapipe_iterations({1});
    transpose_1_0_920_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_702_params;
    reshape_1_0_702_params.input_layout = transpose_1_0_920_->result_layout().at_address(0);
    reshape_1_0_702_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_702_params.reshape = {1, 64, 1};
    reshape_1_0_702_ = create_node<ReshapeView>("reshape_1_0_702", partition_1_0_, plasma_, reshape_1_0_702_params);
    reshape_1_0_702_->set_tile_id(-1);
    reshape_1_0_702_->set_die_id(-1);
    reshape_1_0_702_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_702_->set_mac_latency(1.759000e+03);
    reshape_1_0_702_->set_metapipe_iterations({1});
    reshape_1_0_702_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_921_params;
    transpose_1_0_921_params.depth = 1;
    transpose_1_0_921_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_9_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_921_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_921_ = create_node<Transpose>("transpose_1_0_921", partition_1_0_, plasma_, transpose_1_0_921_params);
    transpose_1_0_921_->set_tile_id(-1);
    transpose_1_0_921_->set_die_id(-1);
    transpose_1_0_921_->set_mac_id("default_921");
    transpose_1_0_921_->set_mac_latency(-1.000000e+00);
    transpose_1_0_921_->set_metapipe_iterations({1});
    transpose_1_0_921_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_703_params;
    reshape_1_0_703_params.input_layout = transpose_1_0_921_->result_layout().at_address(0);
    reshape_1_0_703_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_703_params.reshape = {1, 64, 1};
    reshape_1_0_703_ = create_node<ReshapeView>("reshape_1_0_703", partition_1_0_, plasma_, reshape_1_0_703_params);
    reshape_1_0_703_->set_tile_id(-1);
    reshape_1_0_703_->set_die_id(-1);
    reshape_1_0_703_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_703_->set_mac_latency(1.759000e+03);
    reshape_1_0_703_->set_metapipe_iterations({1});
    reshape_1_0_703_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_922_params;
    transpose_1_0_922_params.depth = 1;
    transpose_1_0_922_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_10_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_922_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_922_ = create_node<Transpose>("transpose_1_0_922", partition_1_0_, plasma_, transpose_1_0_922_params);
    transpose_1_0_922_->set_tile_id(-1);
    transpose_1_0_922_->set_die_id(-1);
    transpose_1_0_922_->set_mac_id("default_922");
    transpose_1_0_922_->set_mac_latency(-1.000000e+00);
    transpose_1_0_922_->set_metapipe_iterations({1});
    transpose_1_0_922_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_704_params;
    reshape_1_0_704_params.input_layout = transpose_1_0_922_->result_layout().at_address(0);
    reshape_1_0_704_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_704_params.reshape = {1, 64, 1};
    reshape_1_0_704_ = create_node<ReshapeView>("reshape_1_0_704", partition_1_0_, plasma_, reshape_1_0_704_params);
    reshape_1_0_704_->set_tile_id(-1);
    reshape_1_0_704_->set_die_id(-1);
    reshape_1_0_704_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_704_->set_mac_latency(1.759000e+03);
    reshape_1_0_704_->set_metapipe_iterations({1});
    reshape_1_0_704_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    Transpose::Params transpose_1_0_923_params;
    transpose_1_0_923_params.depth = 1;
    transpose_1_0_923_params.layout = ptconvlstm__lstm_layer__lstm_bwd_accum_11_->result_layout(ParAccum::kOut).at_address(0);
    transpose_1_0_923_params.transpose_type = Transpose::kPhysical;
    transpose_1_0_923_ = create_node<Transpose>("transpose_1_0_923", partition_1_0_, plasma_, transpose_1_0_923_params);
    transpose_1_0_923_->set_tile_id(-1);
    transpose_1_0_923_->set_die_id(-1);
    transpose_1_0_923_->set_mac_id("default_923");
    transpose_1_0_923_->set_mac_latency(-1.000000e+00);
    transpose_1_0_923_->set_metapipe_iterations({1});
    transpose_1_0_923_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    ReshapeView::Params reshape_1_0_705_params;
    reshape_1_0_705_params.input_layout = transpose_1_0_923_->result_layout().at_address(0);
    reshape_1_0_705_params.output_layout = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64, 1}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 2, 1}, 2).vector_align();
    reshape_1_0_705_params.reshape = {1, 64, 1};
    reshape_1_0_705_ = create_node<ReshapeView>("reshape_1_0_705", partition_1_0_, plasma_, reshape_1_0_705_params);
    reshape_1_0_705_->set_tile_id(-1);
    reshape_1_0_705_->set_die_id(-1);
    reshape_1_0_705_->set_mac_id("ptconvlstm__lstm_layer__lstm_bwd");
    reshape_1_0_705_->set_mac_latency(1.759000e+03);
    reshape_1_0_705_->set_metapipe_iterations({1});
    reshape_1_0_705_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_884_params;
    gbuf1a_1_0_884_params.head1_linear = false;
    gbuf1a_1_0_884_params.head1_p2p = false;
    gbuf1a_1_0_884_params.head_1_depth = 1;
    gbuf1a_1_0_884_params.layout = reshape_1_0_702_->result_layout();
    gbuf1a_1_0_884_params.num_iterations = 1;
    gbuf1a_1_0_884_ = create_node<GBuffer>("gbuf1a_1_0_884", partition_1_0_, plasma_, gbuf1a_1_0_884_params);
    gbuf1a_1_0_884_->set_tile_id(-1);
    gbuf1a_1_0_884_->set_die_id(-1);
    gbuf1a_1_0_884_->set_mac_id("default_884");
    gbuf1a_1_0_884_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_884_->set_metapipe_iterations({1});
    gbuf1a_1_0_884_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_885_params;
    gbuf1a_1_0_885_params.head1_linear = false;
    gbuf1a_1_0_885_params.head1_p2p = false;
    gbuf1a_1_0_885_params.head_1_depth = 1;
    gbuf1a_1_0_885_params.layout = reshape_1_0_703_->result_layout();
    gbuf1a_1_0_885_params.num_iterations = 1;
    gbuf1a_1_0_885_ = create_node<GBuffer>("gbuf1a_1_0_885", partition_1_0_, plasma_, gbuf1a_1_0_885_params);
    gbuf1a_1_0_885_->set_tile_id(-1);
    gbuf1a_1_0_885_->set_die_id(-1);
    gbuf1a_1_0_885_->set_mac_id("default_885");
    gbuf1a_1_0_885_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_885_->set_metapipe_iterations({1});
    gbuf1a_1_0_885_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_886_params;
    gbuf1a_1_0_886_params.head1_linear = false;
    gbuf1a_1_0_886_params.head1_p2p = false;
    gbuf1a_1_0_886_params.head_1_depth = 1;
    gbuf1a_1_0_886_params.layout = reshape_1_0_704_->result_layout();
    gbuf1a_1_0_886_params.num_iterations = 1;
    gbuf1a_1_0_886_ = create_node<GBuffer>("gbuf1a_1_0_886", partition_1_0_, plasma_, gbuf1a_1_0_886_params);
    gbuf1a_1_0_886_->set_tile_id(-1);
    gbuf1a_1_0_886_->set_die_id(-1);
    gbuf1a_1_0_886_->set_mac_id("default_886");
    gbuf1a_1_0_886_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_886_->set_metapipe_iterations({1});
    gbuf1a_1_0_886_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_1_0_887_params;
    gbuf1a_1_0_887_params.head1_linear = false;
    gbuf1a_1_0_887_params.head1_p2p = false;
    gbuf1a_1_0_887_params.head_1_depth = 1;
    gbuf1a_1_0_887_params.layout = reshape_1_0_705_->result_layout();
    gbuf1a_1_0_887_params.num_iterations = 1;
    gbuf1a_1_0_887_ = create_node<GBuffer>("gbuf1a_1_0_887", partition_1_0_, plasma_, gbuf1a_1_0_887_params);
    gbuf1a_1_0_887_->set_tile_id(-1);
    gbuf1a_1_0_887_->set_die_id(-1);
    gbuf1a_1_0_887_->set_mac_id("default_887");
    gbuf1a_1_0_887_->set_mac_latency(-1.000000e+00);
    gbuf1a_1_0_887_->set_metapipe_iterations({1});
    gbuf1a_1_0_887_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section2() {
    bool layouts_match = true;
    /** Section 2, Chip 0 **/
    partition_2_0_ = create_node<PartitionNode>("partition_2_0_", this, plasma_, 2, 0);
    mlir::rail::RAIL::rail->create_section(partition_2_0_);
    
    partition_2_0_->set_section_latency(6.451473e-05);
    OptimizerSGD::Params ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvlstm__dense_layer__weight__grad_2_0_262;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvlstm__dense_layer__weight_2_0_261;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.mixp = true;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_params);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_tile_id(-1);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_die_id(-1);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt");
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.box_layout = true;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.decay = 3.000000e-04;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_dw = params_.ptconvlstm__dense_layer__bias__grad_2_0_268;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_mw = params_.ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.layout_w = params_.ptconvlstm__dense_layer__bias_2_0_267;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.lr = 1.500000e-03;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.mixp = true;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.momentum = 0.000000e+00;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params.w_output_interface = false;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_ = create_node<OptimizerSGD>("ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt", partition_2_0_, plasma_, ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_params);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_tile_id(-1);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_die_id(-1);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_id("ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt");
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_metapipe_iterations({1});
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_2_0_939_params;
    gbuf1a_2_0_939_params.enable_fronting_pmu = true;
    gbuf1a_2_0_939_params.head1_linear = false;
    gbuf1a_2_0_939_params.head1_p2p = false;
    gbuf1a_2_0_939_params.head_1_depth = 1;
    gbuf1a_2_0_939_params.head_1_transposed = true;
    gbuf1a_2_0_939_params.layout = params_.ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274.at_address(0);
    gbuf1a_2_0_939_params.loaded_by_broadcast = false;
    gbuf1a_2_0_939_params.num_iterations = 1;
    gbuf1a_2_0_939_params.write_vector_transposed = true;
    gbuf1a_2_0_939_ = create_node<GBuffer>("gbuf1a_2_0_939", partition_2_0_, plasma_, gbuf1a_2_0_939_params);
    gbuf1a_2_0_939_->set_tile_id(-1);
    gbuf1a_2_0_939_->set_die_id(-1);
    gbuf1a_2_0_939_->set_mac_id("default_939");
    gbuf1a_2_0_939_->set_mac_latency(-1.000000e+00);
    gbuf1a_2_0_939_->set_metapipe_iterations({1});
    gbuf1a_2_0_939_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.box_layout = true;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.decay = 3.000000e-04;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_dw = gbuf1a_2_0_939_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_mw = params_.ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_w = params_.ptconvlstm__lstm_layer__weight_ih_l0_2_0_273;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.lr = 1.500000e-03;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.mixp = true;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.momentum = 0.000000e+00;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.w_output_interface = false;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt", partition_2_0_, plasma_, ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params);
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_tile_id(-1);
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_die_id(-1);
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_id("ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt");
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_2_0_940_params;
    gbuf1a_2_0_940_params.enable_fronting_pmu = true;
    gbuf1a_2_0_940_params.head1_linear = false;
    gbuf1a_2_0_940_params.head1_p2p = false;
    gbuf1a_2_0_940_params.head_1_depth = 1;
    gbuf1a_2_0_940_params.head_1_transposed = true;
    gbuf1a_2_0_940_params.layout = params_.ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280.at_address(0);
    gbuf1a_2_0_940_params.loaded_by_broadcast = false;
    gbuf1a_2_0_940_params.num_iterations = 1;
    gbuf1a_2_0_940_params.write_vector_transposed = true;
    gbuf1a_2_0_940_ = create_node<GBuffer>("gbuf1a_2_0_940", partition_2_0_, plasma_, gbuf1a_2_0_940_params);
    gbuf1a_2_0_940_->set_tile_id(-1);
    gbuf1a_2_0_940_->set_die_id(-1);
    gbuf1a_2_0_940_->set_mac_id("default_940");
    gbuf1a_2_0_940_->set_mac_latency(-1.000000e+00);
    gbuf1a_2_0_940_->set_metapipe_iterations({1});
    gbuf1a_2_0_940_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.box_layout = true;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.decay = 3.000000e-04;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_dw = gbuf1a_2_0_940_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_mw = params_.ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_w = params_.ptconvlstm__lstm_layer__weight_hh_l0_2_0_279;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.lr = 1.500000e-03;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.mixp = true;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.momentum = 0.000000e+00;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.w_output_interface = false;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt", partition_2_0_, plasma_, ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params);
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_tile_id(-1);
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_die_id(-1);
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_id("ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt");
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_2_0_941_params;
    gbuf1a_2_0_941_params.enable_fronting_pmu = true;
    gbuf1a_2_0_941_params.head1_linear = false;
    gbuf1a_2_0_941_params.head1_p2p = false;
    gbuf1a_2_0_941_params.head_1_depth = 1;
    gbuf1a_2_0_941_params.head_1_transposed = true;
    gbuf1a_2_0_941_params.layout = params_.ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286.at_address(0);
    gbuf1a_2_0_941_params.loaded_by_broadcast = false;
    gbuf1a_2_0_941_params.num_iterations = 1;
    gbuf1a_2_0_941_params.write_vector_transposed = true;
    gbuf1a_2_0_941_ = create_node<GBuffer>("gbuf1a_2_0_941", partition_2_0_, plasma_, gbuf1a_2_0_941_params);
    gbuf1a_2_0_941_->set_tile_id(-1);
    gbuf1a_2_0_941_->set_die_id(-1);
    gbuf1a_2_0_941_->set_mac_id("default_941");
    gbuf1a_2_0_941_->set_mac_latency(-1.000000e+00);
    gbuf1a_2_0_941_->set_metapipe_iterations({1});
    gbuf1a_2_0_941_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.box_layout = true;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.decay = 3.000000e-04;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_dw = gbuf1a_2_0_941_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_mw = params_.ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_w = params_.ptconvlstm__lstm_layer__bias_ih_l0_2_0_285;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.lr = 1.500000e-03;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.mixp = true;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.momentum = 0.000000e+00;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.w_output_interface = false;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt", partition_2_0_, plasma_, ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params);
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_tile_id(-1);
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_die_id(-1);
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_id("ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt");
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    GBuffer::Params gbuf1a_2_0_942_params;
    gbuf1a_2_0_942_params.enable_fronting_pmu = true;
    gbuf1a_2_0_942_params.head1_linear = false;
    gbuf1a_2_0_942_params.head1_p2p = false;
    gbuf1a_2_0_942_params.head_1_depth = 1;
    gbuf1a_2_0_942_params.head_1_transposed = true;
    gbuf1a_2_0_942_params.layout = params_.ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292.at_address(0);
    gbuf1a_2_0_942_params.loaded_by_broadcast = false;
    gbuf1a_2_0_942_params.num_iterations = 1;
    gbuf1a_2_0_942_params.write_vector_transposed = true;
    gbuf1a_2_0_942_ = create_node<GBuffer>("gbuf1a_2_0_942", partition_2_0_, plasma_, gbuf1a_2_0_942_params);
    gbuf1a_2_0_942_->set_tile_id(-1);
    gbuf1a_2_0_942_->set_die_id(-1);
    gbuf1a_2_0_942_->set_mac_id("default_942");
    gbuf1a_2_0_942_->set_mac_latency(-1.000000e+00);
    gbuf1a_2_0_942_->set_metapipe_iterations({1});
    gbuf1a_2_0_942_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    OptimizerSGD::Params ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.box_layout = true;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.decay = 3.000000e-04;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_dw = gbuf1a_2_0_942_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0);
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_mw = params_.ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.layout_w = params_.ptconvlstm__lstm_layer__bias_hh_l0_2_0_291;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.lr = 1.500000e-03;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.mixp = true;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.momentum = 0.000000e+00;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params.w_output_interface = false;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_ = create_node<OptimizerSGD>("ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt", partition_2_0_, plasma_, ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_params);
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_tile_id(-1);
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_die_id(-1);
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_id("ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt");
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_mac_latency(-1.000000e+00);
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iterations({1});
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}

void LogregTorchSamba::construct_section3() {
    bool layouts_match = true;
    /** Section 3, Chip 0 **/
    partition_3_0_ = create_node<PartitionNode>("partition_3_0_", this, plasma_, 3, 0);
    mlir::rail::RAIL::rail->create_section(partition_3_0_);
    
    partition_3_0_->set_section_latency(-1.000000e+00);
    GBuffer::Params gbuf2a_3_0_992_params;
    gbuf2a_3_0_992_params.enable_fronting_pmu = true;
    gbuf2a_3_0_992_params.head1_ctrl_flow_enable = true;
    gbuf2a_3_0_992_params.head1_linear = true;
    gbuf2a_3_0_992_params.head1_p2p = false;
    gbuf2a_3_0_992_params.head1_streaming_window = true;
    gbuf2a_3_0_992_params.head_1_depth = 2;
    gbuf2a_3_0_992_params.layout = params_.accum_dummy_0_3_0_811.at_address(0);
    gbuf2a_3_0_992_params.loaded_by_broadcast = false;
    gbuf2a_3_0_992_params.num_head1_rd_en = 2;
    gbuf2a_3_0_992_params.num_iterations = 2;
    gbuf2a_3_0_992_ = create_node<GBuffer>("gbuf2a_3_0_992", partition_3_0_, plasma_, gbuf2a_3_0_992_params);
    gbuf2a_3_0_992_->set_tile_id(-1);
    gbuf2a_3_0_992_->set_die_id(-1);
    gbuf2a_3_0_992_->set_mac_id("default_992");
    gbuf2a_3_0_992_->set_mac_latency(-1.000000e+00);
    gbuf2a_3_0_992_->set_metapipe_iterations({2});
    gbuf2a_3_0_992_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    GBuffer::Params gbuf2a_3_0_993_params;
    gbuf2a_3_0_993_params.enable_fronting_pmu = true;
    gbuf2a_3_0_993_params.head1_ctrl_flow_enable = true;
    gbuf2a_3_0_993_params.head1_linear = true;
    gbuf2a_3_0_993_params.head1_p2p = false;
    gbuf2a_3_0_993_params.head1_streaming_window = true;
    gbuf2a_3_0_993_params.head_1_depth = 2;
    gbuf2a_3_0_993_params.layout = params_.accum_dummy_0_reduce_buf_3_0_812.at_address(0);
    gbuf2a_3_0_993_params.loaded_by_broadcast = false;
    gbuf2a_3_0_993_params.num_head1_rd_en = 2;
    gbuf2a_3_0_993_params.num_iterations = 2;
    gbuf2a_3_0_993_ = create_node<GBuffer>("gbuf2a_3_0_993", partition_3_0_, plasma_, gbuf2a_3_0_993_params);
    gbuf2a_3_0_993_->set_tile_id(-1);
    gbuf2a_3_0_993_->set_die_id(-1);
    gbuf2a_3_0_993_->set_mac_id("default_993");
    gbuf2a_3_0_993_->set_mac_latency(-1.000000e+00);
    gbuf2a_3_0_993_->set_metapipe_iterations({2});
    gbuf2a_3_0_993_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    BinaryOps::Params add_3_0_813_params;
    add_3_0_813_params.layout_a = gbuf2a_3_0_992_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    add_3_0_813_params.layout_b = gbuf2a_3_0_993_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0);
    add_3_0_813_params.op = node_constants::TemplateOpcodes::kAdd;
    add_3_0_813_params.streaming_a = true;
    add_3_0_813_params.streaming_b = true;
    add_3_0_813_ = create_node<BinaryOps>("add_3_0_813", partition_3_0_, plasma_, add_3_0_813_params);
    add_3_0_813_->set_tile_id(-1);
    add_3_0_813_->set_die_id(-1);
    add_3_0_813_->set_mac_id("default_813");
    add_3_0_813_->set_mac_latency(-1.000000e+00);
    add_3_0_813_->set_metapipe_iterations({2});
    add_3_0_813_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    Scale::Params scale_3_0_814_params;
    scale_3_0_814_params.argin_value = 1.000000e+00;
    scale_3_0_814_params.batch_size = 2;
    scale_3_0_814_params.conditional_scaling = false;
    scale_3_0_814_params.layout_a = add_3_0_813_->result_layout().at_address(0);
    scale_3_0_814_params.using_input_b = false;
    scale_3_0_814_ = create_node<Scale>("scale_3_0_814", partition_3_0_, plasma_, scale_3_0_814_params);
    scale_3_0_814_->set_tile_id(-1);
    scale_3_0_814_->set_die_id(-1);
    scale_3_0_814_->set_mac_id("default_814");
    scale_3_0_814_->set_mac_latency(-1.000000e+00);
    scale_3_0_814_->set_metapipe_iterations({2});
    scale_3_0_814_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    GBuffer::Params gbuf2a_3_0_888_params;
    gbuf2a_3_0_888_params.head1_linear = false;
    gbuf2a_3_0_888_params.head1_p2p = false;
    gbuf2a_3_0_888_params.head_1_depth = 2;
    gbuf2a_3_0_888_params.layout = scale_3_0_814_->result_layout().at_address(0);
    gbuf2a_3_0_888_params.num_iterations = 2;
    gbuf2a_3_0_888_ = create_node<GBuffer>("gbuf2a_3_0_888", partition_3_0_, plasma_, gbuf2a_3_0_888_params);
    gbuf2a_3_0_888_->set_tile_id(-1);
    gbuf2a_3_0_888_->set_die_id(-1);
    gbuf2a_3_0_888_->set_mac_id("default_888");
    gbuf2a_3_0_888_->set_mac_latency(-1.000000e+00);
    gbuf2a_3_0_888_->set_metapipe_iterations({2});
    gbuf2a_3_0_888_->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")});
    
    SN_ASSERT(layouts_match, "Prism layouts differed from those expected by Arc. See log for details.");
}


void LogregTorchSamba::configure_section0() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_890_wr_params = {};
    gbuf1a_0_0_890_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_890_->configure_wr(gbuf1a_0_0_890_wr_params);
    PmuSetupRead gbuf1a_0_0_890_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_890_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of gbuf1a_0_0_825");
    gbuf1a_0_0_890_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_890_->configure_rd_head_1(gbuf1a_0_0_890_rd1_params0, {1});
    gbuf1a_0_0_890_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_825_wr_params = {};
    gbuf1a_0_0_825_wr_params.vectors_in_column = ceiling(gbuf1a_0_0_890_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(2), gbuf1a_0_0_890_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).vector_elements());
    gbuf1a_0_0_825_wr_params.interleave = true;
    gbuf1a_0_0_825_wr_params.interleave_size = gbuf1a_0_0_890_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(1);
    gbuf1a_0_0_825_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_825_->configure_wr(gbuf1a_0_0_825_wr_params);
    PmuSetupRead gbuf1a_0_0_825_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_825_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_hidden_r");
    gbuf1a_0_0_825_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_825_->configure_rd_head_1(gbuf1a_0_0_825_rd1_params0, {1});
    gbuf1a_0_0_825_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_hidden_r_->set_op_name("tlir.Reshape");
    ptconvlstm__lstm_layer__lstm_hidden_r_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_827_wr_params = {};
    gbuf1a_0_0_827_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_827_->configure_wr(gbuf1a_0_0_827_wr_params);
    PmuSetupRead gbuf1a_0_0_827_rd1_params0 = {};
    SN_ASSERT(gbuf1a_0_0_827_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_cell_r");
    gbuf1a_0_0_827_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_827_->configure_rd_head_1(gbuf1a_0_0_827_rd1_params0, {1});
    gbuf1a_0_0_827_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ptconvlstm__lstm_layer__lstm_cell_r_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_cell_r_->set_op_name("tlir.Reshape");
    ptconvlstm__lstm_layer__lstm_cell_r_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_cell_r_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_cell_r_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf4a_0_0_828_wr_params = {};
    gbuf4a_0_0_828_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4a_0_0_828_->configure_wr(gbuf4a_0_0_828_wr_params);
    PmuSetupRead gbuf4a_0_0_828_rd1_params1 = ptconvlstm__lstm_layer__lstm_linear_w_0_->input_read_params(GemmSubnet::kFwdPropB);
    gbuf4a_0_0_828_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4a_0_0_828_->configure_rd_head_1(gbuf4a_0_0_828_rd1_params1, {1, tbuf2u_0_0_334_->param().buffer_depth, 2, 2, 2, 2});
    gbuf4a_0_0_828_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_w_0_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_w_0_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_947_wr_params = ptconvlstm__lstm_layer__lstm_linear_w_0_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_947_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_w_0");
    gbuf1a_0_0_947_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_947_->configure_wr(gbuf1a_0_0_947_wr_params);
    PmuSetupRead gbuf1a_0_0_947_rd1_params1 = ptconvlstm__lstm_layer__lstm_add_0_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_947_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_add_0");
    gbuf1a_0_0_947_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_947_->configure_rd_head_1(gbuf1a_0_0_947_rd1_params1, {1});
    gbuf1a_0_0_947_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_v_0_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_v_0_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_946_wr_params = ptconvlstm__lstm_layer__lstm_linear_v_0_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_946_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_v_0");
    gbuf1a_0_0_946_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_946_->configure_wr(gbuf1a_0_0_946_wr_params);
    PmuSetupRead gbuf1a_0_0_946_rd1_params0 = ptconvlstm__lstm_layer__lstm_add_0_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_946_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_add_0");
    gbuf1a_0_0_946_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_946_->configure_rd_head_1(gbuf1a_0_0_946_rd1_params0, {1});
    gbuf1a_0_0_946_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_add_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_add_0_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_add_0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_w_1_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_w_1_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_949_wr_params = ptconvlstm__lstm_layer__lstm_linear_w_1_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_949_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_w_1");
    gbuf1a_0_0_949_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_949_->configure_wr(gbuf1a_0_0_949_wr_params);
    PmuSetupRead gbuf1a_0_0_949_rd1_params1 = ptconvlstm__lstm_layer__lstm_add_1_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_949_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_add_1");
    gbuf1a_0_0_949_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_949_->configure_rd_head_1(gbuf1a_0_0_949_rd1_params1, {1});
    gbuf1a_0_0_949_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_v_1_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_v_1_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_948_wr_params = ptconvlstm__lstm_layer__lstm_linear_v_1_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_948_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_v_1");
    gbuf1a_0_0_948_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_948_->configure_wr(gbuf1a_0_0_948_wr_params);
    PmuSetupRead gbuf1a_0_0_948_rd1_params0 = ptconvlstm__lstm_layer__lstm_add_1_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_948_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_add_1");
    gbuf1a_0_0_948_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_948_->configure_rd_head_1(gbuf1a_0_0_948_rd1_params0, {1});
    gbuf1a_0_0_948_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_add_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_add_1_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_add_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_w_2_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_w_2_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_951_wr_params = ptconvlstm__lstm_layer__lstm_linear_w_2_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_951_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_w_2");
    gbuf1a_0_0_951_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_951_->configure_wr(gbuf1a_0_0_951_wr_params);
    PmuSetupRead gbuf1a_0_0_951_rd1_params1 = ptconvlstm__lstm_layer__lstm_add_2_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_951_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_add_2");
    gbuf1a_0_0_951_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_951_->configure_rd_head_1(gbuf1a_0_0_951_rd1_params1, {1});
    gbuf1a_0_0_951_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_v_2_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_v_2_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_950_wr_params = ptconvlstm__lstm_layer__lstm_linear_v_2_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_950_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_v_2");
    gbuf1a_0_0_950_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_950_->configure_wr(gbuf1a_0_0_950_wr_params);
    PmuSetupRead gbuf1a_0_0_950_rd1_params0 = ptconvlstm__lstm_layer__lstm_add_2_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_950_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_add_2");
    gbuf1a_0_0_950_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_950_->configure_rd_head_1(gbuf1a_0_0_950_rd1_params0, {1});
    gbuf1a_0_0_950_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_add_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_add_2_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_add_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_w_3_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_w_3_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_953_wr_params = ptconvlstm__lstm_layer__lstm_linear_w_3_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_953_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_w_3");
    gbuf1a_0_0_953_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_953_->configure_wr(gbuf1a_0_0_953_wr_params);
    PmuSetupRead gbuf1a_0_0_953_rd1_params1 = ptconvlstm__lstm_layer__lstm_add_3_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_953_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_add_3");
    gbuf1a_0_0_953_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_953_->configure_rd_head_1(gbuf1a_0_0_953_rd1_params1, {1});
    gbuf1a_0_0_953_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_linear_v_3_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_linear_v_3_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_952_wr_params = ptconvlstm__lstm_layer__lstm_linear_v_3_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_0_0_952_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_linear_v_3");
    gbuf1a_0_0_952_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_952_->configure_wr(gbuf1a_0_0_952_wr_params);
    PmuSetupRead gbuf1a_0_0_952_rd1_params0 = ptconvlstm__lstm_layer__lstm_add_3_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_952_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_add_3");
    gbuf1a_0_0_952_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_952_->configure_rd_head_1(gbuf1a_0_0_952_rd1_params0, {1});
    gbuf1a_0_0_952_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_add_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_add_3_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_add_3_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    ptconvlstm__lstm_layer__lstm_i_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_i_t_->set_op_name("tlir.Sigmoid");
    ptconvlstm__lstm_layer__lstm_i_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_955_wr_params = ptconvlstm__lstm_layer__lstm_i_t_->write_params();
    SN_ASSERT(gbuf1a_0_0_955_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_i_t");
    gbuf1a_0_0_955_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_955_->configure_wr(gbuf1a_0_0_955_wr_params);
    PmuSetupRead gbuf1a_0_0_955_rd1_params0 = ptconvlstm__lstm_layer__lstm_mul1_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_955_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_mul1");
    gbuf1a_0_0_955_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_955_->configure_rd_head_1(gbuf1a_0_0_955_rd1_params0, {1});
    gbuf1a_0_0_955_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    ptconvlstm__lstm_layer__lstm_f_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_f_t_->set_op_name("tlir.Sigmoid");
    ptconvlstm__lstm_layer__lstm_f_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_954_wr_params = ptconvlstm__lstm_layer__lstm_f_t_->write_params();
    SN_ASSERT(gbuf1a_0_0_954_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_f_t");
    gbuf1a_0_0_954_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_954_->configure_wr(gbuf1a_0_0_954_wr_params);
    PmuSetupRead gbuf1a_0_0_954_rd1_params0 = ptconvlstm__lstm_layer__lstm_mul0_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_954_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_mul0");
    gbuf1a_0_0_954_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_954_->configure_rd_head_1(gbuf1a_0_0_954_rd1_params0, {1});
    gbuf1a_0_0_954_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    ptconvlstm__lstm_layer__lstm_g_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_g_t_->set_op_name("tlir.Tanh");
    ptconvlstm__lstm_layer__lstm_g_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_956_wr_params = ptconvlstm__lstm_layer__lstm_g_t_->write_params();
    SN_ASSERT(gbuf1a_0_0_956_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_g_t");
    gbuf1a_0_0_956_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_956_->configure_wr(gbuf1a_0_0_956_wr_params);
    PmuSetupRead gbuf1a_0_0_956_rd1_params1 = ptconvlstm__lstm_layer__lstm_mul1_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_956_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_mul1");
    gbuf1a_0_0_956_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_956_->configure_rd_head_1(gbuf1a_0_0_956_rd1_params1, {1});
    gbuf1a_0_0_956_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    ptconvlstm__lstm_layer__lstm_o_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_o_t_->set_op_name("tlir.Sigmoid");
    ptconvlstm__lstm_layer__lstm_o_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_959_wr_params = ptconvlstm__lstm_layer__lstm_o_t_->write_params();
    SN_ASSERT(gbuf1a_0_0_959_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_o_t");
    gbuf1a_0_0_959_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_959_->configure_wr(gbuf1a_0_0_959_wr_params);
    PmuSetupRead gbuf1a_0_0_959_rd1_params0 = ptconvlstm__lstm_layer__lstm_hidden_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_959_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_hidden");
    gbuf1a_0_0_959_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_959_->configure_rd_head_1(gbuf1a_0_0_959_rd1_params0, {1});
    gbuf1a_0_0_959_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_829_wr_params = {};
    gbuf1a_0_0_829_wr_params.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_829_->configure_wr(gbuf1a_0_0_829_wr_params);
    PmuSetupRead gbuf1a_0_0_829_rd1_params1 = ptconvlstm__lstm_layer__lstm_mul0_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_829_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_mul0");
    gbuf1a_0_0_829_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_829_->configure_rd_head_1(gbuf1a_0_0_829_rd1_params1, {1});
    gbuf1a_0_0_829_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_mul0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_mul0_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_mul0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_957_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_957_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_mul0");
    gbuf1a_0_0_957_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_957_->configure_wr(gbuf1a_0_0_957_wr_params);
    PmuSetupRead gbuf1a_0_0_957_rd1_params0 = ptconvlstm__lstm_layer__lstm_cell_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_957_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_cell");
    gbuf1a_0_0_957_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_957_->configure_rd_head_1(gbuf1a_0_0_957_rd1_params0, {1});
    gbuf1a_0_0_957_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_mul1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_mul1_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_mul1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_958_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_958_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_mul1");
    gbuf1a_0_0_958_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_958_->configure_wr(gbuf1a_0_0_958_wr_params);
    PmuSetupRead gbuf1a_0_0_958_rd1_params1 = ptconvlstm__lstm_layer__lstm_cell_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_958_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_cell");
    gbuf1a_0_0_958_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_958_->configure_rd_head_1(gbuf1a_0_0_958_rd1_params1, {1});
    gbuf1a_0_0_958_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_cell_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_cell_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_cell_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_tanh_cell_->set_op_name("tlir.Tanh");
    ptconvlstm__lstm_layer__lstm_tanh_cell_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_960_wr_params = ptconvlstm__lstm_layer__lstm_tanh_cell_->write_params();
    SN_ASSERT(gbuf1a_0_0_960_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_tanh_cell");
    gbuf1a_0_0_960_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_960_->configure_wr(gbuf1a_0_0_960_wr_params);
    PmuSetupRead gbuf1a_0_0_960_rd1_params1 = ptconvlstm__lstm_layer__lstm_hidden_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_960_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_hidden");
    gbuf1a_0_0_960_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_0_0_960_->configure_rd_head_1(gbuf1a_0_0_960_rd1_params1, {1});
    gbuf1a_0_0_960_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_hidden_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_hidden_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_hidden_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.VectorTranspose
    vector_transpose_0_0_906_->set_source_context("rnn.py:692:0");
    vector_transpose_0_0_906_->set_op_name("tlir.VectorTranspose");
    vector_transpose_0_0_906_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_output_i_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_output_i_t_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    tbuf2u_0_0_334_->view<TBufferLayoutView>/*write_vt*/(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {60, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{0, 1}, 1).vector_align())->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf2u_0_0_334_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    tbuf2u_0_0_334_->add_context(ptconvlstm__indexselect_->get_tbuf_contexts(RAILIndex::IO::kLutRd));
    for (auto ctx_name : ptconvlstm__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd))
        tbuf2u_0_0_334_->ctx(ctx_name)->set_read_credits({1, tbuf2u_0_0_342_->param().buffer_depth},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_0_0_334_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    tbuf2u_0_0_334_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    rbuf1u_0_0_335_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, rbuf1u_0_0_335_, params_.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_dram_in));
;
    for (auto ctx : rbuf1u_0_0_335_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    rbuf1u_0_0_335_->view<TBufferRepeatView>(sn::Dimensions{{100}})->add_context(ptconvlstm__indexselect_->get_tbuf_contexts(RAILIndex::IO::kIndexRd));
    for (auto ctx_name : ptconvlstm__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd))
        rbuf1u_0_0_335_->ctx(ctx_name)->set_read_credits({1, tbuf2u_0_0_342_->param().buffer_depth},std::vector<int64_t>{});
    for (auto ctx : rbuf1u_0_0_335_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    rbuf1u_0_0_335_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf2u_0_0_342_->view<TBufferPermuteView>(std::vector<int64_t>{{1, 0}})->view<TBufferLayoutView>(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align())->add_context(ptconvlstm__indexselect_->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    for (auto ctx : tbuf2u_0_0_342_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    tbuf2u_0_0_342_->add_context(ptconvlstm__dense_layer__linear_->get_tbuf_contexts(GemmSubnet::kFwdPropB));
    for (auto ctx_name : ptconvlstm__dense_layer__linear_->get_read_enable_ctx_names(GemmSubnet::kFwdPropB))
        tbuf2u_0_0_342_->ctx(ctx_name)->set_read_credits({1, 2},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_0_0_342_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    tbuf2u_0_0_342_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvlstm__dense_layer__linear_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_344_wr_params = ptconvlstm__dense_layer__linear_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf2u_0_0_344_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear");
    gbuf2u_0_0_344_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_0_0_344_->configure_wr(gbuf2u_0_0_344_wr_params);
    PmuSetupRead gbuf2u_0_0_344_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_344_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_0_0_995");
    gbuf2u_0_0_344_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_0_0_344_->configure_rd_head_1(gbuf2u_0_0_344_rd1_params0, {2, 2});
    gbuf2u_0_0_344_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_0_0_995_->set_source_context("overrides.py:1355:0");
    layout_cast_0_0_995_->set_op_name("tlir.LayoutCast");
    layout_cast_0_0_995_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_output0_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_output0_->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_output0_->configure_node();
    
    // logreg_lstm.py:225:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_1001_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_1001_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0");
    gbuf2a_0_0_1001_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_1001_->configure_wr(gbuf2a_0_0_1001_wr_params);
    PmuSetupRead gbuf2a_0_0_1001_rd0_params0 = {};
    SN_ASSERT(gbuf2a_0_0_1001_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__view");
    gbuf2a_0_0_1001_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_1001_->configure_rd_head_0(gbuf2a_0_0_1001_rd0_params0, {2, 2});
    PmuSetupRead gbuf2a_0_0_1001_rd1_params1 = {};
    gbuf2a_0_0_1001_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_1001_->configure_rd_head_1(gbuf2a_0_0_1001_rd1_params1, {2, 2});
    gbuf2a_0_0_1001_->configure_node();
    
    // logreg_lstm.py:225:0: tlir.Reshape
    ptconvlstm__view_->set_source_context("logreg_lstm.py:225:0");
    ptconvlstm__view_->set_op_name("tlir.Reshape");
    ptconvlstm__view_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_837_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_837_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_output_i_t");
    gbuf2a_0_0_837_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_837_->configure_wr(gbuf2a_0_0_837_wr_params);
    PmuSetupRead gbuf2a_0_0_837_rd1_params1 = {};
    gbuf2a_0_0_837_rd1_params1.enable_backing_pmu_read = true;
    if (!gbuf2a_0_0_837_->is_one_pmu()){
        gbuf2a_0_0_837_->turn_off_store_tiler_opt();
    }
    if ((StoreTiler::optimize_gbuff_as_backing_pmu(gbuf2a_0_0_837_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0))) && (!gbuf2a_0_0_837_->connected_to_a_load()) && (gbuf2a_0_0_837_->store_tiler_opt_on())) {
        gbuf2a_0_0_837_rd1_params1.enable_backing_pmu_read = false;
        gbuf2a_0_0_837_rd1_params1.setup_read_done_by_dram_store = true;
    } else {
        gbuf2a_0_0_837_rd1_params1 = StoreTiler::read_params(gbuf2a_0_0_837_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0), false);
    }
    gbuf2a_0_0_837_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_837_->configure_rd_head_1(gbuf2a_0_0_837_rd1_params1);
    gbuf2a_0_0_837_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_831_wr_params = ptconvlstm__lstm_layer__lstm_i_t_->write_params();
    SN_ASSERT(gbuf2a_0_0_831_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_i_t");
    gbuf2a_0_0_831_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_831_->configure_wr(gbuf2a_0_0_831_wr_params);
    PmuSetupRead gbuf2a_0_0_831_rd1_params1 = {};
    gbuf2a_0_0_831_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_831_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_831_->configure_rd_head_1(gbuf2a_0_0_831_rd1_params1, {1});
    gbuf2a_0_0_831_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_832_wr_params = ptconvlstm__lstm_layer__lstm_f_t_->write_params();
    SN_ASSERT(gbuf2a_0_0_832_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_f_t");
    gbuf2a_0_0_832_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_832_->configure_wr(gbuf2a_0_0_832_wr_params);
    PmuSetupRead gbuf2a_0_0_832_rd1_params1 = {};
    gbuf2a_0_0_832_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_832_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_832_->configure_rd_head_1(gbuf2a_0_0_832_rd1_params1, {1});
    gbuf2a_0_0_832_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_833_wr_params = ptconvlstm__lstm_layer__lstm_g_t_->write_params();
    SN_ASSERT(gbuf2a_0_0_833_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_g_t");
    gbuf2a_0_0_833_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_833_->configure_wr(gbuf2a_0_0_833_wr_params);
    PmuSetupRead gbuf2a_0_0_833_rd1_params1 = {};
    gbuf2a_0_0_833_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_833_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_833_->configure_rd_head_1(gbuf2a_0_0_833_rd1_params1, {1});
    gbuf2a_0_0_833_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_834_wr_params = ptconvlstm__lstm_layer__lstm_o_t_->write_params();
    SN_ASSERT(gbuf2a_0_0_834_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_o_t");
    gbuf2a_0_0_834_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_834_->configure_wr(gbuf2a_0_0_834_wr_params);
    PmuSetupRead gbuf2a_0_0_834_rd1_params1 = {};
    gbuf2a_0_0_834_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_834_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_834_->configure_rd_head_1(gbuf2a_0_0_834_rd1_params1, {1});
    gbuf2a_0_0_834_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_830_wr_params = {};
    gbuf2a_0_0_830_wr_params.metapipe_iter_counts = sn::Dimensions{};
    gbuf2a_0_0_830_->configure_wr(gbuf2a_0_0_830_wr_params);
    PmuSetupRead gbuf2a_0_0_830_rd1_params1 = {};
    gbuf2a_0_0_830_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_830_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_830_->configure_rd_head_1(gbuf2a_0_0_830_rd1_params1, {1});
    gbuf2a_0_0_830_->configure_node();
    
    // logreg_lstm.py:225:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_838_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_838_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__view");
    gbuf2a_0_0_838_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_838_->configure_wr(gbuf2a_0_0_838_wr_params);
    PmuSetupRead gbuf2a_0_0_838_rd1_params1 = {};
    gbuf2a_0_0_838_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_0_0_838_rd1_params1.backing_pmu_removes_alignment = true;
    gbuf2a_0_0_838_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_838_->configure_rd_head_1(gbuf2a_0_0_838_rd1_params1, {1});
    gbuf2a_0_0_838_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_836_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_836_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_hidden");
    gbuf2a_0_0_836_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_836_->configure_wr(gbuf2a_0_0_836_wr_params);
    PmuSetupRead gbuf2a_0_0_836_rd1_params1 = {};
    gbuf2a_0_0_836_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_836_->configure_rd_head_1(gbuf2a_0_0_836_rd1_params1, {1});
    gbuf2a_0_0_836_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_835_wr_params = {};
    SN_ASSERT(gbuf2a_0_0_835_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_cell");
    gbuf2a_0_0_835_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_835_->configure_wr(gbuf2a_0_0_835_wr_params);
    PmuSetupRead gbuf2a_0_0_835_rd1_params1 = {};
    gbuf2a_0_0_835_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_835_->configure_rd_head_1(gbuf2a_0_0_835_rd1_params1, {1});
    gbuf2a_0_0_835_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_944_wr_params = {};
    gbuf2a_0_0_944_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_0_0_944_->configure_wr(gbuf2a_0_0_944_wr_params);
    PmuSetupRead gbuf2a_0_0_944_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_944_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of gbuf2a_0_0_994");
    gbuf2a_0_0_944_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_944_->configure_rd_head_1(gbuf2a_0_0_944_rd1_params0, {1});
    gbuf2a_0_0_944_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    permute_view_0_0_563_->set_source_context("rnn.py:692:0");
    permute_view_0_0_563_->set_op_name("tlir.PermuteView");
    permute_view_0_0_563_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_0_0_564_->set_source_context("rnn.py:692:0");
    reshape_0_0_564_->set_op_name("tlir.Reshape");
    reshape_0_0_564_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    permute_view_0_0_565_->set_source_context("rnn.py:692:0");
    permute_view_0_0_565_->set_op_name("tlir.PermuteView");
    permute_view_0_0_565_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_0_0_566_->set_source_context("rnn.py:692:0");
    reshape_0_0_566_->set_op_name("tlir.Reshape");
    reshape_0_0_566_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_839_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_839_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_0_0_564");
    gbuf1a_0_0_839_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_839_->configure_wr(gbuf1a_0_0_839_wr_params);
    PmuSetupRead gbuf1a_0_0_839_rd1_params1 = {};
    gbuf1a_0_0_839_rd1_params1.interleave = true;
    gbuf1a_0_0_839_rd1_params1.vectors_in_column = reshape_0_0_564_->result_layout().chunk_vectors();
    gbuf1a_0_0_839_rd1_params1.interleave_size = reshape_0_0_564_->result_layout().physical_shape()[1];
    gbuf1a_0_0_839_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_839_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_839_->configure_rd_head_1(gbuf1a_0_0_839_rd1_params1, {1});
    gbuf1a_0_0_839_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_840_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_840_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_0_0_566");
    gbuf1a_0_0_840_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_840_->configure_wr(gbuf1a_0_0_840_wr_params);
    PmuSetupRead gbuf1a_0_0_840_rd1_params1 = {};
    gbuf1a_0_0_840_rd1_params1.interleave = true;
    gbuf1a_0_0_840_rd1_params1.vectors_in_column = reshape_0_0_566_->result_layout().chunk_vectors();
    gbuf1a_0_0_840_rd1_params1.interleave_size = reshape_0_0_566_->result_layout().physical_shape()[1];
    gbuf1a_0_0_840_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_840_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_840_->configure_rd_head_1(gbuf1a_0_0_840_rd1_params1, {1});
    gbuf1a_0_0_840_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_826_wr_params = {};
    gbuf1a_0_0_826_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_826_->configure_wr(gbuf1a_0_0_826_wr_params);
    PmuSetupRead gbuf1a_0_0_826_rd1_params1 = {};
    gbuf1a_0_0_826_rd1_params1.enable_backing_pmu_read = true;
    if (!gbuf1a_0_0_826_->is_one_pmu()){
        gbuf1a_0_0_826_->turn_off_store_tiler_opt();
    }
    if ((StoreTiler::optimize_gbuff_as_backing_pmu(gbuf1a_0_0_826_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0))) && (!gbuf1a_0_0_826_->connected_to_a_load()) && (gbuf1a_0_0_826_->store_tiler_opt_on())) {
        gbuf1a_0_0_826_rd1_params1.enable_backing_pmu_read = false;
        gbuf1a_0_0_826_rd1_params1.setup_read_done_by_dram_store = true;
    } else {
        gbuf1a_0_0_826_rd1_params1 = StoreTiler::read_params(gbuf1a_0_0_826_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0), false);
    }
    gbuf1a_0_0_826_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_826_->configure_rd_head_1(gbuf1a_0_0_826_rd1_params1);
    gbuf1a_0_0_826_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_936_wr_params = {};
    gbuf2a_0_0_936_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(5)};
    gbuf2a_0_0_936_wr_params = LoadTiler::write_params(params_.out_window_0_0_483.at_address(0),gbuf2a_0_0_936_wr_params);
    if (LoadTiler::optimize_gbuff_as_fronting_pmu(params_.out_window_0_0_483.at_address(0), gbuf2a_0_0_936_->depth())){
        gbuf2a_0_0_936_wr_params.setup_write_done_by_dram_load = true;
        gbuf2a_0_0_936_->connect_to_load_tiler();
    }
    gbuf2a_0_0_936_->configure_wr(gbuf2a_0_0_936_wr_params);
    PmuSetupRead gbuf2a_0_0_936_rd1_params0 = streaming_transpose_0_0_909_->read_params(StreamingTranspose::kTailBuffer);
    gbuf2a_0_0_936_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(5)};
    gbuf2a_0_0_936_->configure_rd_head_1(gbuf2a_0_0_936_rd1_params0, {2, 2});
    gbuf2a_0_0_936_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.StreamingPermute
    streaming_transpose_0_0_909_->set_source_context("logreg_lstm.py:222:0");
    streaming_transpose_0_0_909_->set_op_name("tlir.StreamingPermute");
    streaming_transpose_0_0_909_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2u_0_0_363_wr_params = streaming_transpose_0_0_909_->write_params(StreamingTranspose::kHead1Buffer);
    gbuf2u_0_0_363_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(5)};
    gbuf2u_0_0_363_->configure_wr(gbuf2u_0_0_363_wr_params);
    PmuSetupRead gbuf2u_0_0_363_rd1_params0 = {};
    SN_ASSERT(gbuf2u_0_0_363_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__reshape_2");
    gbuf2u_0_0_363_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(5)};
    gbuf2u_0_0_363_->configure_rd_head_1(gbuf2u_0_0_363_rd1_params0, {2, 2});
    gbuf2u_0_0_363_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.Reshape
    ptconvlstm__reshape_2_->set_source_context("logreg_lstm.py:222:0");
    ptconvlstm__reshape_2_->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_2_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_945_wr_params = {};
    gbuf2a_0_0_945_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(5)};
    gbuf2a_0_0_945_->configure_wr(gbuf2a_0_0_945_wr_params);
    PmuSetupRead gbuf2a_0_0_945_rd1_params0 = {};
    SN_ASSERT(gbuf2a_0_0_945_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of gbuf1a_0_0_943");
    gbuf2a_0_0_945_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_945_->configure_rd_head_1(gbuf2a_0_0_945_rd1_params0, {1});
    gbuf2a_0_0_945_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2a_0_0_994_wr_params = {};
    gbuf2a_0_0_994_wr_params.is_transpose = true;
    gbuf2a_0_0_994_wr_params.vectors_in_column = ceiling(gbuf2a_0_0_944_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(1), gbuf2a_0_0_944_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).vector_elements());
    gbuf2a_0_0_994_wr_params.interleave = true;
    gbuf2a_0_0_994_wr_params.interleave_size = gbuf2a_0_0_944_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(0);
    gbuf2a_0_0_994_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_994_->configure_wr(gbuf2a_0_0_994_wr_params);
    PmuSetupRead gbuf2a_0_0_994_rd1_params0 = sub_0_0_568_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2a_0_0_994_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of sub_0_0_568");
    gbuf2a_0_0_994_rd1_params0.is_transpose = true;
    gbuf2a_0_0_994_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf2a_0_0_994_->configure_rd_head_1(gbuf2a_0_0_994_rd1_params0, {1});
    gbuf2a_0_0_994_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_943_wr_params = {};
    gbuf1a_0_0_943_wr_params.vectors_in_column = ceiling(gbuf2a_0_0_945_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(1), gbuf2a_0_0_945_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).vector_elements());
    gbuf1a_0_0_943_wr_params.interleave = true;
    gbuf1a_0_0_943_wr_params.interleave_size = gbuf2a_0_0_945_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(0);
    gbuf1a_0_0_943_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_943_->configure_wr(gbuf1a_0_0_943_wr_params);
    PmuSetupRead gbuf1a_0_0_943_rd1_params1 = sub_0_0_568_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_943_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of sub_0_0_568");
    gbuf1a_0_0_943_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_943_->configure_rd_head_1(gbuf1a_0_0_943_rd1_params1, {1});
    gbuf1a_0_0_943_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    sub_0_0_568_->set_source_context("overrides.py:1355:0");
    sub_0_0_568_->set_op_name("tlir.Sub");
    sub_0_0_568_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_1002_wr_params = {};
    SN_ASSERT(gbuf1a_0_0_1002_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of sub_0_0_568");
    gbuf1a_0_0_1002_wr_params.vectors_in_column = ceiling(sub_0_0_568_->result_layout().at_address(0).physical_shape().at(1), sub_0_0_568_->result_layout().at_address(0).vector_elements());
    gbuf1a_0_0_1002_wr_params.deinterleave = true;
    gbuf1a_0_0_1002_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_1002_->configure_wr(gbuf1a_0_0_1002_wr_params);
    PmuSetupRead gbuf1a_0_0_1002_rd0_params0 = mul_0_0_569_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_0_0_1002_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of mul_0_0_569");
    gbuf1a_0_0_1002_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_1002_->configure_rd_head_0(gbuf1a_0_0_1002_rd0_params0, {1});
    PmuSetupRead gbuf1a_0_0_1002_rd1_params1 = mul_0_0_569_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_0_0_1002_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of mul_0_0_569");
    gbuf1a_0_0_1002_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_1002_->configure_rd_head_1(gbuf1a_0_0_1002_rd1_params1, {1});
    gbuf1a_0_0_1002_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    mul_0_0_569_->set_source_context("overrides.py:1355:0");
    mul_0_0_569_->set_op_name("tlir.Mul");
    mul_0_0_569_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    mean_unalign_0_0_570_->set_source_context("overrides.py:1355:0");
    mean_unalign_0_0_570_->set_op_name("tlir.MeanAll");
    mean_unalign_0_0_570_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf1a_0_0_841_wr_params = mean_unalign_0_0_570_->write_params();
    SN_ASSERT(gbuf1a_0_0_841_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of mean_unalign_0_0_570");
    gbuf1a_0_0_841_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_0_0_841_->configure_wr(gbuf1a_0_0_841_wr_params);
    PmuSetupRead gbuf1a_0_0_841_rd1_params1 = {};
    gbuf1a_0_0_841_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_0_0_841_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_0_0_841_->configure_rd_head_1(gbuf1a_0_0_841_rd1_params1, {1});
    gbuf1a_0_0_841_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params_assign = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params_assign.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_hidden_r_t");
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params_assign.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params_assign, node_constants::Context::kOne);
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_hidden_r_t");
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd0_params0 = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_0_0_563");
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->configure_rd_head_0(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd0_params0, {1});
    PmuSetupRead ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd1_params1 = ptconvlstm__lstm_layer__lstm_linear_v_0_->input_read_params(GemmSubnet::kFwdPropB);
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_rd1_params1, {1, tbuf2u_0_0_334_->param().buffer_depth, 2, 2, 2, 2});
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params_assign = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params_assign.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_cell_r_t");
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params_assign.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params_assign, node_constants::Context::kOne);
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_cell_r_t");
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd0_params0 = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of permute_view_0_0_565");
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->configure_rd_head_0(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd0_params0, {1});
    PmuSetupRead ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd1_params0 = {};
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_rd1_params0, {1, tbuf2u_0_0_334_->param().buffer_depth, 2, 2, 2});
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Index
    ptconvlstm__indexselect_->set_source_context("logreg_lstm.py:218:0");
    ptconvlstm__indexselect_->set_op_name("tlir.Index");
    ptconvlstm__indexselect_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.TemporalConcatBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.VectorTranspose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Index
    std::unordered_map<int64_t, std::vector<RAILConnectInterface>>ptconvlstm__indexselect_rail_connect_interface_map = {};
    ptconvlstm__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kLutRd, std::vector<RAILConnectInterface> {tbuf2u_0_0_334_->get_rail_connect_interface(ptconvlstm__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kLutRd),TBufferContext::Output::kDataOutput)}));
    ptconvlstm__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kIndexRd, std::vector<RAILConnectInterface> {rbuf1u_0_0_335_->get_rail_connect_interface(ptconvlstm__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kIndexRd),TBufferContext::Output::kDataOutput)}));
    if (ptconvlstm__indexselect_rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvlstm__indexselect_rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_0_0_342_->get_rail_connect_interface(ptconvlstm__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvlstm__indexselect_rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_0_0_342_->get_rail_connect_interface(ptconvlstm__indexselect_->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    ptconvlstm__indexselect_->rail_custom_connect(ptconvlstm__indexselect_rail_connect_interface_map);
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // logreg_lstm.py:225:0: tlir.Buffer
    // logreg_lstm.py:225:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.TemporalConcat
    // logreg_lstm.py:225:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.mutable.TemporalConcatBuffer
    // logreg_lstm.py:222:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.StreamingPermute
    // logreg_lstm.py:222:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.Reshape
    // logreg_lstm.py:222:0: tlir.mutate.TemporalConcat
    // logreg_lstm.py:222:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    TBuffer::tconnect_m_to_n(tbuf2u_0_0_334_, tbuf2u_0_0_342_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_0_0_334_->ctrl_input_ops(ptconvlstm__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2u_0_0_334_, tbuf2u_0_0_342_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_0_0_334_->ctrl_input_ops(ptconvlstm__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn1));
    TBuffer::tconnect_m_to_n(rbuf1u_0_0_335_, tbuf2u_0_0_342_->ctrl_output_ops(TBuffer::Output::kTailWrDone), rbuf1u_0_0_335_->ctrl_input_ops(ptconvlstm__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(rbuf1u_0_0_335_, tbuf2u_0_0_342_->ctrl_output_ops(TBuffer::Output::kTailRdDone), rbuf1u_0_0_335_->ctrl_input_ops(ptconvlstm__indexselect_->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd), TBufferContext::Input::kRdEn1));
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_0_0_)), "RAIL compilation failed for section 0!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_0_0_, 0)), "RAIL global compile failed for section 0!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_0_0_890_->finalize();
    gbuf1a_0_0_825_->finalize();
    ptconvlstm__lstm_layer__lstm_hidden_r_->finalize();
    ptconvlstm__lstm_layer__lstm_hidden_r_t_->finalize();
    gbuf1a_0_0_827_->finalize();
    ptconvlstm__lstm_layer__lstm_cell_r_->finalize();
    ptconvlstm__lstm_layer__lstm_cell_r_t_->finalize();
    ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->finalize();
    ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->finalize();
    gbuf4a_0_0_828_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_w_0_->finalize();
    gbuf1a_0_0_947_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_v_0_->finalize();
    gbuf1a_0_0_946_->finalize();
    ptconvlstm__lstm_layer__lstm_add_0_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_w_1_->finalize();
    gbuf1a_0_0_949_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_v_1_->finalize();
    gbuf1a_0_0_948_->finalize();
    ptconvlstm__lstm_layer__lstm_add_1_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_w_2_->finalize();
    gbuf1a_0_0_951_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_v_2_->finalize();
    gbuf1a_0_0_950_->finalize();
    ptconvlstm__lstm_layer__lstm_add_2_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_w_3_->finalize();
    gbuf1a_0_0_953_->finalize();
    ptconvlstm__lstm_layer__lstm_linear_v_3_->finalize();
    gbuf1a_0_0_952_->finalize();
    ptconvlstm__lstm_layer__lstm_add_3_->finalize();
    ptconvlstm__lstm_layer__lstm_i_t_->finalize();
    gbuf1a_0_0_955_->finalize();
    ptconvlstm__lstm_layer__lstm_f_t_->finalize();
    gbuf1a_0_0_954_->finalize();
    ptconvlstm__lstm_layer__lstm_g_t_->finalize();
    gbuf1a_0_0_956_->finalize();
    ptconvlstm__lstm_layer__lstm_o_t_->finalize();
    gbuf1a_0_0_959_->finalize();
    gbuf1a_0_0_829_->finalize();
    ptconvlstm__lstm_layer__lstm_mul0_->finalize();
    gbuf1a_0_0_957_->finalize();
    ptconvlstm__lstm_layer__lstm_mul1_->finalize();
    gbuf1a_0_0_958_->finalize();
    ptconvlstm__lstm_layer__lstm_cell_->finalize();
    ptconvlstm__lstm_layer__lstm_tanh_cell_->finalize();
    gbuf1a_0_0_960_->finalize();
    ptconvlstm__lstm_layer__lstm_hidden_->finalize();
    vector_transpose_0_0_906_->finalize();
    ptconvlstm__lstm_layer__lstm_output_i_t_->finalize();
    tbuf2u_0_0_334_->finalize();
    rbuf1u_0_0_335_->finalize();
    ptconvlstm__indexselect_->finalize();
    tbuf2u_0_0_342_->finalize();
    ptconvlstm__dense_layer__linear_->finalize();
    gbuf2u_0_0_344_->finalize();
    layout_cast_0_0_995_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_->finalize();
    gbuf2a_0_0_1001_->finalize();
    ptconvlstm__view_->finalize();
    gbuf2a_0_0_837_->finalize();
    gbuf2a_0_0_831_->finalize();
    gbuf2a_0_0_832_->finalize();
    gbuf2a_0_0_833_->finalize();
    gbuf2a_0_0_834_->finalize();
    gbuf2a_0_0_830_->finalize();
    gbuf2a_0_0_838_->finalize();
    gbuf2a_0_0_836_->finalize();
    gbuf2a_0_0_835_->finalize();
    gbuf2a_0_0_944_->finalize();
    permute_view_0_0_563_->finalize();
    reshape_0_0_564_->finalize();
    permute_view_0_0_565_->finalize();
    reshape_0_0_566_->finalize();
    gbuf1a_0_0_839_->finalize();
    gbuf1a_0_0_840_->finalize();
    gbuf1a_0_0_826_->finalize();
    gbuf2a_0_0_936_->finalize();
    streaming_transpose_0_0_909_->finalize();
    gbuf2u_0_0_363_->finalize();
    ptconvlstm__reshape_2_->finalize();
    gbuf2a_0_0_945_->finalize();
    gbuf2a_0_0_994_->finalize();
    gbuf1a_0_0_943_->finalize();
    sub_0_0_568_->finalize();
    gbuf1a_0_0_1002_->finalize();
    mul_0_0_569_->finalize();
    mean_unalign_0_0_570_->finalize();
    gbuf1a_0_0_841_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_890_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_0_0_825_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf1a_0_0_890_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_0_0_826_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf1a_0_0_825_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->get_connect_interface(LoopBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf1a_0_0_827_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->get_connect_interface(LoopBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.TemporalConcatBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_v_0_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_v_1_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_v_2_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_v_3_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), gbuf1a_0_0_829_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_830_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf4a_0_0_828_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_w_0_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(gbuf4a_0_0_828_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_w_1_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(gbuf4a_0_0_828_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_w_2_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(gbuf4a_0_0_828_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_linear_w_3_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_w_0_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_947_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_947_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_0_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_v_0_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_946_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_946_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_0_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_add_0_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_i_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_w_1_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_949_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_949_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_1_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_v_1_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_948_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_948_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_1_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_add_1_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_f_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_w_2_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_951_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_951_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_2_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_v_2_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_950_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_950_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_2_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_add_2_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_g_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_w_3_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_953_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_953_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_3_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_linear_v_3_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_0_0_952_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_952_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_add_3_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_add_3_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_o_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    connect_by_interface(ptconvlstm__lstm_layer__lstm_i_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_955_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_i_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf2a_0_0_831_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_955_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_mul1_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    connect_by_interface(ptconvlstm__lstm_layer__lstm_f_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_954_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_f_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf2a_0_0_832_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_954_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_mul0_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    connect_by_interface(ptconvlstm__lstm_layer__lstm_g_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_956_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_g_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf2a_0_0_833_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_956_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_mul1_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    connect_by_interface(ptconvlstm__lstm_layer__lstm_o_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_959_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_o_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf2a_0_0_834_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_959_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_hidden_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_829_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_mul0_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_mul0_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_0_0_957_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_957_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_cell_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_mul1_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_0_0_958_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_958_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_cell_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_cell_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_tanh_cell_->get_connect_interface(UnaryOps::kDefaultInput, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_cell_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_0_0_835_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    connect_by_interface(ptconvlstm__lstm_layer__lstm_tanh_cell_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_960_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_960_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_hidden_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_->get_connect_interface(BinaryOps::Output::kOut, false), vector_transpose_0_0_906_->get_connect_interface(VectorTranspose::kInput, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_0_0_836_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.VectorTranspose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(vector_transpose_0_0_906_->get_connect_interface(VectorTranspose::kOutput, false), tbuf2u_0_0_334_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    connect_by_interface(vector_transpose_0_0_906_->get_connect_interface(VectorTranspose::kOutput, false), gbuf2a_0_0_837_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Index
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(tbuf2u_0_0_342_->get_connect_interface(ptconvlstm__dense_layer__linear_->get_tbuf_ctx_names(GemmSubnet::kFwdPropB),TBufferContext::Output::kDataOutput, false), ptconvlstm__dense_layer__linear_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    connect_by_interface(ptconvlstm__dense_layer__linear_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf2u_0_0_344_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf2u_0_0_344_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_1001_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_lstm.py:225:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_1001_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(gbuf2a_0_0_944_->input_list(GBuffer::Input::kTailBuffer)));
    // logreg_lstm.py:225:0: tlir.Reshape
    connect_by_interface(gbuf2a_0_0_1001_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), gbuf2a_0_0_838_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.TemporalConcat
    // logreg_lstm.py:225:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    connect_m_to_n(gbuf2a_0_0_836_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->input_list(LoopBuffer::Input::kTailBuffer));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    connect_m_to_n(gbuf2a_0_0_835_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->input_list(LoopBuffer::Input::kTailBuffer));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_944_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_0_0_994_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead0Buffer, false), gbuf1a_0_0_839_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead0Buffer, false), gbuf1a_0_0_840_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // UnknownFileName:0:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.mutable.TemporalConcatBuffer
    // logreg_lstm.py:222:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_936_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), streaming_transpose_0_0_909_->get_connect_interface(StreamingTranspose::kTailBuffer, true));
    // logreg_lstm.py:222:0: tlir.StreamingPermute
    connect_by_interface(streaming_transpose_0_0_909_->get_connect_interface(StreamingTranspose::kHead1Buffer, false), gbuf2u_0_0_363_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_lstm.py:222:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.Reshape
    connect_by_interface(gbuf2u_0_0_363_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(gbuf2a_0_0_945_->input_list(GBuffer::Input::kTailBuffer)));
    // logreg_lstm.py:222:0: tlir.mutate.TemporalConcat
    // logreg_lstm.py:222:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_945_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_0_0_943_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2a_0_0_994_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_568_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_943_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), sub_0_0_568_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    connect_by_interface(sub_0_0_568_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_0_0_1002_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf1a_0_0_1002_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), mul_0_0_569_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_0_0_1002_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), mul_0_0_569_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    connect_by_interface(mul_0_0_569_->get_connect_interface(BinaryOps::Output::kOut, false), mean_unalign_0_0_570_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    connect_by_interface(mean_unalign_0_0_570_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_0_0_841_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    auto ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_output1_barrier0_wr = plasma_->create_barrier({tbuf2u_0_0_334_->ctrl_output(TBuffer::Output::kTailWrDone), gbuf2a_0_0_837_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_836_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_834_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_835_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_833_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_832_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_831_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_output1_barrier0_wr, ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(tbuf2u_0_0_334_->ctrl_output(TBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_837_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_0_0_836_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_0_0_834_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn4));
    auto ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_output1_barrier5 = plasma_->create_barrier({gbuf2a_0_0_835_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_833_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_832_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_831_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_output1_barrier5, ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn5));
    auto ptconvlstm__lstm_layer__lstm_cell_loop_buffer_output1_barrier0_wr = plasma_->create_barrier({tbuf2u_0_0_334_->ctrl_output(TBuffer::Output::kTailWrDone), gbuf2a_0_0_837_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_836_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_835_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_cell_loop_buffer_output1_barrier0_wr, ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(tbuf2u_0_0_334_->ctrl_output(TBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_837_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_0_0_836_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_0_0_835_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn4));
    gbuf4a_0_0_828_->set_arc_stage_buffer();
    auto gbuf4a_0_0_828_output1_barrier0_wr = plasma_->create_barrier({tbuf2u_0_0_334_->ctrl_output(TBuffer::Output::kTailWrDone), gbuf2a_0_0_837_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_836_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_835_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_831_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_832_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_833_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_834_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(gbuf4a_0_0_828_output1_barrier0_wr, gbuf4a_0_0_828_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(tbuf2u_0_0_334_->ctrl_output(TBuffer::Output::kTailRdDone), gbuf4a_0_0_828_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_837_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4a_0_0_828_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_0_0_836_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4a_0_0_828_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_0_0_835_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4a_0_0_828_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf4a_0_0_828_output1_barrier5 = plasma_->create_barrier({gbuf2a_0_0_831_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_832_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_833_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_834_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf4a_0_0_828_output1_barrier5, gbuf4a_0_0_828_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    tbuf2u_0_0_334_->set_arc_stage_buffer();
    rbuf1u_0_0_335_->set_arc_stage_buffer();
    tbuf2u_0_0_342_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_344_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_0_0_342_->ctrl_input_list(ptconvlstm__dense_layer__linear_->get_read_enable_ctx_names(GemmSubnet::kFwdPropB), TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_344_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_0_0_342_->ctrl_input_list(ptconvlstm__dense_layer__linear_->get_read_enable_ctx_names(GemmSubnet::kFwdPropB), TBufferContext::Input::kRdEn1));
    gbuf2u_0_0_344_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_1001_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_344_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_1001_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_344_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_0_0_1001_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_838_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_1001_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_838_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_1001_->ctrl_input_list(GBuffer::Input::kHead0RdEn1));
    connect_ctl_1_to_n(gbuf2a_0_0_944_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_1001_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_944_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_1001_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_0_0_837_->set_arc_stage_buffer();
    gbuf2a_0_0_831_->set_arc_stage_buffer();
    gbuf2a_0_0_832_->set_arc_stage_buffer();
    gbuf2a_0_0_833_->set_arc_stage_buffer();
    gbuf2a_0_0_834_->set_arc_stage_buffer();
    gbuf2a_0_0_830_->set_arc_stage_buffer();
    gbuf2a_0_0_838_->set_arc_stage_buffer();
    gbuf2a_0_0_836_->set_arc_stage_buffer();
    gbuf2a_0_0_835_->set_arc_stage_buffer();
    auto out_window_0_0_483_tile_wr_done_barrier = plasma_->create_barrier({gbuf2a_0_0_936_->ctrl_output(GBuffer::Output::kTailWrDone)});
    auto out_window_0_0_483_tile_rd_done_barrier = plasma_->create_barrier({gbuf2a_0_0_936_->ctrl_output(GBuffer::Output::kTailRdDone)});
    add_node_ctrl_output(kout_window_0_0_483CtrlWrDone, out_window_0_0_483_tile_wr_done_barrier);
    add_node_ctrl_output(kout_window_0_0_483CtrlRdDone, out_window_0_0_483_tile_rd_done_barrier);
    gbuf2a_0_0_936_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_0_0_363_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_0_0_936_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_0_0_363_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_0_0_936_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_0_0_363_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_0_0_945_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_0_0_363_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_0_0_945_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_0_0_363_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(klstm_operand_0_0_0_122, gbuf1a_0_0_890_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(klstm_operand_1_0_0_125, gbuf1a_0_0_827_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149, rbuf1u_0_0_335_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    // Input ptconvlstm__dense_layer__weight_0_0_153 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_0_0_154 uses a weight buffer
    add_node_input(kinp_window_0_0_482, gbuf4a_0_0_828_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__weight_ih_l0_0_0_519 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_0_0_520 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_0_0_521 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_0_0_522 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_0_0_523 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_0_0_524 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_0_0_525 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_0_0_526 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_0_0_527 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_0_0_528 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_0_0_529 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_0_0_530 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_0_0_531 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_0_0_532 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_0_0_533 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_0_0_534 uses a weight buffer
    add_node_input(kout_window_0_0_483, gbuf2a_0_0_936_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495, gbuf2a_0_0_837_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496, gbuf2a_0_0_831_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497, gbuf2a_0_0_832_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498, gbuf2a_0_0_833_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499, gbuf2a_0_0_834_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500, gbuf2a_0_0_830_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__view__outputs__0_0_0_501, gbuf2a_0_0_838_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm_tensor, gbuf1a_0_0_839_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm_tensor1, gbuf1a_0_0_840_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298, gbuf1a_0_0_826_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(k_tensor, gbuf1a_0_0_841_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_842_wr_params = {};
    gbuf1a_1_0_842_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_842_->configure_wr(gbuf1a_1_0_842_wr_params);
    PmuSetupRead gbuf1a_1_0_842_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_842_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__hidden_r");
    gbuf1a_1_0_842_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_842_->configure_rd_head_1(gbuf1a_1_0_842_rd1_params0, {1});
    gbuf1a_1_0_842_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->set_op_name("tlir.Reshape");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_843_wr_params = {};
    gbuf1a_1_0_843_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_843_->configure_wr(gbuf1a_1_0_843_wr_params);
    PmuSetupRead gbuf1a_1_0_843_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_843_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__cell_r");
    gbuf1a_1_0_843_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_843_->configure_rd_head_1(gbuf1a_1_0_843_rd1_params0, {1});
    gbuf1a_1_0_843_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->set_op_name("tlir.Reshape");
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_844_wr_params = {};
    gbuf1a_1_0_844_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_844_->configure_wr(gbuf1a_1_0_844_wr_params);
    PmuSetupRead gbuf1a_1_0_844_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_844_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r");
    gbuf1a_1_0_844_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_844_->configure_rd_head_1(gbuf1a_1_0_844_rd1_params0, {1});
    gbuf1a_1_0_844_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->set_op_name("tlir.Reshape");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->configure_node();
    
    // UnknownFileName:0:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_845_wr_params = {};
    gbuf1a_1_0_845_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_845_->configure_wr(gbuf1a_1_0_845_wr_params);
    PmuSetupRead gbuf1a_1_0_845_rd1_params0 = {};
    SN_ASSERT(gbuf1a_1_0_845_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r");
    gbuf1a_1_0_845_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_845_->configure_rd_head_1(gbuf1a_1_0_845_rd1_params0, {1});
    gbuf1a_1_0_845_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->set_op_name("tlir.Reshape");
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf4a_1_0_846_wr_params = {};
    gbuf4a_1_0_846_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4a_1_0_846_->configure_wr(gbuf4a_1_0_846_wr_params);
    PmuSetupRead gbuf4a_1_0_846_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->input_read_params(GemmSubnet::kFwdPropB);
    gbuf4a_1_0_846_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4a_1_0_846_->configure_rd_head_1(gbuf4a_1_0_846_rd1_params1, {1, 1, 1, tbuf2u_1_0_401_->param().buffer_depth, 2, 2});
    gbuf4a_1_0_846_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_962_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_962_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_w_0");
    gbuf1a_1_0_962_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_962_->configure_wr(gbuf1a_1_0_962_wr_params);
    PmuSetupRead gbuf1a_1_0_962_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__add_0_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_962_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__add_0");
    gbuf1a_1_0_962_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_962_->configure_rd_head_1(gbuf1a_1_0_962_rd1_params1, {1});
    gbuf1a_1_0_962_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_961_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_961_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_v_0");
    gbuf1a_1_0_961_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_961_->configure_wr(gbuf1a_1_0_961_wr_params);
    PmuSetupRead gbuf1a_1_0_961_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__add_0_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_961_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__add_0");
    gbuf1a_1_0_961_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_961_->configure_rd_head_1(gbuf1a_1_0_961_rd1_params0, {1});
    gbuf1a_1_0_961_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_964_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_964_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_w_1");
    gbuf1a_1_0_964_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_964_->configure_wr(gbuf1a_1_0_964_wr_params);
    PmuSetupRead gbuf1a_1_0_964_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__add_1_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_964_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__add_1");
    gbuf1a_1_0_964_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_964_->configure_rd_head_1(gbuf1a_1_0_964_rd1_params1, {1});
    gbuf1a_1_0_964_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_963_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_963_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_v_1");
    gbuf1a_1_0_963_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_963_->configure_wr(gbuf1a_1_0_963_wr_params);
    PmuSetupRead gbuf1a_1_0_963_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__add_1_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_963_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__add_1");
    gbuf1a_1_0_963_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_963_->configure_rd_head_1(gbuf1a_1_0_963_rd1_params0, {1});
    gbuf1a_1_0_963_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_966_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_966_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_w_2");
    gbuf1a_1_0_966_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_966_->configure_wr(gbuf1a_1_0_966_wr_params);
    PmuSetupRead gbuf1a_1_0_966_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__add_2_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_966_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__add_2");
    gbuf1a_1_0_966_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_966_->configure_rd_head_1(gbuf1a_1_0_966_rd1_params1, {1});
    gbuf1a_1_0_966_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_965_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_965_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_v_2");
    gbuf1a_1_0_965_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_965_->configure_wr(gbuf1a_1_0_965_wr_params);
    PmuSetupRead gbuf1a_1_0_965_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__add_2_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_965_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__add_2");
    gbuf1a_1_0_965_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_965_->configure_rd_head_1(gbuf1a_1_0_965_rd1_params0, {1});
    gbuf1a_1_0_965_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_968_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_968_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_w_3");
    gbuf1a_1_0_968_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_968_->configure_wr(gbuf1a_1_0_968_wr_params);
    PmuSetupRead gbuf1a_1_0_968_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__add_3_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_968_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__add_3");
    gbuf1a_1_0_968_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_968_->configure_rd_head_1(gbuf1a_1_0_968_rd1_params1, {1});
    gbuf1a_1_0_968_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_op_name("tlir.Linear");
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_967_wr_params = ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf1a_1_0_967_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__linear_v_3");
    gbuf1a_1_0_967_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_967_->configure_wr(gbuf1a_1_0_967_wr_params);
    PmuSetupRead gbuf1a_1_0_967_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__add_3_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_967_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__add_3");
    gbuf1a_1_0_967_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_967_->configure_rd_head_1(gbuf1a_1_0_967_rd1_params0, {1});
    gbuf1a_1_0_967_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_recompute__temp_cell_wr_params = {};
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_wr_params.metapipe_iter_counts = sn::Dimensions{};
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->configure_wr(ptconvlstm__lstm_layer__lstm_recompute__temp_cell_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_recompute__temp_cell_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__mul0_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_recompute__temp_cell_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__mul0");
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_recompute__temp_cell_rd1_params1, {1});
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->set_op_name("tlir.Sigmoid");
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_970_wr_params = ptconvlstm__lstm_layer__lstm_recompute__i_t_->write_params();
    SN_ASSERT(gbuf1a_1_0_970_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__i_t");
    gbuf1a_1_0_970_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_970_->configure_wr(gbuf1a_1_0_970_wr_params);
    PmuSetupRead gbuf1a_1_0_970_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__mul1_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_970_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__mul1");
    gbuf1a_1_0_970_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_970_->configure_rd_head_1(gbuf1a_1_0_970_rd1_params0, {1});
    gbuf1a_1_0_970_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->set_op_name("tlir.Sigmoid");
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_969_wr_params = ptconvlstm__lstm_layer__lstm_recompute__f_t_->write_params();
    SN_ASSERT(gbuf1a_1_0_969_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__f_t");
    gbuf1a_1_0_969_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_969_->configure_wr(gbuf1a_1_0_969_wr_params);
    PmuSetupRead gbuf1a_1_0_969_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__mul0_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_969_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__mul0");
    gbuf1a_1_0_969_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_969_->configure_rd_head_1(gbuf1a_1_0_969_rd1_params0, {1});
    gbuf1a_1_0_969_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->set_op_name("tlir.Tanh");
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_971_wr_params = ptconvlstm__lstm_layer__lstm_recompute__g_t_->write_params();
    SN_ASSERT(gbuf1a_1_0_971_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__g_t");
    gbuf1a_1_0_971_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_971_->configure_wr(gbuf1a_1_0_971_wr_params);
    PmuSetupRead gbuf1a_1_0_971_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__mul1_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_971_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__mul1");
    gbuf1a_1_0_971_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_971_->configure_rd_head_1(gbuf1a_1_0_971_rd1_params1, {1});
    gbuf1a_1_0_971_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_op_name("tlir.Sigmoid");
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_974_wr_params = ptconvlstm__lstm_layer__lstm_recompute__o_t_->write_params();
    SN_ASSERT(gbuf1a_1_0_974_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__o_t");
    gbuf1a_1_0_974_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_974_->configure_wr(gbuf1a_1_0_974_wr_params);
    PmuSetupRead gbuf1a_1_0_974_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__hidden_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_974_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__hidden");
    gbuf1a_1_0_974_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_974_->configure_rd_head_1(gbuf1a_1_0_974_rd1_params0, {1});
    gbuf1a_1_0_974_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_972_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_972_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__mul0");
    gbuf1a_1_0_972_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_972_->configure_wr(gbuf1a_1_0_972_wr_params);
    PmuSetupRead gbuf1a_1_0_972_rd1_params0 = ptconvlstm__lstm_layer__lstm_recompute__cell_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_972_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_recompute__cell");
    gbuf1a_1_0_972_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_972_->configure_rd_head_1(gbuf1a_1_0_972_rd1_params0, {1});
    gbuf1a_1_0_972_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_973_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_973_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__mul1");
    gbuf1a_1_0_973_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_973_->configure_wr(gbuf1a_1_0_973_wr_params);
    PmuSetupRead gbuf1a_1_0_973_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__cell_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_973_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__cell");
    gbuf1a_1_0_973_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_973_->configure_rd_head_1(gbuf1a_1_0_973_rd1_params1, {1});
    gbuf1a_1_0_973_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__cell_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_recompute__cell_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->set_op_name("tlir.Tanh");
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_975_wr_params = ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->write_params();
    SN_ASSERT(gbuf1a_1_0_975_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__tanh_cell");
    gbuf1a_1_0_975_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_975_->configure_wr(gbuf1a_1_0_975_wr_params);
    PmuSetupRead gbuf1a_1_0_975_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__hidden_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_975_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_recompute__hidden");
    gbuf1a_1_0_975_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_975_->configure_rd_head_1(gbuf1a_1_0_975_rd1_params1, {1});
    gbuf1a_1_0_975_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.Buffer
    PmuSetupWrite gbuf4u_1_0_399_wr_params = {};
    gbuf4u_1_0_399_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4u_1_0_399_->configure_wr(gbuf4u_1_0_399_wr_params);
    PmuSetupRead gbuf4u_1_0_399_rd1_params0 = {};
    SN_ASSERT(gbuf4u_1_0_399_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__reshape_2_recompute_");
    gbuf4u_1_0_399_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4u_1_0_399_->configure_rd_head_1(gbuf4u_1_0_399_rd1_params0, {1, 2});
    gbuf4u_1_0_399_->configure_node();
    
    // logreg_lstm.py:222:0: tlir.Reshape
    ptconvlstm__reshape_2_recompute__->set_source_context("logreg_lstm.py:222:0");
    ptconvlstm__reshape_2_recompute__->set_op_name("tlir.Reshape");
    ptconvlstm__reshape_2_recompute__->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    tbuf2u_1_0_401_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf2u_1_0_401_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    tbuf2u_1_0_401_->add_context(ptconvlstm__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kLutRd));
    for (auto ctx_name : ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd))
        tbuf2u_1_0_401_->ctx(ctx_name)->set_read_credits({1, 1, tbuf2u_1_0_406_->param().buffer_depth, tbuf2u_1_0_409_->param().buffer_depth},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_1_0_401_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    tbuf2u_1_0_401_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    rbuf1u_1_0_402_->add_context(FrontingPmu::get_tbuf_contexts(FrontingPmu::kOutput, rbuf1u_1_0_402_, params_.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_dram_in));
;
    for (auto ctx : rbuf1u_1_0_402_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(1)});
    rbuf1u_1_0_402_->view<TBufferRepeatView>(sn::Dimensions{{100}})->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx_name : std::vector<std::string>{"kDefaultRead1"})
        rbuf1u_1_0_402_->ctx(ctx_name)->set_read_credits({tbuf2a_1_0_850_->param().buffer_depth, 12, tbuf2a_1_0_850_->param().buffer_depth, 12},std::vector<int64_t>{});
    for (auto ctx : rbuf1u_1_0_402_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    rbuf1u_1_0_402_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    tbuf2a_1_0_850_->add_context(TBufferContext::get_default(plasma_, "kDefaultWrite", true));
    for (auto ctx : tbuf2a_1_0_850_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    tbuf2a_1_0_850_->add_context(ptconvlstm__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kIndexRd));
    for (auto ctx_name : ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd))
        tbuf2a_1_0_850_->ctx(ctx_name)->set_read_credits({1, 1, tbuf2u_1_0_406_->param().buffer_depth, tbuf2u_1_0_409_->param().buffer_depth},std::vector<int64_t>{});
    for (auto ctx : tbuf2a_1_0_850_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    tbuf2a_1_0_850_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf2u_1_0_406_->add_context(ptconvlstm__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    for (auto ctx : tbuf2u_1_0_406_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    tbuf2u_1_0_406_->add_context(TBufferContext::get_default(plasma_, "kDefaultRead1", false));
    for (auto ctx_name : std::vector<std::string>{"kDefaultRead1"})
        tbuf2u_1_0_406_->ctx(ctx_name)->set_read_credits({1, 7},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_1_0_406_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    tbuf2u_1_0_406_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_input0_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    tbuf2u_1_0_409_->view<TBufferPermuteView>(std::vector<int64_t>{{1, 0}})->view<TBufferLayoutView>(TensorLayout(node_constants::TemplateDataFormats::kBf16(), {1, 64}, prism::plasma::PhysicalLayout::kRowMajor).with_vec_ordering_and_vec_dim(std::vector<uint8_t>{1, 0}, 1).vector_align())->add_context(ptconvlstm__indexselect_recompute__->get_tbuf_contexts(RAILIndex::IO::kOutWr));
    for (auto ctx : tbuf2u_1_0_409_->get_write_ctxs())
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    tbuf2u_1_0_409_->add_context(ptconvlstm__dense_layer__linear_recompute__->get_tbuf_contexts(GemmSubnet::kFwdPropB));
    for (auto ctx_name : ptconvlstm__dense_layer__linear_recompute__->get_read_enable_ctx_names(GemmSubnet::kFwdPropB))
        tbuf2u_1_0_409_->ctx(ctx_name)->set_read_credits({1, 2},std::vector<int64_t>{});
    for (auto ctx : tbuf2u_1_0_409_->get_read_ctxs()) {
        ctx->set_metapipe_iter_counts(sn::Dimensions{sn::Dimension(100)});
    }
    tbuf2u_1_0_409_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvlstm__dense_layer__linear_recompute__->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_recompute__->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_recompute__->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_411_wr_params = ptconvlstm__dense_layer__linear_recompute__->write_params(GemmSubnet::kFwdPropOutput);
    SN_ASSERT(gbuf2u_1_0_411_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_recompute_");
    gbuf2u_1_0_411_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_411_->configure_wr(gbuf2u_1_0_411_wr_params);
    PmuSetupRead gbuf2u_1_0_411_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_411_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__dense_layer__linear_t_output0_recompute_");
    gbuf2u_1_0_411_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_411_->configure_rd_head_1(gbuf2u_1_0_411_rd1_params0, {1, 2});
    gbuf2u_1_0_411_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_output0_recompute__->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_output0_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    reshape_1_0_630_->set_source_context("overrides.py:1355:0");
    reshape_1_0_630_->set_op_name("tlir.Reshape");
    reshape_1_0_630_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    ptconvlstm__criterion__mseloss_bwd_sub_->set_source_context("overrides.py:1355:0");
    ptconvlstm__criterion__mseloss_bwd_sub_->set_op_name("tlir.Sub");
    ptconvlstm__criterion__mseloss_bwd_sub_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    scale_1_0_632_->set_source_context("overrides.py:1355:0");
    scale_1_0_632_->set_op_name("tlir.Scale");
    scale_1_0_632_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    scale_1_0_633_->set_source_context("overrides.py:1355:0");
    scale_1_0_633_->set_op_name("tlir.Scale");
    scale_1_0_633_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf4u_1_0_419_wr_params = {};
    gbuf4u_1_0_419_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4u_1_0_419_->configure_wr(gbuf4u_1_0_419_wr_params);
    PmuSetupRead gbuf4u_1_0_419_rd1_params0 = {};
    SN_ASSERT(gbuf4u_1_0_419_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_1_0_634");
    gbuf4u_1_0_419_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4u_1_0_419_->configure_rd_head_1(gbuf4u_1_0_419_rd1_params0, {2, 2, 2, 2});
    gbuf4u_1_0_419_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    reshape_1_0_634_->set_source_context("overrides.py:1355:0");
    reshape_1_0_634_->set_op_name("tlir.Reshape");
    reshape_1_0_634_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_421_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_421_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of scale_1_0_633");
    gbuf2u_1_0_421_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_421_->configure_wr(gbuf2u_1_0_421_wr_params);
    PmuSetupRead gbuf2u_1_0_421_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_421_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of reshape_1_0_635");
    gbuf2u_1_0_421_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_421_->configure_rd_head_1(gbuf2u_1_0_421_rd1_params0, {2, 2, 2, 2});
    gbuf2u_1_0_421_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    reshape_1_0_635_->set_source_context("overrides.py:1355:0");
    reshape_1_0_635_->set_op_name("tlir.Reshape");
    reshape_1_0_635_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_1_0_928_->set_source_context("overrides.py:1355:0");
    layout_cast_1_0_928_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_928_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_op_name("tlir.AddN");
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_426_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_426_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_426_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_426_->configure_wr(gbuf2u_1_0_426_wr_params);
    PmuSetupRead gbuf2u_1_0_426_rd1_params1 = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->read_params(BigGemm::kB);
    gbuf2u_1_0_426_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_426_->configure_rd_head_1(gbuf2u_1_0_426_rd1_params1, {1, 2});
    gbuf2u_1_0_426_->configure_node();
    
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_851_wr_params = {};
    gbuf1a_1_0_851_wr_params.is_transpose = true;
    gbuf1a_1_0_851_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_851_->configure_wr(gbuf1a_1_0_851_wr_params);
    PmuSetupRead gbuf1a_1_0_851_rd1_params0 = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->read_params(BigGemm::kA);
    gbuf1a_1_0_851_rd1_params0.is_transpose = true;
    gbuf1a_1_0_851_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_851_->configure_rd_head_1(gbuf1a_1_0_851_rd1_params0, {1});
    gbuf1a_1_0_851_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->set_op_name("tlir.Linear");
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf7u_1_0_428_wr_params = {};
    SN_ASSERT(gbuf7u_1_0_428_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_input0_recompute_");
    gbuf7u_1_0_428_wr_params.is_transpose = true;
    gbuf7u_1_0_428_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf7u_1_0_428_->configure_wr(gbuf7u_1_0_428_wr_params);
    PmuSetupRead gbuf7u_1_0_428_rd1_params1 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kB);
    gbuf7u_1_0_428_rd1_params1.is_transpose = true;
    gbuf7u_1_0_428_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf7u_1_0_428_->configure_rd_head_1(gbuf7u_1_0_428_rd1_params1, {1, 1});
    gbuf7u_1_0_428_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_429_wr_params = {};
    SN_ASSERT(gbuf2u_1_0_429_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__dense_layer__linear_t_output0_bwd_addn0");
    gbuf2u_1_0_429_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_429_->configure_wr(gbuf2u_1_0_429_wr_params);
    PmuSetupRead gbuf2u_1_0_429_rd0_params2 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2u_1_0_429_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_429_->configure_rd_head_0(gbuf2u_1_0_429_rd0_params2, {1});
    PmuSetupRead gbuf2u_1_0_429_rd1_params0 = ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->read_params(BigGemm::kA);
    gbuf2u_1_0_429_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_429_->configure_rd_head_1(gbuf2u_1_0_429_rd1_params0, {ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->wbuf_depth()});
    gbuf2u_1_0_429_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_431_wr_params = ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->write_params(BigGemm::kOutput);
    gbuf2u_1_0_431_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_431_->configure_wr(gbuf2u_1_0_431_wr_params);
    PmuSetupRead gbuf2u_1_0_431_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_431_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of layout_cast_1_0_996");
    gbuf2u_1_0_431_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_431_->configure_rd_head_1(gbuf2u_1_0_431_rd1_params0, {1, 2});
    gbuf2u_1_0_431_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    layout_cast_1_0_996_->set_source_context("overrides.py:1355:0");
    layout_cast_1_0_996_->set_op_name("tlir.LayoutCast");
    layout_cast_1_0_996_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_t_input0_bwd_->set_op_name("tlir.PermuteView");
    ptconvlstm__dense_layer__linear_t_input0_bwd_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    PmuSetupWrite gbuf12u_1_0_437_wr_params = {};
    gbuf12u_1_0_437_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf12u_1_0_437_->configure_wr(gbuf12u_1_0_437_wr_params);
    PmuSetupRead gbuf12u_1_0_437_rd1_params1 = ptconvlstm__indexselect_bwd_loss_just_index_->read_params(IndexAdd::kIndices);
    gbuf12u_1_0_437_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf12u_1_0_437_->configure_rd_head_1(gbuf12u_1_0_437_rd1_params1, {1, 2});
    gbuf12u_1_0_437_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.IndexAdd
    ptconvlstm__indexselect_bwd_loss_just_index_->set_source_context("logreg_lstm.py:218:0");
    ptconvlstm__indexselect_bwd_loss_just_index_->set_op_name("tlir.IndexAdd");
    ptconvlstm__indexselect_bwd_loss_just_index_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf4u_1_0_440_wr_params = {};
    gbuf4u_1_0_440_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4u_1_0_440_->configure_wr(gbuf4u_1_0_440_wr_params);
    PmuSetupRead gbuf4u_1_0_440_rd1_params0 = {};
    SN_ASSERT(gbuf4u_1_0_440_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_input_i_t");
    gbuf4u_1_0_440_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf4u_1_0_440_->configure_rd_head_1(gbuf4u_1_0_440_rd1_params0, {1, 2});
    gbuf4u_1_0_440_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf3u_1_0_443_wr_params = {};
    gbuf3u_1_0_443_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_443_->configure_wr(gbuf3u_1_0_443_wr_params);
    PmuSetupRead gbuf3u_1_0_443_rd1_params0 = {};
    gbuf3u_1_0_443_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_443_->configure_rd_head_1(gbuf3u_1_0_443_rd1_params0, {1, 2, 2, 2, 2, 2});
    gbuf3u_1_0_443_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf3u_1_0_445_wr_params = {};
    gbuf3u_1_0_445_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_445_->configure_wr(gbuf3u_1_0_445_wr_params);
    PmuSetupRead gbuf3u_1_0_445_rd1_params0 = {};
    gbuf3u_1_0_445_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_445_->configure_rd_head_1(gbuf3u_1_0_445_rd1_params0, {1, 2, 2, 2, 2, 2});
    gbuf3u_1_0_445_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf3u_1_0_447_wr_params = {};
    gbuf3u_1_0_447_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_447_->configure_wr(gbuf3u_1_0_447_wr_params);
    PmuSetupRead gbuf3u_1_0_447_rd1_params0 = {};
    gbuf3u_1_0_447_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_447_->configure_rd_head_1(gbuf3u_1_0_447_rd1_params0, {1, 2, 2, 2, 2, 2});
    gbuf3u_1_0_447_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf3u_1_0_449_wr_params = {};
    gbuf3u_1_0_449_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_449_->configure_wr(gbuf3u_1_0_449_wr_params);
    PmuSetupRead gbuf3u_1_0_449_rd1_params0 = {};
    gbuf3u_1_0_449_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_449_->configure_rd_head_1(gbuf3u_1_0_449_rd1_params0, {1, 2, 2, 2, 2, 2});
    gbuf3u_1_0_449_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf3u_1_0_451_wr_params = {};
    gbuf3u_1_0_451_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_451_->configure_wr(gbuf3u_1_0_451_wr_params);
    PmuSetupRead gbuf3u_1_0_451_rd1_params0 = {};
    gbuf3u_1_0_451_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf3u_1_0_451_->configure_rd_head_1(gbuf3u_1_0_451_rd1_params0, {1, 2, 2, 2, 2, 2});
    gbuf3u_1_0_451_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_1007_wr_params = {};
    gbuf1a_1_0_1007_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1007_->configure_wr(gbuf1a_1_0_1007_wr_params);
    PmuSetupRead gbuf1a_1_0_1007_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_1007_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_fgate_g");
    gbuf1a_1_0_1007_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1007_->configure_rd_head_1(gbuf1a_1_0_1007_rd1_params1, {1});
    gbuf1a_1_0_1007_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_938_wr_params = {};
    gbuf2a_1_0_938_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_938_wr_params = LoadTiler::write_params(params_.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488.at_address(0),gbuf2a_1_0_938_wr_params);
    if (LoadTiler::optimize_gbuff_as_fronting_pmu(params_.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488.at_address(0), gbuf2a_1_0_938_->depth())){
        gbuf2a_1_0_938_wr_params.setup_write_done_by_dram_load = true;
        gbuf2a_1_0_938_->connect_to_load_tiler();
    }
    gbuf2a_1_0_938_->configure_wr(gbuf2a_1_0_938_wr_params);
    PmuSetupRead gbuf2a_1_0_938_rd1_params0 = {};
    SN_ASSERT(gbuf2a_1_0_938_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of gbuf2u_1_0_453");
    gbuf2a_1_0_938_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_938_->configure_rd_head_1(gbuf2a_1_0_938_rd1_params0, {2, 2});
    gbuf2a_1_0_938_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_453_wr_params = {};
    gbuf2u_1_0_453_wr_params.vectors_in_column = ceiling(gbuf2a_1_0_938_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(1), gbuf2a_1_0_938_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).vector_elements());
    gbuf2u_1_0_453_wr_params.interleave = true;
    gbuf2u_1_0_453_wr_params.interleave_size = gbuf2a_1_0_938_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(0);
    gbuf2u_1_0_453_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_453_->configure_wr(gbuf2u_1_0_453_wr_params);
    PmuSetupRead gbuf2u_1_0_453_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_453_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t");
    gbuf2u_1_0_453_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_453_->configure_rd_head_1(gbuf2u_1_0_453_rd1_params0, {1, 2});
    gbuf2u_1_0_453_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_937_wr_params = ptconvlstm__indexselect_bwd_loss_just_index_->write_params(IndexAdd::kGradLossOut);
    gbuf2a_1_0_937_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_937_->configure_wr(gbuf2a_1_0_937_wr_params);
    PmuSetupRead gbuf2a_1_0_937_rd1_params0 = {};
    SN_ASSERT(gbuf2a_1_0_937_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of gbuf2u_1_0_455");
    gbuf2a_1_0_937_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_937_->configure_rd_head_1(gbuf2a_1_0_937_rd1_params0, {2, 2});
    gbuf2a_1_0_937_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2u_1_0_455_wr_params = {};
    gbuf2u_1_0_455_wr_params.vectors_in_column = ceiling(gbuf2a_1_0_937_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(1), gbuf2a_1_0_937_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).vector_elements());
    gbuf2u_1_0_455_wr_params.interleave = true;
    gbuf2u_1_0_455_wr_params.interleave_size = gbuf2a_1_0_937_->result_layout(GBuffer::Output::kHead1Buffer).at_address(0).physical_shape().at(0);
    gbuf2u_1_0_455_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_455_->configure_wr(gbuf2u_1_0_455_wr_params);
    PmuSetupRead gbuf2u_1_0_455_rd1_params0 = {};
    SN_ASSERT(gbuf2u_1_0_455_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_output_g_t");
    gbuf2u_1_0_455_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2u_1_0_455_->configure_rd_head_1(gbuf2u_1_0_455_rd1_params0, {1, 2, 2, 2, 2, 2});
    gbuf2u_1_0_455_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->set_op_name("tlir.PermuteView");
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_wr_params.metapipe_iter_counts = sn::Dimensions{};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_rd1_params1, {1});
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_1003_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_1003_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum");
    gbuf1a_1_0_1003_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1003_->configure_wr(gbuf1a_1_0_1003_wr_params);
    PmuSetupRead gbuf1a_1_0_1003_rd0_params0 = ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1003_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_tanh_g");
    gbuf1a_1_0_1003_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1003_->configure_rd_head_0(gbuf1a_1_0_1003_rd0_params0, {1});
    PmuSetupRead gbuf1a_1_0_1003_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1003_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_ogate_g");
    gbuf1a_1_0_1003_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1003_->configure_rd_head_1(gbuf1a_1_0_1003_rd1_params0, {1});
    gbuf1a_1_0_1003_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_temp_igates_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_temp_igates_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_temp_igates_rd1_params0 = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_temp_igates_rd1_params0, {1});
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_rd1_params0 = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_rd1_params0, {1});
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_rd1_params0 = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_rd1_params0, {1});
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_1008_wr_params = {};
    gbuf1a_1_0_1008_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1008_->configure_wr(gbuf1a_1_0_1008_wr_params);
    PmuSetupRead gbuf1a_1_0_1008_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_igate_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_1008_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_igate_g");
    gbuf1a_1_0_1008_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1008_->configure_rd_head_1(gbuf1a_1_0_1008_rd1_params1, {1});
    gbuf1a_1_0_1008_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_tanh_g");
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_rd1_params1, {1});
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0");
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_rd1_params0, {1});
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_976_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_976_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0");
    gbuf1a_1_0_976_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_976_->configure_wr(gbuf1a_1_0_976_wr_params);
    PmuSetupRead gbuf1a_1_0_976_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_976_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2");
    gbuf1a_1_0_976_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_976_->configure_rd_head_1(gbuf1a_1_0_976_rd1_params0, {1});
    gbuf1a_1_0_976_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_wr_params = {};
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1");
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_rd1_params0, {1});
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_977_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_977_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1");
    gbuf1a_1_0_977_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_977_->configure_wr(gbuf1a_1_0_977_wr_params);
    PmuSetupRead gbuf1a_1_0_977_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_977_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2");
    gbuf1a_1_0_977_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_977_->configure_rd_head_1(gbuf1a_1_0_977_rd1_params1, {1});
    gbuf1a_1_0_977_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->set_op_name("tlir.Tanh");
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_1004_wr_params = ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->write_params();
    SN_ASSERT(gbuf1a_1_0_1004_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh");
    gbuf1a_1_0_1004_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1004_->configure_wr(gbuf1a_1_0_1004_wr_params);
    PmuSetupRead gbuf1a_1_0_1004_rd0_params0 = ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1004_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g");
    gbuf1a_1_0_1004_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1004_->configure_rd_head_0(gbuf1a_1_0_1004_rd0_params0, {1});
    PmuSetupRead gbuf1a_1_0_1004_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_1004_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_ogate_g");
    gbuf1a_1_0_1004_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1004_->configure_rd_head_1(gbuf1a_1_0_1004_rd1_params1, {1});
    gbuf1a_1_0_1004_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_991_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_991_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_ogate_g");
    gbuf1a_1_0_991_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_991_->configure_wr(gbuf1a_1_0_991_wr_params);
    PmuSetupRead gbuf1a_1_0_991_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_991_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3");
    gbuf1a_1_0_991_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_991_->configure_rd_head_1(gbuf1a_1_0_991_rd1_params1, {1});
    gbuf1a_1_0_991_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_982_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_982_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_tanh_g");
    gbuf1a_1_0_982_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_982_->configure_wr(gbuf1a_1_0_982_wr_params);
    PmuSetupRead gbuf1a_1_0_982_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_982_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g");
    gbuf1a_1_0_982_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_982_->configure_rd_head_1(gbuf1a_1_0_982_rd1_params1, {1});
    gbuf1a_1_0_982_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->set_op_name("tlir.TanhGrad");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_983_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_983_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g");
    gbuf1a_1_0_983_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_983_->configure_wr(gbuf1a_1_0_983_wr_params);
    PmuSetupRead gbuf1a_1_0_983_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_983_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum");
    gbuf1a_1_0_983_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_983_->configure_rd_head_1(gbuf1a_1_0_983_rd1_params1, {1});
    gbuf1a_1_0_983_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->set_op_name("tlir.AddV2");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_1005_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_1005_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum");
    gbuf1a_1_0_1005_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1005_->configure_wr(gbuf1a_1_0_1005_wr_params);
    PmuSetupRead gbuf1a_1_0_1005_rd0_params0 = ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1005_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_ggate_g");
    gbuf1a_1_0_1005_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1005_->configure_rd_head_0(gbuf1a_1_0_1005_rd0_params0, {1});
    PmuSetupRead gbuf1a_1_0_1005_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_igate_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1005_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_igate_g");
    gbuf1a_1_0_1005_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1005_->configure_rd_head_1(gbuf1a_1_0_1005_rd1_params0, {1});
    gbuf1a_1_0_1005_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_1006_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_1006_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum");
    gbuf1a_1_0_1006_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1006_->configure_wr(gbuf1a_1_0_1006_wr_params);
    PmuSetupRead gbuf1a_1_0_1006_rd0_params0 = ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1006_rd0_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_ct_1_g");
    gbuf1a_1_0_1006_rd0_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1006_->configure_rd_head_0(gbuf1a_1_0_1006_rd0_params0, {1});
    PmuSetupRead gbuf1a_1_0_1006_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_1006_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_fgate_g");
    gbuf1a_1_0_1006_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_1006_->configure_rd_head_1(gbuf1a_1_0_1006_rd1_params0, {1});
    gbuf1a_1_0_1006_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_989_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_989_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_fgate_g");
    gbuf1a_1_0_989_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_989_->configure_wr(gbuf1a_1_0_989_wr_params);
    PmuSetupRead gbuf1a_1_0_989_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_989_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1");
    gbuf1a_1_0_989_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_989_->configure_rd_head_1(gbuf1a_1_0_989_rd1_params1, {1});
    gbuf1a_1_0_989_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_891_wr_params = {};
    gbuf1a_1_0_891_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_891_->configure_wr(gbuf1a_1_0_891_wr_params);
    PmuSetupRead gbuf1a_1_0_891_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_891_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_ct_1_g");
    gbuf1a_1_0_891_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_891_->configure_rd_head_1(gbuf1a_1_0_891_rd1_params1, {1});
    gbuf1a_1_0_891_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_988_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_988_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_igate_g");
    gbuf1a_1_0_988_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_988_->configure_wr(gbuf1a_1_0_988_wr_params);
    PmuSetupRead gbuf1a_1_0_988_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_988_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0");
    gbuf1a_1_0_988_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_988_->configure_rd_head_1(gbuf1a_1_0_988_rd1_params1, {1});
    gbuf1a_1_0_988_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_892_wr_params = {};
    gbuf1a_1_0_892_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_892_->configure_wr(gbuf1a_1_0_892_wr_params);
    PmuSetupRead gbuf1a_1_0_892_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_892_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_ggate_g");
    gbuf1a_1_0_892_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_892_->configure_rd_head_1(gbuf1a_1_0_892_rd1_params1, {1});
    gbuf1a_1_0_892_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->set_op_name("tlir.Mul");
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_990_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_990_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_ggate_g");
    gbuf1a_1_0_990_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_990_->configure_wr(gbuf1a_1_0_990_wr_params);
    PmuSetupRead gbuf1a_1_0_990_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf1a_1_0_990_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2");
    gbuf1a_1_0_990_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_990_->configure_rd_head_1(gbuf1a_1_0_990_rd1_params1, {1});
    gbuf1a_1_0_990_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_893_wr_params = {};
    gbuf1a_1_0_893_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_893_->configure_wr(gbuf1a_1_0_893_wr_params);
    PmuSetupRead gbuf1a_1_0_893_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_893_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0");
    gbuf1a_1_0_893_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_893_->configure_rd_head_1(gbuf1a_1_0_893_rd1_params0, {1});
    gbuf1a_1_0_893_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_op_name("tlir.SigmoidGrad");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_852_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_852_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_input_i_t");
    gbuf2a_1_0_852_wr_params.is_transpose = true;
    gbuf2a_1_0_852_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_852_->configure_wr(gbuf2a_1_0_852_wr_params);
    PmuSetupRead gbuf2a_1_0_852_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->read_params(BigGemm::kB);
    gbuf2a_1_0_852_rd1_params1.is_transpose = true;
    gbuf2a_1_0_852_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_852_->configure_rd_head_1(gbuf2a_1_0_852_rd1_params1, {1});
    gbuf2a_1_0_852_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_857_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_857_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0");
    gbuf2a_1_0_857_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_857_->configure_wr(gbuf2a_1_0_857_wr_params);
    PmuSetupRead gbuf2a_1_0_857_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_857_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_857_->configure_rd_head_0(gbuf2a_1_0_857_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_857_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_857_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_857_->configure_rd_head_1(gbuf2a_1_0_857_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->wbuf_depth()});
    gbuf2a_1_0_857_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_853_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_853_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t");
    gbuf2a_1_0_853_wr_params.is_transpose = true;
    gbuf2a_1_0_853_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_853_->configure_wr(gbuf2a_1_0_853_wr_params);
    PmuSetupRead gbuf2a_1_0_853_rd1_params1 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->read_params(BigGemm::kB);
    gbuf2a_1_0_853_rd1_params1.is_transpose = true;
    gbuf2a_1_0_853_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_853_->configure_rd_head_1(gbuf2a_1_0_853_rd1_params1, {1});
    gbuf2a_1_0_853_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_856_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_856_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0");
    gbuf2a_1_0_856_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_856_->configure_wr(gbuf2a_1_0_856_wr_params);
    PmuSetupRead gbuf2a_1_0_856_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_856_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_856_->configure_rd_head_0(gbuf2a_1_0_856_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_856_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_856_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_856_->configure_rd_head_1(gbuf2a_1_0_856_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->wbuf_depth()});
    gbuf2a_1_0_856_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->set_op_name("tlir.LinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_894_wr_params = {};
    gbuf1a_1_0_894_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_894_->configure_wr(gbuf1a_1_0_894_wr_params);
    PmuSetupRead gbuf1a_1_0_894_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_894_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1");
    gbuf1a_1_0_894_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_894_->configure_rd_head_1(gbuf1a_1_0_894_rd1_params0, {1});
    gbuf1a_1_0_894_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_op_name("tlir.SigmoidGrad");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_861_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_861_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1");
    gbuf2a_1_0_861_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_861_->configure_wr(gbuf2a_1_0_861_wr_params);
    PmuSetupRead gbuf2a_1_0_861_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_861_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_861_->configure_rd_head_0(gbuf2a_1_0_861_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_861_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_861_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_861_->configure_rd_head_1(gbuf2a_1_0_861_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->wbuf_depth()});
    gbuf2a_1_0_861_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_860_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_860_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1");
    gbuf2a_1_0_860_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_860_->configure_wr(gbuf2a_1_0_860_wr_params);
    PmuSetupRead gbuf2a_1_0_860_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_860_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_860_->configure_rd_head_0(gbuf2a_1_0_860_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_860_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_860_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_860_->configure_rd_head_1(gbuf2a_1_0_860_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->wbuf_depth()});
    gbuf2a_1_0_860_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->set_op_name("tlir.LinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_895_wr_params = {};
    gbuf1a_1_0_895_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_895_->configure_wr(gbuf1a_1_0_895_wr_params);
    PmuSetupRead gbuf1a_1_0_895_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf1a_1_0_895_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2");
    gbuf1a_1_0_895_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf1a_1_0_895_->configure_rd_head_1(gbuf1a_1_0_895_rd1_params0, {1});
    gbuf1a_1_0_895_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_op_name("tlir.TanhGrad");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_865_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_865_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2");
    gbuf2a_1_0_865_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_865_->configure_wr(gbuf2a_1_0_865_wr_params);
    PmuSetupRead gbuf2a_1_0_865_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_865_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_865_->configure_rd_head_0(gbuf2a_1_0_865_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_865_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_865_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_865_->configure_rd_head_1(gbuf2a_1_0_865_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->wbuf_depth()});
    gbuf2a_1_0_865_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_864_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_864_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2");
    gbuf2a_1_0_864_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_864_->configure_wr(gbuf2a_1_0_864_wr_params);
    PmuSetupRead gbuf2a_1_0_864_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_864_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_864_->configure_rd_head_0(gbuf2a_1_0_864_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_864_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_864_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_864_->configure_rd_head_1(gbuf2a_1_0_864_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->wbuf_depth()});
    gbuf2a_1_0_864_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->set_op_name("tlir.LinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_op_name("tlir.SigmoidGrad");
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_869_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_869_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3");
    gbuf2a_1_0_869_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_869_->configure_wr(gbuf2a_1_0_869_wr_params);
    PmuSetupRead gbuf2a_1_0_869_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_869_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_869_->configure_rd_head_0(gbuf2a_1_0_869_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_869_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_869_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_869_->configure_rd_head_1(gbuf2a_1_0_869_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->wbuf_depth()});
    gbuf2a_1_0_869_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_868_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_868_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3");
    gbuf2a_1_0_868_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_868_->configure_wr(gbuf2a_1_0_868_wr_params);
    PmuSetupRead gbuf2a_1_0_868_rd0_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->read_params(BigGemm::kBiasGradAccumInput);
    gbuf2a_1_0_868_rd0_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_868_->configure_rd_head_0(gbuf2a_1_0_868_rd0_params2, {1});
    PmuSetupRead gbuf2a_1_0_868_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->read_params(BigGemm::kA);
    gbuf2a_1_0_868_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_868_->configure_rd_head_1(gbuf2a_1_0_868_rd1_params0, {ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->wbuf_depth()});
    gbuf2a_1_0_868_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->set_op_name("tlir.BigLinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->set_op_name("tlir.LinearGrad");
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->configure();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_858_wr_params = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->write_params(GemmSubnet::IO::kBackPropOutput);
    gbuf2a_1_0_858_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_858_->configure_wr(gbuf2a_1_0_858_wr_params);
    PmuSetupRead gbuf2a_1_0_858_rd1_params0 = {};
    SN_ASSERT(gbuf2a_1_0_858_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of addn_1_0_688");
    gbuf2a_1_0_858_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_858_->configure_rd_head_1(gbuf2a_1_0_858_rd1_params0, {2, 2});
    gbuf2a_1_0_858_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_862_wr_params = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->write_params(GemmSubnet::IO::kBackPropOutput);
    gbuf2a_1_0_862_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_862_->configure_wr(gbuf2a_1_0_862_wr_params);
    PmuSetupRead gbuf2a_1_0_862_rd1_params1 = {};
    SN_ASSERT(gbuf2a_1_0_862_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of addn_1_0_688");
    gbuf2a_1_0_862_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_862_->configure_rd_head_1(gbuf2a_1_0_862_rd1_params1, {2, 2});
    gbuf2a_1_0_862_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_866_wr_params = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->write_params(GemmSubnet::IO::kBackPropOutput);
    gbuf2a_1_0_866_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_866_->configure_wr(gbuf2a_1_0_866_wr_params);
    PmuSetupRead gbuf2a_1_0_866_rd1_params2 = {};
    SN_ASSERT(gbuf2a_1_0_866_rd1_params2.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 2 of addn_1_0_688");
    gbuf2a_1_0_866_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_866_->configure_rd_head_1(gbuf2a_1_0_866_rd1_params2, {2, 2});
    gbuf2a_1_0_866_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_870_wr_params = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->write_params(GemmSubnet::IO::kBackPropOutput);
    gbuf2a_1_0_870_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_870_->configure_wr(gbuf2a_1_0_870_wr_params);
    PmuSetupRead gbuf2a_1_0_870_rd1_params3 = {};
    SN_ASSERT(gbuf2a_1_0_870_rd1_params3.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 3 of addn_1_0_688");
    gbuf2a_1_0_870_rd1_params3.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_870_->configure_rd_head_1(gbuf2a_1_0_870_rd1_params3, {2, 2});
    gbuf2a_1_0_870_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddN
    addn_1_0_688_->set_source_context("rnn.py:692:0");
    addn_1_0_688_->set_op_name("tlir.AddN");
    addn_1_0_688_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_source_context("overrides.py:1355:0");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_source_context("rnn.py:692:0");
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->set_op_name("tlir.mutate.Accumulate");
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_848_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_848_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__hidden");
    gbuf2a_1_0_848_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_848_->configure_wr(gbuf2a_1_0_848_wr_params);
    PmuSetupRead gbuf2a_1_0_848_rd1_params1 = {};
    gbuf2a_1_0_848_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_848_->configure_rd_head_1(gbuf2a_1_0_848_rd1_params1, {1});
    gbuf2a_1_0_848_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_847_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_847_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__cell");
    gbuf2a_1_0_847_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_847_->configure_wr(gbuf2a_1_0_847_wr_params);
    PmuSetupRead gbuf2a_1_0_847_rd1_params1 = {};
    gbuf2a_1_0_847_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_847_->configure_rd_head_1(gbuf2a_1_0_847_rd1_params1, {1});
    gbuf2a_1_0_847_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_871_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_871_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of addn_1_0_688");
    gbuf2a_1_0_871_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_871_->configure_wr(gbuf2a_1_0_871_wr_params);
    PmuSetupRead gbuf2a_1_0_871_rd1_params1 = {};
    gbuf2a_1_0_871_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_871_->configure_rd_head_1(gbuf2a_1_0_871_rd1_params1, {1});
    gbuf2a_1_0_871_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_854_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_854_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_ct_1_g");
    gbuf2a_1_0_854_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_854_->configure_wr(gbuf2a_1_0_854_wr_params);
    PmuSetupRead gbuf2a_1_0_854_rd1_params1 = {};
    gbuf2a_1_0_854_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_854_->configure_rd_head_1(gbuf2a_1_0_854_rd1_params1, {1});
    gbuf2a_1_0_854_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_912_->set_source_context("rnn.py:692:0");
    transpose_1_0_912_->set_op_name("tlir.Transpose");
    transpose_1_0_912_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_690_->set_source_context("rnn.py:692:0");
    reshape_1_0_690_->set_op_name("tlir.Reshape");
    reshape_1_0_690_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_913_->set_source_context("rnn.py:692:0");
    transpose_1_0_913_->set_op_name("tlir.Transpose");
    transpose_1_0_913_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_691_->set_source_context("rnn.py:692:0");
    reshape_1_0_691_->set_op_name("tlir.Reshape");
    reshape_1_0_691_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_914_->set_source_context("rnn.py:692:0");
    transpose_1_0_914_->set_op_name("tlir.Transpose");
    transpose_1_0_914_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_692_->set_source_context("rnn.py:692:0");
    reshape_1_0_692_->set_op_name("tlir.Reshape");
    reshape_1_0_692_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_915_->set_source_context("rnn.py:692:0");
    transpose_1_0_915_->set_op_name("tlir.Transpose");
    transpose_1_0_915_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_693_->set_source_context("rnn.py:692:0");
    reshape_1_0_693_->set_op_name("tlir.Reshape");
    reshape_1_0_693_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_872_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_872_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_690");
    gbuf1a_1_0_872_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_872_->configure_wr(gbuf1a_1_0_872_wr_params);
    PmuSetupRead gbuf1a_1_0_872_rd1_params1 = {};
    gbuf1a_1_0_872_rd1_params1.interleave = true;
    gbuf1a_1_0_872_rd1_params1.vectors_in_column = reshape_1_0_690_->result_layout().chunk_vectors();
    gbuf1a_1_0_872_rd1_params1.interleave_size = reshape_1_0_690_->result_layout().physical_shape()[1];
    gbuf1a_1_0_872_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_872_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_872_->configure_rd_head_1(gbuf1a_1_0_872_rd1_params1, {1});
    gbuf1a_1_0_872_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_873_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_873_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_691");
    gbuf1a_1_0_873_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_873_->configure_wr(gbuf1a_1_0_873_wr_params);
    PmuSetupRead gbuf1a_1_0_873_rd1_params1 = {};
    gbuf1a_1_0_873_rd1_params1.interleave = true;
    gbuf1a_1_0_873_rd1_params1.vectors_in_column = reshape_1_0_691_->result_layout().chunk_vectors();
    gbuf1a_1_0_873_rd1_params1.interleave_size = reshape_1_0_691_->result_layout().physical_shape()[1];
    gbuf1a_1_0_873_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_873_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_873_->configure_rd_head_1(gbuf1a_1_0_873_rd1_params1, {1});
    gbuf1a_1_0_873_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_874_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_874_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_692");
    gbuf1a_1_0_874_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_874_->configure_wr(gbuf1a_1_0_874_wr_params);
    PmuSetupRead gbuf1a_1_0_874_rd1_params1 = {};
    gbuf1a_1_0_874_rd1_params1.interleave = true;
    gbuf1a_1_0_874_rd1_params1.vectors_in_column = reshape_1_0_692_->result_layout().chunk_vectors();
    gbuf1a_1_0_874_rd1_params1.interleave_size = reshape_1_0_692_->result_layout().physical_shape()[1];
    gbuf1a_1_0_874_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_874_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_874_->configure_rd_head_1(gbuf1a_1_0_874_rd1_params1, {1});
    gbuf1a_1_0_874_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_875_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_875_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_693");
    gbuf1a_1_0_875_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_875_->configure_wr(gbuf1a_1_0_875_wr_params);
    PmuSetupRead gbuf1a_1_0_875_rd1_params1 = {};
    gbuf1a_1_0_875_rd1_params1.interleave = true;
    gbuf1a_1_0_875_rd1_params1.vectors_in_column = reshape_1_0_693_->result_layout().chunk_vectors();
    gbuf1a_1_0_875_rd1_params1.interleave_size = reshape_1_0_693_->result_layout().physical_shape()[1];
    gbuf1a_1_0_875_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_875_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_875_->configure_rd_head_1(gbuf1a_1_0_875_rd1_params1, {1});
    gbuf1a_1_0_875_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_916_->set_source_context("rnn.py:692:0");
    transpose_1_0_916_->set_op_name("tlir.Transpose");
    transpose_1_0_916_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_694_->set_source_context("rnn.py:692:0");
    reshape_1_0_694_->set_op_name("tlir.Reshape");
    reshape_1_0_694_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_917_->set_source_context("rnn.py:692:0");
    transpose_1_0_917_->set_op_name("tlir.Transpose");
    transpose_1_0_917_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_695_->set_source_context("rnn.py:692:0");
    reshape_1_0_695_->set_op_name("tlir.Reshape");
    reshape_1_0_695_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_918_->set_source_context("rnn.py:692:0");
    transpose_1_0_918_->set_op_name("tlir.Transpose");
    transpose_1_0_918_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_696_->set_source_context("rnn.py:692:0");
    reshape_1_0_696_->set_op_name("tlir.Reshape");
    reshape_1_0_696_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_919_->set_source_context("rnn.py:692:0");
    transpose_1_0_919_->set_op_name("tlir.Transpose");
    transpose_1_0_919_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_697_->set_source_context("rnn.py:692:0");
    reshape_1_0_697_->set_op_name("tlir.Reshape");
    reshape_1_0_697_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_876_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_876_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_694");
    gbuf1a_1_0_876_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_876_->configure_wr(gbuf1a_1_0_876_wr_params);
    PmuSetupRead gbuf1a_1_0_876_rd1_params1 = {};
    gbuf1a_1_0_876_rd1_params1.interleave = true;
    gbuf1a_1_0_876_rd1_params1.vectors_in_column = reshape_1_0_694_->result_layout().chunk_vectors();
    gbuf1a_1_0_876_rd1_params1.interleave_size = reshape_1_0_694_->result_layout().physical_shape()[1];
    gbuf1a_1_0_876_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_876_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_876_->configure_rd_head_1(gbuf1a_1_0_876_rd1_params1, {1});
    gbuf1a_1_0_876_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_877_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_877_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_695");
    gbuf1a_1_0_877_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_877_->configure_wr(gbuf1a_1_0_877_wr_params);
    PmuSetupRead gbuf1a_1_0_877_rd1_params1 = {};
    gbuf1a_1_0_877_rd1_params1.interleave = true;
    gbuf1a_1_0_877_rd1_params1.vectors_in_column = reshape_1_0_695_->result_layout().chunk_vectors();
    gbuf1a_1_0_877_rd1_params1.interleave_size = reshape_1_0_695_->result_layout().physical_shape()[1];
    gbuf1a_1_0_877_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_877_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_877_->configure_rd_head_1(gbuf1a_1_0_877_rd1_params1, {1});
    gbuf1a_1_0_877_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_878_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_878_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_696");
    gbuf1a_1_0_878_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_878_->configure_wr(gbuf1a_1_0_878_wr_params);
    PmuSetupRead gbuf1a_1_0_878_rd1_params1 = {};
    gbuf1a_1_0_878_rd1_params1.interleave = true;
    gbuf1a_1_0_878_rd1_params1.vectors_in_column = reshape_1_0_696_->result_layout().chunk_vectors();
    gbuf1a_1_0_878_rd1_params1.interleave_size = reshape_1_0_696_->result_layout().physical_shape()[1];
    gbuf1a_1_0_878_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_878_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_878_->configure_rd_head_1(gbuf1a_1_0_878_rd1_params1, {1});
    gbuf1a_1_0_878_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_879_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_879_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_697");
    gbuf1a_1_0_879_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_879_->configure_wr(gbuf1a_1_0_879_wr_params);
    PmuSetupRead gbuf1a_1_0_879_rd1_params1 = {};
    gbuf1a_1_0_879_rd1_params1.interleave = true;
    gbuf1a_1_0_879_rd1_params1.vectors_in_column = reshape_1_0_697_->result_layout().chunk_vectors();
    gbuf1a_1_0_879_rd1_params1.interleave_size = reshape_1_0_697_->result_layout().physical_shape()[1];
    gbuf1a_1_0_879_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_879_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_879_->configure_rd_head_1(gbuf1a_1_0_879_rd1_params1, {1});
    gbuf1a_1_0_879_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_924_->set_source_context("rnn.py:692:0");
    transpose_1_0_924_->set_op_name("tlir.Transpose");
    transpose_1_0_924_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_698_->set_source_context("rnn.py:692:0");
    reshape_1_0_698_->set_op_name("tlir.Reshape");
    reshape_1_0_698_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_925_->set_source_context("rnn.py:692:0");
    transpose_1_0_925_->set_op_name("tlir.Transpose");
    transpose_1_0_925_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_699_->set_source_context("rnn.py:692:0");
    reshape_1_0_699_->set_op_name("tlir.Reshape");
    reshape_1_0_699_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_926_->set_source_context("rnn.py:692:0");
    transpose_1_0_926_->set_op_name("tlir.Transpose");
    transpose_1_0_926_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_700_->set_source_context("rnn.py:692:0");
    reshape_1_0_700_->set_op_name("tlir.Reshape");
    reshape_1_0_700_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_927_->set_source_context("rnn.py:692:0");
    transpose_1_0_927_->set_op_name("tlir.Transpose");
    transpose_1_0_927_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_701_->set_source_context("rnn.py:692:0");
    reshape_1_0_701_->set_op_name("tlir.Reshape");
    reshape_1_0_701_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_880_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_880_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_698");
    gbuf1a_1_0_880_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_880_->configure_wr(gbuf1a_1_0_880_wr_params);
    PmuSetupRead gbuf1a_1_0_880_rd1_params1 = {};
    gbuf1a_1_0_880_rd1_params1.interleave = true;
    gbuf1a_1_0_880_rd1_params1.vectors_in_column = reshape_1_0_698_->result_layout().chunk_vectors();
    gbuf1a_1_0_880_rd1_params1.interleave_size = reshape_1_0_698_->result_layout().physical_shape()[1];
    gbuf1a_1_0_880_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_880_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_880_->configure_rd_head_1(gbuf1a_1_0_880_rd1_params1, {1});
    gbuf1a_1_0_880_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_881_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_881_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_699");
    gbuf1a_1_0_881_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_881_->configure_wr(gbuf1a_1_0_881_wr_params);
    PmuSetupRead gbuf1a_1_0_881_rd1_params1 = {};
    gbuf1a_1_0_881_rd1_params1.interleave = true;
    gbuf1a_1_0_881_rd1_params1.vectors_in_column = reshape_1_0_699_->result_layout().chunk_vectors();
    gbuf1a_1_0_881_rd1_params1.interleave_size = reshape_1_0_699_->result_layout().physical_shape()[1];
    gbuf1a_1_0_881_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_881_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_881_->configure_rd_head_1(gbuf1a_1_0_881_rd1_params1, {1});
    gbuf1a_1_0_881_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_882_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_882_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_700");
    gbuf1a_1_0_882_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_882_->configure_wr(gbuf1a_1_0_882_wr_params);
    PmuSetupRead gbuf1a_1_0_882_rd1_params1 = {};
    gbuf1a_1_0_882_rd1_params1.interleave = true;
    gbuf1a_1_0_882_rd1_params1.vectors_in_column = reshape_1_0_700_->result_layout().chunk_vectors();
    gbuf1a_1_0_882_rd1_params1.interleave_size = reshape_1_0_700_->result_layout().physical_shape()[1];
    gbuf1a_1_0_882_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_882_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_882_->configure_rd_head_1(gbuf1a_1_0_882_rd1_params1, {1});
    gbuf1a_1_0_882_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_883_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_883_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_701");
    gbuf1a_1_0_883_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_883_->configure_wr(gbuf1a_1_0_883_wr_params);
    PmuSetupRead gbuf1a_1_0_883_rd1_params1 = {};
    gbuf1a_1_0_883_rd1_params1.interleave = true;
    gbuf1a_1_0_883_rd1_params1.vectors_in_column = reshape_1_0_701_->result_layout().chunk_vectors();
    gbuf1a_1_0_883_rd1_params1.interleave_size = reshape_1_0_701_->result_layout().physical_shape()[1];
    gbuf1a_1_0_883_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_883_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_883_->configure_rd_head_1(gbuf1a_1_0_883_rd1_params1, {1});
    gbuf1a_1_0_883_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_920_->set_source_context("rnn.py:692:0");
    transpose_1_0_920_->set_op_name("tlir.Transpose");
    transpose_1_0_920_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_702_->set_source_context("rnn.py:692:0");
    reshape_1_0_702_->set_op_name("tlir.Reshape");
    reshape_1_0_702_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_921_->set_source_context("rnn.py:692:0");
    transpose_1_0_921_->set_op_name("tlir.Transpose");
    transpose_1_0_921_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_703_->set_source_context("rnn.py:692:0");
    reshape_1_0_703_->set_op_name("tlir.Reshape");
    reshape_1_0_703_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_922_->set_source_context("rnn.py:692:0");
    transpose_1_0_922_->set_op_name("tlir.Transpose");
    transpose_1_0_922_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_704_->set_source_context("rnn.py:692:0");
    reshape_1_0_704_->set_op_name("tlir.Reshape");
    reshape_1_0_704_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    transpose_1_0_923_->set_source_context("rnn.py:692:0");
    transpose_1_0_923_->set_op_name("tlir.Transpose");
    transpose_1_0_923_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    reshape_1_0_705_->set_source_context("rnn.py:692:0");
    reshape_1_0_705_->set_op_name("tlir.Reshape");
    reshape_1_0_705_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_884_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_884_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_702");
    gbuf1a_1_0_884_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_884_->configure_wr(gbuf1a_1_0_884_wr_params);
    PmuSetupRead gbuf1a_1_0_884_rd1_params1 = {};
    gbuf1a_1_0_884_rd1_params1.interleave = true;
    gbuf1a_1_0_884_rd1_params1.vectors_in_column = reshape_1_0_702_->result_layout().chunk_vectors();
    gbuf1a_1_0_884_rd1_params1.interleave_size = reshape_1_0_702_->result_layout().physical_shape()[1];
    gbuf1a_1_0_884_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_884_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_884_->configure_rd_head_1(gbuf1a_1_0_884_rd1_params1, {1});
    gbuf1a_1_0_884_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_885_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_885_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_703");
    gbuf1a_1_0_885_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_885_->configure_wr(gbuf1a_1_0_885_wr_params);
    PmuSetupRead gbuf1a_1_0_885_rd1_params1 = {};
    gbuf1a_1_0_885_rd1_params1.interleave = true;
    gbuf1a_1_0_885_rd1_params1.vectors_in_column = reshape_1_0_703_->result_layout().chunk_vectors();
    gbuf1a_1_0_885_rd1_params1.interleave_size = reshape_1_0_703_->result_layout().physical_shape()[1];
    gbuf1a_1_0_885_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_885_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_885_->configure_rd_head_1(gbuf1a_1_0_885_rd1_params1, {1});
    gbuf1a_1_0_885_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_886_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_886_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_704");
    gbuf1a_1_0_886_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_886_->configure_wr(gbuf1a_1_0_886_wr_params);
    PmuSetupRead gbuf1a_1_0_886_rd1_params1 = {};
    gbuf1a_1_0_886_rd1_params1.interleave = true;
    gbuf1a_1_0_886_rd1_params1.vectors_in_column = reshape_1_0_704_->result_layout().chunk_vectors();
    gbuf1a_1_0_886_rd1_params1.interleave_size = reshape_1_0_704_->result_layout().physical_shape()[1];
    gbuf1a_1_0_886_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_886_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_886_->configure_rd_head_1(gbuf1a_1_0_886_rd1_params1, {1});
    gbuf1a_1_0_886_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_1_0_887_wr_params = {};
    SN_ASSERT(gbuf1a_1_0_887_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of reshape_1_0_705");
    gbuf1a_1_0_887_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_1_0_887_->configure_wr(gbuf1a_1_0_887_wr_params);
    PmuSetupRead gbuf1a_1_0_887_rd1_params1 = {};
    gbuf1a_1_0_887_rd1_params1.interleave = true;
    gbuf1a_1_0_887_rd1_params1.vectors_in_column = reshape_1_0_705_->result_layout().chunk_vectors();
    gbuf1a_1_0_887_rd1_params1.interleave_size = reshape_1_0_705_->result_layout().physical_shape()[1];
    gbuf1a_1_0_887_rd1_params1.enable_backing_pmu_read = true;
    gbuf1a_1_0_887_rd1_params1.metapipe_iter_counts = sn::Dimensions{};
    gbuf1a_1_0_887_->configure_rd_head_1(gbuf1a_1_0_887_rd1_params1, {1});
    gbuf1a_1_0_887_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params_assign = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params_assign.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params_assign.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params_assign, node_constants::Context::kOne);
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t");
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_rd1_params1 = ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->input_read_params(GemmSubnet::kFwdPropB);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_rd1_params1, {1, 1, 1, tbuf2u_1_0_401_->param().buffer_depth, 2, 2});
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params_assign = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params_assign.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__cell_r_t");
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params_assign.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params_assign, node_constants::Context::kOne);
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_recompute__cell_r_t");
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->configure_wr(ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_rd1_params0 = {};
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_rd1_params0, {1, 1, 1, tbuf2u_1_0_401_->param().buffer_depth, 2, 2});
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params_assign = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params_assign.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params_assign.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params_assign, node_constants::Context::kOne);
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t");
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_rd1_params0 = {};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_rd1_params0, {1, 2, 2, 2, 2, 2});
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params_assign = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params_assign.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params_assign.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params_assign, node_constants::Context::kOne);
    PmuSetupWrite ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params = {};
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->configure_wr(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_wr_params);
    PmuSetupRead ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_rd1_params0 = ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum");
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->configure_rd_head_1(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_rd1_params0, {1, 2, 2, 2, 2, 2});
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->configure_node();
    
    // logreg_lstm.py:218:0: tlir.Index
    ptconvlstm__indexselect_recompute__->set_source_context("logreg_lstm.py:218:0");
    ptconvlstm__indexselect_recompute__->set_op_name("tlir.Index");
    ptconvlstm__indexselect_recompute__->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_855_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_855_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0");
    gbuf2a_1_0_855_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_855_->configure_wr(gbuf2a_1_0_855_wr_params);
    PmuSetupRead gbuf2a_1_0_855_rd1_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->input_read_params(GemmSubnet::IO::kBackPropB);
    gbuf2a_1_0_855_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_855_->configure_rd_head_1(gbuf2a_1_0_855_rd1_params2, {1, 2});
    gbuf2a_1_0_855_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_859_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_859_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1");
    gbuf2a_1_0_859_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_859_->configure_wr(gbuf2a_1_0_859_wr_params);
    PmuSetupRead gbuf2a_1_0_859_rd1_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->input_read_params(GemmSubnet::IO::kBackPropB);
    gbuf2a_1_0_859_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_859_->configure_rd_head_1(gbuf2a_1_0_859_rd1_params2, {1, 2});
    gbuf2a_1_0_859_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_863_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_863_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2");
    gbuf2a_1_0_863_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_863_->configure_wr(gbuf2a_1_0_863_wr_params);
    PmuSetupRead gbuf2a_1_0_863_rd1_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->input_read_params(GemmSubnet::IO::kBackPropB);
    gbuf2a_1_0_863_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_863_->configure_rd_head_1(gbuf2a_1_0_863_rd1_params2, {1, 2});
    gbuf2a_1_0_863_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf2a_1_0_867_wr_params = {};
    SN_ASSERT(gbuf2a_1_0_867_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3");
    gbuf2a_1_0_867_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_867_->configure_wr(gbuf2a_1_0_867_wr_params);
    PmuSetupRead gbuf2a_1_0_867_rd1_params2 = ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->input_read_params(GemmSubnet::IO::kBackPropB);
    gbuf2a_1_0_867_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(100)};
    gbuf2a_1_0_867_->configure_rd_head_1(gbuf2a_1_0_867_rd1_params2, {1, 2});
    gbuf2a_1_0_867_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // logreg_lstm.py:222:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.Reshape
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Buffer
    RAILConnectInterface::connect_by_interface(rbuf1u_1_0_402_->get_rail_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput), tbuf2a_1_0_850_->get_rail_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput));
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Index
    std::unordered_map<int64_t, std::vector<RAILConnectInterface>>ptconvlstm__indexselect_recompute__rail_connect_interface_map = {};
    ptconvlstm__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kLutRd, std::vector<RAILConnectInterface> {tbuf2u_1_0_401_->get_rail_connect_interface(ptconvlstm__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kLutRd),TBufferContext::Output::kDataOutput)}));
    ptconvlstm__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kIndexRd, std::vector<RAILConnectInterface> {tbuf2a_1_0_850_->get_rail_connect_interface(ptconvlstm__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kIndexRd),TBufferContext::Output::kDataOutput)}));
    if (ptconvlstm__indexselect_recompute__rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvlstm__indexselect_recompute__rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_1_0_406_->get_rail_connect_interface(ptconvlstm__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvlstm__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_1_0_406_->get_rail_connect_interface(ptconvlstm__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    if (ptconvlstm__indexselect_recompute__rail_connect_interface_map.count(RAILIndex::IO::kOutWr) > 0)
        ptconvlstm__indexselect_recompute__rail_connect_interface_map[RAILIndex::IO::kOutWr].push_back(tbuf2u_1_0_409_->get_rail_connect_interface(ptconvlstm__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput));
    else
        ptconvlstm__indexselect_recompute__rail_connect_interface_map.insert(std::make_pair(RAILIndex::IO::kOutWr, std::vector<RAILConnectInterface> {tbuf2u_1_0_409_->get_rail_connect_interface(ptconvlstm__indexselect_recompute__->get_tbuf_ctx_names(RAILIndex::IO::kOutWr),TBufferContext::Input::kDataInput)}));
    ptconvlstm__indexselect_recompute__->rail_custom_connect(ptconvlstm__indexselect_recompute__rail_connect_interface_map);
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.IndexAdd
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // logreg_lstm.py:218:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddN
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_401_, tbuf2u_1_0_406_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_1_0_401_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_401_, tbuf2u_1_0_409_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2u_1_0_401_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn1));
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_401_, tbuf2u_1_0_406_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_1_0_401_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn2));
    TBuffer::tconnect_m_to_n(tbuf2u_1_0_401_, tbuf2u_1_0_409_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2u_1_0_401_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kLutRd), TBufferContext::Input::kRdEn3));
    TBuffer::tconnect_m_to_n(rbuf1u_1_0_402_, tbuf2a_1_0_850_->ctrl_output_ops(TBuffer::Output::kTailWrDone), rbuf1u_1_0_402_->ctrl_input_ops("kDefaultRead1", TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(rbuf1u_1_0_402_, tbuf2a_1_0_850_->ctrl_output_ops(TBuffer::Output::kTailRdDone), rbuf1u_1_0_402_->ctrl_input_ops("kDefaultRead1", TBufferContext::Input::kRdEn2));
    TBuffer::tconnect_m_to_n(tbuf2a_1_0_850_, tbuf2u_1_0_406_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2a_1_0_850_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd), TBufferContext::Input::kRdEn));
    TBuffer::tconnect_m_to_n(tbuf2a_1_0_850_, tbuf2u_1_0_409_->ctrl_output_ops(TBuffer::Output::kTailWrDone), tbuf2a_1_0_850_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd), TBufferContext::Input::kRdEn1));
    TBuffer::tconnect_m_to_n(tbuf2a_1_0_850_, tbuf2u_1_0_406_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2a_1_0_850_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd), TBufferContext::Input::kRdEn2));
    TBuffer::tconnect_m_to_n(tbuf2a_1_0_850_, tbuf2u_1_0_409_->ctrl_output_ops(TBuffer::Output::kTailRdDone), tbuf2a_1_0_850_->ctrl_input_ops(ptconvlstm__indexselect_recompute__->get_read_enable_ctx_names(RAILIndex::IO::kIndexRd), TBufferContext::Input::kRdEn3));
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Compile
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->compile(partition_1_0_)), "RAIL compilation failed for section 1!");
    SN_ASSERT(succeeded(mlir::rail::RAIL::rail->global_compile(partition_1_0_, 0)), "RAIL global compile failed for section 1!");
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node finalize 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf1a_1_0_842_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_->finalize();
    gbuf1a_1_0_843_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_->finalize();
    gbuf1a_1_0_844_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_->finalize();
    gbuf1a_1_0_845_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->finalize();
    gbuf4a_1_0_846_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->finalize();
    gbuf1a_1_0_962_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->finalize();
    gbuf1a_1_0_961_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__add_0_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->finalize();
    gbuf1a_1_0_964_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->finalize();
    gbuf1a_1_0_963_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__add_1_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->finalize();
    gbuf1a_1_0_966_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->finalize();
    gbuf1a_1_0_965_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__add_2_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->finalize();
    gbuf1a_1_0_968_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->finalize();
    gbuf1a_1_0_967_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__i_t_->finalize();
    gbuf1a_1_0_970_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__f_t_->finalize();
    gbuf1a_1_0_969_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__g_t_->finalize();
    gbuf1a_1_0_971_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->finalize();
    gbuf1a_1_0_974_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__mul0_->finalize();
    gbuf1a_1_0_972_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__mul1_->finalize();
    gbuf1a_1_0_973_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__cell_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->finalize();
    gbuf1a_1_0_975_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->finalize();
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->finalize();
    gbuf4u_1_0_399_->finalize();
    ptconvlstm__reshape_2_recompute__->finalize();
    tbuf2u_1_0_401_->finalize();
    rbuf1u_1_0_402_->finalize();
    tbuf2a_1_0_850_->finalize();
    ptconvlstm__indexselect_recompute__->finalize();
    tbuf2u_1_0_406_->finalize();
    ptconvlstm__dense_layer__linear_t_input0_recompute__->finalize();
    tbuf2u_1_0_409_->finalize();
    ptconvlstm__dense_layer__linear_recompute__->finalize();
    gbuf2u_1_0_411_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_recompute__->finalize();
    reshape_1_0_630_->finalize();
    ptconvlstm__criterion__mseloss_bwd_sub_->finalize();
    scale_1_0_632_->finalize();
    scale_1_0_633_->finalize();
    gbuf4u_1_0_419_->finalize();
    reshape_1_0_634_->finalize();
    gbuf2u_1_0_421_->finalize();
    reshape_1_0_635_->finalize();
    layout_cast_1_0_928_->finalize();
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->finalize();
    gbuf2u_1_0_426_->finalize();
    gbuf1a_1_0_851_->finalize();
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->finalize();
    gbuf7u_1_0_428_->finalize();
    gbuf2u_1_0_429_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->finalize();
    gbuf2u_1_0_431_->finalize();
    layout_cast_1_0_996_->finalize();
    ptconvlstm__dense_layer__linear_t_input0_bwd_->finalize();
    gbuf12u_1_0_437_->finalize();
    ptconvlstm__indexselect_bwd_loss_just_index_->finalize();
    gbuf4u_1_0_440_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->finalize();
    gbuf3u_1_0_443_->finalize();
    gbuf3u_1_0_445_->finalize();
    gbuf3u_1_0_447_->finalize();
    gbuf3u_1_0_449_->finalize();
    gbuf3u_1_0_451_->finalize();
    gbuf1a_1_0_1007_->finalize();
    gbuf2a_1_0_938_->finalize();
    gbuf2u_1_0_453_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->finalize();
    gbuf2a_1_0_937_->finalize();
    gbuf2u_1_0_455_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_output_g_t_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->finalize();
    gbuf1a_1_0_1003_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->finalize();
    gbuf1a_1_0_1008_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->finalize();
    gbuf1a_1_0_976_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->finalize();
    gbuf1a_1_0_977_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->finalize();
    gbuf1a_1_0_1004_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->finalize();
    gbuf1a_1_0_991_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->finalize();
    gbuf1a_1_0_982_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->finalize();
    gbuf1a_1_0_983_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->finalize();
    gbuf1a_1_0_1005_->finalize();
    gbuf1a_1_0_1006_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->finalize();
    gbuf1a_1_0_989_->finalize();
    gbuf1a_1_0_891_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_igate_g_->finalize();
    gbuf1a_1_0_988_->finalize();
    gbuf1a_1_0_892_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->finalize();
    gbuf1a_1_0_990_->finalize();
    gbuf1a_1_0_893_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->finalize();
    gbuf2a_1_0_852_->finalize();
    gbuf2a_1_0_857_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->finalize();
    gbuf2a_1_0_853_->finalize();
    gbuf2a_1_0_856_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->finalize();
    gbuf2a_1_0_855_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->finalize();
    gbuf1a_1_0_894_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->finalize();
    gbuf2a_1_0_861_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->finalize();
    gbuf2a_1_0_860_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->finalize();
    gbuf2a_1_0_859_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->finalize();
    gbuf1a_1_0_895_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->finalize();
    gbuf2a_1_0_865_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->finalize();
    gbuf2a_1_0_864_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->finalize();
    gbuf2a_1_0_863_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->finalize();
    gbuf2a_1_0_869_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->finalize();
    gbuf2a_1_0_868_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->finalize();
    gbuf2a_1_0_867_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->finalize();
    gbuf2a_1_0_858_->finalize();
    gbuf2a_1_0_862_->finalize();
    gbuf2a_1_0_866_->finalize();
    gbuf2a_1_0_870_->finalize();
    addn_1_0_688_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_accum_->finalize();
    ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_1_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_2_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_3_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_4_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_5_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_6_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_7_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_8_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_9_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_10_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_11_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_12_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_13_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_14_->finalize();
    ptconvlstm__lstm_layer__lstm_bwd_accum_15_->finalize();
    gbuf2a_1_0_848_->finalize();
    gbuf2a_1_0_847_->finalize();
    gbuf2a_1_0_871_->finalize();
    gbuf2a_1_0_854_->finalize();
    transpose_1_0_912_->finalize();
    reshape_1_0_690_->finalize();
    transpose_1_0_913_->finalize();
    reshape_1_0_691_->finalize();
    transpose_1_0_914_->finalize();
    reshape_1_0_692_->finalize();
    transpose_1_0_915_->finalize();
    reshape_1_0_693_->finalize();
    gbuf1a_1_0_872_->finalize();
    gbuf1a_1_0_873_->finalize();
    gbuf1a_1_0_874_->finalize();
    gbuf1a_1_0_875_->finalize();
    transpose_1_0_916_->finalize();
    reshape_1_0_694_->finalize();
    transpose_1_0_917_->finalize();
    reshape_1_0_695_->finalize();
    transpose_1_0_918_->finalize();
    reshape_1_0_696_->finalize();
    transpose_1_0_919_->finalize();
    reshape_1_0_697_->finalize();
    gbuf1a_1_0_876_->finalize();
    gbuf1a_1_0_877_->finalize();
    gbuf1a_1_0_878_->finalize();
    gbuf1a_1_0_879_->finalize();
    transpose_1_0_924_->finalize();
    reshape_1_0_698_->finalize();
    transpose_1_0_925_->finalize();
    reshape_1_0_699_->finalize();
    transpose_1_0_926_->finalize();
    reshape_1_0_700_->finalize();
    transpose_1_0_927_->finalize();
    reshape_1_0_701_->finalize();
    gbuf1a_1_0_880_->finalize();
    gbuf1a_1_0_881_->finalize();
    gbuf1a_1_0_882_->finalize();
    gbuf1a_1_0_883_->finalize();
    transpose_1_0_920_->finalize();
    reshape_1_0_702_->finalize();
    transpose_1_0_921_->finalize();
    reshape_1_0_703_->finalize();
    transpose_1_0_922_->finalize();
    reshape_1_0_704_->finalize();
    transpose_1_0_923_->finalize();
    reshape_1_0_705_->finalize();
    gbuf1a_1_0_884_->finalize();
    gbuf1a_1_0_885_->finalize();
    gbuf1a_1_0_886_->finalize();
    gbuf1a_1_0_887_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_842_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->get_connect_interface(LoopBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_843_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->get_connect_interface(LoopBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_844_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->get_connect_interface(LoopBuffer::Input::kTailBuffer, true));
    // UnknownFileName:0:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf1a_1_0_845_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->get_connect_interface(LoopBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutable.AccumBuffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_->output_list(ParAccum::Output::kOut)), transpose_1_0_912_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_1_->output_list(ParAccum::Output::kOut)), transpose_1_0_913_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_2_->output_list(ParAccum::Output::kOut)), transpose_1_0_914_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_3_->output_list(ParAccum::Output::kOut)), transpose_1_0_915_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_4_->output_list(ParAccum::Output::kOut)), transpose_1_0_916_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_5_->output_list(ParAccum::Output::kOut)), transpose_1_0_917_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_6_->output_list(ParAccum::Output::kOut)), transpose_1_0_918_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_7_->output_list(ParAccum::Output::kOut)), transpose_1_0_919_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_8_->output_list(ParAccum::Output::kOut)), transpose_1_0_920_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_9_->output_list(ParAccum::Output::kOut)), transpose_1_0_921_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_10_->output_list(ParAccum::Output::kOut)), transpose_1_0_922_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_11_->output_list(ParAccum::Output::kOut)), transpose_1_0_923_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_12_->output_list(ParAccum::Output::kOut)), transpose_1_0_924_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_13_->output_list(ParAccum::Output::kOut)), transpose_1_0_925_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_14_->output_list(ParAccum::Output::kOut)), transpose_1_0_926_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutable.AccumBuffer
    connect_by_interface(get_connect_interface(ptconvlstm__lstm_layer__lstm_bwd_accum_15_->output_list(ParAccum::Output::kOut)), transpose_1_0_927_->get_connect_interface(Transpose::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->get_connect_interface(LoopBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf4a_1_0_846_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(gbuf4a_1_0_846_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(gbuf4a_1_0_846_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    connect_by_interface(gbuf4a_1_0_846_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_962_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_962_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_0_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_961_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_961_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_0_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__add_0_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_recompute__i_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_964_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_964_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_1_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_963_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_963_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_1_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__add_1_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_recompute__f_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_966_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_966_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_2_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_965_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_965_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_2_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__add_2_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_recompute__g_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_968_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_968_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_3_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf1a_1_0_967_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_967_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__add_3_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__add_3_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_recompute__o_t_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__temp_cell_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__mul0_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__i_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_1_0_970_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_970_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__mul1_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__f_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_1_0_969_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_969_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__mul0_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__g_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_1_0_971_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_971_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__mul1_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__o_t_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_1_0_974_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_974_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__hidden_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__mul0_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_972_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_972_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__cell_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__mul1_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_973_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_973_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__cell_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__cell_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->get_connect_interface(UnaryOps::kDefaultInput, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__cell_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_847_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_1_0_975_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_975_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_recompute__hidden_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__hidden_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_848_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(ptconvlstm__lstm_layer__lstm_recompute__hidden_->get_connect_interface(BinaryOps::Output::kOut, false), tbuf2u_1_0_401_->get_connect_interface(std::vector<std::string>{"kDefaultWrite"},TBufferContext::Input::kDataInput, true));
    // logreg_lstm.py:222:0: tlir.Buffer
    // logreg_lstm.py:222:0: tlir.Reshape
    connect_by_interface(gbuf4u_1_0_399_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kB, true));
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Buffer
    connect_by_interface(rbuf1u_1_0_402_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf12u_1_0_437_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_lstm.py:218:0: tlir.Buffer
    // logreg_lstm.py:218:0: tlir.Index
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(tbuf2u_1_0_406_->get_connect_interface(std::vector<std::string>{"kDefaultRead1"},TBufferContext::Output::kDataOutput, false), gbuf7u_1_0_428_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(tbuf2u_1_0_409_->get_connect_interface(ptconvlstm__dense_layer__linear_recompute__->get_tbuf_ctx_names(GemmSubnet::kFwdPropB),TBufferContext::Output::kDataOutput, false), ptconvlstm__dense_layer__linear_recompute__->get_connect_interface(GemmSubnet::CodegenInput::kGenFwdPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    connect_by_interface(ptconvlstm__dense_layer__linear_recompute__->get_connect_interface(GemmSubnet::CodegenOutput::kGenFwdPropOutput, false), gbuf2u_1_0_411_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_411_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    connect_by_interface(ptconvlstm__criterion__mseloss_bwd_sub_->get_connect_interface(BinaryOps::Output::kOut, false), scale_1_0_632_->get_connect_interface(Scale::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    connect_by_interface(scale_1_0_632_->get_connect_interface(Scale::Output::kA_SCALED, false), scale_1_0_633_->get_connect_interface(Scale::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    connect_by_interface(scale_1_0_633_->get_connect_interface(Scale::Output::kA_SCALED, false), gbuf2u_1_0_421_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    connect_by_interface(gbuf2u_1_0_421_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(1, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    connect_by_interface(gbuf4u_1_0_419_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    connect_by_interface(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_426_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->get_connect_interface(0, false), gbuf2u_1_0_429_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks = {};
    for (auto sink : ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->input_list(BigGemm::kB)) {
        ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas = {};
    ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas.push_back(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->get_connect_schema());
    connect_with_schema(gbuf2u_1_0_426_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_schema_sinks, std::move(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_connect_schemas));
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_851_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    { // Partitioned data connection
        for (size_t p = 0; p < ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_m_to_n(ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->output_list(BigGemm::get_partition_output(p)), gbuf2u_1_0_431_->input_list(gbuf2u_1_0_431_->get_tail_input(0, p)));
        }
    } // End partitioned data connection
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    std::vector<DataSink *> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_schema_sinks = {};
    for (auto sink : ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__dense_layer__linear_bwd_weight_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__dense_layer__linear_bwd_weight_grad_a_connect_schemas = {};
    ptconvlstm__dense_layer__linear_bwd_weight_grad_a_connect_schemas.push_back(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_schema());
    connect_with_schema(gbuf7u_1_0_428_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_schema_sinks, std::move(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    connect_by_interface(gbuf2u_1_0_429_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2u_1_0_429_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__dense_layer__linear_bwd_weight_accum_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    connect_by_interface(gbuf2u_1_0_431_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__indexselect_bwd_loss_just_index_->get_connect_interface(IndexAdd::kGradLossIn, true));
    // logreg_lstm.py:218:0: tlir.Buffer
    connect_by_interface(gbuf12u_1_0_437_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__indexselect_bwd_loss_just_index_->get_connect_interface(IndexAdd::kIndices, true));
    // logreg_lstm.py:218:0: tlir.IndexAdd
    connect_by_interface(ptconvlstm__indexselect_bwd_loss_just_index_->get_connect_interface(IndexAdd::kGradLossOut, false), gbuf2a_1_0_937_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf4u_1_0_440_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_1_0_852_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf3u_1_0_443_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf3u_1_0_443_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_893_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf3u_1_0_445_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf3u_1_0_445_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_894_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf3u_1_0_447_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf3u_1_0_447_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_895_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf3u_1_0_449_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf3u_1_0_449_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf3u_1_0_451_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_1007_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(gbuf3u_1_0_451_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_1007_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_938_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_453_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf2u_1_0_453_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2a_1_0_853_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // logreg_lstm.py:218:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_937_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf2u_1_0_455_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    connect_by_interface(gbuf2u_1_0_455_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_1003_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_1003_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_1_0_1003_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_igates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_892_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_891_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), gbuf1a_1_0_1008_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_1008_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_igate_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_976_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_976_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_977_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_977_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_->get_connect_interface(BinaryOps::Output::kOut, false), ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->get_connect_interface(UnaryOps::kDefaultInput, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_->get_connect_interface(UnaryOps::kDefaultOutput, false), gbuf1a_1_0_1004_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_1004_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_1_0_1004_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_ogate_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_991_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_991_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_tanh_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_982_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_982_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_983_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_983_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_1005_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_1006_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_1005_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_1_0_1005_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_igate_g_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_1006_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->get_connect_interface(BinaryOps::Input::kA, true));
    connect_by_interface(gbuf1a_1_0_1006_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_fgate_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_989_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_989_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_891_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_854_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_igate_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_988_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_988_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_892_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_ggate_g_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf1a_1_0_990_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_990_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->get_connect_interface(BinaryOps::Input::kB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_893_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_857_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_856_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_855_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    std::vector<DataSink *> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_schema_sinks = {};
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_connect_schemas = {};
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->get_connect_schema());
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->get_connect_schema());
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->get_connect_schema());
    ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->get_connect_schema());
    connect_with_schema(gbuf2a_1_0_852_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_schema_sinks, std::move(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_857_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_857_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_4_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_12_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    std::vector<DataSink *> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_schema_sinks = {};
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    for (auto sink : ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->input_list(BigGemm::kB)) {
        ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_schema_sinks.push_back(sink);
    }
    std::vector<std::unique_ptr<SuperNode::ConnectSchemaInterface>> ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_connect_schemas = {};
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->get_connect_schema());
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->get_connect_schema());
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->get_connect_schema());
    ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_connect_schemas.push_back(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->get_connect_schema());
    connect_with_schema(gbuf2a_1_0_853_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_schema_sinks, std::move(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_connect_schemas));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_856_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_856_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_8_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_855_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->get_connect_interface(GemmSubnet::CodegenInput::kGenBackPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->get_connect_interface(GemmSubnet::CodegenOutput::kGenBackPropOutput, false), gbuf2a_1_0_858_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_894_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_861_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_860_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_859_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_861_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_861_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_5_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_13_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_860_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_860_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_1_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_9_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_859_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->get_connect_interface(GemmSubnet::CodegenInput::kGenBackPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->get_connect_interface(GemmSubnet::CodegenOutput::kGenBackPropOutput, false), gbuf2a_1_0_862_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf1a_1_0_895_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->get_connect_interface(BinaryOps::Input::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_865_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_864_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_863_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_865_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_865_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_6_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_14_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_864_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_864_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_2_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_10_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_863_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->get_connect_interface(GemmSubnet::CodegenInput::kGenBackPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->get_connect_interface(GemmSubnet::CodegenOutput::kGenBackPropOutput, false), gbuf2a_1_0_866_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_869_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_868_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->get_connect_interface(BinaryOps::Output::kOut, false), gbuf2a_1_0_867_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_869_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_869_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_7_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_15_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_868_->get_connect_interface(GBuffer::Output::kHead0Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumInput, true));
    connect_by_interface(gbuf2a_1_0_868_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kA, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_3_->get_connect_interface(ParAccum::kIn, true));
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->get_connect_interface(BigGemm::kBiasGradAccumOutput, false), ptconvlstm__lstm_layer__lstm_bwd_accum_11_->get_connect_interface(ParAccum::kIn, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Placeholder
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_867_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->get_connect_interface(GemmSubnet::CodegenInput::kGenBackPropB, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    connect_by_interface(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->get_connect_interface(GemmSubnet::CodegenOutput::kGenBackPropOutput, false), gbuf2a_1_0_870_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_858_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), addn_1_0_688_->get_connect_interface(0, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_862_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), addn_1_0_688_->get_connect_interface(1, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_866_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), addn_1_0_688_->get_connect_interface(2, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    connect_by_interface(gbuf2a_1_0_870_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), addn_1_0_688_->get_connect_interface(3, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddN
    connect_by_interface(addn_1_0_688_->get_connect_interface(0, false), gbuf2a_1_0_871_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    connect_m_to_n(gbuf2a_1_0_848_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->input_list(LoopBuffer::Input::kTailBuffer));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    connect_m_to_n(gbuf2a_1_0_847_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->input_list(LoopBuffer::Input::kTailBuffer));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    connect_m_to_n(gbuf2a_1_0_871_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->input_list(LoopBuffer::Input::kTailBuffer));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Assign
    connect_m_to_n(gbuf2a_1_0_854_->output_list(GBuffer::Output::kHead1Buffer), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->input_list(LoopBuffer::Input::kTailBuffer));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_912_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_872_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_913_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_873_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_914_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_874_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_915_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_875_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_916_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_876_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_917_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_877_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_918_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_878_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_919_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_879_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_924_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_880_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_925_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_881_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_926_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_882_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_927_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_883_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_920_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_884_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_921_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_885_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_922_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_886_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    connect_by_interface(transpose_1_0_923_->get_connect_interface(Transpose::kDefaultOutput, false), gbuf1a_1_0_887_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    connect_ctl_1_to_n(tbuf2u_1_0_401_->ctrl_output(TBuffer::Output::kTailWrDone), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_848_->ctrl_output(GBuffer::Output::kTailWrDone), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_847_->ctrl_output(GBuffer::Output::kTailWrDone), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(tbuf2u_1_0_401_->ctrl_output(TBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_848_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn4));
    connect_ctl_1_to_n(gbuf2a_1_0_847_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn5));
    connect_ctl_1_to_n(tbuf2u_1_0_401_->ctrl_output(TBuffer::Output::kTailWrDone), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_848_->ctrl_output(GBuffer::Output::kTailWrDone), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_847_->ctrl_output(GBuffer::Output::kTailWrDone), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(tbuf2u_1_0_401_->ctrl_output(TBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_848_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn4));
    connect_ctl_1_to_n(gbuf2a_1_0_847_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn5));
    auto ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier0_wr = plasma_->create_barrier({gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier0_wr, ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn4));
    auto ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier5, ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn5));
    auto ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_output1_barrier0_wr = plasma_->create_barrier({gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_output1_barrier0_wr, ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn4));
    auto ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_output1_barrier5, ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_->ctrl_input_list(LoopBuffer::Input::kHead1RdEn5));
    gbuf4a_1_0_846_->set_arc_stage_buffer();
    connect_ctl_1_to_n(tbuf2u_1_0_401_->ctrl_output(TBuffer::Output::kTailWrDone), gbuf4a_1_0_846_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_848_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf4a_1_0_846_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_847_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf4a_1_0_846_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(tbuf2u_1_0_401_->ctrl_output(TBuffer::Output::kTailRdDone), gbuf4a_1_0_846_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_848_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4a_1_0_846_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    connect_ctl_1_to_n(gbuf2a_1_0_847_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4a_1_0_846_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    gbuf4u_1_0_399_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_421_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf4u_1_0_399_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_421_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4u_1_0_399_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    tbuf2u_1_0_401_->set_arc_stage_buffer();
    rbuf1u_1_0_402_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf12u_1_0_437_->ctrl_output(GBuffer::Output::kTailWrDone), rbuf1u_1_0_402_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn1));
    connect_ctl_1_to_n(gbuf12u_1_0_437_->ctrl_output(GBuffer::Output::kTailRdDone), rbuf1u_1_0_402_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn3));
    tbuf2a_1_0_850_->set_arc_stage_buffer();
    tbuf2u_1_0_406_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf7u_1_0_428_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_1_0_406_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf7u_1_0_428_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_1_0_406_->ctrl_input_list("kDefaultRead1", TBufferContext::Input::kRdEn1));
    tbuf2u_1_0_409_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_411_->ctrl_output(GBuffer::Output::kTailWrDone), tbuf2u_1_0_409_->ctrl_input_list(ptconvlstm__dense_layer__linear_recompute__->get_read_enable_ctx_names(GemmSubnet::kFwdPropB), TBufferContext::Input::kRdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_411_->ctrl_output(GBuffer::Output::kTailRdDone), tbuf2u_1_0_409_->ctrl_input_list(ptconvlstm__dense_layer__linear_recompute__->get_read_enable_ctx_names(GemmSubnet::kFwdPropB), TBufferContext::Input::kRdEn1));
    gbuf2u_1_0_411_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_421_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_411_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_421_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_411_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf4u_1_0_419_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_426_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf4u_1_0_419_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_429_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf4u_1_0_419_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_426_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4u_1_0_419_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_429_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4u_1_0_419_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_1_0_421_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_426_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_421_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_429_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_421_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2u_1_0_426_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_421_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2u_1_0_429_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_421_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    gbuf2u_1_0_426_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_431_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_426_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_431_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_426_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    { // Connect partitioned output control
        for(size_t p = 0; p < ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->num_partitions(); ++p) {
            connect_ctl_1_to_n(gbuf2u_1_0_431_->ctrl_output(gbuf2u_1_0_431_->get_pacing_wr_done(0, p)), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_sp_wr_done(p)));
            if (ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->using_write_fronting_pmu()) {
                connect_ctl_1_to_n(gbuf2u_1_0_431_->ctrl_output(gbuf2u_1_0_431_->get_fronting_rd_done(0, p)), ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->ctrl_input_list(BigGemm::get_partition_fronting_rd_done(p)));
            }
        }
        ptconvlstm__dense_layer__linear_bwd_loss_grad_b_->setup_output_bw_instrumentation();
    } // End partitioned control connections
    gbuf7u_1_0_428_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_accum_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf7u_1_0_428_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->ctrl_output(ParAccum::Output::kAccumulatorsDone), gbuf7u_1_0_428_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_429_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2u_1_0_429_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2u_1_0_429_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2u_1_0_431_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_937_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_431_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_937_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_431_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf12u_1_0_437_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_937_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf12u_1_0_437_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_937_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf12u_1_0_437_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(ptconvlstm__indexselect_bwd_loss_just_index_->ctrl_output(IndexAdd::kIndicesRdDone), gbuf12u_1_0_437_->ctrl_input_list(gbuf12u_1_0_437_->get_pacing_order_enable(1)));
    connect_ctl_1_to_n(gbuf2a_1_0_937_->ctrl_output(GBuffer::Output::kTailRdDone), ptconvlstm__indexselect_bwd_loss_just_index_->ctrl_input_list(IndexAdd::kRdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_937_->ctrl_output(GBuffer::Output::kPacingWrDone), ptconvlstm__indexselect_bwd_loss_just_index_->ctrl_input_list(IndexAdd::kWrSpecialDone));
    gbuf4u_1_0_440_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_852_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf4u_1_0_440_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_852_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf4u_1_0_440_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf3u_1_0_443_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier0_wr, gbuf3u_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf3u_1_0_443_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_443_output1_barrier5, gbuf3u_1_0_443_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    gbuf3u_1_0_445_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier0_wr, gbuf3u_1_0_445_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_445_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_445_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_445_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_445_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf3u_1_0_445_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_445_output1_barrier5, gbuf3u_1_0_445_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    gbuf3u_1_0_447_->set_arc_stage_buffer();
    auto gbuf3u_1_0_447_output1_barrier0_wr = plasma_->create_barrier({gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_447_output1_barrier0_wr, gbuf3u_1_0_447_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_447_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_447_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_447_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_447_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf3u_1_0_447_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_447_output1_barrier5, gbuf3u_1_0_447_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    gbuf3u_1_0_449_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier0_wr, gbuf3u_1_0_449_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_449_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_449_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_449_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_449_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf3u_1_0_449_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_449_output1_barrier5, gbuf3u_1_0_449_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    gbuf3u_1_0_451_->set_arc_stage_buffer();
    auto gbuf3u_1_0_451_output1_barrier0_wr = plasma_->create_barrier({gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailWrDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_451_output1_barrier0_wr, gbuf3u_1_0_451_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_451_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_451_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_451_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf3u_1_0_451_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf3u_1_0_451_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf3u_1_0_451_output1_barrier5, gbuf3u_1_0_451_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    auto ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_wr_done_barrier = plasma_->create_barrier({gbuf2a_1_0_938_->ctrl_output(GBuffer::Output::kTailWrDone)});
    auto ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_rd_done_barrier = plasma_->create_barrier({gbuf2a_1_0_938_->ctrl_output(GBuffer::Output::kTailRdDone)});
    add_node_ctrl_output(kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488CtrlWrDone, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_wr_done_barrier);
    add_node_ctrl_output(kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488CtrlRdDone, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_rd_done_barrier);
    gbuf2a_1_0_938_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_453_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_938_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_453_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_938_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_453_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_853_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2u_1_0_453_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_853_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_453_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_937_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2u_1_0_455_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_937_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2u_1_0_455_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_937_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2u_1_0_455_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_output1_barrier0_wr, gbuf2u_1_0_455_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_865_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_455_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    connect_ctl_1_to_n(gbuf2a_1_0_864_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_455_->ctrl_input_list(GBuffer::Input::kHead1RdEn2));
    connect_ctl_1_to_n(gbuf2a_1_0_863_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_455_->ctrl_input_list(GBuffer::Input::kHead1RdEn3));
    connect_ctl_1_to_n(gbuf2a_1_0_857_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2u_1_0_455_->ctrl_input_list(GBuffer::Input::kHead1RdEn4));
    auto gbuf2u_1_0_455_output1_barrier5 = plasma_->create_barrier({gbuf2a_1_0_856_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_854_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_861_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_860_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_869_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_868_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_output(GBuffer::Output::kTailRdDone)});
    connect_ctl_1_to_n(gbuf2u_1_0_455_output1_barrier5, gbuf2u_1_0_455_->ctrl_input_list(GBuffer::Input::kHead1RdEn5));
    gbuf2a_1_0_852_->set_arc_stage_buffer();
    auto gbuf2a_1_0_852_output1_barrier0 = plasma_->create_barrier({ptconvlstm__lstm_layer__lstm_bwd_accum_4_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_12_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_5_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_13_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_6_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_14_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_7_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_15_->ctrl_output(ParAccum::Output::kAccumulatorsDone)});
    connect_ctl_1_to_n(gbuf2a_1_0_852_output1_barrier0, gbuf2a_1_0_852_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_857_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_857_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_857_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_853_->set_arc_stage_buffer();
    auto gbuf2a_1_0_853_output1_barrier0 = plasma_->create_barrier({ptconvlstm__lstm_layer__lstm_bwd_accum_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_8_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_1_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_9_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_2_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_10_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_3_->ctrl_output(ParAccum::Output::kAccumulatorsDone), ptconvlstm__lstm_layer__lstm_bwd_accum_11_->ctrl_output(ParAccum::Output::kAccumulatorsDone)});
    connect_ctl_1_to_n(gbuf2a_1_0_853_output1_barrier0, gbuf2a_1_0_853_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_856_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_856_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_856_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_855_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_858_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_855_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_858_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_855_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_861_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_861_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_861_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_860_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_860_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_860_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_859_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_862_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_859_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_862_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_859_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_865_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_865_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_865_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_864_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_864_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_864_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_863_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_866_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_863_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_866_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_863_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_869_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_869_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_869_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_868_->set_arc_stage_buffer();
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->ctrl_output(BigGemm::kBiasGradPmuRdDone), gbuf2a_1_0_868_->ctrl_input_list(GBuffer::Input::kHead0RdEn));
    connect_ctl_1_to_n(ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_->ctrl_output(BigGemm::kRdDoneA), gbuf2a_1_0_868_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    gbuf2a_1_0_867_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_870_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_867_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_870_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_867_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_858_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_858_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_858_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_862_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_862_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_862_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_866_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_866_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_866_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_870_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_1_0_870_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_1_0_871_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_1_0_870_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_1_0_848_->set_arc_stage_buffer();
    gbuf2a_1_0_847_->set_arc_stage_buffer();
    gbuf2a_1_0_871_->set_arc_stage_buffer();
    gbuf2a_1_0_854_->set_arc_stage_buffer();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(klstm_operand_0_1_0_167, gbuf1a_1_0_842_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(klstm_operand_1_1_0_170, gbuf1a_1_0_843_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185, rbuf1u_1_0_402_->input_list(FrontingPmu::get_tbuf_ctx_names(FrontingPmu::kOutput),TBufferContext::Input::kDataInput));
    // Input ptconvlstm__dense_layer__weight_1_0_189 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_1_0_190 uses a weight buffer
    add_node_input(kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195, scale_1_0_633_->input_list(Scale::Input::kB));
    add_node_input(kptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217, gbuf1a_1_0_844_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220, gbuf1a_1_0_845_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__view__outputs__0__grad_1_0_484, gbuf4u_1_0_419_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_1_0_485, gbuf4a_1_0_846_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__weight_ih_l0_1_0_586 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_1_0_587 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_1_0_588 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_1_0_589 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_590 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_591 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_592 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_593 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_1_0_594 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_1_0_595 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_1_0_596 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_1_0_597 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_1_0_598 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_1_0_599 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_1_0_600 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_1_0_601 uses a weight buffer
    add_node_input(kout_window_1_0_487, gbuf4u_1_0_399_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__dense_layer__weight_1_0_638, gbuf1a_1_0_851_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kinp_window_1_0_486, gbuf4u_1_0_440_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490, gbuf3u_1_0_443_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491, gbuf3u_1_0_445_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492, gbuf3u_1_0_447_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493, gbuf3u_1_0_449_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494, gbuf3u_1_0_451_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488, gbuf2a_1_0_938_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_757 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_771 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_785 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_1_0_799 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor, ptconvlstm__dense_layer__linear_bwd_weight_accum_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvlstm__dense_layer__linear_bwd_weight_tensor1, ptconvlstm__dense_layer__linear_bwd_weight_accum_1_->output_list(ParAccum::Output::kOut));
    add_node_output(kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300, gbuf1a_1_0_872_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301, gbuf1a_1_0_873_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302, gbuf1a_1_0_874_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303, gbuf1a_1_0_875_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304, gbuf1a_1_0_876_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305, gbuf1a_1_0_877_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306, gbuf1a_1_0_878_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307, gbuf1a_1_0_879_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308, gbuf1a_1_0_880_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309, gbuf1a_1_0_881_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310, gbuf1a_1_0_882_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311, gbuf1a_1_0_883_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312, gbuf1a_1_0_884_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313, gbuf1a_1_0_885_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314, gbuf1a_1_0_886_->output_list(GBuffer::Output::kHead1Buffer));
    add_node_output(kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315, gbuf1a_1_0_887_->output_list(GBuffer::Output::kHead1Buffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Control Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Placement Anchors 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ LinearGrad Input Hints
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->set_linear_grad_b_input_hint(1);
    gbuf1a_1_0_967_->set_linear_grad_b_input_hint(1);
    ptconvlstm__lstm_layer__lstm_recompute__add_3_->set_linear_grad_b_input_hint(1);
    ptconvlstm__lstm_layer__lstm_recompute__o_t_->set_linear_grad_b_input_hint(1);
    gbuf1a_1_0_974_->set_linear_grad_b_input_hint(1);
    ptconvlstm__lstm_layer__lstm_recompute__hidden_->set_linear_grad_b_input_hint(1);
    ptconvlstm__lstm_layer__lstm_recompute__output_i_t_->set_linear_grad_b_input_hint(1);
    tbuf2u_1_0_401_->set_linear_grad_b_input_hint(1);
    ptconvlstm__indexselect_recompute__->set_linear_grad_b_input_hint(1);
    tbuf2u_1_0_406_->set_linear_grad_b_input_hint(1);
    ptconvlstm__dense_layer__linear_t_input0_recompute__->set_linear_grad_b_input_hint(1);
    gbuf4u_1_0_419_->set_linear_grad_a_input_hint(1);
    reshape_1_0_634_->set_linear_grad_a_input_hint(1);
    layout_cast_1_0_928_->set_linear_grad_a_input_hint(1);
    ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_->set_linear_grad_a_input_hint(1);
    gbuf7u_1_0_428_->set_linear_grad_b_input_hint(1);
    gbuf2u_1_0_429_->set_linear_grad_a_input_hint(1);
    gbuf4u_1_0_440_->set_linear_grad_b_input_hint(8);
    ptconvlstm__lstm_layer__lstm_bwd_input_i_t_->set_linear_grad_b_input_hint(8);
    gbuf3u_1_0_443_->set_linear_grad_a_input_hint(3);
    gbuf3u_1_0_445_->set_linear_grad_a_input_hint(6);
    gbuf3u_1_0_447_->set_linear_grad_a_input_hint(9);
    gbuf3u_1_0_449_->set_linear_grad_a_input_hint(12);
    gbuf2a_1_0_938_->set_linear_grad_b_input_hint(9);
    gbuf2u_1_0_453_->set_linear_grad_b_input_hint(9);
    ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_->set_linear_grad_b_input_hint(9);
    gbuf1a_1_0_893_->set_linear_grad_a_input_hint(3);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_->set_linear_grad_a_input_hint(3);
    gbuf2a_1_0_852_->set_linear_grad_b_input_hint(8);
    gbuf2a_1_0_857_->set_linear_grad_a_input_hint(2);
    gbuf2a_1_0_853_->set_linear_grad_b_input_hint(9);
    gbuf2a_1_0_856_->set_linear_grad_a_input_hint(3);
    gbuf1a_1_0_894_->set_linear_grad_a_input_hint(6);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_->set_linear_grad_a_input_hint(6);
    gbuf2a_1_0_861_->set_linear_grad_a_input_hint(5);
    gbuf2a_1_0_860_->set_linear_grad_a_input_hint(6);
    gbuf1a_1_0_895_->set_linear_grad_a_input_hint(9);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_->set_linear_grad_a_input_hint(9);
    gbuf2a_1_0_865_->set_linear_grad_a_input_hint(8);
    gbuf2a_1_0_864_->set_linear_grad_a_input_hint(9);
    ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_->set_linear_grad_a_input_hint(12);
    gbuf2a_1_0_869_->set_linear_grad_a_input_hint(11);
    gbuf2a_1_0_868_->set_linear_grad_a_input_hint(12);
    
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
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_2_0_939_wr_params = {};
    gbuf1a_2_0_939_wr_params.is_transpose = true;
    gbuf1a_2_0_939_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_939_->configure_wr(gbuf1a_2_0_939_wr_params);
    PmuSetupRead gbuf1a_2_0_939_rd1_params2 = {};
    gbuf1a_2_0_939_rd1_params2.is_transpose = true;
    gbuf1a_2_0_939_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_939_->configure_rd_head_1(gbuf1a_2_0_939_rd1_params2, {1});
    gbuf1a_2_0_939_->configure_node();
    
    // ptconvlstm__lstm_layer__weight_ih_l0:0:0: tlir.SGD
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_source_context("ptconvlstm__lstm_layer__weight_ih_l0:0:0");
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_2_0_940_wr_params = {};
    gbuf1a_2_0_940_wr_params.is_transpose = true;
    gbuf1a_2_0_940_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_940_->configure_wr(gbuf1a_2_0_940_wr_params);
    PmuSetupRead gbuf1a_2_0_940_rd1_params2 = {};
    gbuf1a_2_0_940_rd1_params2.is_transpose = true;
    gbuf1a_2_0_940_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_940_->configure_rd_head_1(gbuf1a_2_0_940_rd1_params2, {1});
    gbuf1a_2_0_940_->configure_node();
    
    // ptconvlstm__lstm_layer__weight_hh_l0:0:0: tlir.SGD
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_source_context("ptconvlstm__lstm_layer__weight_hh_l0:0:0");
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_2_0_941_wr_params = {};
    gbuf1a_2_0_941_wr_params.is_transpose = true;
    gbuf1a_2_0_941_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_941_->configure_wr(gbuf1a_2_0_941_wr_params);
    PmuSetupRead gbuf1a_2_0_941_rd1_params2 = {};
    gbuf1a_2_0_941_rd1_params2.is_transpose = true;
    gbuf1a_2_0_941_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_941_->configure_rd_head_1(gbuf1a_2_0_941_rd1_params2, {1});
    gbuf1a_2_0_941_->configure_node();
    
    // ptconvlstm__lstm_layer__bias_ih_l0:0:0: tlir.SGD
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_source_context("ptconvlstm__lstm_layer__bias_ih_l0:0:0");
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->configure_node();
    
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    PmuSetupWrite gbuf1a_2_0_942_wr_params = {};
    gbuf1a_2_0_942_wr_params.is_transpose = true;
    gbuf1a_2_0_942_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_942_->configure_wr(gbuf1a_2_0_942_wr_params);
    PmuSetupRead gbuf1a_2_0_942_rd1_params2 = {};
    gbuf1a_2_0_942_rd1_params2.is_transpose = true;
    gbuf1a_2_0_942_rd1_params2.metapipe_iter_counts = sn::Dimensions{sn::Dimension(1)};
    gbuf1a_2_0_942_->configure_rd_head_1(gbuf1a_2_0_942_rd1_params2, {1});
    gbuf1a_2_0_942_->configure_node();
    
    // ptconvlstm__lstm_layer__bias_hh_l0:0:0: tlir.SGD
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_source_context("ptconvlstm__lstm_layer__bias_hh_l0:0:0");
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->set_op_name("tlir.SGD");
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->configure_node();
    
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++ Delayed Configure Calls 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ RAIL Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // ptconvlstm__lstm_layer__weight_ih_l0:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // ptconvlstm__lstm_layer__weight_hh_l0:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // ptconvlstm__lstm_layer__bias_ih_l0:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    // ptconvlstm__lstm_layer__bias_hh_l0:0:0: tlir.SGD
    
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
    gbuf1a_2_0_939_->finalize();
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->finalize();
    gbuf1a_2_0_940_->finalize();
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->finalize();
    gbuf1a_2_0_941_->finalize();
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->finalize();
    gbuf1a_2_0_942_->finalize();
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    for (auto *input : ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)) {
        PmuSetupWrite gbuf1a_2_0_939_1_wr_params = {};
        gbuf1a_2_0_939_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(gbuf1a_2_0_939_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0), gbuf1a_2_0_939_1_wr_params);
    }
    connect_by_interface(gbuf1a_2_0_939_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)));
    // ptconvlstm__lstm_layer__weight_ih_l0:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    for (auto *input : ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)) {
        PmuSetupWrite gbuf1a_2_0_940_1_wr_params = {};
        gbuf1a_2_0_940_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(gbuf1a_2_0_940_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0), gbuf1a_2_0_940_1_wr_params);
    }
    connect_by_interface(gbuf1a_2_0_940_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)));
    // ptconvlstm__lstm_layer__weight_hh_l0:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    for (auto *input : ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)) {
        PmuSetupWrite gbuf1a_2_0_941_1_wr_params = {};
        gbuf1a_2_0_941_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(gbuf1a_2_0_941_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0), gbuf1a_2_0_941_1_wr_params);
    }
    connect_by_interface(gbuf1a_2_0_941_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)));
    // ptconvlstm__lstm_layer__bias_ih_l0:0:0: tlir.SGD
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    for (auto *input : ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)) {
        PmuSetupWrite gbuf1a_2_0_942_1_wr_params = {};
        gbuf1a_2_0_942_1_wr_params.setup_scratchpad = false;
        sn::cast<PMU>(input->unit())->setup_write(gbuf1a_2_0_942_->result_layout(GBuffer::Output::kHead1Buffer).transposed().physically_transposed().at_address(0), gbuf1a_2_0_942_1_wr_params);
    }
    connect_by_interface(gbuf1a_2_0_942_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), get_connect_interface(ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->input_list(OptimizerSGD::Input::kDW)));
    // ptconvlstm__lstm_layer__bias_hh_l0:0:0: tlir.SGD
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Input ptconvlstm__dense_layer__weight_2_0_261 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight__grad_2_0_262 uses a weight buffer
    // Input ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias_2_0_267 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias__grad_2_0_268 uses a weight buffer
    // Input ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 uses a weight buffer
    add_node_input(kptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274, gbuf1a_2_0_939_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275 uses a weight buffer
    // Input ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 uses a weight buffer
    add_node_input(kptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280, gbuf1a_2_0_940_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 uses a weight buffer
    add_node_input(kptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286, gbuf1a_2_0_941_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287 uses a weight buffer
    // Input ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 uses a weight buffer
    add_node_input(kptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292, gbuf1a_2_0_942_->input_list(GBuffer::Input::kTailBuffer));
    // Input ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293 uses a weight buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // Outputptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor uses a weight buffer
    // Outputptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 uses a weight buffer
    // Outputptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor uses a weight buffer
    // Outputptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 uses a weight buffer
    // Outputptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor uses a weight buffer
    // Outputptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 uses a weight buffer
    // Outputptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor uses a weight buffer
    // Outputptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 uses a weight buffer
    // Outputptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor uses a weight buffer
    // Outputptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 uses a weight buffer
    // Outputptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor uses a weight buffer
    // Outputptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 uses a weight buffer
    
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
    ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
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
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->argin_enable_list_.push_back(ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.argin_list_name = "argins_lr";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info.alias_name = "lr";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_lr_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.argin_list_name = "argins_momentum";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info.alias_name = "momentum";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_momentum_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_annotation = ArgInOption::Annotation::kUndefined;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.argin_list_name = "argins_decay";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info.alias_name = "weight_decay";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_decay_enable_info);
    prism::plasma::ArgInEnableInfo ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_annotation = ArgInOption::Annotation::kFixedSeed;
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.argin_list_name = "argins_strnd_seed";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info.alias_name = "strnd_seed";
    ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->argin_enable_list_.push_back(ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_argins_strnd_seed_enable_info);
    
}

void LogregTorchSamba::configure_section3() {
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Configuration 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // <unknown location>: tlir.Buffer
    PmuSetupWrite gbuf2a_3_0_992_wr_params = {};
    gbuf2a_3_0_992_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_992_->configure_wr(gbuf2a_3_0_992_wr_params);
    PmuSetupRead gbuf2a_3_0_992_rd1_params0 = add_3_0_813_->read_params(BinaryOps::Input::kA);
    SN_ASSERT(gbuf2a_3_0_992_rd1_params0.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 0 of add_3_0_813");
    gbuf2a_3_0_992_rd1_params0.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_992_->configure_rd_head_1(gbuf2a_3_0_992_rd1_params0, {2, 2});
    gbuf2a_3_0_992_->configure_node();
    
    // <unknown location>: tlir.Buffer
    PmuSetupWrite gbuf2a_3_0_993_wr_params = {};
    gbuf2a_3_0_993_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_993_->configure_wr(gbuf2a_3_0_993_wr_params);
    PmuSetupRead gbuf2a_3_0_993_rd1_params1 = add_3_0_813_->read_params(BinaryOps::Input::kB);
    SN_ASSERT(gbuf2a_3_0_993_rd1_params1.vanilla(false, false, /*allow_reread*/true), "Unexpected non-vanilla PmuSetupRead for kVectorwise operand 1 of add_3_0_813");
    gbuf2a_3_0_993_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_993_->configure_rd_head_1(gbuf2a_3_0_993_rd1_params1, {2, 2});
    gbuf2a_3_0_993_->configure_node();
    
    // <unknown location>: tlir.AddV2
    add_3_0_813_->set_source_context("<unknown location>");
    add_3_0_813_->set_op_name("tlir.AddV2");
    add_3_0_813_->configure_node();
    
    // <unknown location>: tlir.Scale
    scale_3_0_814_->set_source_context("<unknown location>");
    scale_3_0_814_->set_op_name("tlir.Scale");
    scale_3_0_814_->configure_node();
    
    // <unknown location>: tlir.Buffer
    PmuSetupWrite gbuf2a_3_0_888_wr_params = {};
    SN_ASSERT(gbuf2a_3_0_888_wr_params.vanilla(), "Unexpected non-vanilla PmuSetupWrite for kVectorwise output 0 of scale_3_0_814");
    gbuf2a_3_0_888_wr_params.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_888_->configure_wr(gbuf2a_3_0_888_wr_params);
    PmuSetupRead gbuf2a_3_0_888_rd1_params1 = {};
    gbuf2a_3_0_888_rd1_params1.enable_backing_pmu_read = true;
    gbuf2a_3_0_888_rd1_params1.metapipe_iter_counts = sn::Dimensions{sn::Dimension("dp_reduce_region_size_0")};
    gbuf2a_3_0_888_->configure_rd_head_1(gbuf2a_3_0_888_rd1_params1, {1});
    gbuf2a_3_0_888_->configure_node();
    
    
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
    gbuf2a_3_0_992_->finalize();
    gbuf2a_3_0_993_->finalize();
    add_3_0_813_->finalize();
    scale_3_0_814_->finalize();
    gbuf2a_3_0_888_->finalize();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Node Instrumentation 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Plasma Node Connections
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    // <unknown location>: tlir.Buffer
    connect_by_interface(gbuf2a_3_0_992_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), add_3_0_813_->get_connect_interface(BinaryOps::Input::kA, true));
    // <unknown location>: tlir.Buffer
    connect_by_interface(gbuf2a_3_0_993_->get_connect_interface(GBuffer::Output::kHead1Buffer, false), add_3_0_813_->get_connect_interface(BinaryOps::Input::kB, true));
    // <unknown location>: tlir.AddV2
    connect_by_interface(add_3_0_813_->get_connect_interface(BinaryOps::Output::kOut, false), scale_3_0_814_->get_connect_interface(Scale::Input::kA, true));
    // <unknown location>: tlir.Scale
    connect_by_interface(scale_3_0_814_->get_connect_interface(Scale::Output::kA_SCALED, false), gbuf2a_3_0_888_->get_connect_interface(GBuffer::Input::kTailBuffer, true));
    // <unknown location>: tlir.Buffer
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Prism Control Stitching 
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    gbuf2a_3_0_992_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_3_0_888_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_3_0_992_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_3_0_888_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_3_0_992_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_3_0_993_->set_arc_stage_buffer();
    connect_ctl_1_to_n(gbuf2a_3_0_888_->ctrl_output(GBuffer::Output::kTailWrDone), gbuf2a_3_0_993_->ctrl_input_list(GBuffer::Input::kHead1RdEn));
    connect_ctl_1_to_n(gbuf2a_3_0_888_->ctrl_output(GBuffer::Output::kTailRdDone), gbuf2a_3_0_993_->ctrl_input_list(GBuffer::Input::kHead1RdEn1));
    gbuf2a_3_0_888_->set_arc_stage_buffer();
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ P2P Stitching
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Inputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_input(kaccum_dummy_0_3_0_811, gbuf2a_3_0_992_->input_list(GBuffer::Input::kTailBuffer));
    add_node_input(kaccum_dummy_0_reduce_buf_3_0_812, gbuf2a_3_0_993_->input_list(GBuffer::Input::kTailBuffer));
    
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    ///++ Template Outputs
    ///+++++++++++++++++++++++++++++++++++++++++++++++++++++++++
    add_node_output(kaccum_dummy_0_3_0_815, gbuf2a_3_0_888_->output_list(GBuffer::Output::kHead1Buffer));
    
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
    prism::plasma::ArgInEnableInfo scale_3_0_814_argin_scale_factor__enable_info;
    scale_3_0_814_argin_scale_factor__enable_info.argin_annotation = ArgInOption::Annotation::kDPReduceScale;
    scale_3_0_814_argin_scale_factor__enable_info.argin_list_name = "argin_scale_factor_";
    scale_3_0_814_argin_scale_factor__enable_info.alias_name = "dp_scale_factor_0";
    scale_3_0_814_->argin_enable_list_.push_back(scale_3_0_814_argin_scale_factor__enable_info);
    
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
        case kgbuf1a_0_0_890: return gbuf1a_0_0_890_;
        case kgbuf1a_0_0_825: return gbuf1a_0_0_825_;
        case kgbuf1a_0_0_827: return gbuf1a_0_0_827_;
        case kptconvlstm__lstm_layer__lstm_hidden_loop_buffer: return ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_;
        case kptconvlstm__lstm_layer__lstm_cell_loop_buffer: return ptconvlstm__lstm_layer__lstm_cell_loop_buffer_;
        case kgbuf4a_0_0_828: return gbuf4a_0_0_828_;
        case kgbuf1a_0_0_947: return gbuf1a_0_0_947_;
        case kgbuf1a_0_0_946: return gbuf1a_0_0_946_;
        case kgbuf1a_0_0_949: return gbuf1a_0_0_949_;
        case kgbuf1a_0_0_948: return gbuf1a_0_0_948_;
        case kgbuf1a_0_0_951: return gbuf1a_0_0_951_;
        case kgbuf1a_0_0_950: return gbuf1a_0_0_950_;
        case kgbuf1a_0_0_953: return gbuf1a_0_0_953_;
        case kgbuf1a_0_0_952: return gbuf1a_0_0_952_;
        case kgbuf1a_0_0_955: return gbuf1a_0_0_955_;
        case kgbuf1a_0_0_954: return gbuf1a_0_0_954_;
        case kgbuf1a_0_0_956: return gbuf1a_0_0_956_;
        case kgbuf1a_0_0_959: return gbuf1a_0_0_959_;
        case kgbuf1a_0_0_829: return gbuf1a_0_0_829_;
        case kgbuf1a_0_0_957: return gbuf1a_0_0_957_;
        case kgbuf1a_0_0_958: return gbuf1a_0_0_958_;
        case kgbuf1a_0_0_960: return gbuf1a_0_0_960_;
        case ktbuf2u_0_0_334: return tbuf2u_0_0_334_;
        case krbuf1u_0_0_335: return rbuf1u_0_0_335_;
        case ktbuf2u_0_0_342: return tbuf2u_0_0_342_;
        case kgbuf2u_0_0_344: return gbuf2u_0_0_344_;
        case kgbuf2a_0_0_1001: return gbuf2a_0_0_1001_;
        case kgbuf2a_0_0_837: return gbuf2a_0_0_837_;
        case kgbuf2a_0_0_831: return gbuf2a_0_0_831_;
        case kgbuf2a_0_0_832: return gbuf2a_0_0_832_;
        case kgbuf2a_0_0_833: return gbuf2a_0_0_833_;
        case kgbuf2a_0_0_834: return gbuf2a_0_0_834_;
        case kgbuf2a_0_0_830: return gbuf2a_0_0_830_;
        case kgbuf2a_0_0_838: return gbuf2a_0_0_838_;
        case kgbuf2a_0_0_836: return gbuf2a_0_0_836_;
        case kgbuf2a_0_0_835: return gbuf2a_0_0_835_;
        case kgbuf2a_0_0_944: return gbuf2a_0_0_944_;
        case kgbuf1a_0_0_839: return gbuf1a_0_0_839_;
        case kgbuf1a_0_0_840: return gbuf1a_0_0_840_;
        case kgbuf1a_0_0_826: return gbuf1a_0_0_826_;
        case kgbuf2a_0_0_936: return gbuf2a_0_0_936_;
        case kgbuf2u_0_0_363: return gbuf2u_0_0_363_;
        case kgbuf2a_0_0_945: return gbuf2a_0_0_945_;
        case kgbuf2a_0_0_994: return gbuf2a_0_0_994_;
        case kgbuf1a_0_0_943: return gbuf1a_0_0_943_;
        case kgbuf1a_0_0_1002: return gbuf1a_0_0_1002_;
        case kgbuf1a_0_0_841: return gbuf1a_0_0_841_;
        case kgbuf1a_1_0_842: return gbuf1a_1_0_842_;
        case kgbuf1a_1_0_843: return gbuf1a_1_0_843_;
        case kgbuf1a_1_0_844: return gbuf1a_1_0_844_;
        case kgbuf1a_1_0_845: return gbuf1a_1_0_845_;
        case kptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer: return ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_;
        case kptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer: return ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_;
        case kptconvlstm__lstm_layer__lstm_bwd_hidden_i_g: return ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_;
        case kptconvlstm__lstm_layer__lstm_bwd_cell_i_g: return ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_;
        case kgbuf4a_1_0_846: return gbuf4a_1_0_846_;
        case kgbuf1a_1_0_962: return gbuf1a_1_0_962_;
        case kgbuf1a_1_0_961: return gbuf1a_1_0_961_;
        case kgbuf1a_1_0_964: return gbuf1a_1_0_964_;
        case kgbuf1a_1_0_963: return gbuf1a_1_0_963_;
        case kgbuf1a_1_0_966: return gbuf1a_1_0_966_;
        case kgbuf1a_1_0_965: return gbuf1a_1_0_965_;
        case kgbuf1a_1_0_968: return gbuf1a_1_0_968_;
        case kgbuf1a_1_0_967: return gbuf1a_1_0_967_;
        case kptconvlstm__lstm_layer__lstm_recompute__temp_cell: return ptconvlstm__lstm_layer__lstm_recompute__temp_cell_;
        case kgbuf1a_1_0_970: return gbuf1a_1_0_970_;
        case kgbuf1a_1_0_969: return gbuf1a_1_0_969_;
        case kgbuf1a_1_0_971: return gbuf1a_1_0_971_;
        case kgbuf1a_1_0_974: return gbuf1a_1_0_974_;
        case kgbuf1a_1_0_972: return gbuf1a_1_0_972_;
        case kgbuf1a_1_0_973: return gbuf1a_1_0_973_;
        case kgbuf1a_1_0_975: return gbuf1a_1_0_975_;
        case kgbuf4u_1_0_399: return gbuf4u_1_0_399_;
        case ktbuf2u_1_0_401: return tbuf2u_1_0_401_;
        case krbuf1u_1_0_402: return rbuf1u_1_0_402_;
        case ktbuf2a_1_0_850: return tbuf2a_1_0_850_;
        case ktbuf2u_1_0_406: return tbuf2u_1_0_406_;
        case ktbuf2u_1_0_409: return tbuf2u_1_0_409_;
        case kgbuf2u_1_0_411: return gbuf2u_1_0_411_;
        case kgbuf4u_1_0_419: return gbuf4u_1_0_419_;
        case kgbuf2u_1_0_421: return gbuf2u_1_0_421_;
        case kgbuf2u_1_0_426: return gbuf2u_1_0_426_;
        case kgbuf1a_1_0_851: return gbuf1a_1_0_851_;
        case kptconvlstm__dense_layer__linear_bwd_loss_grad_b: return ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
        case kgbuf7u_1_0_428: return gbuf7u_1_0_428_;
        case kgbuf2u_1_0_429: return gbuf2u_1_0_429_;
        case kgbuf2u_1_0_431: return gbuf2u_1_0_431_;
        case kgbuf12u_1_0_437: return gbuf12u_1_0_437_;
        case kgbuf4u_1_0_440: return gbuf4u_1_0_440_;
        case kgbuf3u_1_0_443: return gbuf3u_1_0_443_;
        case kgbuf3u_1_0_445: return gbuf3u_1_0_445_;
        case kgbuf3u_1_0_447: return gbuf3u_1_0_447_;
        case kgbuf3u_1_0_449: return gbuf3u_1_0_449_;
        case kgbuf3u_1_0_451: return gbuf3u_1_0_451_;
        case kgbuf1a_1_0_1007: return gbuf1a_1_0_1007_;
        case kgbuf2a_1_0_938: return gbuf2a_1_0_938_;
        case kgbuf2u_1_0_453: return gbuf2u_1_0_453_;
        case kgbuf2a_1_0_937: return gbuf2a_1_0_937_;
        case kgbuf2u_1_0_455: return gbuf2u_1_0_455_;
        case kptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg: return ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_;
        case kgbuf1a_1_0_1003: return gbuf1a_1_0_1003_;
        case kptconvlstm__lstm_layer__lstm_bwd_temp_igates: return ptconvlstm__lstm_layer__lstm_bwd_temp_igates_;
        case kptconvlstm__lstm_layer__lstm_bwd_temp_fgates: return ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_;
        case kptconvlstm__lstm_layer__lstm_bwd_temp_ggates: return ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_;
        case kgbuf1a_1_0_1008: return gbuf1a_1_0_1008_;
        case kptconvlstm__lstm_layer__lstm_bwd_temp_ogates: return ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_;
        case kptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates: return ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_;
        case kgbuf1a_1_0_976: return gbuf1a_1_0_976_;
        case kptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates: return ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_;
        case kgbuf1a_1_0_977: return gbuf1a_1_0_977_;
        case kgbuf1a_1_0_1004: return gbuf1a_1_0_1004_;
        case kgbuf1a_1_0_991: return gbuf1a_1_0_991_;
        case kgbuf1a_1_0_982: return gbuf1a_1_0_982_;
        case kgbuf1a_1_0_983: return gbuf1a_1_0_983_;
        case kgbuf1a_1_0_1005: return gbuf1a_1_0_1005_;
        case kgbuf1a_1_0_1006: return gbuf1a_1_0_1006_;
        case kgbuf1a_1_0_989: return gbuf1a_1_0_989_;
        case kgbuf1a_1_0_891: return gbuf1a_1_0_891_;
        case kgbuf1a_1_0_988: return gbuf1a_1_0_988_;
        case kgbuf1a_1_0_892: return gbuf1a_1_0_892_;
        case kgbuf1a_1_0_990: return gbuf1a_1_0_990_;
        case kgbuf1a_1_0_893: return gbuf1a_1_0_893_;
        case kgbuf2a_1_0_852: return gbuf2a_1_0_852_;
        case kgbuf2a_1_0_857: return gbuf2a_1_0_857_;
        case kgbuf2a_1_0_853: return gbuf2a_1_0_853_;
        case kgbuf2a_1_0_856: return gbuf2a_1_0_856_;
        case kgbuf2a_1_0_855: return gbuf2a_1_0_855_;
        case kgbuf1a_1_0_894: return gbuf1a_1_0_894_;
        case kgbuf2a_1_0_861: return gbuf2a_1_0_861_;
        case kgbuf2a_1_0_860: return gbuf2a_1_0_860_;
        case kgbuf2a_1_0_859: return gbuf2a_1_0_859_;
        case kgbuf1a_1_0_895: return gbuf1a_1_0_895_;
        case kgbuf2a_1_0_865: return gbuf2a_1_0_865_;
        case kgbuf2a_1_0_864: return gbuf2a_1_0_864_;
        case kgbuf2a_1_0_863: return gbuf2a_1_0_863_;
        case kgbuf2a_1_0_869: return gbuf2a_1_0_869_;
        case kgbuf2a_1_0_868: return gbuf2a_1_0_868_;
        case kgbuf2a_1_0_867: return gbuf2a_1_0_867_;
        case kgbuf2a_1_0_858: return gbuf2a_1_0_858_;
        case kgbuf2a_1_0_862: return gbuf2a_1_0_862_;
        case kgbuf2a_1_0_866: return gbuf2a_1_0_866_;
        case kgbuf2a_1_0_870: return gbuf2a_1_0_870_;
        case kptconvlstm__dense_layer__linear_bwd_weight_accum: return ptconvlstm__dense_layer__linear_bwd_weight_accum_;
        case kptconvlstm__dense_layer__linear_bwd_weight_accum_1: return ptconvlstm__dense_layer__linear_bwd_weight_accum_1_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum: return ptconvlstm__lstm_layer__lstm_bwd_accum_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_1: return ptconvlstm__lstm_layer__lstm_bwd_accum_1_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_2: return ptconvlstm__lstm_layer__lstm_bwd_accum_2_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_3: return ptconvlstm__lstm_layer__lstm_bwd_accum_3_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_4: return ptconvlstm__lstm_layer__lstm_bwd_accum_4_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_5: return ptconvlstm__lstm_layer__lstm_bwd_accum_5_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_6: return ptconvlstm__lstm_layer__lstm_bwd_accum_6_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_7: return ptconvlstm__lstm_layer__lstm_bwd_accum_7_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_8: return ptconvlstm__lstm_layer__lstm_bwd_accum_8_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_9: return ptconvlstm__lstm_layer__lstm_bwd_accum_9_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_10: return ptconvlstm__lstm_layer__lstm_bwd_accum_10_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_11: return ptconvlstm__lstm_layer__lstm_bwd_accum_11_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_12: return ptconvlstm__lstm_layer__lstm_bwd_accum_12_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_13: return ptconvlstm__lstm_layer__lstm_bwd_accum_13_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_14: return ptconvlstm__lstm_layer__lstm_bwd_accum_14_;
        case kptconvlstm__lstm_layer__lstm_bwd_accum_15: return ptconvlstm__lstm_layer__lstm_bwd_accum_15_;
        case kgbuf2a_1_0_848: return gbuf2a_1_0_848_;
        case kgbuf2a_1_0_847: return gbuf2a_1_0_847_;
        case kgbuf2a_1_0_871: return gbuf2a_1_0_871_;
        case kgbuf2a_1_0_854: return gbuf2a_1_0_854_;
        case kgbuf1a_1_0_872: return gbuf1a_1_0_872_;
        case kgbuf1a_1_0_873: return gbuf1a_1_0_873_;
        case kgbuf1a_1_0_874: return gbuf1a_1_0_874_;
        case kgbuf1a_1_0_875: return gbuf1a_1_0_875_;
        case kgbuf1a_1_0_876: return gbuf1a_1_0_876_;
        case kgbuf1a_1_0_877: return gbuf1a_1_0_877_;
        case kgbuf1a_1_0_878: return gbuf1a_1_0_878_;
        case kgbuf1a_1_0_879: return gbuf1a_1_0_879_;
        case kgbuf1a_1_0_880: return gbuf1a_1_0_880_;
        case kgbuf1a_1_0_881: return gbuf1a_1_0_881_;
        case kgbuf1a_1_0_882: return gbuf1a_1_0_882_;
        case kgbuf1a_1_0_883: return gbuf1a_1_0_883_;
        case kgbuf1a_1_0_884: return gbuf1a_1_0_884_;
        case kgbuf1a_1_0_885: return gbuf1a_1_0_885_;
        case kgbuf1a_1_0_886: return gbuf1a_1_0_886_;
        case kgbuf1a_1_0_887: return gbuf1a_1_0_887_;
        case kgbuf1a_2_0_939: return gbuf1a_2_0_939_;
        case kgbuf1a_2_0_940: return gbuf1a_2_0_940_;
        case kgbuf1a_2_0_941: return gbuf1a_2_0_941_;
        case kgbuf1a_2_0_942: return gbuf1a_2_0_942_;
        case kgbuf2a_3_0_992: return gbuf2a_3_0_992_;
        case kgbuf2a_3_0_993: return gbuf2a_3_0_993_;
        case kgbuf2a_3_0_888: return gbuf2a_3_0_888_;
    }
    return nullptr;
}

} // namespace arc 
} // namespace plasma
} // namespace prism

