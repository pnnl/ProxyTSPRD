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
    std::string output_path = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg_lstm/logreg_lstm/";
    make_dirs(output_path);
    BitfileTypePerChip chip_types (1);
    std::fill(chip_types.begin(), chip_types.end(), BitfileType::kFourTile);
    sn::cl_output_folder.setInitialValue("/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg_lstm/logreg_lstm/");
    sn::cl_pef_name.setInitialValue("logreg_lstm");
    mlir::arc::PrismInfo::initialize();
    mlir::arc::Arc::Options arc_options;
    arc_options.mlir_file_name = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg_lstm/logreg_lstm/arc_gen/mlir/final.mlir";
    arc_options.data_file_name = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg_lstm/logreg_lstm/arc_gen/mlir/final.data";
    arc_options.overwrite_dir = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg_lstm/logreg_lstm/";
    arc_options.in_codegen = true;
    mlir::arc::Arc arc(argc, argv, arc_options);
    mlir::rail::RAIL &rail = *arc.rail();
    Plasma &plasma = *mlir::rail::RAIL::plasma();
    rail.append_to_preface_module(arc.preface_module());
    plasma.workspace().get_pef_metadata()["acc_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["acc_test"] = "False";
    plasma.workspace().get_pef_metadata()["amp_level"] = "4";
    plasma.workspace().get_pef_metadata()["arc_debug_mode"] = "False";
    plasma.workspace().get_pef_metadata()["batch_size"] = "1";
    plasma.workspace().get_pef_metadata()["bench_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiled_stats_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiler_mode"] = "";
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
    plasma.workspace().get_pef_metadata()["dump_traced_graph"] = "False";
    plasma.workspace().get_pef_metadata()["enable_buffer_trial_compile"] = "False";
    plasma.workspace().get_pef_metadata()["enable_conv2d_conversion"] = "False";
    plasma.workspace().get_pef_metadata()["enable_conv_tiling"] = "False";
    plasma.workspace().get_pef_metadata()["enable_hd_retry_lower_visible_resources"] = "False";
    plasma.workspace().get_pef_metadata()["enable_hypersection"] = "False";
    plasma.workspace().get_pef_metadata()["enable_node_trial_compile"] = "False";
    plasma.workspace().get_pef_metadata()["enable_node_trial_compile_logging"] = "False";
    plasma.workspace().get_pef_metadata()["enable_stochastic_rounding"] = "False";
    plasma.workspace().get_pef_metadata()["force_node_proximity"] = "False";
    plasma.workspace().get_pef_metadata()["fp32_params"] = "False";
    plasma.workspace().get_pef_metadata()["fuse_fwd_bwd"] = "False";
    plasma.workspace().get_pef_metadata()["gen_tensorboard"] = "False";
    plasma.workspace().get_pef_metadata()["grad_accumulation_steps"] = "1";
    plasma.workspace().get_pef_metadata()["has_human_decision"] = "False";
    plasma.workspace().get_pef_metadata()["host_fifo"] = "False";
    plasma.workspace().get_pef_metadata()["hypersection_arc"] = "False";
    plasma.workspace().get_pef_metadata()["include_read_stall_cycles"] = "False";
    plasma.workspace().get_pef_metadata()["inference"] = "False";
    plasma.workspace().get_pef_metadata()["input_layout"] = "None";
    plasma.workspace().get_pef_metadata()["json"] = "None";
    plasma.workspace().get_pef_metadata()["json_counters"] = "";
    plasma.workspace().get_pef_metadata()["latency_budget_bwd"] = "None";
    plasma.workspace().get_pef_metadata()["latency_budget_fwd"] = "None";
    plasma.workspace().get_pef_metadata()["listen_for_input"] = "False";
    plasma.workspace().get_pef_metadata()["local_rank"] = "-1";
    plasma.workspace().get_pef_metadata()["log_dir"] = "None";
    plasma.workspace().get_pef_metadata()["lr"] = "0.0015";
    plasma.workspace().get_pef_metadata()["mac_conv_tiling_c++"] = "False";
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
    plasma.workspace().get_pef_metadata()["model"] = "PTConvLSTM(\x0A  (lambda_layer): Lambda()\x0A  (lstm_layer): LSTM(136, 64)\x0A  (dense_layer): Linear(in_features=64, out_features=4080, bias=True)\x0A  (criterion): MSELoss()\x0A)";
    plasma.workspace().get_pef_metadata()["model_parallel"] = "False";
    plasma.workspace().get_pef_metadata()["modelbox"] = "False";
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
    plasma.workspace().get_pef_metadata()["pef"] = "None";
    plasma.workspace().get_pef_metadata()["plot"] = "None";
    plasma.workspace().get_pef_metadata()["pp_lamb_optimizer"] = "False";
    plasma.workspace().get_pef_metadata()["recompute_ratio"] = "-1.0";
    plasma.workspace().get_pef_metadata()["reduce_on_rdu"] = "False";
    plasma.workspace().get_pef_metadata()["resources_scaling_factors"] = "['-1.0', '-1.0', '-1.0', '-1.0']";
    plasma.workspace().get_pef_metadata()["run_analysis_pass"] = "False";
    plasma.workspace().get_pef_metadata()["run_graph_only"] = "False";
    plasma.workspace().get_pef_metadata()["safe_mode"] = "False";
    plasma.workspace().get_pef_metadata()["samba_plot"] = "False";
    plasma.workspace().get_pef_metadata()["samba_version"] = "1.14.3";
    plasma.workspace().get_pef_metadata()["sambahd"] = "False";
    plasma.workspace().get_pef_metadata()["sambatune_graph"] = "False";
    plasma.workspace().get_pef_metadata()["section_cut_beam_search"] = "[]";
    plasma.workspace().get_pef_metadata()["section_cut_sort_order"] = "3";
    plasma.workspace().get_pef_metadata()["single_opt_sec"] = "False";
    plasma.workspace().get_pef_metadata()["skip_instrumentation_on_read0"] = "False";
    plasma.workspace().get_pef_metadata()["skip_instrumentation_on_read1"] = "False";
    plasma.workspace().get_pef_metadata()["stage_instrumentation"] = "none";
    plasma.workspace().get_pef_metadata()["stop_mac_c++"] = "False";
    plasma.workspace().get_pef_metadata()["stop_mac_named_dims_c++"] = "False";
    plasma.workspace().get_pef_metadata()["strict_auto_cast"] = "False";
    plasma.workspace().get_pef_metadata()["strict_conversion"] = "False";
    plasma.workspace().get_pef_metadata()["tensor_parallel"] = "none";
    plasma.workspace().get_pef_metadata()["tile_orientation"] = "auto";
    plasma.workspace().get_pef_metadata()["traced_attributes_folder"] = "";
    plasma.workspace().get_pef_metadata()["unroll_first"] = "False";
    plasma.workspace().get_pef_metadata()["use_correct_tiling_cost_model"] = "False";
    plasma.workspace().get_pef_metadata()["use_integrated_bias"] = "False";
    plasma.workspace().get_pef_metadata()["validate_mac_resource_prediction"] = "False";
    plasma.workspace().get_pef_metadata()["verbose"] = "0";
    plasma.workspace().get_pef_metadata()["visualize"] = "False";
    plasma.workspace().get_pef_metadata()["weight_caching"] = "False";
    plasma.workspace().get_pef_metadata()["weight_decay"] = "0.0003";
    plasma.workspace().get_pef_metadata()["weight_layout"] = "None";
    plasma.workspace().get_pef_metadata()["weight_norm"] = "False";
    plasma.workspace().get_pef_metadata()["world_size"] = "1";
    plasma.workspace().get_pef_metadata()["yaml_config"] = "None";
    
    /** Add Plasma Inputs **/
    /// Input Group #23
    std::vector<PlasmaRegion> group_23_tensors {
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_hh_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_23;
    io_config_group_23.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_group_23.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_23.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_23.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_23 = add_plasma_input_group(plasma, group_23_tensors, io_config_group_23, "group_23");
    TensorLayout dram_layout_group_23 = group_23.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0 = group_23.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__bias_hh_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_521 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_521 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_521.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_522 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_522 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_522.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_523 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_523 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_523.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_524 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_524 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_524.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_588 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_588 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_588.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_589 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_589 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_589.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_590 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_590 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_590.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_591 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_591 = group_23.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_591.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 = group_23.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #24
    std::vector<PlasmaRegion> group_24_tensors {
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_ih_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_24;
    io_config_group_24.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_group_24.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_24.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_24.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_24 = add_plasma_input_group(plasma, group_24_tensors, io_config_group_24, "group_24");
    TensorLayout dram_layout_group_24 = group_24.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0 = group_24.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__bias_ih_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_517 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_517 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_517.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_518 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_518 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_518.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_519 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_519 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_519.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_520 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_520 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_520.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_584 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_584 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_584.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_585 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_585 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_585.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_586 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_586 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_586.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_587 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_587 = group_24.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_587.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 = group_24.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #25
    std::vector<PlasmaRegion> group_25_tensors {
        {{4, 64, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_hh_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_25;
    io_config_group_25.python_transforms.push_back(std::make_pair(".reshape([4, 64, 64])", ".reshape([256, 64])"));
    io_config_group_25.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_25.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_25.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_25 = add_plasma_input_group(plasma, group_25_tensors, io_config_group_25, "group_25");
    TensorLayout dram_layout_group_25 = group_25.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0 = group_25.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__weight_hh_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_513 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_513 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_513.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_514 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_514 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(8192);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_514.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_515 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_515 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(16384);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_515.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_516 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_516 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(24576);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_516.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_580 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_580 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_580.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_581 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_581 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(8192);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_581.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_582 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_582 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(16384);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_582.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_583 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_583 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(24576);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_583.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_747 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_747 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_747.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_761 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_761 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(8192);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_761.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_775 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_775 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(16384);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_775.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_789 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_789 = group_25.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(24576);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_789.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 = group_25.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #26
    std::vector<PlasmaRegion> group_26_tensors {
        {{4, 64, 136}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_ih_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_26;
    io_config_group_26.python_transforms.push_back(std::make_pair(".reshape([4, 64, 136])", ".reshape([256, 136])"));
    io_config_group_26.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_26.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_26.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_26 = add_plasma_input_group(plasma, group_26_tensors, io_config_group_26, "group_26");
    TensorLayout dram_layout_group_26 = group_26.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0 = group_26.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__weight_ih_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_509 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_509 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_509.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_510 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_510 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(17408);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_510.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_511 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_511 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(34816);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_511.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_512 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_512 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(52224);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_512.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_576 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_576 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_576.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_577 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_577 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(17408);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_577.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_578 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_578 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(34816);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_578.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_579 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_579 = group_26.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(52224);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_579.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 = group_26.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for lstm_operand_1
    PlasmaIOConfig io_config_lstm_operand_1;
    io_config_lstm_operand_1.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_lstm_operand_1.python_transforms.push_back(std::make_pair("", ""));
    io_config_lstm_operand_1.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_lstm_operand_1.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_lstm_operand_1 = add_plasma_input(plasma, {1, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_lstm_operand_1, "lstm_operand_1", {});
    dram_layout_lstm_operand_1.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_lstm_operand_1_0_0_125 = dram_layout_lstm_operand_1;
    TensorLayout pmu_layout_lstm_operand_1_0_0_125 = dram_layout_lstm_operand_1_0_0_125.vector_align().at_address(0);
    pmu_layout_lstm_operand_1_0_0_125.set_vector_transposed(true);
    TensorLayout dram_layout_lstm_operand_1_1_0_170 = dram_layout_lstm_operand_1;
    TensorLayout pmu_layout_lstm_operand_1_1_0_170 = dram_layout_lstm_operand_1_1_0_170.vector_align().at_address(0);
    pmu_layout_lstm_operand_1_1_0_170.set_vector_transposed(true);
    /// DRAM and PMU layouts for lstm_operand_0
    PlasmaIOConfig io_config_lstm_operand_0;
    io_config_lstm_operand_0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_lstm_operand_0.python_transforms.push_back(std::make_pair("", ""));
    io_config_lstm_operand_0.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_lstm_operand_0.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_lstm_operand_0 = add_plasma_input(plasma, {1, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_lstm_operand_0, "lstm_operand_0", {});
    dram_layout_lstm_operand_0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_lstm_operand_0_0_0_122 = dram_layout_lstm_operand_0;
    TensorLayout pmu_layout_lstm_operand_0_0_0_122 = dram_layout_lstm_operand_0_0_0_122.vector_align().at_address(0);
    TensorLayout dram_layout_lstm_operand_0_1_0_167 = dram_layout_lstm_operand_0;
    TensorLayout pmu_layout_lstm_operand_0_1_0_167 = dram_layout_lstm_operand_0_1_0_167.vector_align().at_address(0);
    pmu_layout_lstm_operand_0_1_0_167.set_vector_transposed(true);
    /// DRAM and PMU layouts for inp_window
    PlasmaIOConfig io_config_inp_window;
    io_config_inp_window.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_inp_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_inp_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_inp_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_inp_window = add_plasma_input(plasma, {1, 60, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_inp_window, "inp_window", {});
    dram_layout_inp_window.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_inp_window_0_0_475 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_0_0_475 = dram_layout_inp_window_0_0_475.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_0_0_475.set_vector_transposed(true);
    TensorLayout pmu_layout_inp_window_0_0_475_full = pmu_layout_inp_window_0_0_475.supertensor({1}).at_address(0);
    pmu_layout_inp_window_0_0_475_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_inp_window_1_0_477 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_1_0_477 = dram_layout_inp_window_1_0_477.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_1_0_477.set_vector_transposed(true);
    TensorLayout pmu_layout_inp_window_1_0_477_full = pmu_layout_inp_window_1_0_477.supertensor({1}).at_address(0);
    pmu_layout_inp_window_1_0_477_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_inp_window_1_0_478 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_1_0_478 = dram_layout_inp_window_1_0_478.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_1_0_478.set_vector_transposed(true);
    TensorLayout pmu_layout_inp_window_1_0_478_full = pmu_layout_inp_window_1_0_478.supertensor({1}).at_address(0);
    pmu_layout_inp_window_1_0_478_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm__outputs__0_slice_1
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1;
    io_config_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.python_transforms.push_back(std::make_pair(".int().int()", ".long()"));
    io_config_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1 = add_plasma_input(plasma, {1}, node_constants::TemplateDataFormats::kInt32(), io_config_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1, "ptconvlstm__lstm_layer__lstm__outputs__0_slice_1", {});
    dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149 = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149 = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149.at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185 = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185 = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185.at_address(0);
    /// Input Group #27
    std::vector<PlasmaRegion> group_27_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_27;
    io_config_group_27.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_27.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_27.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_27.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_27 = add_plasma_input_group(plasma, group_27_tensors, io_config_group_27, "group_27");
    TensorLayout dram_layout_group_27 = group_27.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias = group_27.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_0_0_154 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_0_0_154 = group_27.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_0_0_154.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_1_0_190 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_1_0_190 = group_27.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_1_0_190.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_2_0_267 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_2_0_267 = group_27.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_2_0_267.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #4
    std::vector<PlasmaRegion> group_4_tensors {
        {{4080, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
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
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_0_0_153 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_0_0_153 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_0_0_153.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_1_0_189 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_1_0_189 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_1_0_189.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_1_0_628 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_1_0_628 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_1_0_628.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_2_0_261 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_2_0_261 = group_4.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_2_0_261.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for out_window
    PlasmaIOConfig io_config_out_window;
    io_config_out_window.conv = PhysicalLayout::kRowMajor;
    io_config_out_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_out_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_out_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_out_window = add_plasma_input(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_out_window, "out_window", {});
    dram_layout_out_window.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_out_window_0_0_147 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_0_0_147 = dram_layout_out_window_0_0_147.with_logical_shape({1, 30, 136}).at_address(0);
    pmu_layout_out_window_0_0_147.set_vector_transposed(false);
    TensorLayout pmu_layout_out_window_0_0_147_full = pmu_layout_out_window_0_0_147.supertensor({}).at_address(0);
    pmu_layout_out_window_0_0_147_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_out_window_1_0_479 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_1_0_479 = dram_layout_out_window_1_0_479.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    pmu_layout_out_window_1_0_479.set_vector_transposed(false);
    TensorLayout pmu_layout_out_window_1_0_479_full = pmu_layout_out_window_1_0_479.supertensor({1}).at_address(0);
    pmu_layout_out_window_1_0_479_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0__grad
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0__grad;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad = add_plasma_input(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0__grad, "ptconvlstm__criterion__mseloss__outputs__0__grad", {});
    dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195 = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.vector_align().at_address(0);
    /// DRAM and PMU layouts for ptconvlstm__view__outputs__0__grad
    PlasmaIOConfig io_config_ptconvlstm__view__outputs__0__grad;
    io_config_ptconvlstm__view__outputs__0__grad.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__view__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__view__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad = add_plasma_input(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0__grad, "ptconvlstm__view__outputs__0__grad", {});
    dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad_1_0_476 = dram_layout_ptconvlstm__view__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_476 = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_476.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_476.set_vector_transposed(false);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_476_full = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_476.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_476_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm__cell__output__grad
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm__cell__output__grad;
    io_config_ptconvlstm__lstm_layer__lstm__cell__output__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__lstm__cell__output__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm__cell__output__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad = add_plasma_input(plasma, {1, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm__cell__output__grad, "ptconvlstm__lstm_layer__lstm__cell__output__grad", {});
    dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220 = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220 = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220.vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220.set_vector_transposed(true);
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm__hidden__output__grad
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm__hidden__output__grad;
    io_config_ptconvlstm__lstm_layer__lstm__hidden__output__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__lstm__hidden__output__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm__hidden__output__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad = add_plasma_input(plasma, {1, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm__hidden__output__grad, "ptconvlstm__lstm_layer__lstm__hidden__output__grad", {});
    dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217 = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217 = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217.vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217.set_vector_transposed(true);
    /// Input Group #28
    std::vector<PlasmaRegion> group_28_tensors {
        {{4080, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_28;
    io_config_group_28.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_28.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_28.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_28.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_28 = add_plasma_input_group(plasma, group_28_tensors, io_config_group_28, "group_28");
    TensorLayout dram_layout_group_28 = group_28.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum = group_28.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263 = group_28.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1.vector_align().at_address(0);
    
    /// Input Group #29
    std::vector<PlasmaRegion> group_29_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 136}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_29;
    io_config_group_29.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_29.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_29.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_29.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_29.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_29.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_29.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_29.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_29 = add_plasma_input_group(plasma, group_29_tensors, io_config_group_29, "group_29");
    TensorLayout dram_layout_group_29 = group_29.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum = group_29.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269 = group_29.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum = group_29.dram_sub_layouts.at(1);
    dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275 = group_29.pmu_layouts.at(1);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum = group_29.dram_sub_layouts.at(2);
    dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281 = group_29.pmu_layouts.at(2);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum = group_29.dram_sub_layouts.at(3);
    dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287 = group_29.pmu_layouts.at(3);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum = group_29.dram_sub_layouts.at(4);
    dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293 = group_29.pmu_layouts.at(4);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {1, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482_full = pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_full = pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {1, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483_full = pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_full = pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {1, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484_full = pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_full = pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {1, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485_full = pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_full = pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {1, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486_full = pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_full = pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs = add_plasma_input(plasma, {2, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs, "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs", {});
    dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    
    /// tile loading ....
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480.with_logical_shape({60, 64}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480.with_logical_shape({60, 64}).vector_align().at_address(0);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    /// tile storing ....
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487.with_logical_shape({60, 64}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487.with_logical_shape({60, 64}).vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    /// tile storing ....
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298.with_logical_shape({1, 60, 64}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298.with_logical_shape({1, 60, 64}).vector_align().at_address(0);
    /// Input Group #30
    std::vector<PlasmaRegion> group_30_tensors {
        {{4080, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_30;
    io_config_group_30.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_30.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_30.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_30.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_30 = add_plasma_input_group(plasma, group_30_tensors, io_config_group_30, "group_30");
    TensorLayout dram_layout_group_30 = group_30.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad = group_30.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad_2_0_262 = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_262 = group_30.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_262.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor.vector_align().at_address(0);
    
    /// Input Group #31
    std::vector<PlasmaRegion> group_31_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_31;
    io_config_group_31.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_31.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_31.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_31.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_31 = add_plasma_input_group(plasma, group_31_tensors, io_config_group_31, "group_31");
    TensorLayout dram_layout_group_31 = group_31.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad = group_31.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad_2_0_268 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_268 = group_31.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_268.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__weight_hh_l0__grad
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__weight_hh_l0__grad;
    io_config_ptconvlstm__lstm_layer__weight_hh_l0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__weight_hh_l0__grad.python_transforms.push_back(std::make_pair(".reshape([4, 64, 64])", ".reshape([256, 64])"));
    io_config_ptconvlstm__lstm_layer__weight_hh_l0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad = add_plasma_input(plasma, {4, 64, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__weight_hh_l0__grad, "ptconvlstm__lstm_layer__weight_hh_l0__grad", {});
    dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280.vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303.vector_align().at_address(0);
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__weight_ih_l0__grad
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__weight_ih_l0__grad;
    io_config_ptconvlstm__lstm_layer__weight_ih_l0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__weight_ih_l0__grad.python_transforms.push_back(std::make_pair(".reshape([4, 64, 136])", ".reshape([256, 136])"));
    io_config_ptconvlstm__lstm_layer__weight_ih_l0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad = add_plasma_input(plasma, {4, 64, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__weight_ih_l0__grad, "ptconvlstm__lstm_layer__weight_ih_l0__grad", {});
    dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274.vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307.vector_align().at_address(0);
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__bias_hh_l0__grad
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__bias_hh_l0__grad;
    io_config_ptconvlstm__lstm_layer__bias_hh_l0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__bias_hh_l0__grad.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_ptconvlstm__lstm_layer__bias_hh_l0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad = add_plasma_input(plasma, {4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__bias_hh_l0__grad, "ptconvlstm__lstm_layer__bias_hh_l0__grad", {});
    dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292.vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315.vector_align().at_address(0);
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__bias_ih_l0__grad
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__bias_ih_l0__grad;
    io_config_ptconvlstm__lstm_layer__bias_ih_l0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__bias_ih_l0__grad.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_ptconvlstm__lstm_layer__bias_ih_l0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad = add_plasma_input(plasma, {4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__bias_ih_l0__grad, "ptconvlstm__lstm_layer__bias_ih_l0__grad", {});
    dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286.vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311.vector_align().at_address(0);
    
    /** Add Plasma Outputs **/
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm__hidden__output
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm__hidden__output;
    io_config_ptconvlstm__lstm_layer__lstm__hidden__output.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__lstm__hidden__output.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm__hidden__output.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output = add_plasma_output(plasma, {1, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm__hidden__output, "ptconvlstm__lstm_layer__lstm__hidden__output", {});
    dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_tensor = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_tensor = dram_layout_ptconvlstm__lstm_layer__lstm_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm__cell__output
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm__cell__output;
    io_config_ptconvlstm__lstm_layer__lstm__cell__output.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__lstm__cell__output.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm__cell__output.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm__cell__output = add_plasma_output(plasma, {1, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm__cell__output, "ptconvlstm__lstm_layer__lstm__cell__output", {});
    dram_layout_ptconvlstm__lstm_layer__lstm__cell__output.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_tensor1 = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_tensor1 = dram_layout_ptconvlstm__lstm_layer__lstm_tensor1.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__view__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__view__outputs__0;
    io_config_ptconvlstm__view__outputs__0.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__view__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__view__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0 = add_plasma_output(plasma, {1, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0, "ptconvlstm__view__outputs__0", {});
    dram_layout_ptconvlstm__view__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0_0_0_493 = dram_layout_ptconvlstm__view__outputs__0;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_493 = dram_layout_ptconvlstm__view__outputs__0_0_0_493.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_493_full = pmu_layout_ptconvlstm__view__outputs__0_0_0_493.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0_0_0_493_full.set_vector_transposed(false);
    
    
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.conv = PhysicalLayout::kRowMajor;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0 = add_plasma_output(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0, "ptconvlstm__criterion__mseloss__outputs__0", {});
    dram_layout_ptconvlstm__criterion__mseloss__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout__tensor = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    TensorLayout pmu_layout__tensor = dram_layout__tensor.vector_align().at_address(0);
    
    
    /** Add Plasma Outputs References **/
    
    
    
    
    
    /** Section Calls **/
    plasma.workspace().add_section_call(0, {
        {
            {dram_layout_lstm_operand_0.symbol_handle(), true}            ,
            {dram_layout_lstm_operand_1.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.symbol_handle(), true}            ,
            {dram_layout_group_4.symbol_handle(), true}            ,
            {dram_layout_group_27.symbol_handle(), true}            ,
            {dram_layout_inp_window.symbol_handle(), true}            ,
            {dram_layout_group_26.symbol_handle(), true}            ,
            {dram_layout_group_25.symbol_handle(), true}            ,
            {dram_layout_group_24.symbol_handle(), true}            ,
            {dram_layout_group_23.symbol_handle(), true}            ,
            {dram_layout_out_window.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__view__outputs__0.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__cell__output.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__criterion__mseloss__outputs__0.symbol_handle(), false}            
        }        
        }, true);
    plasma.workspace().add_section_call(1, {
        {
            {dram_layout_lstm_operand_0.symbol_handle(), true}            ,
            {dram_layout_lstm_operand_1.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.symbol_handle(), true}            ,
            {dram_layout_group_4.symbol_handle(), true}            ,
            {dram_layout_group_27.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle(), true}            ,
            {dram_layout_inp_window.symbol_handle(), true}            ,
            {dram_layout_group_26.symbol_handle(), true}            ,
            {dram_layout_group_25.symbol_handle(), true}            ,
            {dram_layout_group_24.symbol_handle(), true}            ,
            {dram_layout_group_23.symbol_handle(), true}            ,
            {dram_layout_out_window.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__dense_layer__weight.symbol_handle(), true}            ,
            {dram_layout_inp_window.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle(), false}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle(), false}            
        }        
        }, true);
    plasma.workspace().add_section_call(2, {
        {
            {dram_layout_group_4.symbol_handle(), true}            ,
            {dram_layout_group_30.symbol_handle(), true}            ,
            {dram_layout_group_28.symbol_handle(), true}            ,
            {dram_layout_group_27.symbol_handle(), true}            ,
            {dram_layout_group_31.symbol_handle(), true}            ,
            {dram_layout_group_29.symbol_handle(), true}            ,
            {dram_layout_group_26.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_25.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_24.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_23.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_4.symbol_handle(), false}            ,
            {dram_layout_group_28.symbol_handle(), false}            ,
            {dram_layout_group_27.symbol_handle(), false}            ,
            {dram_layout_group_29.symbol_handle(), false}            ,
            {dram_layout_group_26.symbol_handle(), false}            ,
            {dram_layout_group_25.symbol_handle(), false}            ,
            {dram_layout_group_24.symbol_handle(), false}            ,
            {dram_layout_group_23.symbol_handle(), false}            
        }        
        }, true);
    
    /** Instantiate Node **/
    arc::LogregTorchSamba::Params params;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_521 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_521;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_522 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_522;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_523 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_523;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_524 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_524;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_588 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_588;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_589 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_589;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_590 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_590;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_591 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_591;
    params.ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291;
    params.ptconvlstm__lstm_layer__bias_hh_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_517 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_517;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_518 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_518;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_519 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_519;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_520 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_520;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_584 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_584;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_585 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_585;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_586 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_586;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_587 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_587;
    params.ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285;
    params.ptconvlstm__lstm_layer__bias_ih_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_513 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_513;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_514 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_514;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_515 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_515;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_516 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_516;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_580 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_580;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_581 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_581;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_582 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_582;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_583 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_583;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_747 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_747;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_761 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_761;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_775 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_775;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_789 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_789;
    params.ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279;
    params.ptconvlstm__lstm_layer__weight_hh_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_509 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_509;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_510 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_510;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_511 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_511;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_512 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_512;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_576 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_576;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_577 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_577;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_578 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_578;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_579 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_579;
    params.ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273;
    params.ptconvlstm__lstm_layer__weight_ih_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    params.lstm_operand_1_0_0_125 = pmu_layout_lstm_operand_1_0_0_125;
    params.lstm_operand_1_1_0_170 = pmu_layout_lstm_operand_1_1_0_170;
    params.lstm_operand_1_dram_in = dram_layout_lstm_operand_1;
    params.lstm_operand_0_0_0_122 = pmu_layout_lstm_operand_0_0_0_122;
    params.lstm_operand_0_1_0_167 = pmu_layout_lstm_operand_0_1_0_167;
    params.lstm_operand_0_dram_in = dram_layout_lstm_operand_0;
    params.inp_window_0_0_475 = pmu_layout_inp_window_0_0_475;
    params.inp_window_1_0_477 = pmu_layout_inp_window_1_0_477;
    params.inp_window_1_0_478 = pmu_layout_inp_window_1_0_478;
    params.inp_window_dram_in = dram_layout_inp_window;
    params.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149 = pmu_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149;
    params.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185 = pmu_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185;
    params.ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1;
    params.ptconvlstm__dense_layer__bias_0_0_154 = pmu_layout_ptconvlstm__dense_layer__bias_0_0_154;
    params.ptconvlstm__dense_layer__bias_1_0_190 = pmu_layout_ptconvlstm__dense_layer__bias_1_0_190;
    params.ptconvlstm__dense_layer__bias_2_0_267 = pmu_layout_ptconvlstm__dense_layer__bias_2_0_267;
    params.ptconvlstm__dense_layer__bias_dram_in = dram_layout_ptconvlstm__dense_layer__bias;
    params.ptconvlstm__dense_layer__weight_0_0_153 = pmu_layout_ptconvlstm__dense_layer__weight_0_0_153;
    params.ptconvlstm__dense_layer__weight_1_0_189 = pmu_layout_ptconvlstm__dense_layer__weight_1_0_189;
    params.ptconvlstm__dense_layer__weight_1_0_628 = pmu_layout_ptconvlstm__dense_layer__weight_1_0_628;
    params.ptconvlstm__dense_layer__weight_2_0_261 = pmu_layout_ptconvlstm__dense_layer__weight_2_0_261;
    params.ptconvlstm__dense_layer__weight_dram_in = dram_layout_ptconvlstm__dense_layer__weight;
    params.out_window_0_0_147 = pmu_layout_out_window_0_0_147;
    params.out_window_1_0_479 = pmu_layout_out_window_1_0_479;
    params.out_window_dram_in = dram_layout_out_window;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195 = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    params.ptconvlstm__view__outputs__0__grad_1_0_476 = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_476;
    params.ptconvlstm__view__outputs__0__grad_dram_in = dram_layout_ptconvlstm__view__outputs__0__grad;
    params.ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220 = pmu_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220;
    params.ptconvlstm__lstm_layer__lstm__cell__output__grad_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad;
    params.ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217 = pmu_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217;
    params.ptconvlstm__lstm_layer__lstm__hidden__output__grad_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263 = pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269 = pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    params.ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275;
    params.ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281;
    params.ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287;
    params.ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293;
    params.ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482 = pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482;
    params.ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483 = pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483;
    params.ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484 = pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484;
    params.ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485 = pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485;
    params.ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486 = pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486;
    params.ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480 = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile;
    params.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    params.ptconvlstm__dense_layer__weight__grad_2_0_262 = pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_262;
    params.ptconvlstm__dense_layer__weight__grad_dram_in = dram_layout_ptconvlstm__dense_layer__weight__grad;
    params.ptconvlstm__dense_layer__bias__grad_2_0_268 = pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_268;
    params.ptconvlstm__dense_layer__bias__grad_dram_in = dram_layout_ptconvlstm__dense_layer__bias__grad;
    params.ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280;
    params.ptconvlstm__lstm_layer__weight_hh_l0__grad_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad;
    params.ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274;
    params.ptconvlstm__lstm_layer__weight_ih_l0__grad_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad;
    params.ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292;
    params.ptconvlstm__lstm_layer__bias_hh_l0__grad_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad;
    params.ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286;
    params.ptconvlstm__lstm_layer__bias_ih_l0__grad_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad;
    params.ptconvlstm__lstm_layer__bias_hh_l0_dram_out = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    params.ptconvlstm__lstm_layer__bias_ih_l0_dram_out = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    params.ptconvlstm__lstm_layer__weight_hh_l0_dram_out = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    params.ptconvlstm__lstm_layer__weight_ih_l0_dram_out = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    params.ptconvlstm__dense_layer__bias_dram_out = dram_layout_ptconvlstm__dense_layer__bias;
    params.ptconvlstm__dense_layer__weight_dram_out = dram_layout_ptconvlstm__dense_layer__weight;
    params.ptconvlstm__dense_layer__weight__sgd0__momentum_dram_out = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    params.ptconvlstm__dense_layer__bias__sgd0__momentum_dram_out = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    params.ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_dram_out = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_dram_out = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_dram_out = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_dram_out = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum;
    params.ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    params.ptconvlstm__lstm_layer__lstm__hidden__output_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output;
    params.ptconvlstm__lstm_layer__lstm__cell__output_dram_out = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output;
    params.ptconvlstm__view__outputs__0_dram_out = dram_layout_ptconvlstm__view__outputs__0;
    params.ptconvlstm__criterion__mseloss__outputs__0_dram_out = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    params.ptconvlstm__dense_layer__weight__grad_dram_out = dram_layout_ptconvlstm__dense_layer__weight__grad;
    params.ptconvlstm__dense_layer__bias__grad_dram_out = dram_layout_ptconvlstm__dense_layer__bias__grad;
    params.ptconvlstm__lstm_layer__weight_hh_l0__grad_dram_out = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad;
    params.ptconvlstm__lstm_layer__weight_ih_l0__grad_dram_out = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad;
    params.ptconvlstm__lstm_layer__bias_hh_l0__grad_dram_out = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad;
    params.ptconvlstm__lstm_layer__bias_ih_l0__grad_dram_out = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad;
    
    
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
            /// Load Group #1            
            FrontingPmu::Params fronting_pmu_load_group_1_params;
            fronting_pmu_load_group_1_params.dram_layout_all = dram_layout_lstm_operand_0_0_0_122;
            fronting_pmu_load_group_1_params.vag_group_id = 0;
            fronting_pmu_load_group_1_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_871));
            auto *fronting_pmu_load_group_1 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_1", partition_parent, &section_plasma, fronting_pmu_load_group_1_params);
            fronting_pmu_load_group_1->configure_node();
            fronting_pmu_load_group_1->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #32            
            FrontingPmu::Params fronting_pmu_load_group_32_params;
            fronting_pmu_load_group_32_params.dram_layout_all = dram_layout_lstm_operand_1_0_0_125;
            fronting_pmu_load_group_32_params.vag_group_id = 0;
            fronting_pmu_load_group_32_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_809));
            auto *fronting_pmu_load_group_32 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_32", partition_parent, &section_plasma, fronting_pmu_load_group_32_params);
            fronting_pmu_load_group_32->configure_node();
            fronting_pmu_load_group_32->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #33            
            FrontingPmu::Params fronting_pmu_load_group_33_params;
            fronting_pmu_load_group_33_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149;
            fronting_pmu_load_group_33_params.vag_group_id = 0;
            fronting_pmu_load_group_33_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1u_0_0_335));
            auto *fronting_pmu_load_group_33 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_33", partition_parent, &section_plasma, fronting_pmu_load_group_33_params);
            fronting_pmu_load_group_33->configure_node();
            fronting_pmu_load_group_33->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #4            
            FrontingPmu::Params fronting_pmu_load_group_4_params;
            fronting_pmu_load_group_4_params.dram_layout_all = dram_layout_group_4;
            std::vector<BufferNode *> gbufs_load_group_4 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_0_0_153)                
            };
            fronting_pmu_load_group_4_params.static_buffers = gbufs_load_group_4;
            fronting_pmu_load_group_4_params.atom_transpose = false;
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_group_27;
            std::vector<BufferNode *> gbufs_load_group_27 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_0_0_154)                
            };
            fronting_pmu_load_group_27_params.static_buffers = gbufs_load_group_27;
            fronting_pmu_load_group_27_params.atom_transpose = false;
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #34            
            FrontingPmu::Params fronting_pmu_load_group_34_params;
            fronting_pmu_load_group_34_params.dram_layout_all = dram_layout_inp_window_0_0_475;
            fronting_pmu_load_group_34_params.vag_group_id = 0;
            fronting_pmu_load_group_34_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_810));
            auto *fronting_pmu_load_group_34 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_34", partition_parent, &section_plasma, fronting_pmu_load_group_34_params);
            fronting_pmu_load_group_34->configure_node();
            fronting_pmu_load_group_34->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #26            
            FrontingPmu::Params fronting_pmu_load_group_26_params;
            fronting_pmu_load_group_26_params.dram_layout_all = dram_layout_group_26;
            std::vector<BufferNode *> gbufs_load_group_26 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_509)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_510)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_511)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_512)                
            };
            fronting_pmu_load_group_26_params.static_buffers = gbufs_load_group_26;
            fronting_pmu_load_group_26_params.atom_transpose = false;
            auto *fronting_pmu_load_group_26 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_26", partition_parent, &section_plasma, fronting_pmu_load_group_26_params);
            fronting_pmu_load_group_26->configure_node();
            fronting_pmu_load_group_26->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #25            
            FrontingPmu::Params fronting_pmu_load_group_25_params;
            fronting_pmu_load_group_25_params.dram_layout_all = dram_layout_group_25;
            std::vector<BufferNode *> gbufs_load_group_25 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_513)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_514)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_515)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_516)                
            };
            fronting_pmu_load_group_25_params.static_buffers = gbufs_load_group_25;
            fronting_pmu_load_group_25_params.atom_transpose = false;
            auto *fronting_pmu_load_group_25 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_25", partition_parent, &section_plasma, fronting_pmu_load_group_25_params);
            fronting_pmu_load_group_25->configure_node();
            fronting_pmu_load_group_25->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #24            
            FrontingPmu::Params fronting_pmu_load_group_24_params;
            fronting_pmu_load_group_24_params.dram_layout_all = dram_layout_group_24;
            std::vector<BufferNode *> gbufs_load_group_24 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_517)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_518)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_519)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_520)                
            };
            fronting_pmu_load_group_24_params.static_buffers = gbufs_load_group_24;
            fronting_pmu_load_group_24_params.atom_transpose = false;
            auto *fronting_pmu_load_group_24 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_24", partition_parent, &section_plasma, fronting_pmu_load_group_24_params);
            fronting_pmu_load_group_24->configure_node();
            fronting_pmu_load_group_24->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #23            
            FrontingPmu::Params fronting_pmu_load_group_23_params;
            fronting_pmu_load_group_23_params.dram_layout_all = dram_layout_group_23;
            std::vector<BufferNode *> gbufs_load_group_23 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_521)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_522)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_523)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_524)                
            };
            fronting_pmu_load_group_23_params.static_buffers = gbufs_load_group_23;
            fronting_pmu_load_group_23_params.atom_transpose = false;
            auto *fronting_pmu_load_group_23 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_23", partition_parent, &section_plasma, fronting_pmu_load_group_23_params);
            fronting_pmu_load_group_23->configure_node();
            fronting_pmu_load_group_23->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #45            
            FrontingPmu::Params fronting_pmu_load_group_45_params;
            fronting_pmu_load_group_45_params.dram_layout_all = dram_layout_out_window_0_0_147;
            fronting_pmu_load_group_45_params.vag_group_id = 0;
            fronting_pmu_load_group_45_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_914));
            auto *fronting_pmu_load_group_45 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_45", partition_parent, &section_plasma, fronting_pmu_load_group_45_params);
            fronting_pmu_load_group_45->configure_node();
            fronting_pmu_load_group_45->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// storing tile ...
            StoreTiler::Params ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.output_tensor_shape = std::vector<size_t>{2, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.input_tile_layout = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.strides = std::vector<int64_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.start_border= std::vector<size_t>{1, 0, 0};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.end_border= std::vector<size_t>{2, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.dimension_ordering = std::vector<size_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.store_with_zero_fill = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.conv_align = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.read_modify_write = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.g_buffer= ((GBuffer*)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_819));
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params.fill_region_layout = &dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487;
            StoreTiler* ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler =  section_plasma.create_node<StoreTiler>("ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler", partition_parent, &section_plasma, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tile_params);
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler->configure_node();
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler->finalize();
            if(ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler->use_list_buffer()){
                ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler->configure_list_buffer_dram_load(loads);
                loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            } 
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487_tiler->configure_dram_store(stores);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #36;
            BackingPmu::Params backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_params;
            backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_params.host_fifo_use = false;
            backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488;
            auto buffer_node_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_813));
            backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488;
            auto *backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488", partition_parent, &section_plasma, backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488_params);
            backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488->configure_node();
            backing_pmu_group_36_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #37;
            BackingPmu::Params backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_params;
            backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_params.host_fifo_use = false;
            backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489;
            auto buffer_node_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_814));
            backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489;
            auto *backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489", partition_parent, &section_plasma, backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489_params);
            backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489->configure_node();
            backing_pmu_group_37_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #38;
            BackingPmu::Params backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_params;
            backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_params.host_fifo_use = false;
            backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490;
            auto buffer_node_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_815));
            backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490;
            auto *backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490", partition_parent, &section_plasma, backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490_params);
            backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490->configure_node();
            backing_pmu_group_38_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #39;
            BackingPmu::Params backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_params;
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_params.host_fifo_use = false;
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491;
            auto buffer_node_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_816));
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491;
            auto *backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491", partition_parent, &section_plasma, backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491_params);
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491->configure_node();
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #40;
            BackingPmu::Params backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_params;
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_params.host_fifo_use = false;
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492;
            auto buffer_node_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_812));
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492;
            auto *backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492", partition_parent, &section_plasma, backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492_params);
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492->configure_node();
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #41;
            BackingPmu::Params backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493_params;
            backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493_params.host_fifo_use = false;
            backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0_0_0_493;
            auto buffer_node_ptconvlstm__view__outputs__0_0_0_493 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_820));
            backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493_params.buffer_node = buffer_node_ptconvlstm__view__outputs__0_0_0_493;
            auto *backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493", partition_parent, &section_plasma, backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493_params);
            backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493->configure_node();
            backing_pmu_group_41_ptconvlstm__view__outputs__0_0_0_493->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #42;
            BackingPmu::Params backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor_params;
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor_params.host_fifo_use = false;
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm_tensor;
            auto buffer_node_ptconvlstm__lstm_layer__lstm_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_821));
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm_tensor;
            auto *backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor", partition_parent, &section_plasma, backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor_params);
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor->configure_node();
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #43;
            BackingPmu::Params backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1_params;
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1_params.host_fifo_use = false;
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm_tensor1;
            auto buffer_node_ptconvlstm__lstm_layer__lstm_tensor1 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_822));
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm_tensor1;
            auto *backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1", partition_parent, &section_plasma, backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1_params);
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1->configure_node();
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// storing tile ...
            StoreTiler::Params ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.output_tensor_shape = std::vector<size_t>{2, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.input_tile_layout = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.strides = std::vector<int64_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.start_border= std::vector<size_t>{0, 0, 0};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.end_border= std::vector<size_t>{1, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.dimension_ordering = std::vector<size_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.store_with_zero_fill = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.conv_align = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.read_modify_write = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.g_buffer= ((GBuffer*)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_808));
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.fill_region_layout = &dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298;
            StoreTiler* ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler =  section_plasma.create_node<StoreTiler>("ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler", partition_parent, &section_plasma, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params);
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler->configure_node();
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler->finalize();
            if(ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler->use_list_buffer()){
                ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler->configure_list_buffer_dram_load(loads);
                loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            } 
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tiler->configure_dram_store(stores);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #46;
            BackingPmu::Params backing_pmu_group_46__tensor_params;
            backing_pmu_group_46__tensor_params.host_fifo_use = false;
            backing_pmu_group_46__tensor_params.dram_layout_all = dram_layout__tensor;
            auto buffer_node__tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_824));
            backing_pmu_group_46__tensor_params.buffer_node = buffer_node__tensor;
            auto *backing_pmu_group_46__tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_46__tensor", partition_parent, &section_plasma, backing_pmu_group_46__tensor_params);
            backing_pmu_group_46__tensor->configure_node();
            backing_pmu_group_46__tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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
            /// Load Group #47            
            FrontingPmu::Params fronting_pmu_load_group_47_params;
            fronting_pmu_load_group_47_params.dram_layout_all = dram_layout_lstm_operand_0_1_0_167;
            fronting_pmu_load_group_47_params.vag_group_id = 0;
            fronting_pmu_load_group_47_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_825));
            auto *fronting_pmu_load_group_47 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_47", partition_parent, &section_plasma, fronting_pmu_load_group_47_params);
            fronting_pmu_load_group_47->configure_node();
            fronting_pmu_load_group_47->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #48            
            FrontingPmu::Params fronting_pmu_load_group_48_params;
            fronting_pmu_load_group_48_params.dram_layout_all = dram_layout_lstm_operand_1_1_0_170;
            fronting_pmu_load_group_48_params.vag_group_id = 0;
            fronting_pmu_load_group_48_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_826));
            auto *fronting_pmu_load_group_48 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_48", partition_parent, &section_plasma, fronting_pmu_load_group_48_params);
            fronting_pmu_load_group_48->configure_node();
            fronting_pmu_load_group_48->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #49            
            FrontingPmu::Params fronting_pmu_load_group_49_params;
            fronting_pmu_load_group_49_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185;
            fronting_pmu_load_group_49_params.vag_group_id = 0;
            fronting_pmu_load_group_49_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_872));
            auto *fronting_pmu_load_group_49 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_49", partition_parent, &section_plasma, fronting_pmu_load_group_49_params);
            fronting_pmu_load_group_49->configure_node();
            fronting_pmu_load_group_49->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #4            
            FrontingPmu::Params fronting_pmu_load_group_4_params;
            fronting_pmu_load_group_4_params.dram_layout_all = dram_layout_group_4;
            std::vector<BufferNode *> gbufs_load_group_4 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_1_0_189)                
            };
            fronting_pmu_load_group_4_params.static_buffers = gbufs_load_group_4;
            fronting_pmu_load_group_4_params.atom_transpose = false;
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_group_27;
            std::vector<BufferNode *> gbufs_load_group_27 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_1_0_190)                
            };
            fronting_pmu_load_group_27_params.static_buffers = gbufs_load_group_27;
            fronting_pmu_load_group_27_params.atom_transpose = false;
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Input ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195
            DramInput dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
            DramLoadParams ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195_load_params;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.dram_layout = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.pmu_layout = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195_load_params.load_once = false;
            ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195_load_params.vector_transpose = false;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.sinks = node.input_list(arc::LogregTorchSamba::Input::kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195);
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.params = ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195_load_params;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.is_lut = false;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.group_id = 0;
            dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195.timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.push_back(dram_input_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195);
            
            /// Load Group #50            
            FrontingPmu::Params fronting_pmu_load_group_50_params;
            fronting_pmu_load_group_50_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217;
            fronting_pmu_load_group_50_params.vag_group_id = 0;
            fronting_pmu_load_group_50_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_827));
            auto *fronting_pmu_load_group_50 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_50", partition_parent, &section_plasma, fronting_pmu_load_group_50_params);
            fronting_pmu_load_group_50->configure_node();
            fronting_pmu_load_group_50->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #51            
            FrontingPmu::Params fronting_pmu_load_group_51_params;
            fronting_pmu_load_group_51_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220;
            fronting_pmu_load_group_51_params.vag_group_id = 0;
            fronting_pmu_load_group_51_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_828));
            auto *fronting_pmu_load_group_51 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_51", partition_parent, &section_plasma, fronting_pmu_load_group_51_params);
            fronting_pmu_load_group_51->configure_node();
            fronting_pmu_load_group_51->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #52            
            FrontingPmu::Params fronting_pmu_load_group_52_params;
            fronting_pmu_load_group_52_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_476;
            fronting_pmu_load_group_52_params.vag_group_id = 0;
            fronting_pmu_load_group_52_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_412));
            auto *fronting_pmu_load_group_52 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_52", partition_parent, &section_plasma, fronting_pmu_load_group_52_params);
            fronting_pmu_load_group_52->configure_node();
            fronting_pmu_load_group_52->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #53            
            FrontingPmu::Params fronting_pmu_load_group_53_params;
            fronting_pmu_load_group_53_params.dram_layout_all = dram_layout_inp_window_1_0_477;
            fronting_pmu_load_group_53_params.vag_group_id = 0;
            fronting_pmu_load_group_53_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_1_0_829));
            auto *fronting_pmu_load_group_53 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_53", partition_parent, &section_plasma, fronting_pmu_load_group_53_params);
            fronting_pmu_load_group_53->configure_node();
            fronting_pmu_load_group_53->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #26            
            FrontingPmu::Params fronting_pmu_load_group_26_params;
            fronting_pmu_load_group_26_params.dram_layout_all = dram_layout_group_26;
            std::vector<BufferNode *> gbufs_load_group_26 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_576)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_577)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_578)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_579)                
            };
            fronting_pmu_load_group_26_params.static_buffers = gbufs_load_group_26;
            fronting_pmu_load_group_26_params.atom_transpose = false;
            auto *fronting_pmu_load_group_26 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_26", partition_parent, &section_plasma, fronting_pmu_load_group_26_params);
            fronting_pmu_load_group_26->configure_node();
            fronting_pmu_load_group_26->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #25            
            FrontingPmu::Params fronting_pmu_load_group_25_params;
            fronting_pmu_load_group_25_params.dram_layout_all = dram_layout_group_25;
            std::vector<BufferNode *> gbufs_load_group_25 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_580)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_581)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_582)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_583)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_747)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_761)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_775)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_789)                
            };
            fronting_pmu_load_group_25_params.static_buffers = gbufs_load_group_25;
            fronting_pmu_load_group_25_params.atom_transpose = false;
            auto *fronting_pmu_load_group_25 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_25", partition_parent, &section_plasma, fronting_pmu_load_group_25_params);
            fronting_pmu_load_group_25->configure_node();
            fronting_pmu_load_group_25->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #24            
            FrontingPmu::Params fronting_pmu_load_group_24_params;
            fronting_pmu_load_group_24_params.dram_layout_all = dram_layout_group_24;
            std::vector<BufferNode *> gbufs_load_group_24 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_584)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_585)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_586)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_587)                
            };
            fronting_pmu_load_group_24_params.static_buffers = gbufs_load_group_24;
            fronting_pmu_load_group_24_params.atom_transpose = false;
            auto *fronting_pmu_load_group_24 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_24", partition_parent, &section_plasma, fronting_pmu_load_group_24_params);
            fronting_pmu_load_group_24->configure_node();
            fronting_pmu_load_group_24->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #23            
            FrontingPmu::Params fronting_pmu_load_group_23_params;
            fronting_pmu_load_group_23_params.dram_layout_all = dram_layout_group_23;
            std::vector<BufferNode *> gbufs_load_group_23 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_588)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_589)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_590)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_591)                
            };
            fronting_pmu_load_group_23_params.static_buffers = gbufs_load_group_23;
            fronting_pmu_load_group_23_params.atom_transpose = false;
            auto *fronting_pmu_load_group_23 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_23", partition_parent, &section_plasma, fronting_pmu_load_group_23_params);
            fronting_pmu_load_group_23->configure_node();
            fronting_pmu_load_group_23->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #54            
            FrontingPmu::Params fronting_pmu_load_group_54_params;
            fronting_pmu_load_group_54_params.dram_layout_all = dram_layout_out_window_1_0_479;
            fronting_pmu_load_group_54_params.vag_group_id = 0;
            fronting_pmu_load_group_54_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_392));
            auto *fronting_pmu_load_group_54 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_54", partition_parent, &section_plasma, fronting_pmu_load_group_54_params);
            fronting_pmu_load_group_54->configure_node();
            fronting_pmu_load_group_54->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #55            
            FrontingPmu::Params fronting_pmu_load_group_55_params;
            fronting_pmu_load_group_55_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__weight_1_0_628;
            fronting_pmu_load_group_55_params.vag_group_id = 0;
            fronting_pmu_load_group_55_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_834));
            auto *fronting_pmu_load_group_55 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_55", partition_parent, &section_plasma, fronting_pmu_load_group_55_params);
            fronting_pmu_load_group_55->configure_node();
            fronting_pmu_load_group_55->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #56            
            FrontingPmu::Params fronting_pmu_load_group_56_params;
            fronting_pmu_load_group_56_params.dram_layout_all = dram_layout_inp_window_1_0_478;
            fronting_pmu_load_group_56_params.vag_group_id = 0;
            fronting_pmu_load_group_56_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_433));
            auto *fronting_pmu_load_group_56 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_56", partition_parent, &section_plasma, fronting_pmu_load_group_56_params);
            fronting_pmu_load_group_56->configure_node();
            fronting_pmu_load_group_56->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/1);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #57            
            FrontingPmu::Params fronting_pmu_load_group_57_params;
            fronting_pmu_load_group_57_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482;
            fronting_pmu_load_group_57_params.vag_group_id = 0;
            fronting_pmu_load_group_57_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_436));
            auto *fronting_pmu_load_group_57 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_57", partition_parent, &section_plasma, fronting_pmu_load_group_57_params);
            fronting_pmu_load_group_57->configure_node();
            fronting_pmu_load_group_57->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/1);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #58            
            FrontingPmu::Params fronting_pmu_load_group_58_params;
            fronting_pmu_load_group_58_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483;
            fronting_pmu_load_group_58_params.vag_group_id = 0;
            fronting_pmu_load_group_58_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_438));
            auto *fronting_pmu_load_group_58 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_58", partition_parent, &section_plasma, fronting_pmu_load_group_58_params);
            fronting_pmu_load_group_58->configure_node();
            fronting_pmu_load_group_58->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/1);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #59            
            FrontingPmu::Params fronting_pmu_load_group_59_params;
            fronting_pmu_load_group_59_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484;
            fronting_pmu_load_group_59_params.vag_group_id = 0;
            fronting_pmu_load_group_59_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_440));
            auto *fronting_pmu_load_group_59 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_59", partition_parent, &section_plasma, fronting_pmu_load_group_59_params);
            fronting_pmu_load_group_59->configure_node();
            fronting_pmu_load_group_59->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/1);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #60            
            FrontingPmu::Params fronting_pmu_load_group_60_params;
            fronting_pmu_load_group_60_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485;
            fronting_pmu_load_group_60_params.vag_group_id = 0;
            fronting_pmu_load_group_60_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_442));
            auto *fronting_pmu_load_group_60 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_60", partition_parent, &section_plasma, fronting_pmu_load_group_60_params);
            fronting_pmu_load_group_60->configure_node();
            fronting_pmu_load_group_60->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/1);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #61            
            FrontingPmu::Params fronting_pmu_load_group_61_params;
            fronting_pmu_load_group_61_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486;
            fronting_pmu_load_group_61_params.vag_group_id = 0;
            fronting_pmu_load_group_61_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2u_1_0_444));
            auto *fronting_pmu_load_group_61 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_61", partition_parent, &section_plasma, fronting_pmu_load_group_61_params);
            fronting_pmu_load_group_61->configure_node();
            fronting_pmu_load_group_61->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/1);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #62            
            
            /// tile loading ....
            LoadTiler::Params ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.image_layout = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.tile_layout = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.conv_align = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.strides = std::vector<int64_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.start_border = std::vector<size_t>{0, 0, 0};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.end_border = std::vector<size_t>{1, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.dimension_ordering = std::vector<size_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.buffer_nodes.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_1_0_916));
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params.reverse_traverse = true;
            LoadTiler* ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tiler =  section_plasma.create_node<LoadTiler>("ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tiler", partition_parent, &section_plasma, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tile_params);
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tiler->configure_node();
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480_tiler->configure_dram_load(loads);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #63;
            BackingPmu::Params backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params;
            backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.host_fifo_use = false;
            backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            auto buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__dense_layer__linear_bwd_weight_accum));
            backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.buffer_node = buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            auto *backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor", partition_parent, &section_plasma, backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params);
            backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor->configure_node();
            backing_pmu_group_63_ptconvlstm__dense_layer__linear_bwd_weight_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #64;
            BackingPmu::Params backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params;
            backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.host_fifo_use = false;
            backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            auto buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__dense_layer__linear_bwd_weight_accum_1));
            backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.buffer_node = buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            auto *backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1", partition_parent, &section_plasma, backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params);
            backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1->configure_node();
            backing_pmu_group_64_ptconvlstm__dense_layer__linear_bwd_weight_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #65;
            BackingPmu::Params backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params;
            backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params.host_fifo_use = false;
            backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_855));
            backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300;
            auto *backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300", partition_parent, &section_plasma, backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params);
            backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300->configure_node();
            backing_pmu_group_65_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #66;
            BackingPmu::Params backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params;
            backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.host_fifo_use = false;
            backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_856));
            backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301;
            backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.argin_dram_offset = 8192;
            auto *backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301", partition_parent, &section_plasma, backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params);
            backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301->configure_node();
            backing_pmu_group_66_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #67;
            BackingPmu::Params backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params;
            backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.host_fifo_use = false;
            backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_857));
            backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302;
            backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.argin_dram_offset = 16384;
            auto *backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302", partition_parent, &section_plasma, backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params);
            backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302->configure_node();
            backing_pmu_group_67_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #68;
            BackingPmu::Params backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params;
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.host_fifo_use = false;
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_858));
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303;
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.argin_dram_offset = 24576;
            auto *backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303", partition_parent, &section_plasma, backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params);
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303->configure_node();
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #69;
            BackingPmu::Params backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params;
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params.host_fifo_use = false;
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_859));
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304;
            auto *backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304", partition_parent, &section_plasma, backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params);
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304->configure_node();
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #70;
            BackingPmu::Params backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params;
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.host_fifo_use = false;
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_860));
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305;
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.argin_dram_offset = 20480;
            auto *backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305", partition_parent, &section_plasma, backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params);
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305->configure_node();
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #71;
            BackingPmu::Params backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params;
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.host_fifo_use = false;
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_861));
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306;
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.argin_dram_offset = 40960;
            auto *backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306", partition_parent, &section_plasma, backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params);
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306->configure_node();
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #72;
            BackingPmu::Params backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params;
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.host_fifo_use = false;
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_862));
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307;
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.argin_dram_offset = 61440;
            auto *backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307", partition_parent, &section_plasma, backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params);
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307->configure_node();
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #73;
            BackingPmu::Params backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params;
            backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params.host_fifo_use = false;
            backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_863));
            backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308;
            auto *backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308", partition_parent, &section_plasma, backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params);
            backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308->configure_node();
            backing_pmu_group_73_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #74;
            BackingPmu::Params backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params;
            backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.host_fifo_use = false;
            backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_864));
            backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309;
            backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.argin_dram_offset = 4096;
            auto *backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309", partition_parent, &section_plasma, backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params);
            backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309->configure_node();
            backing_pmu_group_74_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #75;
            BackingPmu::Params backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params;
            backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.host_fifo_use = false;
            backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_865));
            backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310;
            backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.argin_dram_offset = 8192;
            auto *backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310", partition_parent, &section_plasma, backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params);
            backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310->configure_node();
            backing_pmu_group_75_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #76;
            BackingPmu::Params backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params;
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.host_fifo_use = false;
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_866));
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311;
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.argin_dram_offset = 12288;
            auto *backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311", partition_parent, &section_plasma, backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params);
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311->configure_node();
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #77;
            BackingPmu::Params backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params;
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params.host_fifo_use = false;
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_867));
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312;
            auto *backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312", partition_parent, &section_plasma, backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params);
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312->configure_node();
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #78;
            BackingPmu::Params backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params;
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.host_fifo_use = false;
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_868));
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313;
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.argin_dram_offset = 4096;
            auto *backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313", partition_parent, &section_plasma, backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params);
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313->configure_node();
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #79;
            BackingPmu::Params backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params;
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.host_fifo_use = false;
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_869));
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314;
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.argin_dram_offset = 8192;
            auto *backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314", partition_parent, &section_plasma, backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params);
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314->configure_node();
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #80;
            BackingPmu::Params backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params;
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.host_fifo_use = false;
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_870));
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315;
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.argin_dram_offset = 12288;
            auto *backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315", partition_parent, &section_plasma, backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params);
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315->configure_node();
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_2_0_261)                
            };
            fronting_pmu_load_group_4_params.static_buffers = gbufs_load_group_4;
            fronting_pmu_load_group_4_params.atom_transpose = false;
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #30            
            FrontingPmu::Params fronting_pmu_load_group_30_params;
            fronting_pmu_load_group_30_params.dram_layout_all = dram_layout_group_30;
            std::vector<BufferNode *> gbufs_load_group_30 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__grad_2_0_262)                
            };
            fronting_pmu_load_group_30_params.static_buffers = gbufs_load_group_30;
            fronting_pmu_load_group_30_params.atom_transpose = false;
            auto *fronting_pmu_load_group_30 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_30", partition_parent, &section_plasma, fronting_pmu_load_group_30_params);
            fronting_pmu_load_group_30->configure_node();
            fronting_pmu_load_group_30->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #28            
            FrontingPmu::Params fronting_pmu_load_group_28_params;
            fronting_pmu_load_group_28_params.dram_layout_all = dram_layout_group_28;
            std::vector<BufferNode *> gbufs_load_group_28 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263)                
            };
            fronting_pmu_load_group_28_params.static_buffers = gbufs_load_group_28;
            fronting_pmu_load_group_28_params.atom_transpose = false;
            auto *fronting_pmu_load_group_28 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_28", partition_parent, &section_plasma, fronting_pmu_load_group_28_params);
            fronting_pmu_load_group_28->configure_node();
            fronting_pmu_load_group_28->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_group_27;
            std::vector<BufferNode *> gbufs_load_group_27 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_2_0_267)                
            };
            fronting_pmu_load_group_27_params.static_buffers = gbufs_load_group_27;
            fronting_pmu_load_group_27_params.atom_transpose = false;
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #31            
            FrontingPmu::Params fronting_pmu_load_group_31_params;
            fronting_pmu_load_group_31_params.dram_layout_all = dram_layout_group_31;
            std::vector<BufferNode *> gbufs_load_group_31 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__grad_2_0_268)                
            };
            fronting_pmu_load_group_31_params.static_buffers = gbufs_load_group_31;
            fronting_pmu_load_group_31_params.atom_transpose = false;
            auto *fronting_pmu_load_group_31 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_31", partition_parent, &section_plasma, fronting_pmu_load_group_31_params);
            fronting_pmu_load_group_31->configure_node();
            fronting_pmu_load_group_31->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #29            
            FrontingPmu::Params fronting_pmu_load_group_29_params;
            fronting_pmu_load_group_29_params.dram_layout_all = dram_layout_group_29;
            std::vector<BufferNode *> gbufs_load_group_29 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293)                
            };
            fronting_pmu_load_group_29_params.static_buffers = gbufs_load_group_29;
            fronting_pmu_load_group_29_params.atom_transpose = false;
            auto *fronting_pmu_load_group_29 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_29", partition_parent, &section_plasma, fronting_pmu_load_group_29_params);
            fronting_pmu_load_group_29->configure_node();
            fronting_pmu_load_group_29->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #26            
            FrontingPmu::Params fronting_pmu_load_group_26_params;
            fronting_pmu_load_group_26_params.dram_layout_all = dram_layout_group_26;
            std::vector<BufferNode *> gbufs_load_group_26 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_2_0_273)                
            };
            fronting_pmu_load_group_26_params.static_buffers = gbufs_load_group_26;
            fronting_pmu_load_group_26_params.atom_transpose = false;
            auto *fronting_pmu_load_group_26 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_26", partition_parent, &section_plasma, fronting_pmu_load_group_26_params);
            fronting_pmu_load_group_26->configure_node();
            fronting_pmu_load_group_26->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #81            
            FrontingPmu::Params fronting_pmu_load_group_81_params;
            fronting_pmu_load_group_81_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274;
            fronting_pmu_load_group_81_params.vag_group_id = 0;
            fronting_pmu_load_group_81_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_917));
            auto *fronting_pmu_load_group_81 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_81", partition_parent, &section_plasma, fronting_pmu_load_group_81_params);
            fronting_pmu_load_group_81->configure_node();
            fronting_pmu_load_group_81->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #25            
            FrontingPmu::Params fronting_pmu_load_group_25_params;
            fronting_pmu_load_group_25_params.dram_layout_all = dram_layout_group_25;
            std::vector<BufferNode *> gbufs_load_group_25 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_2_0_279)                
            };
            fronting_pmu_load_group_25_params.static_buffers = gbufs_load_group_25;
            fronting_pmu_load_group_25_params.atom_transpose = false;
            auto *fronting_pmu_load_group_25 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_25", partition_parent, &section_plasma, fronting_pmu_load_group_25_params);
            fronting_pmu_load_group_25->configure_node();
            fronting_pmu_load_group_25->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #82            
            FrontingPmu::Params fronting_pmu_load_group_82_params;
            fronting_pmu_load_group_82_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280;
            fronting_pmu_load_group_82_params.vag_group_id = 0;
            fronting_pmu_load_group_82_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_918));
            auto *fronting_pmu_load_group_82 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_82", partition_parent, &section_plasma, fronting_pmu_load_group_82_params);
            fronting_pmu_load_group_82->configure_node();
            fronting_pmu_load_group_82->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #24            
            FrontingPmu::Params fronting_pmu_load_group_24_params;
            fronting_pmu_load_group_24_params.dram_layout_all = dram_layout_group_24;
            std::vector<BufferNode *> gbufs_load_group_24 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_2_0_285)                
            };
            fronting_pmu_load_group_24_params.static_buffers = gbufs_load_group_24;
            fronting_pmu_load_group_24_params.atom_transpose = false;
            auto *fronting_pmu_load_group_24 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_24", partition_parent, &section_plasma, fronting_pmu_load_group_24_params);
            fronting_pmu_load_group_24->configure_node();
            fronting_pmu_load_group_24->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #83            
            FrontingPmu::Params fronting_pmu_load_group_83_params;
            fronting_pmu_load_group_83_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286;
            fronting_pmu_load_group_83_params.vag_group_id = 0;
            fronting_pmu_load_group_83_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_919));
            auto *fronting_pmu_load_group_83 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_83", partition_parent, &section_plasma, fronting_pmu_load_group_83_params);
            fronting_pmu_load_group_83->configure_node();
            fronting_pmu_load_group_83->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #23            
            FrontingPmu::Params fronting_pmu_load_group_23_params;
            fronting_pmu_load_group_23_params.dram_layout_all = dram_layout_group_23;
            std::vector<BufferNode *> gbufs_load_group_23 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_2_0_291)                
            };
            fronting_pmu_load_group_23_params.static_buffers = gbufs_load_group_23;
            fronting_pmu_load_group_23_params.atom_transpose = false;
            auto *fronting_pmu_load_group_23 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_23", partition_parent, &section_plasma, fronting_pmu_load_group_23_params);
            fronting_pmu_load_group_23->configure_node();
            fronting_pmu_load_group_23->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #84            
            FrontingPmu::Params fronting_pmu_load_group_84_params;
            fronting_pmu_load_group_84_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292;
            fronting_pmu_load_group_84_params.vag_group_id = 0;
            fronting_pmu_load_group_84_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_920));
            auto *fronting_pmu_load_group_84 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_84", partition_parent, &section_plasma, fronting_pmu_load_group_84_params);
            fronting_pmu_load_group_84->configure_node();
            fronting_pmu_load_group_84->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #4;
            BackingPmu::Params backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params;
            backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.dram_layout_all = dram_layout_group_4;
            std::vector<WeightsBuffer *> wbufs_group_4 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor)                
            };
            backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.weights_buffers = wbufs_group_4;
            backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params);
            backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_node();
            backing_pmu_group_4_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #28;
            BackingPmu::Params backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params;
            backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.host_fifo_use = false;
            backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.dram_layout_all = dram_layout_group_28;
            std::vector<WeightsBuffer *> wbufs_group_28 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1)                
            };
            backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.weights_buffers = wbufs_group_28;
            backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.generate_allrddone = true;
            auto *backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", partition_parent, &section_plasma, backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params);
            backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_node();
            backing_pmu_group_28_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #27;
            BackingPmu::Params backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params;
            backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.dram_layout_all = dram_layout_group_27;
            std::vector<WeightsBuffer *> wbufs_group_27 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor)                
            };
            backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.weights_buffers = wbufs_group_27;
            backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params);
            backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_node();
            backing_pmu_group_27_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #29;
            BackingPmu::Params backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params;
            backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.host_fifo_use = false;
            backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.dram_layout_all = dram_layout_group_29;
            std::vector<WeightsBuffer *> wbufs_group_29 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                
            };
            backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.weights_buffers = wbufs_group_29;
            backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.generate_allrddone = true;
            auto *backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", partition_parent, &section_plasma, backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params);
            backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_node();
            backing_pmu_group_29_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #26;
            BackingPmu::Params backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_26;
            std::vector<WeightsBuffer *> wbufs_group_26 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_26;
            backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_26_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #25;
            BackingPmu::Params backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_25;
            std::vector<WeightsBuffer *> wbufs_group_25 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_25;
            backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_25_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #24;
            BackingPmu::Params backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_24;
            std::vector<WeightsBuffer *> wbufs_group_24 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_24;
            backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_24_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #23;
            BackingPmu::Params backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_23;
            std::vector<WeightsBuffer *> wbufs_group_23 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_23;
            backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_23_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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

