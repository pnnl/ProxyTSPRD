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

#include "arc/compiler/Arc.h"
#include "arc/compiler/CompilerOptions.h"

#include "Core/Workspace/Workspace.h"
#include "Core/Util/CommandLineOptions.h"
#include "prism/Emul/Tensor.h"
#include "rail/compiler/CompilerOptions.h"
#include "shared/compiler/spec/ArchSpec.h"
#include "Util/ConvUtils.h"
#include "Util/Definitions.h"
#include "prism/Util/NodeConstants.h"
#include "Util/TestHelpers.h"

#include "LogregTorchSamba.h"
#include "mlnodes/BackingPmu.h"
#include "mlnodes/FrontingPmu.h"
#include "templates/tiler/prism/Tiler.h"

using namespace prism;
using namespace plasma;

int main(int argc, char **argv) {
    /** Parse command line options **/
    cl::enable_dfg_init.setInitialValue(true);
    cl::enable_sa_placement.setInitialValue(true);
    cl::arc_autogen.setInitialValue(true);
    sn::spec::ArchSpec::set_arch({.major = sn::spec::ArchVersion::Major(1), .minor = 0});
    cl::mac_autogen.setInitialValue(true);
    cl::enable_bandwidth_aware_sa.setInitialValue(true);
    cl::optimization_level.setInitialValue(3);
    /** Plasma Init **/
    std::string output_path = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/test/logreg/";
    make_dirs(output_path);
    BitfileTypePerChip chip_types (1);
    std::fill(chip_types.begin(), chip_types.end(), BitfileType::kFourTile);
    sn::cl_output_folder.setInitialValue("/qfs/people/jain432/pacer_saudade/code/sample_scripts/test/logreg/");
    sn::cl_pef_name.setInitialValue("logreg");
    mlir::arc::PrismInfo::initialize();
    mlir::arc::Arc::Options arc_options;
    arc_options.mlir_file_name = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/test/logreg/arc_gen/mlir/final.mlir";
    arc_options.data_file_name = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/test/logreg/arc_gen/mlir/final.data";
    arc_options.overwrite_dir = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/test/logreg/";
    arc_options.in_codegen = true;
    mlir::arc::Arc arc(argc, argv, arc_options);
    mlir::rail::RAIL &rail = *arc.rail();
    Plasma &plasma = *mlir::rail::RAIL::plasma();
    plasma.workspace().get_pef_metadata()["acc_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["acc_test"] = "False";
    plasma.workspace().get_pef_metadata()["arc_debug_mode"] = "False";
    plasma.workspace().get_pef_metadata()["batch_size"] = "1";
    plasma.workspace().get_pef_metadata()["bench_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiled_stats_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiler_configs_file"] = "";
    plasma.workspace().get_pef_metadata()["data_folder"] = "mnist_data";
    plasma.workspace().get_pef_metadata()["data_parallel"] = "False";
    plasma.workspace().get_pef_metadata()["data_parallel_mode"] = "normal";
    plasma.workspace().get_pef_metadata()["debug"] = "False";
    plasma.workspace().get_pef_metadata()["default_device"] = "DDR";
    plasma.workspace().get_pef_metadata()["dense_adam_fast_grad_compute"] = "False";
    plasma.workspace().get_pef_metadata()["dev_mode"] = "False";
    plasma.workspace().get_pef_metadata()["disable_bf16_conversion"] = "False";
    plasma.workspace().get_pef_metadata()["disable_mac_tiling"] = "False";
    plasma.workspace().get_pef_metadata()["disable_retry_lower_visible_resources"] = "False";
    plasma.workspace().get_pef_metadata()["distlearn_config"] = "";
    plasma.workspace().get_pef_metadata()["dropout_tiling_legalizer_error"] = "False";
    plasma.workspace().get_pef_metadata()["dump_accuracy_debug_info"] = "False";
    plasma.workspace().get_pef_metadata()["dump_compiled_stats_json"] = "False";
    plasma.workspace().get_pef_metadata()["enable_buffer_trial_compile"] = "False";
    plasma.workspace().get_pef_metadata()["enable_conv2d_conversion"] = "False";
    plasma.workspace().get_pef_metadata()["enable_conv_tiling"] = "False";
    plasma.workspace().get_pef_metadata()["enable_hd_retry_lower_visible_resources"] = "False";
    plasma.workspace().get_pef_metadata()["enable_hypersection"] = "False";
    plasma.workspace().get_pef_metadata()["enable_node_trial_compile"] = "False";
    plasma.workspace().get_pef_metadata()["enable_node_trial_compile_logging"] = "False";
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
    plasma.workspace().get_pef_metadata()["json_counters"] = "";
    plasma.workspace().get_pef_metadata()["latency_budget_bwd"] = "None";
    plasma.workspace().get_pef_metadata()["latency_budget_fwd"] = "None";
    plasma.workspace().get_pef_metadata()["listen_for_input"] = "False";
    plasma.workspace().get_pef_metadata()["local_rank"] = "-1";
    plasma.workspace().get_pef_metadata()["log_dir"] = "None";
    plasma.workspace().get_pef_metadata()["lr"] = "0.0015";
    plasma.workspace().get_pef_metadata()["mac_named_dims_c++"] = "False";
    plasma.workspace().get_pef_metadata()["mac_only"] = "False";
    plasma.workspace().get_pef_metadata()["mac_print_mapping_ir"] = "False";
    plasma.workspace().get_pef_metadata()["mac_split_cat_as_stage_buf"] = "False";
    plasma.workspace().get_pef_metadata()["mac_templatedb_dir"] = "";
    plasma.workspace().get_pef_metadata()["mac_templatedb_dir_backup_to"] = "";
    plasma.workspace().get_pef_metadata()["mac_templatedb_dir_init_from"] = "";
    plasma.workspace().get_pef_metadata()["mac_v1"] = "False";
    plasma.workspace().get_pef_metadata()["mapping"] = "section";
    plasma.workspace().get_pef_metadata()["max_expected_mac_latency"] = "-1.0";
    plasma.workspace().get_pef_metadata()["max_mac_loop_attempt"] = "-1";
    plasma.workspace().get_pef_metadata()["max_tiling_depth"] = "None";
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
    plasma.workspace().get_pef_metadata()["num_tiles"] = "-1";
    plasma.workspace().get_pef_metadata()["optim_level"] = "o3";
    plasma.workspace().get_pef_metadata()["optimize_concat_split"] = "False";
    plasma.workspace().get_pef_metadata()["output_config"] = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/out/configs";
    plasma.workspace().get_pef_metadata()["pef"] = "None";
    plasma.workspace().get_pef_metadata()["plot"] = "None";
    plasma.workspace().get_pef_metadata()["recompute_ratio"] = "-1.0";
    plasma.workspace().get_pef_metadata()["reduce_on_rdu"] = "False";
    plasma.workspace().get_pef_metadata()["resources_scaling_factors"] = "['-1.0', '-1.0', '-1.0', '-1.0']";
    plasma.workspace().get_pef_metadata()["run_analysis_pass"] = "False";
    plasma.workspace().get_pef_metadata()["run_graph_only"] = "False";
    plasma.workspace().get_pef_metadata()["safe_mode"] = "False";
    plasma.workspace().get_pef_metadata()["samba_plot"] = "False";
    plasma.workspace().get_pef_metadata()["samba_version"] = "1.14.0";
    plasma.workspace().get_pef_metadata()["sambatune_graph"] = "False";
    plasma.workspace().get_pef_metadata()["section_cut_beam_search"] = "[]";
    plasma.workspace().get_pef_metadata()["section_cut_sort_order"] = "3";
    plasma.workspace().get_pef_metadata()["single_opt_sec"] = "False";
    plasma.workspace().get_pef_metadata()["skip_instrumentation_on_read0"] = "False";
    plasma.workspace().get_pef_metadata()["skip_instrumentation_on_read1"] = "False";
    plasma.workspace().get_pef_metadata()["stage_instrumentation"] = "none";
    plasma.workspace().get_pef_metadata()["stop_mac_c++"] = "False";
    plasma.workspace().get_pef_metadata()["strict_conversion"] = "False";
    plasma.workspace().get_pef_metadata()["tensor_parallel"] = "none";
    plasma.workspace().get_pef_metadata()["tile_orientation"] = "auto";
    plasma.workspace().get_pef_metadata()["unroll_first"] = "False";
    plasma.workspace().get_pef_metadata()["validate_mac_resource_prediction"] = "False";
    plasma.workspace().get_pef_metadata()["verbose"] = "0";
    plasma.workspace().get_pef_metadata()["visualize"] = "False";
    plasma.workspace().get_pef_metadata()["weight_caching"] = "False";
    plasma.workspace().get_pef_metadata()["weight_decay"] = "0.0003";
    plasma.workspace().get_pef_metadata()["weight_norm"] = "False";
    plasma.workspace().get_pef_metadata()["world_size"] = "1";
    plasma.workspace().get_pef_metadata()["yaml_config"] = "None";
    
    /** Add Plasma Inputs **/
    /// DRAM and PMU layouts for ptconvlstm__conv_layer__weight
    PlasmaIOConfig io_config_ptconvlstm__conv_layer__weight;
    io_config_ptconvlstm__conv_layer__weight.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__conv_layer__weight.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__conv_layer__weight.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__conv_layer__weight.weight_annotation = TensorWeightAnnotation::kWeight;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight = add_plasma_input(plasma, {256, 136, 3}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__conv_layer__weight, "ptconvlstm__conv_layer__weight", {});
    dram_layout_ptconvlstm__conv_layer__weight.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight_2_0_177 = dram_layout_ptconvlstm__conv_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight_2_0_177 = dram_layout_ptconvlstm__conv_layer__weight_2_0_177.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight_0_0_91 = dram_layout_ptconvlstm__conv_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight_0_0_91 = dram_layout_ptconvlstm__conv_layer__weight_0_0_91.at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight_2_0_181 = dram_layout_ptconvlstm__conv_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight_2_0_181 = dram_layout_ptconvlstm__conv_layer__weight_2_0_181.vector_align().at_address(0);
    /// DRAM and PMU layouts for inp_window_slice_1
    PlasmaIOConfig io_config_inp_window_slice_1;
    io_config_inp_window_slice_1.conv = PhysicalLayout::kRowMajor;
    io_config_inp_window_slice_1.python_transforms.push_back(std::make_pair(".int().int()", ".long()"));
    io_config_inp_window_slice_1.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_inp_window_slice_1.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_inp_window_slice_1 = add_plasma_input(plasma, {3}, node_constants::TemplateDataFormats::kInt32(), io_config_inp_window_slice_1, "inp_window_slice_1", {});
    dram_layout_inp_window_slice_1.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_inp_window_slice_1_1_0_140 = dram_layout_inp_window_slice_1;
    TensorLayout pmu_layout_inp_window_slice_1_1_0_140 = dram_layout_inp_window_slice_1_1_0_140.at_address(0);
    TensorLayout dram_layout_inp_window_slice_1_0_0_94 = dram_layout_inp_window_slice_1;
    TensorLayout pmu_layout_inp_window_slice_1_0_0_94 = dram_layout_inp_window_slice_1_0_0_94.at_address(0);
    /// DRAM and PMU layouts for inp_window
    PlasmaIOConfig io_config_inp_window;
    io_config_inp_window.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_inp_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_inp_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_inp_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_inp_window = add_plasma_input(plasma, {1, 60, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_inp_window, "inp_window", {});
    dram_layout_inp_window.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_inp_window_1_0_265 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_1_0_265 = dram_layout_inp_window_1_0_265.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_1_0_265.set_vector_transposed(false);
    TensorLayout pmu_layout_inp_window_1_0_265_full = pmu_layout_inp_window_1_0_265.supertensor({1}).at_address(0);
    pmu_layout_inp_window_1_0_265_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_inp_window_0_0_260 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_0_0_260 = dram_layout_inp_window_0_0_260.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_0_0_260.set_vector_transposed(false);
    TensorLayout pmu_layout_inp_window_0_0_260_full = pmu_layout_inp_window_0_0_260.supertensor({1}).at_address(0);
    pmu_layout_inp_window_0_0_260_full.set_vector_transposed(false);
    
    /// Input Group #3
    std::vector<PlasmaRegion> group_3_tensors {
        {{256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__bias", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_3;
    io_config_group_3.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_3.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_3.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_3.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_3 = add_plasma_input_group(plasma, group_3_tensors, io_config_group_3, "group_3");
    TensorLayout dram_layout_group_3 = group_3.dram_layout;
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias = group_3.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__conv_layer__bias.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias_2_0_171 = dram_layout_ptconvlstm__conv_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias_2_0_171 = group_3.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__conv_layer__bias_2_0_171.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias_0_0_102 = dram_layout_ptconvlstm__conv_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias_0_0_102 = group_3.pmu_layouts.at(0).vector_align().at_address(0);
    pmu_layout_ptconvlstm__conv_layer__bias_0_0_102.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias_2_0_175 = dram_layout_ptconvlstm__conv_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias_2_0_175 = dram_layout_ptconvlstm__conv_layer__bias_2_0_175.vector_align().at_address(0);
    
    /// Input Group #12
    std::vector<PlasmaRegion> group_12_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_12;
    io_config_group_12.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_12.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_12.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_12.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_12 = add_plasma_input_group(plasma, group_12_tensors, io_config_group_12, "group_12");
    TensorLayout dram_layout_group_12 = group_12.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias = group_12.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_2_0_165 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_2_0_165 = group_12.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_2_0_165.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_0_0_107 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_0_0_107 = group_12.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_0_0_107.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_2_0_169 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_2_0_169 = dram_layout_ptconvlstm__dense_layer__bias_2_0_169.vector_align().at_address(0);
    
    /// Input Group #4
    std::vector<PlasmaRegion> group_4_tensors {
        {{4080, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_4;
    io_config_group_4.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_4.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_4.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_4.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_4 = add_plasma_input_group(plasma, group_4_tensors, io_config_group_4, "group_4");
    TensorLayout dram_layout_group_4 = group_4.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight = group_4.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_1_0_336 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_1_0_336 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_1_0_336.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_2_0_159 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_2_0_159 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_2_0_159.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_0_0_106 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_0_0_106 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_0_0_106.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_2_0_163 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_2_0_163 = dram_layout_ptconvlstm__dense_layer__weight_2_0_163.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for out_window
    PlasmaIOConfig io_config_out_window;
    io_config_out_window.conv = PhysicalLayout::kRowMajor;
    io_config_out_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_out_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_out_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_out_window = add_plasma_input(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_out_window, "out_window", {});
    dram_layout_out_window.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_out_window_1_0_262 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_1_0_262 = dram_layout_out_window_1_0_262.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    pmu_layout_out_window_1_0_262.set_vector_transposed(false);
    TensorLayout pmu_layout_out_window_1_0_262_full = pmu_layout_out_window_1_0_262.supertensor({1}).at_address(0);
    pmu_layout_out_window_1_0_262_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_out_window_0_0_96 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_0_0_96 = dram_layout_out_window_0_0_96.with_logical_shape({1, 30, 136}).at_address(0);
    pmu_layout_out_window_0_0_96.set_vector_transposed(false);
    TensorLayout pmu_layout_out_window_0_0_96_full = pmu_layout_out_window_0_0_96.supertensor({}).at_address(0);
    pmu_layout_out_window_0_0_96_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0__grad
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0__grad;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad = add_plasma_input(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0__grad, "ptconvlstm__criterion__mseloss__outputs__0__grad", {});
    dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.vector_align().at_address(0);
    /// DRAM and PMU layouts for ptconvlstm__view__outputs__0__grad
    PlasmaIOConfig io_config_ptconvlstm__view__outputs__0__grad;
    io_config_ptconvlstm__view__outputs__0__grad.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__view__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__view__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad = add_plasma_input(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0__grad, "ptconvlstm__view__outputs__0__grad", {});
    dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad_1_0_261 = dram_layout_ptconvlstm__view__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_261 = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_261.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_261.set_vector_transposed(false);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_261_full = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_261.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_261_full.set_vector_transposed(false);
    
    /// Input Group #13
    std::vector<PlasmaRegion> group_13_tensors {
        {{4080, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_13;
    io_config_group_13.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_13.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_13.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_13.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_13 = add_plasma_input_group(plasma, group_13_tensors, io_config_group_13, "group_13");
    TensorLayout dram_layout_group_13 = group_13.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum = group_13.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161 = group_13.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164.vector_align().at_address(0);
    
    /// Input Group #14
    std::vector<PlasmaRegion> group_14_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__bias__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{256, 136, 3}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__conv_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_14;
    io_config_group_14.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_14.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_14.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_14.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_14.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_14.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_14 = add_plasma_input_group(plasma, group_14_tensors, io_config_group_14, "group_14");
    TensorLayout dram_layout_group_14 = group_14.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum = group_14.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167 = group_14.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum = group_14.dram_sub_layouts.at(1);
    dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173 = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173 = group_14.pmu_layouts.at(1);
    pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176 = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176 = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum = group_14.dram_sub_layouts.at(2);
    dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179 = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179 = group_14.pmu_layouts.at(2);
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182 = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182 = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight
    PlasmaIOConfig io_config_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    io_config_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.conv = PhysicalLayout::kColumnMajorVectorAligned;
    io_config_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight = add_plasma_input(plasma, {1, 256, 1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight, "ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight", {});
    dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264 = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264 = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264.with_logical_shape({256, 1}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264_full = pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266 = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266 = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266.with_logical_shape({256, 1}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_full = pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub
    PlasmaIOConfig io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub = add_plasma_input(plasma, {1, 4080}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub, "ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub", {});
    dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263.with_logical_shape({4080}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263.set_vector_transposed(false);
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263_full = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267 = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267.with_logical_shape({4080}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_full = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_full.set_vector_transposed(false);
    
    /// Input Group #15
    std::vector<PlasmaRegion> group_15_tensors {
        {{4080, 256}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_15;
    io_config_group_15.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_15.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_15.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_15.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_15 = add_plasma_input_group(plasma, group_15_tensors, io_config_group_15, "group_15");
    TensorLayout dram_layout_group_15 = group_15.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad = group_15.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad_2_0_160 = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_160 = group_15.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_160.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor.vector_align().at_address(0);
    
    /// Input Group #16
    std::vector<PlasmaRegion> group_16_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{256, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__conv_layer__bias__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_16;
    io_config_group_16.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_16.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_16.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_16.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_16.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_16 = add_plasma_input_group(plasma, group_16_tensors, io_config_group_16, "group_16");
    TensorLayout dram_layout_group_16 = group_16.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad = group_16.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad_2_0_166 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_166 = group_16.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_166.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__grad = group_16.dram_sub_layouts.at(1);
    dram_layout_ptconvlstm__conv_layer__bias__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__bias__grad_2_0_172 = dram_layout_ptconvlstm__conv_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__bias__grad_2_0_172 = group_16.pmu_layouts.at(1);
    pmu_layout_ptconvlstm__conv_layer__bias__grad_2_0_172.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv2d_bwd_tensor = dram_layout_ptconvlstm__conv_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv2d_bwd_tensor = dram_layout_ptconvlstm__conv_layer__conv2d_bwd_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__conv_layer__weight__grad
    PlasmaIOConfig io_config_ptconvlstm__conv_layer__weight__grad;
    io_config_ptconvlstm__conv_layer__weight__grad.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__conv_layer__weight__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__conv_layer__weight__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__grad = add_plasma_input(plasma, {256, 136, 3}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__conv_layer__weight__grad, "ptconvlstm__conv_layer__weight__grad", {});
    dram_layout_ptconvlstm__conv_layer__weight__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__conv_layer__weight__grad_2_0_178 = dram_layout_ptconvlstm__conv_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__weight__grad_2_0_178 = dram_layout_ptconvlstm__conv_layer__weight__grad_2_0_178.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__reshape_1_bwd_tensor = dram_layout_ptconvlstm__conv_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__reshape_1_bwd_tensor = dram_layout_ptconvlstm__conv_layer__reshape_1_bwd_tensor.vector_align().at_address(0);
    /// DRAM and PMU layouts for ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list
    PlasmaIOConfig io_config_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list;
    io_config_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list = add_plasma_input(plasma, {96}, node_constants::TemplateDataFormats::kInt32(), io_config_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list, "ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list", {});
    dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.symbol_handle()->die_id = std::nullopt;
    dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.symbol_handle()->symbol_init_func = [&](){
        std::vector<int32_t> gather_list = {0, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 160, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 320, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912, 536870912}; 
        return SymbolInitFunction::generate_gather_list_sym_init(&plasma, gather_list);
        }();
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378 = dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378 = dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378.vector_align().at_address(0);
    /// Input Group #18
    std::vector<PlasmaRegion> group_18_tensors {
        {{96}, node_constants::TemplateDataFormats::kInt32(), PhysicalLayout::kRowMajorVectorAligned,  "gather_gradient_output_reshape_id1__gather_list", TensorSourceAnnotation::kCompilerGen, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{16}, node_constants::TemplateDataFormats::kInt32(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list", TensorSourceAnnotation::kCompilerGen, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_18;
    io_config_group_18.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_18.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_18.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_18.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_18.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_18 = add_plasma_input_group(plasma, group_18_tensors, io_config_group_18, "group_18");
    TensorLayout dram_layout_group_18 = group_18.dram_layout;
    TensorLayout dram_layout_gather_gradient_output_reshape_id1__gather_list = group_18.dram_sub_layouts.at(0);
    dram_layout_gather_gradient_output_reshape_id1__gather_list.symbol_handle()->die_id = std::nullopt;
    dram_layout_gather_gradient_output_reshape_id1__gather_list.symbol_handle()->symbol_init_func = [&](){
        std::vector<int32_t> gather_list = {0, 536870912, 536870912, 24576, 536870912, 536870912, 49152, 536870912, 536870912, 73728, 536870912, 536870912, 98304, 8192, 536870912, 8216, 32768, 536870912, 32792, 57344, 536870912, 57368, 81920, 536870912, 81944, 106496, 16384, 16400, 40960, 536870912, 40976, 65536, 536870912, 65552, 90112, 536870912, 90128, 114688, 536870912, 0, 0, 0, 0, 0, 0, 0, 0, 0, 32, 0, 0, 32, 0, 0, 32, 0, 0, 32, 0, 0, 8, 24, 0, 8, 24, 0, 8, 24, 0, 8, 24, 0, 8, 8, 16, 16, 16, 0, 16, 16, 0, 16, 16, 0, 16, 8, 8, 0, 0, 0, 0, 0, 0, 0, 0, 0}; 
        return SymbolInitFunction::generate_gather_list_sym_init(&plasma, gather_list);
        }();
    TensorLayout dram_layout_gather_gradient_output_reshape_id1__gather_list_1_0_379 = dram_layout_gather_gradient_output_reshape_id1__gather_list;
    TensorLayout pmu_layout_gather_gradient_output_reshape_id1__gather_list_1_0_379 = group_18.pmu_layouts.at(0);
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list = group_18.dram_sub_layouts.at(1);
    dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list.symbol_handle()->die_id = std::nullopt;
    dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list.symbol_handle()->symbol_init_func = [&](){
        std::vector<int32_t> gather_list = {0, 160, 320, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}; 
        return SymbolInitFunction::generate_gather_list_sym_init(&plasma, gather_list);
        }();
    TensorLayout dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380 = dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list;
    TensorLayout pmu_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380 = group_18.pmu_layouts.at(1);
    
    
    /** Add Plasma Outputs **/
    /// DRAM and PMU layouts for ptconvlstm__view__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__view__outputs__0;
    io_config_ptconvlstm__view__outputs__0.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__view__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__view__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0 = add_plasma_output(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0, "ptconvlstm__view__outputs__0", {});
    dram_layout_ptconvlstm__view__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0_0_0_268 = dram_layout_ptconvlstm__view__outputs__0;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_268 = dram_layout_ptconvlstm__view__outputs__0_0_0_268.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_268_full = pmu_layout_ptconvlstm__view__outputs__0_0_0_268.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0_0_0_268_full.set_vector_transposed(false);
    
    
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0 = add_plasma_output(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0, "ptconvlstm__criterion__mseloss__outputs__0", {});
    dram_layout_ptconvlstm__criterion__mseloss__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout__tensor = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    TensorLayout pmu_layout__tensor = dram_layout__tensor.vector_align().at_address(0);
    
    
    /** Add Plasma Outputs References **/
    
    
    
    /** Section Calls **/
    plasma.workspace().add_section_call(0, {
        dram_layout_ptconvlstm__conv_layer__weight.symbol_handle()        ,
        dram_layout_inp_window_slice_1.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()        ,
        dram_layout_group_4.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()        ,
        dram_layout_group_12.symbol_handle()        ,
        dram_layout_inp_window.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list.symbol_handle()        ,
        dram_layout_out_window.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.symbol_handle()        ,
        dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.symbol_handle()        ,
        dram_layout_ptconvlstm__view__outputs__0.symbol_handle()        ,
        dram_layout_ptconvlstm__criterion__mseloss__outputs__0.symbol_handle()        
        }, true);
    plasma.workspace().add_section_call(1, {
        dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad.symbol_handle()        ,
        dram_layout_inp_window_slice_1.symbol_handle()        ,
        dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle()        ,
        dram_layout_out_window.symbol_handle()        ,
        dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()        ,
        dram_layout_group_4.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight.symbol_handle()        ,
        dram_layout_inp_window.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list.symbol_handle()        ,
        dram_layout_group_18.symbol_handle()        ,
        dram_layout_gather_gradient_output_reshape_id1__gather_list.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()        ,
        dram_layout_group_15.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()        ,
        dram_layout_group_16.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight__grad.symbol_handle()        
        }, true);
    plasma.workspace().add_section_call(2, {
        dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()        ,
        dram_layout_group_4.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()        ,
        dram_layout_group_15.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum.symbol_handle()        ,
        dram_layout_group_13.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()        ,
        dram_layout_group_12.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()        ,
        dram_layout_group_16.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias__grad.symbol_handle()        ,
        dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum.symbol_handle()        ,
        dram_layout_group_14.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__bias.symbol_handle()        ,
        dram_layout_group_3.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight.symbol_handle()        ,
        dram_layout_ptconvlstm__conv_layer__weight__grad.symbol_handle()        
        }, true);
    
    /** Instantiate Node **/
    arc::LogregTorchSamba::Params params;
    params.ptconvlstm__conv_layer__weight_2_0_177 = pmu_layout_ptconvlstm__conv_layer__weight_2_0_177;
    params.ptconvlstm__conv_layer__weight_0_0_91 = pmu_layout_ptconvlstm__conv_layer__weight_0_0_91;
    params.ptconvlstm__conv_layer__weight_dram_in = dram_layout_ptconvlstm__conv_layer__weight;
    params.inp_window_slice_1_1_0_140 = pmu_layout_inp_window_slice_1_1_0_140;
    params.inp_window_slice_1_0_0_94 = pmu_layout_inp_window_slice_1_0_0_94;
    params.inp_window_slice_1_dram_in = dram_layout_inp_window_slice_1;
    params.inp_window_1_0_265 = pmu_layout_inp_window_1_0_265;
    params.inp_window_0_0_260 = pmu_layout_inp_window_0_0_260;
    params.inp_window_dram_in = dram_layout_inp_window;
    params.ptconvlstm__conv_layer__bias_2_0_171 = pmu_layout_ptconvlstm__conv_layer__bias_2_0_171;
    params.ptconvlstm__conv_layer__bias_0_0_102 = pmu_layout_ptconvlstm__conv_layer__bias_0_0_102;
    params.ptconvlstm__conv_layer__bias_dram_in = dram_layout_ptconvlstm__conv_layer__bias;
    params.ptconvlstm__dense_layer__bias_2_0_165 = pmu_layout_ptconvlstm__dense_layer__bias_2_0_165;
    params.ptconvlstm__dense_layer__bias_0_0_107 = pmu_layout_ptconvlstm__dense_layer__bias_0_0_107;
    params.ptconvlstm__dense_layer__bias_dram_in = dram_layout_ptconvlstm__dense_layer__bias;
    params.ptconvlstm__dense_layer__weight_1_0_336 = pmu_layout_ptconvlstm__dense_layer__weight_1_0_336;
    params.ptconvlstm__dense_layer__weight_2_0_159 = pmu_layout_ptconvlstm__dense_layer__weight_2_0_159;
    params.ptconvlstm__dense_layer__weight_0_0_106 = pmu_layout_ptconvlstm__dense_layer__weight_0_0_106;
    params.ptconvlstm__dense_layer__weight_dram_in = dram_layout_ptconvlstm__dense_layer__weight;
    params.out_window_1_0_262 = pmu_layout_out_window_1_0_262;
    params.out_window_0_0_96 = pmu_layout_out_window_0_0_96;
    params.out_window_dram_in = dram_layout_out_window;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127 = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    params.ptconvlstm__view__outputs__0__grad_1_0_261 = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_261;
    params.ptconvlstm__view__outputs__0__grad_dram_in = dram_layout_ptconvlstm__view__outputs__0__grad;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161 = pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167 = pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    params.ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173 = pmu_layout_ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173;
    params.ptconvlstm__conv_layer__bias__sgd0__momentum_dram_in = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    params.ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179 = pmu_layout_ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179;
    params.ptconvlstm__conv_layer__weight__sgd0__momentum_dram_in = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    params.ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264 = pmu_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264;
    params.ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_in = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    params.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263 = pmu_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263;
    params.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_in = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    params.ptconvlstm__dense_layer__weight__grad_2_0_160 = pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_160;
    params.ptconvlstm__dense_layer__weight__grad_dram_in = dram_layout_ptconvlstm__dense_layer__weight__grad;
    params.ptconvlstm__dense_layer__bias__grad_2_0_166 = pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_166;
    params.ptconvlstm__dense_layer__bias__grad_dram_in = dram_layout_ptconvlstm__dense_layer__bias__grad;
    params.ptconvlstm__conv_layer__bias__grad_2_0_172 = pmu_layout_ptconvlstm__conv_layer__bias__grad_2_0_172;
    params.ptconvlstm__conv_layer__bias__grad_dram_in = dram_layout_ptconvlstm__conv_layer__bias__grad;
    params.ptconvlstm__conv_layer__weight__grad_2_0_178 = pmu_layout_ptconvlstm__conv_layer__weight__grad_2_0_178;
    params.ptconvlstm__conv_layer__weight__grad_dram_in = dram_layout_ptconvlstm__conv_layer__weight__grad;
    params.ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378 = pmu_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378;
    params.ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_dram_in = dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list;
    params.gather_gradient_output_reshape_id1__gather_list_1_0_379 = pmu_layout_gather_gradient_output_reshape_id1__gather_list_1_0_379;
    params.gather_gradient_output_reshape_id1__gather_list_dram_in = dram_layout_gather_gradient_output_reshape_id1__gather_list;
    params.ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380 = pmu_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380;
    params.ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_dram_in = dram_layout_ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list;
    params.ptconvlstm__conv_layer__weight_dram_out = dram_layout_ptconvlstm__conv_layer__weight;
    params.ptconvlstm__conv_layer__bias_dram_out = dram_layout_ptconvlstm__conv_layer__bias;
    params.ptconvlstm__dense_layer__bias_dram_out = dram_layout_ptconvlstm__dense_layer__bias;
    params.ptconvlstm__dense_layer__weight_dram_out = dram_layout_ptconvlstm__dense_layer__weight;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_dram_out = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_dram_out = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    params.ptconvlstm__conv_layer__bias__sgd0__momentum_dram_out = dram_layout_ptconvlstm__conv_layer__bias__sgd0__momentum;
    params.ptconvlstm__conv_layer__weight__sgd0__momentum_dram_out = dram_layout_ptconvlstm__conv_layer__weight__sgd0__momentum;
    params.ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_out = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight;
    params.ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_out = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub;
    params.ptconvlstm__view__outputs__0_dram_out = dram_layout_ptconvlstm__view__outputs__0;
    params.ptconvlstm__criterion__mseloss__outputs__0_dram_out = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    params.ptconvlstm__dense_layer__weight__grad_dram_out = dram_layout_ptconvlstm__dense_layer__weight__grad;
    params.ptconvlstm__dense_layer__bias__grad_dram_out = dram_layout_ptconvlstm__dense_layer__bias__grad;
    params.ptconvlstm__conv_layer__bias__grad_dram_out = dram_layout_ptconvlstm__conv_layer__bias__grad;
    params.ptconvlstm__conv_layer__weight__grad_dram_out = dram_layout_ptconvlstm__conv_layer__weight__grad;
    
    
    auto section0_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.section_alloc_ctx().allocate<arc::LogregTorchSamba>())
              arc::LogregTorchSamba("LogregTorchSamba", nullptr, &rail, params, 0);
        auto &node = *nodep;
        node.configure(0);
        auto *partition_placement = section_plasma.create_condition<PartitionPlacement>();
        { // Begin Section 0, Chip 0
            Partition partition {0, 0};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Group #19            
            FrontingPmu::Params fronting_pmu_load_group_19_params;
            fronting_pmu_load_group_19_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__weight_0_0_91;
            fronting_pmu_load_group_19_params.vag_group_id = 0;
            fronting_pmu_load_group_19_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_387));
            auto *fronting_pmu_load_group_19 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_19", partition_parent, &section_plasma, fronting_pmu_load_group_19_params);
            fronting_pmu_load_group_19->configure_node();
            fronting_pmu_load_group_19->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #20            
            FrontingPmu::Params fronting_pmu_load_group_20_params;
            fronting_pmu_load_group_20_params.dram_layout_all = dram_layout_inp_window_slice_1_0_0_94;
            fronting_pmu_load_group_20_params.vag_group_id = 0;
            fronting_pmu_load_group_20_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1u_0_0_190));
            auto *fronting_pmu_load_group_20 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_20", partition_parent, &section_plasma, fronting_pmu_load_group_20_params);
            fronting_pmu_load_group_20->configure_node();
            fronting_pmu_load_group_20->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Input ptconvlstm__conv_layer__bias_0_0_102
            DramInput dram_input_ptconvlstm__conv_layer__bias_0_0_102;
            DramLoadParams ptconvlstm__conv_layer__bias_0_0_102_load_params;
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.dram_layout = dram_layout_ptconvlstm__conv_layer__bias_0_0_102;
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.pmu_layout = pmu_layout_ptconvlstm__conv_layer__bias_0_0_102;
            ptconvlstm__conv_layer__bias_0_0_102_load_params.load_once = false;
            ptconvlstm__conv_layer__bias_0_0_102_load_params.vector_transpose = false;
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias_0_0_102);
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.params = ptconvlstm__conv_layer__bias_0_0_102_load_params;
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.is_lut = false;
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.group_id = 0;
            dram_input_ptconvlstm__conv_layer__bias_0_0_102.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__conv_layer__bias_0_0_102);
            
            /// Load Group #4            
            FrontingPmu::Params fronting_pmu_load_group_4_params;
            fronting_pmu_load_group_4_params.dram_layout_all = dram_layout_group_4;
            std::vector<BufferNode *> gbufs_load_group_4 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_0_0_106)                
            };
            fronting_pmu_load_group_4_params.static_buffers = gbufs_load_group_4;
            fronting_pmu_load_group_4_params.atom_transpose = false;
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #12            
            FrontingPmu::Params fronting_pmu_load_group_12_params;
            fronting_pmu_load_group_12_params.dram_layout_all = dram_layout_group_12;
            std::vector<BufferNode *> gbufs_load_group_12 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_0_0_107)                
            };
            fronting_pmu_load_group_12_params.static_buffers = gbufs_load_group_12;
            fronting_pmu_load_group_12_params.atom_transpose = false;
            auto *fronting_pmu_load_group_12 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_12", partition_parent, &section_plasma, fronting_pmu_load_group_12_params);
            fronting_pmu_load_group_12->configure_node();
            fronting_pmu_load_group_12->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #21            
            FrontingPmu::Params fronting_pmu_load_group_21_params;
            fronting_pmu_load_group_21_params.dram_layout_all = dram_layout_inp_window_0_0_260;
            fronting_pmu_load_group_21_params.vag_group_id = 0;
            fronting_pmu_load_group_21_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf2u_0_0_189));
            auto *fronting_pmu_load_group_21 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_21", partition_parent, &section_plasma, fronting_pmu_load_group_21_params);
            fronting_pmu_load_group_21->configure_node();
            fronting_pmu_load_group_21->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #17            
            FrontingPmu::Params fronting_pmu_load_group_17_params;
            fronting_pmu_load_group_17_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378;
            fronting_pmu_load_group_17_params.vag_group_id = 0;
            fronting_pmu_load_group_17_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::klbuf1a_0_0_388));
            auto *fronting_pmu_load_group_17 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_17", partition_parent, &section_plasma, fronting_pmu_load_group_17_params);
            fronting_pmu_load_group_17->configure_node();
            fronting_pmu_load_group_17->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #25            
            FrontingPmu::Params fronting_pmu_load_group_25_params;
            fronting_pmu_load_group_25_params.dram_layout_all = dram_layout_out_window_0_0_96;
            fronting_pmu_load_group_25_params.vag_group_id = 0;
            fronting_pmu_load_group_25_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_421));
            auto *fronting_pmu_load_group_25 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_25", partition_parent, &section_plasma, fronting_pmu_load_group_25_params);
            fronting_pmu_load_group_25->configure_node();
            fronting_pmu_load_group_25->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #22;
            BackingPmu::Params backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_params;
            backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_params.host_fifo_use = false;
            backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266;
            auto buffer_node_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_389));
            backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_params.buffer_node = buffer_node_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266;
            auto *backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266", partition_parent, &section_plasma, backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266_params);
            backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266->configure_node();
            backing_pmu_group_22_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #23;
            BackingPmu::Params backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_params;
            backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_params.host_fifo_use = false;
            backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_params.dram_layout_all = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267;
            auto buffer_node_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_431));
            backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_params.buffer_node = buffer_node_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267;
            auto *backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267", partition_parent, &section_plasma, backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267_params);
            backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267->configure_node();
            backing_pmu_group_23_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #24;
            BackingPmu::Params backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268_params;
            backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268_params.host_fifo_use = false;
            backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0_0_0_268;
            auto buffer_node_ptconvlstm__view__outputs__0_0_0_268 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_391));
            backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268_params.buffer_node = buffer_node_ptconvlstm__view__outputs__0_0_0_268;
            auto *backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268", partition_parent, &section_plasma, backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268_params);
            backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268->configure_node();
            backing_pmu_group_24_ptconvlstm__view__outputs__0_0_0_268->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #26;
            BackingPmu::Params backing_pmu_group_26__tensor_params;
            backing_pmu_group_26__tensor_params.host_fifo_use = false;
            backing_pmu_group_26__tensor_params.dram_layout_all = dram_layout__tensor;
            auto buffer_node__tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_393));
            backing_pmu_group_26__tensor_params.buffer_node = buffer_node__tensor;
            auto *backing_pmu_group_26__tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_26__tensor", partition_parent, &section_plasma, backing_pmu_group_26__tensor_params);
            backing_pmu_group_26__tensor->configure_node();
            backing_pmu_group_26__tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 0, Chip 0
    };
    auto section1_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.section_alloc_ctx().allocate<arc::LogregTorchSamba>())
              arc::LogregTorchSamba("LogregTorchSamba", nullptr, &rail, params, 1);
        auto &node = *nodep;
        node.configure(1);
        auto *partition_placement = section_plasma.create_condition<PartitionPlacement>();
        { // Begin Section 1, Chip 0
            Partition partition {0, 1};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Input ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127
            DramInput dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127;
            DramLoadParams ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127_load_params;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.dram_layout = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.pmu_layout = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127_load_params.load_once = false;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127_load_params.vector_transpose = false;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127);
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.params = ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127_load_params;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.is_lut = false;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.group_id = 0;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127);
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_inp_window_slice_1_1_0_140;
            fronting_pmu_load_group_27_params.vag_group_id = 0;
            fronting_pmu_load_group_27_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1u_1_0_246));
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #28            
            FrontingPmu::Params fronting_pmu_load_group_28_params;
            fronting_pmu_load_group_28_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_261;
            fronting_pmu_load_group_28_params.vag_group_id = 0;
            fronting_pmu_load_group_28_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_218));
            auto *fronting_pmu_load_group_28 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_28", partition_parent, &section_plasma, fronting_pmu_load_group_28_params);
            fronting_pmu_load_group_28->configure_node();
            fronting_pmu_load_group_28->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #29            
            FrontingPmu::Params fronting_pmu_load_group_29_params;
            fronting_pmu_load_group_29_params.dram_layout_all = dram_layout_out_window_1_0_262;
            fronting_pmu_load_group_29_params.vag_group_id = 0;
            fronting_pmu_load_group_29_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_221));
            auto *fronting_pmu_load_group_29 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_29", partition_parent, &section_plasma, fronting_pmu_load_group_29_params);
            fronting_pmu_load_group_29->configure_node();
            fronting_pmu_load_group_29->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #30            
            FrontingPmu::Params fronting_pmu_load_group_30_params;
            fronting_pmu_load_group_30_params.dram_layout_all = dram_layout_ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263;
            fronting_pmu_load_group_30_params.vag_group_id = 0;
            fronting_pmu_load_group_30_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_224));
            auto *fronting_pmu_load_group_30 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_30", partition_parent, &section_plasma, fronting_pmu_load_group_30_params);
            fronting_pmu_load_group_30->configure_node();
            fronting_pmu_load_group_30->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #31            
            FrontingPmu::Params fronting_pmu_load_group_31_params;
            fronting_pmu_load_group_31_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__weight_1_0_336;
            fronting_pmu_load_group_31_params.vag_group_id = 0;
            fronting_pmu_load_group_31_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_394));
            auto *fronting_pmu_load_group_31 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_31", partition_parent, &section_plasma, fronting_pmu_load_group_31_params);
            fronting_pmu_load_group_31->configure_node();
            fronting_pmu_load_group_31->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #32            
            FrontingPmu::Params fronting_pmu_load_group_32_params;
            fronting_pmu_load_group_32_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264;
            fronting_pmu_load_group_32_params.vag_group_id = 0;
            fronting_pmu_load_group_32_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_239));
            auto *fronting_pmu_load_group_32 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_32", partition_parent, &section_plasma, fronting_pmu_load_group_32_params);
            fronting_pmu_load_group_32->configure_node();
            fronting_pmu_load_group_32->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #33            
            FrontingPmu::Params fronting_pmu_load_group_33_params;
            fronting_pmu_load_group_33_params.dram_layout_all = dram_layout_inp_window_1_0_265;
            fronting_pmu_load_group_33_params.vag_group_id = 0;
            fronting_pmu_load_group_33_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf2u_1_0_245));
            auto *fronting_pmu_load_group_33 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_33", partition_parent, &section_plasma, fronting_pmu_load_group_33_params);
            fronting_pmu_load_group_33->configure_node();
            fronting_pmu_load_group_33->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #18            
            FrontingPmu::Params fronting_pmu_load_group_18_params;
            fronting_pmu_load_group_18_params.dram_layout_all = dram_layout_group_18;
            std::vector<BufferNode *> gbufs_load_group_18 {
                node.lbuf1a_1_0_397_                ,
                node.lbuf1a_1_0_399_                
            };
            fronting_pmu_load_group_18_params.static_buffers = gbufs_load_group_18;
            fronting_pmu_load_group_18_params.atom_transpose = false;
            auto *fronting_pmu_load_group_18 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_18", partition_parent, &section_plasma, fronting_pmu_load_group_18_params);
            fronting_pmu_load_group_18->configure_node();
            fronting_pmu_load_group_18->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #34;
            BackingPmu::Params backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params;
            backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.host_fifo_use = false;
            backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            auto buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__dense_layer__linear_bwd_weight_accum));
            backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.buffer_node = buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            auto *backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor", partition_parent, &section_plasma, backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params);
            backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor->configure_node();
            backing_pmu_group_34_ptconvlstm__dense_layer__linear_bwd_weight_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #35;
            BackingPmu::Params backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params;
            backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.host_fifo_use = false;
            backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            auto buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__dense_layer__linear_bwd_weight_accum_1));
            backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.buffer_node = buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            auto *backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1", partition_parent, &section_plasma, backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params);
            backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1->configure_node();
            backing_pmu_group_35_ptconvlstm__dense_layer__linear_bwd_weight_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #36;
            BackingPmu::Params backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor_params;
            backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor_params.host_fifo_use = false;
            backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__conv2d_bwd_tensor;
            auto buffer_node_ptconvlstm__conv_layer__conv2d_bwd_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__conv_layer__conv2d_bwd_accum_1));
            backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor_params.buffer_node = buffer_node_ptconvlstm__conv_layer__conv2d_bwd_tensor;
            auto *backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor", partition_parent, &section_plasma, backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor_params);
            backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor->configure_node();
            backing_pmu_group_36_ptconvlstm__conv_layer__conv2d_bwd_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #37;
            BackingPmu::Params backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor_params;
            backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor_params.host_fifo_use = false;
            backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__reshape_1_bwd_tensor;
            auto buffer_node_ptconvlstm__conv_layer__reshape_1_bwd_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_401));
            backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor_params.buffer_node = buffer_node_ptconvlstm__conv_layer__reshape_1_bwd_tensor;
            auto *backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor", partition_parent, &section_plasma, backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor_params);
            backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor->configure_node();
            backing_pmu_group_37_ptconvlstm__conv_layer__reshape_1_bwd_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 1, Chip 0
    };
    auto section2_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.section_alloc_ctx().allocate<arc::LogregTorchSamba>())
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
            /// Load Group #4            
            FrontingPmu::Params fronting_pmu_load_group_4_params;
            fronting_pmu_load_group_4_params.dram_layout_all = dram_layout_group_4;
            std::vector<BufferNode *> gbufs_load_group_4 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_2_0_159)                
            };
            fronting_pmu_load_group_4_params.static_buffers = gbufs_load_group_4;
            fronting_pmu_load_group_4_params.atom_transpose = false;
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #15            
            FrontingPmu::Params fronting_pmu_load_group_15_params;
            fronting_pmu_load_group_15_params.dram_layout_all = dram_layout_group_15;
            std::vector<BufferNode *> gbufs_load_group_15 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__grad_2_0_160)                
            };
            fronting_pmu_load_group_15_params.static_buffers = gbufs_load_group_15;
            fronting_pmu_load_group_15_params.atom_transpose = false;
            auto *fronting_pmu_load_group_15 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_15", partition_parent, &section_plasma, fronting_pmu_load_group_15_params);
            fronting_pmu_load_group_15->configure_node();
            fronting_pmu_load_group_15->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #13            
            FrontingPmu::Params fronting_pmu_load_group_13_params;
            fronting_pmu_load_group_13_params.dram_layout_all = dram_layout_group_13;
            std::vector<BufferNode *> gbufs_load_group_13 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161)                
            };
            fronting_pmu_load_group_13_params.static_buffers = gbufs_load_group_13;
            fronting_pmu_load_group_13_params.atom_transpose = false;
            auto *fronting_pmu_load_group_13 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_13", partition_parent, &section_plasma, fronting_pmu_load_group_13_params);
            fronting_pmu_load_group_13->configure_node();
            fronting_pmu_load_group_13->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #12            
            FrontingPmu::Params fronting_pmu_load_group_12_params;
            fronting_pmu_load_group_12_params.dram_layout_all = dram_layout_group_12;
            std::vector<BufferNode *> gbufs_load_group_12 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_2_0_165)                
            };
            fronting_pmu_load_group_12_params.static_buffers = gbufs_load_group_12;
            fronting_pmu_load_group_12_params.atom_transpose = false;
            auto *fronting_pmu_load_group_12 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_12", partition_parent, &section_plasma, fronting_pmu_load_group_12_params);
            fronting_pmu_load_group_12->configure_node();
            fronting_pmu_load_group_12->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #16            
            FrontingPmu::Params fronting_pmu_load_group_16_params;
            fronting_pmu_load_group_16_params.dram_layout_all = dram_layout_group_16;
            std::vector<BufferNode *> gbufs_load_group_16 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__grad_2_0_166)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias__grad_2_0_172)                
            };
            fronting_pmu_load_group_16_params.static_buffers = gbufs_load_group_16;
            fronting_pmu_load_group_16_params.atom_transpose = false;
            auto *fronting_pmu_load_group_16 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_16", partition_parent, &section_plasma, fronting_pmu_load_group_16_params);
            fronting_pmu_load_group_16->configure_node();
            fronting_pmu_load_group_16->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #14            
            FrontingPmu::Params fronting_pmu_load_group_14_params;
            fronting_pmu_load_group_14_params.dram_layout_all = dram_layout_group_14;
            std::vector<BufferNode *> gbufs_load_group_14 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179)                
            };
            fronting_pmu_load_group_14_params.static_buffers = gbufs_load_group_14;
            fronting_pmu_load_group_14_params.atom_transpose = false;
            auto *fronting_pmu_load_group_14 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_14", partition_parent, &section_plasma, fronting_pmu_load_group_14_params);
            fronting_pmu_load_group_14->configure_node();
            fronting_pmu_load_group_14->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #3            
            FrontingPmu::Params fronting_pmu_load_group_3_params;
            fronting_pmu_load_group_3_params.dram_layout_all = dram_layout_group_3;
            std::vector<BufferNode *> gbufs_load_group_3 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__bias_2_0_171)                
            };
            fronting_pmu_load_group_3_params.static_buffers = gbufs_load_group_3;
            fronting_pmu_load_group_3_params.atom_transpose = false;
            auto *fronting_pmu_load_group_3 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_3", partition_parent, &section_plasma, fronting_pmu_load_group_3_params);
            fronting_pmu_load_group_3->configure_node();
            fronting_pmu_load_group_3->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #38            
            FrontingPmu::Params fronting_pmu_load_group_38_params;
            fronting_pmu_load_group_38_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__weight_2_0_177;
            fronting_pmu_load_group_38_params.vag_group_id = 0;
            std::vector<BufferNode *> gbufs_load_group_38 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight_2_0_177)                
            };
            fronting_pmu_load_group_38_params.static_buffers = gbufs_load_group_38;
            fronting_pmu_load_group_38_params.atom_transpose = false;
            auto *fronting_pmu_load_group_38 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_38", partition_parent, &section_plasma, fronting_pmu_load_group_38_params);
            fronting_pmu_load_group_38->configure_node();
            fronting_pmu_load_group_38->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #39            
            FrontingPmu::Params fronting_pmu_load_group_39_params;
            fronting_pmu_load_group_39_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__weight__grad_2_0_178;
            fronting_pmu_load_group_39_params.vag_group_id = 0;
            std::vector<BufferNode *> gbufs_load_group_39 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__conv_layer__weight__grad_2_0_178)                
            };
            fronting_pmu_load_group_39_params.static_buffers = gbufs_load_group_39;
            fronting_pmu_load_group_39_params.atom_transpose = false;
            auto *fronting_pmu_load_group_39 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_39", partition_parent, &section_plasma, fronting_pmu_load_group_39_params);
            fronting_pmu_load_group_39->configure_node();
            fronting_pmu_load_group_39->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #4;
            BackingPmu::Params backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163_params;
            backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163_params.host_fifo_use = false;
            backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163_params.dram_layout_all = dram_layout_group_4;
            std::vector<WeightsBuffer *> wbufs_group_4 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight_2_0_163)                
            };
            backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163_params.weights_buffers = wbufs_group_4;
            backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163_params.generate_allrddone = true;
            auto *backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163", partition_parent, &section_plasma, backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163_params);
            backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163->configure_node();
            backing_pmu_group_4_ptconvlstm__dense_layer__weight_2_0_163->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #13;
            BackingPmu::Params backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164_params;
            backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164_params.host_fifo_use = false;
            backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164_params.dram_layout_all = dram_layout_group_13;
            std::vector<WeightsBuffer *> wbufs_group_13 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164)                
            };
            backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164_params.weights_buffers = wbufs_group_13;
            backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164_params.generate_allrddone = true;
            auto *backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164", partition_parent, &section_plasma, backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164_params);
            backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164->configure_node();
            backing_pmu_group_13_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #12;
            BackingPmu::Params backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169_params;
            backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169_params.host_fifo_use = false;
            backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169_params.dram_layout_all = dram_layout_group_12;
            std::vector<WeightsBuffer *> wbufs_group_12 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias_2_0_169)                
            };
            backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169_params.weights_buffers = wbufs_group_12;
            backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169_params.generate_allrddone = true;
            auto *backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169", partition_parent, &section_plasma, backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169_params);
            backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169->configure_node();
            backing_pmu_group_12_ptconvlstm__dense_layer__bias_2_0_169->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #14;
            BackingPmu::Params backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170_params;
            backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170_params.host_fifo_use = false;
            backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170_params.dram_layout_all = dram_layout_group_14;
            std::vector<WeightsBuffer *> wbufs_group_14 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182)                
            };
            backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170_params.weights_buffers = wbufs_group_14;
            backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170_params.generate_allrddone = true;
            auto *backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170", partition_parent, &section_plasma, backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170_params);
            backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170->configure_node();
            backing_pmu_group_14_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #3;
            BackingPmu::Params backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175_params;
            backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175_params.host_fifo_use = false;
            backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175_params.dram_layout_all = dram_layout_group_3;
            std::vector<WeightsBuffer *> wbufs_group_3 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__bias_2_0_175)                
            };
            backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175_params.weights_buffers = wbufs_group_3;
            backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175_params.generate_allrddone = true;
            auto *backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175", partition_parent, &section_plasma, backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175_params);
            backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175->configure_node();
            backing_pmu_group_3_ptconvlstm__conv_layer__bias_2_0_175->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #0;
            BackingPmu::Params backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181_params;
            backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181_params.host_fifo_use = false;
            backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181_params.dram_layout_all = dram_layout_ptconvlstm__conv_layer__weight_2_0_181;
            std::vector<WeightsBuffer *> wbufs_group_0 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__conv_layer__weight_2_0_181)                
            };
            backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181_params.weights_buffers = wbufs_group_0;
            backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181_params.generate_allrddone = true;
            auto *backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181", partition_parent, &section_plasma, backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181_params);
            backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181->configure_node();
            backing_pmu_group_0_ptconvlstm__conv_layer__weight_2_0_181->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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

