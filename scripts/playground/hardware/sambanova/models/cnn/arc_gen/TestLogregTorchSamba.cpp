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
#include "llvm/Support/CommandLine.h"

#include "Core/Workspace/Workspace.h"
#include "Core/Spec/ArchitectureSpec.h"
#include "Core/Util/CommandLineOptions.h"
#include "prism/Emul/Tensor.h"
#include "rail/compiler/CompilerOptions.h"
#include "Util/ConvUtils.h"
#include "Util/Definitions.h"
#include "prism/Util/NodeConstants.h"
#include "Util/TestHelpers.h"

#include "LogregTorchSamba.h"
#include "mlnodes/BackingPmu.h"
#include "mlnodes/FrontingPmu.h"
#include "mlnodes/Tiler.h"

using namespace prism;
using namespace plasma;

int main(int argc, char **argv) {
    /** Parse command line options **/
    cl::enable_dfg_init.setInitialValue(true);
    cl::enable_sa_placement.setInitialValue(true);
    cl::arc_autogen.setInitialValue(true);
    sn::spec::ArchSpec::set_arch_major(sn::spec::ArchMajor::Value(1));
    sn::spec::ArchSpec::set_arch_minor(0);
    cl::mac_autogen.setInitialValue(true);
    cl::enable_bandwidth_aware_sa.setInitialValue(true);
    cl::enable_astar_connect.setInitialValue(true);
    /** Plasma Init **/
    std::string output_path = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/models/cnn/arc_gen/../";
    make_dirs(output_path);
    BitfileTypePerChip chip_types (1);
    std::fill(chip_types.begin(), chip_types.end(), BitfileType::kFourTile);
    mlir::shared::util::cl_output_folder.setInitialValue("/qfs/people/jain432/pacer_saudade/code/sample_scripts/models/cnn/arc_gen/../");
    mlir::shared::util::cl_pef_name.setInitialValue("cnn");
    mlir::rail::RAIL rail(argc, argv);
    rail.init_plasma(chip_types, 3, {"$FWD", "$BCKWD", "$OPT"}, {"ptconvlstm__lambda_layer__indexselect_as_initial", "ptconvlstm__reshape_1_recompute__as_initial", "ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_as_initial"});
    Plasma &plasma = *mlir::rail::RAIL::plasma();
    plasma.workspace().get_pef_metadata()["acc_test"] = "False";
    plasma.workspace().get_pef_metadata()["arc_debug_mode"] = "False";
    plasma.workspace().get_pef_metadata()["batch_size"] = "1";
    plasma.workspace().get_pef_metadata()["compiled_stats_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiler_configs_file"] = "";
    plasma.workspace().get_pef_metadata()["data_folder"] = "mnist_data";
    plasma.workspace().get_pef_metadata()["data_parallel"] = "False";
    plasma.workspace().get_pef_metadata()["data_parallel_mode"] = "normal";
    plasma.workspace().get_pef_metadata()["debug"] = "False";
    plasma.workspace().get_pef_metadata()["dev_mode"] = "False";
    plasma.workspace().get_pef_metadata()["disable_mac_tiling"] = "False";
    plasma.workspace().get_pef_metadata()["disable_retry_lower_visible_resources"] = "False";
    plasma.workspace().get_pef_metadata()["distlearn_config"] = "";
    plasma.workspace().get_pef_metadata()["dump_accuracy_debug_info"] = "False";
    plasma.workspace().get_pef_metadata()["enable_conv2d_conversion"] = "False";
    plasma.workspace().get_pef_metadata()["enable_conv_tiling"] = "False";
    plasma.workspace().get_pef_metadata()["enable_hd_retry_lower_visible_resources"] = "False";
    plasma.workspace().get_pef_metadata()["force_node_proximity"] = "False";
    plasma.workspace().get_pef_metadata()["fp32_params"] = "False";
    plasma.workspace().get_pef_metadata()["fuse_fwd_bwd"] = "False";
    plasma.workspace().get_pef_metadata()["gen_tensorboard"] = "False";
    plasma.workspace().get_pef_metadata()["grad_accumulation_steps"] = "1";
    plasma.workspace().get_pef_metadata()["host_fifo"] = "False";
    plasma.workspace().get_pef_metadata()["hypersection_arc"] = "False";
    plasma.workspace().get_pef_metadata()["include_read_stall_cycles"] = "False";
    plasma.workspace().get_pef_metadata()["inference"] = "False";
    plasma.workspace().get_pef_metadata()["json"] = "None";
    plasma.workspace().get_pef_metadata()["latency_budget_bwd"] = "None";
    plasma.workspace().get_pef_metadata()["latency_budget_fwd"] = "None";
    plasma.workspace().get_pef_metadata()["listen_for_input"] = "False";
    plasma.workspace().get_pef_metadata()["local_rank"] = "-1";
    plasma.workspace().get_pef_metadata()["log_dir"] = "None";
    plasma.workspace().get_pef_metadata()["log_level"] = "warning";
    plasma.workspace().get_pef_metadata()["lr"] = "0.0015";
    plasma.workspace().get_pef_metadata()["mac_human_decision"] = "None";
    plasma.workspace().get_pef_metadata()["mac_only"] = "False";
    plasma.workspace().get_pef_metadata()["mac_v1"] = "False";
    plasma.workspace().get_pef_metadata()["mapping"] = "section";
    plasma.workspace().get_pef_metadata()["max_expected_mac_latency"] = "-1.0";
    plasma.workspace().get_pef_metadata()["max_mac_loop_attempt"] = "35";
    plasma.workspace().get_pef_metadata()["metapipe_disable"] = "False";
    plasma.workspace().get_pef_metadata()["microbatch_size"] = "None";
    plasma.workspace().get_pef_metadata()["min_duration"] = "0.0";
    plasma.workspace().get_pef_metadata()["mlir_file_name"] = "None";
    plasma.workspace().get_pef_metadata()["mock_inference"] = "False";
    plasma.workspace().get_pef_metadata()["model"] = "PTConvLSTM(\x0A  (lambda_layer): Lambda()\x0A  (conv_layer): Conv1d(136, 256, kernel_size=(3,), stride=(1,))\x0A  (dense_layer): Linear(in_features=256, out_features=4080, bias=True)\x0A  (criterion): MSELoss()\x0A)";
    plasma.workspace().get_pef_metadata()["model_parallel"] = "False";
    plasma.workspace().get_pef_metadata()["momentum"] = "0.0";
    plasma.workspace().get_pef_metadata()["n_chips"] = "1";
    plasma.workspace().get_pef_metadata()["ndtest"] = "False";
    plasma.workspace().get_pef_metadata()["ndtest_mp"] = "False";
    plasma.workspace().get_pef_metadata()["num_classes"] = "10";
    plasma.workspace().get_pef_metadata()["num_epochs"] = "1";
    plasma.workspace().get_pef_metadata()["num_features"] = "784";
    plasma.workspace().get_pef_metadata()["num_iterations"] = "100";
    plasma.workspace().get_pef_metadata()["num_sections"] = "None";
    plasma.workspace().get_pef_metadata()["num_spatial_batches"] = "1";
    plasma.workspace().get_pef_metadata()["num_tiles"] = "4";
    plasma.workspace().get_pef_metadata()["pef"] = "None";
    plasma.workspace().get_pef_metadata()["plot"] = "None";
    plasma.workspace().get_pef_metadata()["recompute_ratio"] = "-1.0";
    plasma.workspace().get_pef_metadata()["reduce_on_rdu"] = "False";
    plasma.workspace().get_pef_metadata()["resources_scaling_factors"] = "['-1.0', '-1.0', '-1.0', '-1.0']";
    plasma.workspace().get_pef_metadata()["run_analysis_pass"] = "False";
    plasma.workspace().get_pef_metadata()["run_graph_only"] = "False";
    plasma.workspace().get_pef_metadata()["samba_plot"] = "False";
    plasma.workspace().get_pef_metadata()["samba_version"] = "1.11.2";
    plasma.workspace().get_pef_metadata()["section_cut_beam_search"] = "['2', '2']";
    plasma.workspace().get_pef_metadata()["section_cut_sort_order"] = "3";
    plasma.workspace().get_pef_metadata()["single_opt_sec"] = "False";
    plasma.workspace().get_pef_metadata()["skip_instrumentation_on_read0"] = "False";
    plasma.workspace().get_pef_metadata()["skip_instrumentation_on_read1"] = "False";
    plasma.workspace().get_pef_metadata()["stage_instrumentation"] = "none";
    plasma.workspace().get_pef_metadata()["stop_mac_c++"] = "False";
    plasma.workspace().get_pef_metadata()["tensor_parallel"] = "none";
    plasma.workspace().get_pef_metadata()["tile_orientation"] = "auto";
    plasma.workspace().get_pef_metadata()["validate_mac_resource_prediction"] = "False";
    plasma.workspace().get_pef_metadata()["verbose"] = "0";
    plasma.workspace().get_pef_metadata()["visualize"] = "False";
    plasma.workspace().get_pef_metadata()["weight_decay"] = "0.0003";
    plasma.workspace().get_pef_metadata()["weight_norm"] = "False";
    plasma.workspace().get_pef_metadata()["world_size"] = "1";
    plasma.workspace().get_pef_metadata()["yaml_config"] = "None";
    
    /** Add Plasma Inputs **/
    /// DRAM and PMU layouts for inp_window_slice_1
    PlasmaIOConfig io_config_inp_window_slice_1;
    io_config_inp_window_slice_1.conv = PhysicalLayout::kRowMajor;
    io_config_inp_window_slice_1.python_transforms.push_back(std::make_pair(".int().int()", ""));
    io_config_inp_window_slice_1.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_inp_window_slice_1.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_inp_window_slice_1 = add_plasma_input(plasma, {3}, node_constants::TemplateDataFormats::kInt32(), io_config_inp_window_slice_1, "inp_window_slice_1", {});
    TensorLayout dram_layout_inp_window_slice_1_1_0_124 = dram_layout_inp_window_slice_1;
    TensorLayout pmu_layout_inp_window_slice_1_1_0_124 = dram_layout_inp_window_slice_1_1_0_124.at_address(0);
    TensorLayout dram_layout_inp_window_slice_1_0_0_83 = dram_layout_inp_window_slice_1;
    TensorLayout pmu_layout_inp_window_slice_1_0_0_83 = dram_layout_inp_window_slice_1_0_0_83.at_address(0);
    /// DRAM and PMU layouts for inp_window
    PlasmaIOConfig io_config_inp_window;
    io_config_inp_window.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_inp_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_inp_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_inp_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_inp_window = add_plasma_input(plasma, {1, 60, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_inp_window, "inp_window", {});
    TensorLayout dram_layout_inp_window_1_0_268 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_1_0_268 = dram_layout_inp_window_1_0_268.subtensor(1).vector_align().at_address(0);
    TensorLayout pmu_layout_inp_window_1_0_268_full = pmu_layout_inp_window_1_0_268.supertensor({1}).at_address(0);
    pmu_layout_inp_window_1_0_268_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_inp_window_0_0_262 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_0_0_262 = dram_layout_inp_window_0_0_262.subtensor(1).vector_align().at_address(0);
    TensorLayout pmu_layout_inp_window_0_0_262_full = pmu_layout_inp_window_0_0_262.supertensor({1}).at_address(0);
    pmu_layout_inp_window_0_0_262_full.set_vector_transposed(false);
    
    /// Input Group #0
    std::vector<PlasmaRegion> group_0_tensors {
        {{256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__bias", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_0;
    io_config_group_0.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_0.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_0.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_0.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_0 = add_plasma_input_group(plasma, group_0_tensors, io_config_group_0, "group_0");
    TensorLayout dram_layout_group_0 = group_0.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias = group_0.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias_2_0_142 = dram_layout_ptconvlstm__conv_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias_2_0_142 = group_0.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__conv_layer__bias_2_0_142.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias_0_0_88 = dram_layout_ptconvlstm__conv_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias_0_0_88 = group_0.pmu_layouts.at(0).vector_align().at_address(0);
    pmu_layout_ptconvlstm__conv_layer__bias_0_0_88.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias_2_0_146 = dram_layout_ptconvlstm__conv_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias_2_0_146 = dram_layout_ptconvlstm__conv_layer__bias_2_0_146.vector_align().at_address(0);
    
    /// Input Group #1
    std::vector<PlasmaRegion> group_1_tensors {
        {{408, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_1;
    io_config_group_1.python_transforms.push_back(std::make_pair(".permute(2, 1, 0).reshape(-1, 256)", ".reshape(3, 136,256).permute(2, 1, 0)"));
    io_config_group_1.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_1.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_1.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_1 = add_plasma_input_group(plasma, group_1_tensors, io_config_group_1, "group_1");
    TensorLayout dram_layout_group_1 = group_1.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight = group_1.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight_2_0_148 = dram_layout_ptconvlstm__conv_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight_2_0_148 = group_1.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__conv_layer__weight_2_0_148.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight_0_0_87 = dram_layout_ptconvlstm__conv_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight_0_0_87 = group_1.pmu_layouts.at(0).vector_align().at_address(0);
    pmu_layout_ptconvlstm__conv_layer__weight_0_0_87.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight_2_0_152 = dram_layout_ptconvlstm__conv_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight_2_0_152 = dram_layout_ptconvlstm__conv_layer__weight_2_0_152.vector_align().at_address(0);
    
    /// Input Group #5
    std::vector<PlasmaRegion> group_5_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_5;
    io_config_group_5.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_5.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_5.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_5.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_5 = add_plasma_input_group(plasma, group_5_tensors, io_config_group_5, "group_5");
    TensorLayout dram_layout_group_5 = group_5.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias = group_5.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_2_0_154 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_2_0_154 = group_5.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_2_0_154.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_0_0_93 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_0_0_93 = group_5.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_0_0_93.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_2_0_158 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_2_0_158 = dram_layout_ptconvlstm__dense_layer__bias_2_0_158.vector_align().at_address(0);
    
    /// Input Group #2
    std::vector<PlasmaRegion> group_2_tensors {
        {{4080, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_2;
    io_config_group_2.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_2.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_2.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_2.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_2 = add_plasma_input_group(plasma, group_2_tensors, io_config_group_2, "group_2");
    TensorLayout dram_layout_group_2 = group_2.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight = group_2.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_1_0_335 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_1_0_335 = group_2.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_1_0_335.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_2_0_160 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_2_0_160 = group_2.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_2_0_160.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_0_0_92 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_0_0_92 = group_2.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_0_0_92.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_2_0_164 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_2_0_164 = dram_layout_ptconvlstm__dense_layer__weight_2_0_164.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for out_window
    PlasmaIOConfig io_config_out_window;
    io_config_out_window.conv = PhysicalLayout::kRowMajor;
    io_config_out_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_out_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_out_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_out_window = add_plasma_input(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_out_window, "out_window", {});
    TensorLayout dram_layout_out_window_1_0_264 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_1_0_264 = dram_layout_out_window_1_0_264.subtensor(1).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_out_window_1_0_264_full = pmu_layout_out_window_1_0_264.supertensor({1}).at_address(0);
    pmu_layout_out_window_1_0_264_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_out_window_0_0_263 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_0_0_263 = dram_layout_out_window_0_0_263.subtensor(1).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_out_window_0_0_263_full = pmu_layout_out_window_0_0_263.supertensor({1}).at_address(0);
    pmu_layout_out_window_0_0_263_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0__grad
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0__grad;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad = add_plasma_input(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0__grad, "ptconvlstm__criterion__mseloss__outputs__0__grad", {});
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.with_logical_shape({1}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_full = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.supertensor({}).at_address(0);
    pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__view__outputs__0__grad
    PlasmaIOConfig io_config_ptconvlstm__view__outputs__0__grad;
    io_config_ptconvlstm__view__outputs__0__grad.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__view__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__view__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__view__outputs__0__grad.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad = add_plasma_input(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0__grad, "ptconvlstm__view__outputs__0__grad", {});
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad_1_0_267 = dram_layout_ptconvlstm__view__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_267 = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_267.subtensor(1).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_267_full = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_267.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_267_full.set_vector_transposed(false);
    
    /// Input Group #6
    std::vector<PlasmaRegion> group_6_tensors {
        {{256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__bias__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{408, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4080, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_6;
    io_config_group_6.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_6.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_6.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_6.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_6.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_6.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_6.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_6 = add_plasma_input_group(plasma, group_6_tensors, io_config_group_6, "group_6");
    TensorLayout dram_layout_group_6 = group_6.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum = group_6.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144 = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144 = group_6.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147 = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147 = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum = group_6.dram_sub_layouts.at(1);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150 = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150 = group_6.pmu_layouts.at(1);
    pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153 = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153 = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum = group_6.dram_sub_layouts.at(2);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156 = group_6.pmu_layouts.at(2);
    pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum = group_6.dram_sub_layouts.at(3);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162 = group_6.pmu_layouts.at(3);
    pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165.vector_align().at_address(0);
    
    /// Input Group #4
    std::vector<PlasmaRegion> group_4_tensors {
        {{1, 256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnMajorVectorAligned,  "ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight", TensorSourceAnnotation::kCompilerGen, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_4;
    io_config_group_4.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_4.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_4.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_4.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_4 = add_plasma_input_group(plasma, group_4_tensors, io_config_group_4, "group_4");
    TensorLayout dram_layout_group_4 = group_4.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight = group_4.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269 = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269 = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269.subtensor(1).vector_align().at_address(group_4.pmu_layouts.at(0).base_address());
    pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269_full = pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269.supertensor({1}).at_address(group_4.pmu_layouts.at(0).base_address());
    pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270 = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270 = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.subtensor(1).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270_full = pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270_full.set_vector_transposed(false);
    
    
    /// DRAM and PMU layouts for ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub
    PlasmaIOConfig io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub = add_plasma_input(plasma, {1, 4080}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub, "ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub", {});
    TensorLayout dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.with_logical_shape({1, 4080}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_full = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.supertensor({}).at_address(0);
    pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.subtensor(1).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_full = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_full.set_vector_transposed(false);
    
    /// Input Group #7
    std::vector<PlasmaRegion> group_7_tensors {
        {{408, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__bias__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4080, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_7;
    io_config_group_7.python_transforms.push_back(std::make_pair(".permute(2, 1, 0).reshape(-1, 256)", ".reshape(3, 136,256).permute(2, 1, 0)"));
    io_config_group_7.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_7.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_7.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_7.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_7.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_7 = add_plasma_input_group(plasma, group_7_tensors, io_config_group_7, "group_7");
    TensorLayout dram_layout_group_7 = group_7.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__grad = group_7.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__grad_2_0_149 = dram_layout_ptconvlstm__conv_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight__grad_2_0_149 = group_7.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__conv_layer__weight__grad_2_0_149.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor = dram_layout_ptconvlstm__conv_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__grad = group_7.dram_sub_layouts.at(1);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__grad_2_0_143 = dram_layout_ptconvlstm__conv_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias__grad_2_0_143 = group_7.pmu_layouts.at(1);
    pmu_layout_ptconvlstm__conv_layer__bias__grad_2_0_143.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1 = dram_layout_ptconvlstm__conv_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1 = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad = group_7.dram_sub_layouts.at(2);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad_2_0_161 = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_161 = group_7.pmu_layouts.at(2);
    pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_161.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor.vector_align().at_address(0);
    
    /// Input Group #8
    std::vector<PlasmaRegion> group_8_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_8;
    io_config_group_8.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_8.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_8.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_8.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_8 = add_plasma_input_group(plasma, group_8_tensors, io_config_group_8, "group_8");
    TensorLayout dram_layout_group_8 = group_8.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad = group_8.dram_sub_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad_2_0_155 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_155 = group_8.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_155.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.vector_align().at_address(0);
    
    /// Input Group #9
    std::vector<PlasmaRegion> group_9_tensors {
        {{96}, node_constants::TemplateDataFormats::kInt32(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list", TensorSourceAnnotation::kCompilerGen, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_9;
    io_config_group_9.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_9.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_9.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_9.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_9 = add_plasma_input_group(plasma, group_9_tensors, io_config_group_9, "group_9");
    TensorLayout dram_layout_group_9 = group_9.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list = group_9.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list.symbol_handle()->symbol_init_func = [&](){
        std::vector<int32_t> gather_list = {0, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 160, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 320, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912}; 
        return SymbolInitFunction::generate_gather_list_sym_init(&plasma, gather_list);
        }();
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374 = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374 = group_9.pmu_layouts.at(0);
    
    /// Input Group #10
    std::vector<PlasmaRegion> group_10_tensors {
        {{96}, node_constants::TemplateDataFormats::kInt32(), PhysicalLayout::kRowMajorVectorAligned,  "gather_gradient_output_reshape_id1__gather_list", TensorSourceAnnotation::kCompilerGen, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{16}, node_constants::TemplateDataFormats::kInt32(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list", TensorSourceAnnotation::kCompilerGen, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_10;
    io_config_group_10.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_10.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_10.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_10.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_10.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_10 = add_plasma_input_group(plasma, group_10_tensors, io_config_group_10, "group_10");
    TensorLayout dram_layout_group_10 = group_10.dram_layout;
    TensorLayout dram_layout_gather_gradient_output_reshape_id1__gather_list = group_10.dram_sub_layouts.at(0);
    dram_layout_gather_gradient_output_reshape_id1__gather_list.symbol_handle()->symbol_init_func = [&](){
        std::vector<int32_t> gather_list = {0, 536870912, 536870912, 24576, 536870912, 536870912, 49152, 536870912, 536870912, 73728, 536870912, 536870912, 98304, 8192, 536870912, 8216, 32768, 536870912, 32792, 57344, 536870912, 57368, 81920, 536870912, 81944, 106496, 16384, 16400, 40960, 536870912, 40976, 65536, 536870912, 65552, 90112, 536870912, 90128, 114688, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 32, 0, 0, 32, 0, 0, 32, 0, 0, 8, 24, 0, 8, 24, 0, 8, 24, 0, 8, 24, 0, 8, 8, 16, 16, 16, 0, 16, 16, 0, 16, 16, 0, 16, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0}; 
        return SymbolInitFunction::generate_gather_list_sym_init(&plasma, gather_list);
        }();
    TensorLayout dram_layout_gather_gradient_output_reshape_id1__gather_list_1_0_375 = dram_layout_gather_gradient_output_reshape_id1__gather_list;
    TensorLayout pmu_layout_gather_gradient_output_reshape_id1__gather_list_1_0_375 = group_10.pmu_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list = group_10.dram_sub_layouts.at(1);
    dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list.symbol_handle()->symbol_init_func = [&](){
        std::vector<int32_t> gather_list = {0, 160, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}; 
        return SymbolInitFunction::generate_gather_list_sym_init(&plasma, gather_list);
        }();
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376 = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376 = group_10.pmu_layouts.at(1);
    
    
    /** Add Plasma Outputs **/
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0 = add_plasma_output(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0, "ptconvlstm__criterion__mseloss__outputs__0", {});
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    TensorLayout pmu_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.with_logical_shape({1}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272_full = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.supertensor({}).at_address(0);
    pmu_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__view__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__view__outputs__0;
    io_config_ptconvlstm__view__outputs__0.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__view__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__view__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0 = add_plasma_output(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0, "ptconvlstm__view__outputs__0", {});
    TensorLayout dram_layout_ptconvlstm__view__outputs__0_0_0_273 = dram_layout_ptconvlstm__view__outputs__0;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_273 = dram_layout_ptconvlstm__view__outputs__0_0_0_273.subtensor(1).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_273_full = pmu_layout_ptconvlstm__view__outputs__0_0_0_273.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0_0_0_273_full.set_vector_transposed(false);
    
    
    /** Add Plasma Outputs References **/
    
    /** Section Calls **/
    plasma.workspace().add_section_call(0, {
        dram_layout_inp_window_slice_1.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()        ,
        dram_layout_group_2.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()        ,
        dram_layout_group_5.symbol_handle()        ,
        dram_layout_inp_window.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list.symbol_handle()        ,
        dram_layout_group_9.symbol_handle()        ,
        dram_layout_out_window.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight.symbol_handle()        ,
        dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.symbol_handle()        ,
        dram_layout_ptconvlstm__criterion__mseloss__outputs__0.symbol_handle()        ,
        dram_layout_ptconvlstm__view__outputs__0.symbol_handle()        
        }, true);
    plasma.workspace().add_section_call(1, {
        dram_layout_inp_window_slice_1.symbol_handle()        ,
        dram_layout_out_window.symbol_handle()        ,
        dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.symbol_handle()        ,
        dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()        ,
        dram_layout_group_2.symbol_handle()        ,
        dram_layout_inp_window.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list.symbol_handle()        ,
        dram_layout_group_10.symbol_handle()        ,
        dram_layout_gather_gradient_output_reshape_id1__gather_list.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight.symbol_handle()        ,
        dram_layout_group_4.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight__grad.symbol_handle()        ,
        dram_layout_group_7.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()        
        }, true);
    plasma.workspace().add_section_call(2, {
        dram_layout_ptconvlstm__conv_layer__bias.symbol_handle()        ,
        dram_layout_group_0.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias__grad.symbol_handle()        ,
        dram_layout_group_7.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum.symbol_handle()        ,
        dram_layout_group_6.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight.symbol_handle()        ,
        dram_layout_group_1.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()        ,
        dram_layout_group_5.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()        ,
        dram_layout_group_8.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()        ,
        dram_layout_group_2.symbol_handle()        
        }, true);
    
    /** Instantiate Node **/
    arc::LogregTorchSamba::Params params;
    params.inp_window_slice_1_1_0_124 = pmu_layout_inp_window_slice_1_1_0_124;
    params.inp_window_slice_1_0_0_83 = pmu_layout_inp_window_slice_1_0_0_83;
    params.inp_window_slice_1_dram_in = dram_layout_inp_window_slice_1;
    params.inp_window_1_0_268 = pmu_layout_inp_window_1_0_268;
    params.inp_window_0_0_262 = pmu_layout_inp_window_0_0_262;
    params.inp_window_dram_in = dram_layout_inp_window;
    params.ptconvlstm__conv_layer__bias_2_0_142 = pmu_layout_ptconvlstm__conv_layer__bias_2_0_142;
    params.ptconvlstm__conv_layer__bias_0_0_88 = pmu_layout_ptconvlstm__conv_layer__bias_0_0_88;
    params.ptconvlstm__conv_layer__bias_dram_in = dram_layout_ptconvlstm__conv_layer__bias;
    params.ptconvlstm__conv_layer__weight_2_0_148 = pmu_layout_ptconvlstm__conv_layer__weight_2_0_148;
    params.ptconvlstm__conv_layer__weight_0_0_87 = pmu_layout_ptconvlstm__conv_layer__weight_0_0_87;
    params.ptconvlstm__conv_layer__weight_dram_in = dram_layout_ptconvlstm__conv_layer__weight;
    params.ptconvlstm__dense_layer__bias_2_0_154 = pmu_layout_ptconvlstm__dense_layer__bias_2_0_154;
    params.ptconvlstm__dense_layer__bias_0_0_93 = pmu_layout_ptconvlstm__dense_layer__bias_0_0_93;
    params.ptconvlstm__dense_layer__bias_dram_in = dram_layout_ptconvlstm__dense_layer__bias;
    params.ptconvlstm__dense_layer__weight_1_0_335 = pmu_layout_ptconvlstm__dense_layer__weight_1_0_335;
    params.ptconvlstm__dense_layer__weight_2_0_160 = pmu_layout_ptconvlstm__dense_layer__weight_2_0_160;
    params.ptconvlstm__dense_layer__weight_0_0_92 = pmu_layout_ptconvlstm__dense_layer__weight_0_0_92;
    params.ptconvlstm__dense_layer__weight_dram_in = dram_layout_ptconvlstm__dense_layer__weight;
    params.out_window_1_0_264 = pmu_layout_out_window_1_0_264;
    params.out_window_0_0_263 = pmu_layout_out_window_0_0_263;
    params.out_window_dram_in = dram_layout_out_window;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265 = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    params.ptconvlstm__view__outputs__0__grad_1_0_267 = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_267;
    params.ptconvlstm__view__outputs__0__grad_dram_in = dram_layout_ptconvlstm__view__outputs__0__grad;
    params.ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144 = pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144;
    params.ptconvlstm__conv_layer__bias__sgd0__momentum_dram_in = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    params.ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150 = pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150;
    params.ptconvlstm__conv_layer__weight__sgd0__momentum_dram_in = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156 = pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162 = pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    params.ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269 = pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269;
    params.ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_in = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    params.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266 = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266;
    params.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_in = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    params.ptconvlstm__conv_layer__weight__grad_2_0_149 = pmu_layout_ptconvlstm__conv_layer__weight__grad_2_0_149;
    params.ptconvlstm__conv_layer__weight__grad_dram_in = dram_layout_ptconvlstm__conv_layer__weight__grad;
    params.ptconvlstm__conv_layer__bias__grad_2_0_143 = pmu_layout_ptconvlstm__conv_layer__bias__grad_2_0_143;
    params.ptconvlstm__conv_layer__bias__grad_dram_in = dram_layout_ptconvlstm__conv_layer__bias__grad;
    params.ptconvlstm__dense_layer__weight__grad_2_0_161 = pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_161;
    params.ptconvlstm__dense_layer__weight__grad_dram_in = dram_layout_ptconvlstm__dense_layer__weight__grad;
    params.ptconvlstm__dense_layer__bias__grad_2_0_155 = pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_155;
    params.ptconvlstm__dense_layer__bias__grad_dram_in = dram_layout_ptconvlstm__dense_layer__bias__grad;
    params.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374 = pmu_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374;
    params.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_dram_in = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list;
    params.gather_gradient_output_reshape_id1__gather_list_1_0_375 = pmu_layout_gather_gradient_output_reshape_id1__gather_list_1_0_375;
    params.gather_gradient_output_reshape_id1__gather_list_dram_in = dram_layout_gather_gradient_output_reshape_id1__gather_list;
    params.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376 = pmu_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376;
    params.ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_dram_in = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list;
    params.ptconvlstm__conv_layer__bias_dram_out = dram_layout_ptconvlstm__conv_layer__bias;
    params.ptconvlstm__conv_layer__weight_dram_out = dram_layout_ptconvlstm__conv_layer__weight;
    params.ptconvlstm__dense_layer__bias_dram_out = dram_layout_ptconvlstm__dense_layer__bias;
    params.ptconvlstm__dense_layer__weight_dram_out = dram_layout_ptconvlstm__dense_layer__weight;
    params.ptconvlstm__conv_layer__bias__sgd0__momentum_dram_out = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    params.ptconvlstm__conv_layer__weight__sgd0__momentum_dram_out = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_dram_out = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_dram_out = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    params.ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_out = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    params.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_out = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    params.ptconvlstm__criterion__mseloss__outputs__0_dram_out = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    params.ptconvlstm__view__outputs__0_dram_out = dram_layout_ptconvlstm__view__outputs__0;
    params.ptconvlstm__conv_layer__weight__grad_dram_out = dram_layout_ptconvlstm__conv_layer__weight__grad;
    params.ptconvlstm__conv_layer__bias__grad_dram_out = dram_layout_ptconvlstm__conv_layer__bias__grad;
    params.ptconvlstm__dense_layer__weight__grad_dram_out = dram_layout_ptconvlstm__dense_layer__weight__grad;
    params.ptconvlstm__dense_layer__bias__grad_dram_out = dram_layout_ptconvlstm__dense_layer__bias__grad;
    
    
    auto section0_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.alloc_section_ctx().allocate(sizeof(arc::LogregTorchSamba), alignof(arc::LogregTorchSamba)))
              arc::LogregTorchSamba("LogregTorchSamba", nullptr, &rail, params, 0);
        auto &node = *nodep;
        node.configure(0);
        auto *partition_placement = section_plasma.create_condition<PartitionPlacement>();
        { // Begin Section 0, Chip 0
            Partition partition {0, 0};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Input inp_window_slice_1_0_0_83
            DramInput dram_input_inp_window_slice_1_0_0_83;
            DramLoadParams inp_window_slice_1_0_0_83_load_params;
            dram_input_inp_window_slice_1_0_0_83.dram_layout = dram_layout_inp_window_slice_1_0_0_83;
            dram_input_inp_window_slice_1_0_0_83.pmu_layout = pmu_layout_inp_window_slice_1_0_0_83;
            inp_window_slice_1_0_0_83_load_params.load_once = false;
            inp_window_slice_1_0_0_83_load_params.vector_transpose = false;
            dram_input_inp_window_slice_1_0_0_83.sinks = node.input_list(arc::LogregTorchSamba::Input::kinp_window_slice_1_0_0_83);
            dram_input_inp_window_slice_1_0_0_83.params = inp_window_slice_1_0_0_83_load_params;
            dram_input_inp_window_slice_1_0_0_83.is_lut = false;
            dram_input_inp_window_slice_1_0_0_83.group_id = 0;
            dram_input_inp_window_slice_1_0_0_83.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_inp_window_slice_1_0_0_83);
            
            /// Load Input ptconvlstm__conv_layer__weight_0_0_87
            DramInput dram_input_ptconvlstm__conv_layer__weight_0_0_87;
            DramLoadParams ptconvlstm__conv_layer__weight_0_0_87_load_params;
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.dram_layout = dram_layout_ptconvlstm__conv_layer__weight_0_0_87;
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.pmu_layout = pmu_layout_ptconvlstm__conv_layer__weight_0_0_87;
            ptconvlstm__conv_layer__weight_0_0_87_load_params.load_once = false;
            ptconvlstm__conv_layer__weight_0_0_87_load_params.vector_transpose = false;
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight_0_0_87);
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.params = ptconvlstm__conv_layer__weight_0_0_87_load_params;
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.is_lut = false;
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.group_id = 0;
            dram_input_ptconvlstm__conv_layer__weight_0_0_87.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__conv_layer__weight_0_0_87);
            
            /// Load Input ptconvlstm__conv_layer__bias_0_0_88
            DramInput dram_input_ptconvlstm__conv_layer__bias_0_0_88;
            DramLoadParams ptconvlstm__conv_layer__bias_0_0_88_load_params;
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.dram_layout = dram_layout_ptconvlstm__conv_layer__bias_0_0_88;
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.pmu_layout = pmu_layout_ptconvlstm__conv_layer__bias_0_0_88;
            ptconvlstm__conv_layer__bias_0_0_88_load_params.load_once = false;
            ptconvlstm__conv_layer__bias_0_0_88_load_params.vector_transpose = false;
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias_0_0_88);
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.params = ptconvlstm__conv_layer__bias_0_0_88_load_params;
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.is_lut = false;
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.group_id = 0;
            dram_input_ptconvlstm__conv_layer__bias_0_0_88.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__conv_layer__bias_0_0_88);
            
            /// Load Group #2
            FrontingPmu::Params fronting_pmu_load_group_2_params;
            fronting_pmu_load_group_2_params.dram_layout_all = dram_layout_group_2;
            std::vector<BufferNode *> gbufs_load_group_2 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_0_0_92)                
            };
            fronting_pmu_load_group_2_params.static_buffers = gbufs_load_group_2;
            fronting_pmu_load_group_2_params.atom_transpose = false;
            auto *fronting_pmu_load_group_2 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_2", partition_parent, &section_plasma, fronting_pmu_load_group_2_params);
            fronting_pmu_load_group_2->configure_node();
            fronting_pmu_load_group_2->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            /// Load Group #5
            FrontingPmu::Params fronting_pmu_load_group_5_params;
            fronting_pmu_load_group_5_params.dram_layout_all = dram_layout_group_5;
            std::vector<BufferNode *> gbufs_load_group_5 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_0_0_93)                
            };
            fronting_pmu_load_group_5_params.static_buffers = gbufs_load_group_5;
            fronting_pmu_load_group_5_params.atom_transpose = false;
            auto *fronting_pmu_load_group_5 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_5", partition_parent, &section_plasma, fronting_pmu_load_group_5_params);
            fronting_pmu_load_group_5->configure_node();
            fronting_pmu_load_group_5->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            /// Load Input inp_window_0_0_262
            DramInput dram_input_inp_window_0_0_262;
            DramLoadParams inp_window_0_0_262_load_params;
            inp_window_0_0_262_load_params.multi_load = 1;
            inp_window_0_0_262_load_params.multi_load_buffer_depth = 2;
            inp_window_0_0_262_load_params.allocate_implicit_token = true;
            dram_input_inp_window_0_0_262.dram_layout = dram_layout_inp_window_0_0_262;
            dram_input_inp_window_0_0_262.pmu_layout = pmu_layout_inp_window_0_0_262_full;
            inp_window_0_0_262_load_params.load_once = false;
            inp_window_0_0_262_load_params.vector_transpose = false;
            dram_input_inp_window_0_0_262.sinks = node.input_list(arc::LogregTorchSamba::Input::kinp_window_0_0_262);
            dram_input_inp_window_0_0_262.params = inp_window_0_0_262_load_params;
            dram_input_inp_window_0_0_262.is_lut = false;
            dram_input_inp_window_0_0_262.group_id = 0;
            dram_input_inp_window_0_0_262.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_inp_window_0_0_262);
            
            /// Load Group #9
            FrontingPmu::Params fronting_pmu_load_group_9_params;
            fronting_pmu_load_group_9_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374;
            fronting_pmu_load_group_9_params.vag_group_id = 0;
            fronting_pmu_load_group_9_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::klbuf1a_0_0_383));
            auto *fronting_pmu_load_group_9 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_9", partition_parent, &section_plasma, fronting_pmu_load_group_9_params);
            fronting_pmu_load_group_9->configure_node();
            fronting_pmu_load_group_9->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            /// Load Input out_window_0_0_263
            DramInput dram_input_out_window_0_0_263;
            DramLoadParams out_window_0_0_263_load_params;
            out_window_0_0_263_load_params.multi_load = 1;
            out_window_0_0_263_load_params.multi_load_buffer_depth = 2;
            out_window_0_0_263_load_params.allocate_implicit_token = true;
            dram_input_out_window_0_0_263.dram_layout = dram_layout_out_window_0_0_263;
            dram_input_out_window_0_0_263.pmu_layout = pmu_layout_out_window_0_0_263_full;
            out_window_0_0_263_load_params.load_once = false;
            out_window_0_0_263_load_params.vector_transpose = false;
            dram_input_out_window_0_0_263.sinks = node.input_list(arc::LogregTorchSamba::Input::kout_window_0_0_263);
            dram_input_out_window_0_0_263.params = out_window_0_0_263_load_params;
            dram_input_out_window_0_0_263.is_lut = false;
            dram_input_out_window_0_0_263.group_id = 0;
            dram_input_out_window_0_0_263.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_out_window_0_0_263);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Output ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270
            DramOutput dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270;
            DramStoreParams ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270_store_params;
            ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270_store_params.multi_store = 1;
            dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.dram_layout = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270;
            dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.pmu_layout = pmu_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270_full;
            dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.source = node.output(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270);
            dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.params = ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270_store_params;
            dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270.timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            stores.push_back(dram_output_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270);
            
            /// Store Output ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271
            DramOutput dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271;
            DramStoreParams ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_store_params;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_store_params.multi_store = 1;
            dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.dram_layout = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271;
            dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.pmu_layout = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_full;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_store_params.vector_transpose = false;
            dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.source = node.output(arc::LogregTorchSamba::Output::kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271);
            dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.params = ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271_store_params;
            dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271.timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            stores.push_back(dram_output_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271);
            
            /// Store Output ptconvlstm__criterion__mseloss__outputs__0_0_0_272
            DramOutput dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272;
            DramStoreParams ptconvlstm__criterion__mseloss__outputs__0_0_0_272_store_params;
            ptconvlstm__criterion__mseloss__outputs__0_0_0_272_store_params.multi_store = 1;
            dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.dram_layout = dram_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272;
            dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.pmu_layout = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0_0_0_272_full;
            ptconvlstm__criterion__mseloss__outputs__0_0_0_272_store_params.vector_transpose = false;
            dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.source = node.output(arc::LogregTorchSamba::Output::kptconvlstm__criterion__mseloss__outputs__0_0_0_272);
            dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.params = ptconvlstm__criterion__mseloss__outputs__0_0_0_272_store_params;
            dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272.timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            stores.push_back(dram_output_ptconvlstm__criterion__mseloss__outputs__0_0_0_272);
            
            /// Store Output ptconvlstm__view__outputs__0_0_0_273
            DramOutput dram_output_ptconvlstm__view__outputs__0_0_0_273;
            DramStoreParams ptconvlstm__view__outputs__0_0_0_273_store_params;
            ptconvlstm__view__outputs__0_0_0_273_store_params.multi_store = 1;
            dram_output_ptconvlstm__view__outputs__0_0_0_273.dram_layout = dram_layout_ptconvlstm__view__outputs__0_0_0_273;
            dram_output_ptconvlstm__view__outputs__0_0_0_273.pmu_layout = pmu_layout_ptconvlstm__view__outputs__0_0_0_273_full;
            ptconvlstm__view__outputs__0_0_0_273_store_params.vector_transpose = false;
            dram_output_ptconvlstm__view__outputs__0_0_0_273.source = node.output(arc::LogregTorchSamba::Output::kptconvlstm__view__outputs__0_0_0_273);
            dram_output_ptconvlstm__view__outputs__0_0_0_273.params = ptconvlstm__view__outputs__0_0_0_273_store_params;
            dram_output_ptconvlstm__view__outputs__0_0_0_273.timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            stores.push_back(dram_output_ptconvlstm__view__outputs__0_0_0_273);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 0, Chip 0
    };
    auto section1_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.alloc_section_ctx().allocate(sizeof(arc::LogregTorchSamba), alignof(arc::LogregTorchSamba)))
              arc::LogregTorchSamba("LogregTorchSamba", nullptr, &rail, params, 1);
        auto &node = *nodep;
        node.configure(1);
        auto *partition_placement = section_plasma.create_condition<PartitionPlacement>();
        { // Begin Section 1, Chip 0
            Partition partition {0, 1};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Input inp_window_slice_1_1_0_124
            DramInput dram_input_inp_window_slice_1_1_0_124;
            DramLoadParams inp_window_slice_1_1_0_124_load_params;
            dram_input_inp_window_slice_1_1_0_124.dram_layout = dram_layout_inp_window_slice_1_1_0_124;
            dram_input_inp_window_slice_1_1_0_124.pmu_layout = pmu_layout_inp_window_slice_1_1_0_124;
            inp_window_slice_1_1_0_124_load_params.load_once = false;
            inp_window_slice_1_1_0_124_load_params.vector_transpose = false;
            dram_input_inp_window_slice_1_1_0_124.sinks = node.input_list(arc::LogregTorchSamba::Input::kinp_window_slice_1_1_0_124);
            dram_input_inp_window_slice_1_1_0_124.params = inp_window_slice_1_1_0_124_load_params;
            dram_input_inp_window_slice_1_1_0_124.is_lut = false;
            dram_input_inp_window_slice_1_1_0_124.group_id = 0;
            dram_input_inp_window_slice_1_1_0_124.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_inp_window_slice_1_1_0_124);
            
            /// Load Input out_window_1_0_264
            DramInput dram_input_out_window_1_0_264;
            DramLoadParams out_window_1_0_264_load_params;
            out_window_1_0_264_load_params.multi_load = 1;
            out_window_1_0_264_load_params.multi_load_buffer_depth = 2;
            out_window_1_0_264_load_params.allocate_implicit_token = true;
            dram_input_out_window_1_0_264.dram_layout = dram_layout_out_window_1_0_264;
            dram_input_out_window_1_0_264.pmu_layout = pmu_layout_out_window_1_0_264_full;
            out_window_1_0_264_load_params.load_once = false;
            out_window_1_0_264_load_params.vector_transpose = false;
            dram_input_out_window_1_0_264.sinks = node.input_list(arc::LogregTorchSamba::Input::kout_window_1_0_264);
            dram_input_out_window_1_0_264.params = out_window_1_0_264_load_params;
            dram_input_out_window_1_0_264.is_lut = false;
            dram_input_out_window_1_0_264.group_id = 0;
            dram_input_out_window_1_0_264.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_out_window_1_0_264);
            
            /// Load Input ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265
            DramInput dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265;
            DramLoadParams ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params.multi_load = 1;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params.multi_load_buffer_depth = 2;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params.allocate_implicit_token = true;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.dram_layout = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.pmu_layout = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_full;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params.load_once = false;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params.vector_transpose = false;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265);
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.params = ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265_load_params;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.is_lut = false;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.group_id = 0;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265);
            
            /// Load Input ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266
            DramInput dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266;
            DramLoadParams ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params.multi_load = 1;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params.multi_load_buffer_depth = 2;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params.allocate_implicit_token = true;
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.dram_layout = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266;
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.pmu_layout = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_full;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params.load_once = false;
            ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params.vector_transpose = false;
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266);
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.params = ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266_load_params;
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.is_lut = false;
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.group_id = 0;
            dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266);
            
            /// Load Group #11
            FrontingPmu::Params fronting_pmu_load_group_11_params;
            fronting_pmu_load_group_11_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_267;
            fronting_pmu_load_group_11_params.vag_group_id = 0;
            fronting_pmu_load_group_11_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_228));
            auto *fronting_pmu_load_group_11 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_11", partition_parent, &section_plasma, fronting_pmu_load_group_11_params);
            fronting_pmu_load_group_11->configure_node();
            fronting_pmu_load_group_11->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            /// Load Group #12
            FrontingPmu::Params fronting_pmu_load_group_12_params;
            fronting_pmu_load_group_12_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__weight_1_0_335;
            fronting_pmu_load_group_12_params.vag_group_id = 0;
            fronting_pmu_load_group_12_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_388));
            auto *fronting_pmu_load_group_12 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_12", partition_parent, &section_plasma, fronting_pmu_load_group_12_params);
            fronting_pmu_load_group_12->configure_node();
            fronting_pmu_load_group_12->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            /// Load Input inp_window_1_0_268
            DramInput dram_input_inp_window_1_0_268;
            DramLoadParams inp_window_1_0_268_load_params;
            inp_window_1_0_268_load_params.multi_load = 1;
            inp_window_1_0_268_load_params.multi_load_buffer_depth = 2;
            inp_window_1_0_268_load_params.allocate_implicit_token = true;
            dram_input_inp_window_1_0_268.dram_layout = dram_layout_inp_window_1_0_268;
            dram_input_inp_window_1_0_268.pmu_layout = pmu_layout_inp_window_1_0_268_full;
            inp_window_1_0_268_load_params.load_once = false;
            inp_window_1_0_268_load_params.vector_transpose = false;
            dram_input_inp_window_1_0_268.sinks = node.input_list(arc::LogregTorchSamba::Input::kinp_window_1_0_268);
            dram_input_inp_window_1_0_268.params = inp_window_1_0_268_load_params;
            dram_input_inp_window_1_0_268.is_lut = false;
            dram_input_inp_window_1_0_268.group_id = 0;
            dram_input_inp_window_1_0_268.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_inp_window_1_0_268);
            
            /// Load Group #10
            FrontingPmu::Params fronting_pmu_load_group_10_params;
            fronting_pmu_load_group_10_params.dram_layout_all = dram_layout_group_10;
            std::vector<BufferNode *> gbufs_load_group_10 {
                node.lbuf1a_1_0_391_                ,
                node.lbuf1a_1_0_393_                
            };
            fronting_pmu_load_group_10_params.static_buffers = gbufs_load_group_10;
            fronting_pmu_load_group_10_params.atom_transpose = false;
            auto *fronting_pmu_load_group_10 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_10", partition_parent, &section_plasma, fronting_pmu_load_group_10_params);
            fronting_pmu_load_group_10->configure_node();
            fronting_pmu_load_group_10->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            /// Load Group #13
            FrontingPmu::Params fronting_pmu_load_group_13_params;
            fronting_pmu_load_group_13_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269;
            fronting_pmu_load_group_13_params.vag_group_id = 0;
            fronting_pmu_load_group_13_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_254));
            auto *fronting_pmu_load_group_13 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_13", partition_parent, &section_plasma, fronting_pmu_load_group_13_params);
            fronting_pmu_load_group_13->configure_node();
            fronting_pmu_load_group_13->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #14;
            BackingPmu::Params backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor_params;
            auto buffer_node_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::ksbuf1a_1_0_394));
            backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor_params.buffer_node = buffer_node_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor;
            backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor;
            auto *backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor", partition_parent, &section_plasma, backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor_params);
            backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor->configure_node();
            backing_pmu_group_14_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #15;
            BackingPmu::Params backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1_params;
            auto buffer_node_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1));
            backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1_params.buffer_node = buffer_node_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1;
            backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1;
            auto *backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1", partition_parent, &section_plasma, backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1_params);
            backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1->configure_node();
            backing_pmu_group_15_ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Output ptconvlstm__dense_layer__linear_bwd_weight_tensor
            PartitionedStore ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params;
            ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params.dram_layout = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params.pmu_layouts = node.result_layouts(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__linear_bwd_weight_tensor);
            ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params.sources = node.output_list(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__linear_bwd_weight_tensor);
            ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params.plasma = &plasma;
            ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params.parent = partition_parent;
            ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params.starts = node.ctrl_output_list(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__linear_bwd_weight_tensor);
            partitioned_store(ptconvlstm__dense_layer__linear_bwd_weight_tensor_store_params, stores, std::make_pair(TimingGroup::kFinalGroup, 1));
            
            /// Store Output ptconvlstm__dense_layer__linear_bwd_weight_tensor1
            DramOutput dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            DramStoreParams ptconvlstm__dense_layer__linear_bwd_weight_tensor1_store_params;
            dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.dram_layout = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.pmu_layout = pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            ptconvlstm__dense_layer__linear_bwd_weight_tensor1_store_params.start_ctrl_input = node.ctrl_output(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__linear_bwd_weight_tensor1);
            ptconvlstm__dense_layer__linear_bwd_weight_tensor1_store_params.vector_transpose = false;
            dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.source = node.output(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__linear_bwd_weight_tensor1);
            dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.params = ptconvlstm__dense_layer__linear_bwd_weight_tensor1_store_params;
            dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            stores.push_back(dram_output_ptconvlstm__dense_layer__linear_bwd_weight_tensor1);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 1, Chip 0
    };
    auto section2_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.alloc_section_ctx().allocate(sizeof(arc::LogregTorchSamba), alignof(arc::LogregTorchSamba)))
              arc::LogregTorchSamba("LogregTorchSamba", nullptr, &rail, params, 2);
        auto &node = *nodep;
        node.configure(2);
        auto *partition_placement = section_plasma.create_condition<PartitionPlacement>();
        /** Add Plasma Outputs References **/
        
        { // Begin Section 2, Chip 0
            Partition partition {0, 2};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Group #0
            FrontingPmu::Params fronting_pmu_load_group_0_params;
            fronting_pmu_load_group_0_params.dram_layout_all = dram_layout_group_0;
            std::vector<BufferNode *> gbufs_load_group_0 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias_2_0_142)                
            };
            fronting_pmu_load_group_0_params.static_buffers = gbufs_load_group_0;
            fronting_pmu_load_group_0_params.atom_transpose = false;
            auto *fronting_pmu_load_group_0 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_0", partition_parent, &section_plasma, fronting_pmu_load_group_0_params);
            fronting_pmu_load_group_0->configure_node();
            fronting_pmu_load_group_0->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #7
            FrontingPmu::Params fronting_pmu_load_group_7_params;
            fronting_pmu_load_group_7_params.dram_layout_all = dram_layout_group_7;
            std::vector<BufferNode *> gbufs_load_group_7 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias__grad_2_0_143)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight__grad_2_0_149)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__grad_2_0_161)                
            };
            fronting_pmu_load_group_7_params.static_buffers = gbufs_load_group_7;
            fronting_pmu_load_group_7_params.atom_transpose = false;
            auto *fronting_pmu_load_group_7 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_7", partition_parent, &section_plasma, fronting_pmu_load_group_7_params);
            fronting_pmu_load_group_7->configure_node();
            fronting_pmu_load_group_7->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #6
            FrontingPmu::Params fronting_pmu_load_group_6_params;
            fronting_pmu_load_group_6_params.dram_layout_all = dram_layout_group_6;
            std::vector<BufferNode *> gbufs_load_group_6 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162)                
            };
            fronting_pmu_load_group_6_params.static_buffers = gbufs_load_group_6;
            fronting_pmu_load_group_6_params.atom_transpose = false;
            auto *fronting_pmu_load_group_6 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_6", partition_parent, &section_plasma, fronting_pmu_load_group_6_params);
            fronting_pmu_load_group_6->configure_node();
            fronting_pmu_load_group_6->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #1
            FrontingPmu::Params fronting_pmu_load_group_1_params;
            fronting_pmu_load_group_1_params.dram_layout_all = dram_layout_group_1;
            std::vector<BufferNode *> gbufs_load_group_1 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight_2_0_148)                
            };
            fronting_pmu_load_group_1_params.static_buffers = gbufs_load_group_1;
            fronting_pmu_load_group_1_params.atom_transpose = false;
            auto *fronting_pmu_load_group_1 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_1", partition_parent, &section_plasma, fronting_pmu_load_group_1_params);
            fronting_pmu_load_group_1->configure_node();
            fronting_pmu_load_group_1->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #5
            FrontingPmu::Params fronting_pmu_load_group_5_params;
            fronting_pmu_load_group_5_params.dram_layout_all = dram_layout_group_5;
            std::vector<BufferNode *> gbufs_load_group_5 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_2_0_154)                
            };
            fronting_pmu_load_group_5_params.static_buffers = gbufs_load_group_5;
            fronting_pmu_load_group_5_params.atom_transpose = false;
            auto *fronting_pmu_load_group_5 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_5", partition_parent, &section_plasma, fronting_pmu_load_group_5_params);
            fronting_pmu_load_group_5->configure_node();
            fronting_pmu_load_group_5->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #8
            FrontingPmu::Params fronting_pmu_load_group_8_params;
            fronting_pmu_load_group_8_params.dram_layout_all = dram_layout_group_8;
            std::vector<BufferNode *> gbufs_load_group_8 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__grad_2_0_155)                
            };
            fronting_pmu_load_group_8_params.static_buffers = gbufs_load_group_8;
            fronting_pmu_load_group_8_params.atom_transpose = false;
            auto *fronting_pmu_load_group_8 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_8", partition_parent, &section_plasma, fronting_pmu_load_group_8_params);
            fronting_pmu_load_group_8->configure_node();
            fronting_pmu_load_group_8->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #2
            FrontingPmu::Params fronting_pmu_load_group_2_params;
            fronting_pmu_load_group_2_params.dram_layout_all = dram_layout_group_2;
            std::vector<BufferNode *> gbufs_load_group_2 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_2_0_160)                
            };
            fronting_pmu_load_group_2_params.static_buffers = gbufs_load_group_2;
            fronting_pmu_load_group_2_params.atom_transpose = false;
            auto *fronting_pmu_load_group_2 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_2", partition_parent, &section_plasma, fronting_pmu_load_group_2_params);
            fronting_pmu_load_group_2->configure_node();
            fronting_pmu_load_group_2->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #0;
            BackingPmu::Params backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146_params;
            std::vector<WeightsBuffer *> wbufs_group_0 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__bias_2_0_146)                
            };
            backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146_params.weights_buffers = wbufs_group_0;
            backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146_params.dram_layout_all = dram_layout_group_0;
            backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146_params.generate_allrddone = true;
            auto *backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146", partition_parent, &section_plasma, backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146_params);
            backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146->configure_node();
            backing_pmu_group_0_ptconvlstm__conv_layer__bias_2_0_146->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #6;
            BackingPmu::Params backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147_params;
            std::vector<WeightsBuffer *> wbufs_group_6 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165)                
            };
            backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147_params.weights_buffers = wbufs_group_6;
            backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147_params.dram_layout_all = dram_layout_group_6;
            backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147_params.generate_allrddone = true;
            auto *backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147", partition_parent, &section_plasma, backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147_params);
            backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147->configure_node();
            backing_pmu_group_6_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #1;
            BackingPmu::Params backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152_params;
            std::vector<WeightsBuffer *> wbufs_group_1 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__weight_2_0_152)                
            };
            backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152_params.weights_buffers = wbufs_group_1;
            backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152_params.dram_layout_all = dram_layout_group_1;
            backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152_params.generate_allrddone = true;
            auto *backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152", partition_parent, &section_plasma, backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152_params);
            backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152->configure_node();
            backing_pmu_group_1_ptconvlstm__conv_layer__weight_2_0_152->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #5;
            BackingPmu::Params backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158_params;
            std::vector<WeightsBuffer *> wbufs_group_5 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias_2_0_158)                
            };
            backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158_params.weights_buffers = wbufs_group_5;
            backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158_params.dram_layout_all = dram_layout_group_5;
            backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158_params.generate_allrddone = true;
            auto *backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158", partition_parent, &section_plasma, backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158_params);
            backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158->configure_node();
            backing_pmu_group_5_ptconvlstm__dense_layer__bias_2_0_158->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #2;
            BackingPmu::Params backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164_params;
            std::vector<WeightsBuffer *> wbufs_group_2 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight_2_0_164)                
            };
            backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164_params.weights_buffers = wbufs_group_2;
            backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164_params.dram_layout_all = dram_layout_group_2;
            backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164_params.generate_allrddone = true;
            auto *backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164", partition_parent, &section_plasma, backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164_params);
            backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164->configure_node();
            backing_pmu_group_2_ptconvlstm__dense_layer__weight_2_0_164->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 2, Chip 0
    };
    SectionCompileFns section_fns{section0_fn,section1_fn,section2_fn};
    plasma.compile_by_section(section_fns);
    return 0;
}

