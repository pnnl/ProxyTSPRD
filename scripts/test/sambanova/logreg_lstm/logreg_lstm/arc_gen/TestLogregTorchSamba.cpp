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
    plasma.workspace().get_pef_metadata()["batch_size"] = "100";
    plasma.workspace().get_pef_metadata()["bench_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiled_stats_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiler_mode"] = "";
    plasma.workspace().get_pef_metadata()["data_folder"] = "mnist_data";
    plasma.workspace().get_pef_metadata()["data_parallel"] = "True";
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
    plasma.workspace().get_pef_metadata()["local_rank"] = "0";
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
    plasma.workspace().get_pef_metadata()["world_size"] = "2";
    plasma.workspace().get_pef_metadata()["yaml_config"] = "None";
    
    /** Add Plasma Inputs **/
    /// Input Group #26
    std::vector<PlasmaRegion> group_26_tensors {
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_hh_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_26;
    io_config_group_26.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_group_26.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_26.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_26.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_26 = add_plasma_input_group(plasma, group_26_tensors, io_config_group_26, "group_26");
    TensorLayout dram_layout_group_26 = group_26.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0 = group_26.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__bias_hh_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_531 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_531 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_531.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_532 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_532 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_532.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_533 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_533 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_533.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_534 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_534 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_534.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_598 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_598 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_598.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_599 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_599 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_599.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_600 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_600 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_600.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_601 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_601 = group_26.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_601.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 = group_26.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #27
    std::vector<PlasmaRegion> group_27_tensors {
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_ih_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_27;
    io_config_group_27.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_group_27.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_27.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_27.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_27 = add_plasma_input_group(plasma, group_27_tensors, io_config_group_27, "group_27");
    TensorLayout dram_layout_group_27 = group_27.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0 = group_27.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__bias_ih_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_527 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_527 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_527.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_528 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_528 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_528.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_529 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_529 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_529.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_530 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_530 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_530.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_594 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_594 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_594.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_595 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_595 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(128);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_595.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_596 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_596 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(256);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_596.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_597 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_597 = group_27.pmu_layouts.at(0).with_logical_shape({64, 1}).at_address(384);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_597.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 = group_27.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #28
    std::vector<PlasmaRegion> group_28_tensors {
        {{4, 64, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_hh_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_28;
    io_config_group_28.python_transforms.push_back(std::make_pair(".reshape([4, 64, 64])", ".reshape([256, 64])"));
    io_config_group_28.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_28.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_28.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_28 = add_plasma_input_group(plasma, group_28_tensors, io_config_group_28, "group_28");
    TensorLayout dram_layout_group_28 = group_28.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0 = group_28.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__weight_hh_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_523 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_523 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_523.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_524 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_524 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(8192);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_524.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_525 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_525 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(16384);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_525.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_526 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_526 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(24576);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_526.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_590 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_590 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_590.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_591 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_591 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(8192);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_591.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_592 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_592 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(16384);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_592.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_593 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_593 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(24576);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_593.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_757 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_757 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_757.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_771 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_771 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(8192);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_771.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_785 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_785 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(16384);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_785.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_799 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_799 = group_28.pmu_layouts.at(0).with_logical_shape({64, 64}).at_address(24576);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_799.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 = group_28.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #29
    std::vector<PlasmaRegion> group_29_tensors {
        {{4, 64, 136}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_ih_l0", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_29;
    io_config_group_29.python_transforms.push_back(std::make_pair(".reshape([4, 64, 136])", ".reshape([256, 136])"));
    io_config_group_29.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_29.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_29.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_29 = add_plasma_input_group(plasma, group_29_tensors, io_config_group_29, "group_29");
    TensorLayout dram_layout_group_29 = group_29.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0 = group_29.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__weight_ih_l0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_519 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_519 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_519.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_520 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_520 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(17408);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_520.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_521 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_521 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(34816);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_521.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_522 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_522 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(52224);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_522.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_586 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_586 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_586.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_587 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_587 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(17408);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_587.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_588 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_588 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(34816);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_588.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_589 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_589 = group_29.pmu_layouts.at(0).with_logical_shape({64, 136}).at_address(52224);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_589.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 = group_29.pmu_layouts.at(0);
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
    TensorLayout dram_layout_inp_window = add_plasma_input(plasma, {100, 60, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_inp_window, "inp_window", {});
    dram_layout_inp_window.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_inp_window_0_0_482 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_0_0_482 = dram_layout_inp_window_0_0_482.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_0_0_482.set_vector_transposed(true);
    TensorLayout pmu_layout_inp_window_0_0_482_full = pmu_layout_inp_window_0_0_482.supertensor({1}).at_address(0);
    pmu_layout_inp_window_0_0_482_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_inp_window_1_0_485 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_1_0_485 = dram_layout_inp_window_1_0_485.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_1_0_485.set_vector_transposed(true);
    TensorLayout pmu_layout_inp_window_1_0_485_full = pmu_layout_inp_window_1_0_485.supertensor({1}).at_address(0);
    pmu_layout_inp_window_1_0_485_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_inp_window_1_0_486 = dram_layout_inp_window;
    TensorLayout pmu_layout_inp_window_1_0_486 = dram_layout_inp_window_1_0_486.with_logical_shape({60, 136}).vector_align().at_address(0);
    pmu_layout_inp_window_1_0_486.set_vector_transposed(true);
    TensorLayout pmu_layout_inp_window_1_0_486_full = pmu_layout_inp_window_1_0_486.supertensor({1}).at_address(0);
    pmu_layout_inp_window_1_0_486_full.set_vector_transposed(false);
    
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
    /// Input Group #30
    std::vector<PlasmaRegion> group_30_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_30;
    io_config_group_30.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_30.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_30.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_30.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_30 = add_plasma_input_group(plasma, group_30_tensors, io_config_group_30, "group_30");
    TensorLayout dram_layout_group_30 = group_30.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias = group_30.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_0_0_154 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_0_0_154 = group_30.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_0_0_154.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_1_0_190 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_1_0_190 = group_30.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_1_0_190.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias_2_0_267 = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias_2_0_267 = group_30.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias_2_0_267.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__bias;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor.vector_align().at_address(0);
    
    /// Input Group #5
    std::vector<PlasmaRegion> group_5_tensors {
        {{4080, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_5;
    io_config_group_5.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_5.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_5.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_5.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_5 = add_plasma_input_group(plasma, group_5_tensors, io_config_group_5, "group_5");
    TensorLayout dram_layout_group_5 = group_5.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight = group_5.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_0_0_153 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_0_0_153 = group_5.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_0_0_153.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_1_0_189 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_1_0_189 = group_5.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_1_0_189.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_1_0_638 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_1_0_638 = group_5.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_1_0_638.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight_2_0_261 = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight_2_0_261 = group_5.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight_2_0_261.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__weight;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for out_window
    PlasmaIOConfig io_config_out_window;
    io_config_out_window.conv = PhysicalLayout::kRowMajor;
    io_config_out_window.python_transforms.push_back(std::make_pair("", ""));
    io_config_out_window.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_out_window.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_out_window = add_plasma_input(plasma, {100, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_out_window, "out_window", {});
    dram_layout_out_window.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_out_window_0_0_483 = dram_layout_out_window;
    
    /// tile loading ....
    TensorLayout pmu_layout_out_window_0_0_483 = dram_layout_out_window_0_0_483.with_logical_shape({100, 6, 136}).at_address(0);
    TensorLayout pmu_layout_out_window_0_0_483_tile = dram_layout_out_window_0_0_483.with_logical_shape({100, 6, 136}).align({{-2,64}}).at_address(0);
    
    TensorLayout dram_layout_out_window_1_0_487 = dram_layout_out_window;
    TensorLayout pmu_layout_out_window_1_0_487 = dram_layout_out_window_1_0_487.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    pmu_layout_out_window_1_0_487.set_vector_transposed(false);
    TensorLayout pmu_layout_out_window_1_0_487_full = pmu_layout_out_window_1_0_487.supertensor({1}).at_address(0);
    pmu_layout_out_window_1_0_487_full.set_vector_transposed(false);
    
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
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad = add_plasma_input(plasma, {100, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0__grad, "ptconvlstm__view__outputs__0__grad", {});
    dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0__grad_1_0_484 = dram_layout_ptconvlstm__view__outputs__0__grad;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_484 = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_484.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_484.set_vector_transposed(false);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_484_full = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_484.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_484_full.set_vector_transposed(false);
    
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
    /// Input Group #31
    std::vector<PlasmaRegion> group_31_tensors {
        {{4080, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_31;
    io_config_group_31.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_31.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_31.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_31.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_31 = add_plasma_input_group(plasma, group_31_tensors, io_config_group_31, "group_31");
    TensorLayout dram_layout_group_31 = group_31.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum = group_31.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263 = group_31.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1.vector_align().at_address(0);
    
    /// Input Group #32
    std::vector<PlasmaRegion> group_32_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 136}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        ,
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_32;
    io_config_group_32.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_32.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_32.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_32.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_32.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_32.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_32.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_32.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_32 = add_plasma_input_group(plasma, group_32_tensors, io_config_group_32, "group_32");
    TensorLayout dram_layout_group_32 = group_32.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum = group_32.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269 = group_32.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum = group_32.dram_sub_layouts.at(1);
    dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275 = group_32.pmu_layouts.at(1);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum = group_32.dram_sub_layouts.at(2);
    dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281 = group_32.pmu_layouts.at(2);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum = group_32.dram_sub_layouts.at(3);
    dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287 = group_32.pmu_layouts.at(3);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum = group_32.dram_sub_layouts.at(4);
    dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293 = group_32.pmu_layouts.at(4);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {100, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490_full = pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496 = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_full = pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {100, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491_full = pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497 = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_full = pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {100, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492_full = pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498 = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_full = pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {100, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493_full = pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499 = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_full = pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd = add_plasma_input(plasma, {100, 64, 60}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd, "ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd", {});
    dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494.with_logical_shape({64, 60}).vector_align().at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494.set_vector_transposed(true);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494_full = pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494_full.set_vector_transposed(true);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500 = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500.with_logical_shape({64, 60}).vector_align().at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_full = pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_full.set_vector_transposed(true);
    
    /// DRAM and PMU layouts for ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs
    PlasmaIOConfig io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs = add_plasma_input(plasma, {101, 60, 64}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs, "ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs", {});
    dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    
    /// tile loading ....
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488.with_logical_shape({60, 64}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488.with_logical_shape({60, 64}).vector_align().at_address(0);
    
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    /// tile storing ....
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495.with_logical_shape({60, 64}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495.with_logical_shape({60, 64}).vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs;
    /// tile storing ....
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298 = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298.with_logical_shape({1, 60, 64}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298.with_logical_shape({1, 60, 64}).vector_align().at_address(0);
    /// Input Group #33
    std::vector<PlasmaRegion> group_33_tensors {
        {{4080, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_33;
    io_config_group_33.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_33.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_33.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_33.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_33.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_33 = add_plasma_input_group(plasma, group_33_tensors, io_config_group_33, "$OPT_dp_accum_group_9d34dcacdfc5e3740f57fe6b0875d64261f47893");
    TensorLayout dram_layout_group_33 = group_33.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad = group_33.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__weight__grad_2_0_262 = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_262 = group_33.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__weight__grad_2_0_262.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__weight__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor.vector_align().at_address(0);
    
    /// Input Group #34
    std::vector<PlasmaRegion> group_34_tensors {
        {{4080, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "ptconvlstm__dense_layer__bias__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_34;
    io_config_group_34.python_transforms.push_back(std::make_pair(".unsqueeze(1)", ".squeeze(1)"));
    io_config_group_34.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_34.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_34.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_34.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_34 = add_plasma_input_group(plasma, group_34_tensors, io_config_group_34, "$OPT_dp_accum_group_a3cd3e13b6b2b2b9cfe22b9b84a0c92ae1ec7594");
    TensorLayout dram_layout_group_34 = group_34.dram_layout;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad = group_34.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__dense_layer__bias__grad_2_0_268 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_268 = group_34.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__dense_layer__bias__grad_2_0_268.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__bias__grad;
    TensorLayout pmu_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1.vector_align().at_address(0);
    
    /// Input Group #20
    std::vector<PlasmaRegion> group_20_tensors {
        {{4, 64, 64}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__lstm_layer__weight_hh_l0__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_20;
    io_config_group_20.python_transforms.push_back(std::make_pair(".reshape([4, 64, 64])", ".reshape([256, 64])"));
    io_config_group_20.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_20.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_20.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_20.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_20 = add_plasma_input_group(plasma, group_20_tensors, io_config_group_20, "$OPT_dp_accum_group_94d02abd608aa5433bfcccf878420ca5f4b5066c");
    TensorLayout dram_layout_group_20 = group_20.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad = group_20.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280 = group_20.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.with_logical_shape({1, 64, 64});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303.vector_align().at_address(0);
    
    /// Input Group #21
    std::vector<PlasmaRegion> group_21_tensors {
        {{4, 64, 136}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__lstm_layer__weight_ih_l0__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_21;
    io_config_group_21.python_transforms.push_back(std::make_pair(".reshape([4, 64, 136])", ".reshape([256, 136])"));
    io_config_group_21.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_21.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_21.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_21.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_21 = add_plasma_input_group(plasma, group_21_tensors, io_config_group_21, "$OPT_dp_accum_group_0eda961c546461bd58f041ead3bc56c8f67b50b3");
    TensorLayout dram_layout_group_21 = group_21.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad = group_21.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274 = group_21.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.with_logical_shape({1, 64, 136});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307.vector_align().at_address(0);
    
    /// Input Group #22
    std::vector<PlasmaRegion> group_22_tensors {
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__lstm_layer__bias_hh_l0__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_22;
    io_config_group_22.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_group_22.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_22.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_22.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_22.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_22 = add_plasma_input_group(plasma, group_22_tensors, io_config_group_22, "$OPT_dp_accum_group_86e61cc4a8212b800c0c7af7a38d2d9017c0aa8b");
    TensorLayout dram_layout_group_22 = group_22.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad = group_22.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292 = group_22.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315.vector_align().at_address(0);
    
    /// Input Group #23
    std::vector<PlasmaRegion> group_23_tensors {
        {{4, 64, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kRowMajorVectorAligned,  "ptconvlstm__lstm_layer__bias_ih_l0__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_23;
    io_config_group_23.python_transforms.push_back(std::make_pair(".reshape([4, 64, 1])", ".reshape([256])"));
    io_config_group_23.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_23.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_23.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_23.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_23 = add_plasma_input_group(plasma, group_23_tensors, io_config_group_23, "$OPT_dp_accum_group_43ff72148ab72620ffba5b563e866a8cb56c7180");
    TensorLayout dram_layout_group_23 = group_23.dram_layout;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad = group_23.dram_sub_layouts.at(0);
    dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad;
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286 = group_23.pmu_layouts.at(0);
    pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286.set_vector_transposed(true);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310.vector_align().at_address(0);
    TensorLayout dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.with_logical_shape({1, 64, 1});
    TensorLayout pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for dummy_dp_accum_region_0
    PlasmaIOConfig io_config_dummy_dp_accum_region_0;
    io_config_dummy_dp_accum_region_0.conv = PhysicalLayout::kRowMajor;
    io_config_dummy_dp_accum_region_0.python_transforms.push_back(std::make_pair("", ""));
    io_config_dummy_dp_accum_region_0.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_dummy_dp_accum_region_0.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_dummy_dp_accum_region_0 = add_plasma_input(plasma, {16384}, node_constants::TemplateDataFormats::kBf16(), io_config_dummy_dp_accum_region_0, "dummy_dp_accum_region_0", {});
    dram_layout_dummy_dp_accum_region_0.symbol_handle()->die_id = std::nullopt;
    /// DRAM and PMU layouts for accum_dummy_0_reduce_buf
    PlasmaIOConfig io_config_accum_dummy_0_reduce_buf;
    io_config_accum_dummy_0_reduce_buf.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_accum_dummy_0_reduce_buf.python_transforms.push_back(std::make_pair("", ""));
    io_config_accum_dummy_0_reduce_buf.annotation = TensorSymbolAnnotation::kMarkReduceOperand;
    io_config_accum_dummy_0_reduce_buf.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_accum_dummy_0_reduce_buf.source_annotation = TensorSourceAnnotation::kCompilerGen;
    TensorLayout dram_layout_accum_dummy_0_reduce_buf = add_plasma_input(plasma, {262208}, node_constants::TemplateDataFormats::kBf16(), io_config_accum_dummy_0_reduce_buf, "accum_dummy_0_reduce_buf", {});
    dram_layout_accum_dummy_0_reduce_buf.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_accum_dummy_0_reduce_buf_3_0_812 = dram_layout_accum_dummy_0_reduce_buf.with_logical_shape({16384});
    TensorLayout pmu_layout_accum_dummy_0_reduce_buf_3_0_812 = dram_layout_accum_dummy_0_reduce_buf_3_0_812.with_logical_shape({8192}).vector_align().at_address(0);
    pmu_layout_accum_dummy_0_reduce_buf_3_0_812.set_vector_transposed(false);
    TensorLayout pmu_layout_accum_dummy_0_reduce_buf_3_0_812_full = pmu_layout_accum_dummy_0_reduce_buf_3_0_812.supertensor({}).at_address(0);
    pmu_layout_accum_dummy_0_reduce_buf_3_0_812_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for accum_dummy_0 (Group-Region) representing group 0
    TensorLayout dram_layout_accum_dummy_0 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {16384}).at_handle(dram_layout_dummy_dp_accum_region_0.symbol_handle());
    TensorLayout pmu_layout_accum_dummy_0 = dram_layout_accum_dummy_0.at_address(0);
    TensorLayout dram_layout_accum_dummy_0_3_0_811 = dram_layout_accum_dummy_0.with_logical_shape({16384});
    TensorLayout pmu_layout_accum_dummy_0_3_0_811 = dram_layout_accum_dummy_0_3_0_811.with_logical_shape({8192}).vector_align().at_address(0);
    pmu_layout_accum_dummy_0_3_0_811.set_vector_transposed(false);
    TensorLayout pmu_layout_accum_dummy_0_3_0_811_full = pmu_layout_accum_dummy_0_3_0_811.supertensor({}).at_address(0);
    pmu_layout_accum_dummy_0_3_0_811_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_accum_dummy_0_3_0_815 = dram_layout_accum_dummy_0.with_logical_shape({16384});
    TensorLayout pmu_layout_accum_dummy_0_3_0_815 = dram_layout_accum_dummy_0_3_0_815.with_logical_shape({8192}).vector_align().at_address(0);
    TensorLayout pmu_layout_accum_dummy_0_3_0_815_full = pmu_layout_accum_dummy_0_3_0_815.supertensor({}).at_address(0);
    pmu_layout_accum_dummy_0_3_0_815_full.set_vector_transposed(false);
    
    
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
    TensorLayout dram_layout_ptconvlstm__view__outputs__0 = add_plasma_output(plasma, {100, 30, 136}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__view__outputs__0, "ptconvlstm__view__outputs__0", {});
    dram_layout_ptconvlstm__view__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_ptconvlstm__view__outputs__0_0_0_501 = dram_layout_ptconvlstm__view__outputs__0;
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_501 = dram_layout_ptconvlstm__view__outputs__0_0_0_501.with_logical_shape({30, 136}).align({{-2,64}}).at_address(0);
    TensorLayout pmu_layout_ptconvlstm__view__outputs__0_0_0_501_full = pmu_layout_ptconvlstm__view__outputs__0_0_0_501.supertensor({1}).at_address(0);
    pmu_layout_ptconvlstm__view__outputs__0_0_0_501_full.set_vector_transposed(false);
    
    
    /// DRAM and PMU layouts for ptconvlstm__criterion__mseloss__outputs__0
    PlasmaIOConfig io_config_ptconvlstm__criterion__mseloss__outputs__0;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_ptconvlstm__criterion__mseloss__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_ptconvlstm__criterion__mseloss__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_ptconvlstm__criterion__mseloss__outputs__0 = add_plasma_output(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_ptconvlstm__criterion__mseloss__outputs__0, "ptconvlstm__criterion__mseloss__outputs__0", {});
    dram_layout_ptconvlstm__criterion__mseloss__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout__tensor = dram_layout_ptconvlstm__criterion__mseloss__outputs__0;
    TensorLayout pmu_layout__tensor = dram_layout__tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for _OPT_dp_accum_group_94d02abd608aa5433bfcccf878420ca5f4b5066c (Group-Region) representing group 20
    TensorLayout dram_layout__OPT_dp_accum_group_94d02abd608aa5433bfcccf878420ca5f4b5066c = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {16384}).at_handle(dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_94d02abd608aa5433bfcccf878420ca5f4b5066c = dram_layout__OPT_dp_accum_group_94d02abd608aa5433bfcccf878420ca5f4b5066c.at_address(0);
    /// DRAM and PMU layouts for _OPT_dp_accum_group_0eda961c546461bd58f041ead3bc56c8f67b50b3 (Group-Region) representing group 21
    TensorLayout dram_layout__OPT_dp_accum_group_0eda961c546461bd58f041ead3bc56c8f67b50b3 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {40960}).at_handle(dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_0eda961c546461bd58f041ead3bc56c8f67b50b3 = dram_layout__OPT_dp_accum_group_0eda961c546461bd58f041ead3bc56c8f67b50b3.at_address(0);
    /// DRAM and PMU layouts for _OPT_dp_accum_group_86e61cc4a8212b800c0c7af7a38d2d9017c0aa8b (Group-Region) representing group 22
    TensorLayout dram_layout__OPT_dp_accum_group_86e61cc4a8212b800c0c7af7a38d2d9017c0aa8b = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {8192}).at_handle(dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_86e61cc4a8212b800c0c7af7a38d2d9017c0aa8b = dram_layout__OPT_dp_accum_group_86e61cc4a8212b800c0c7af7a38d2d9017c0aa8b.at_address(0);
    /// DRAM and PMU layouts for _OPT_dp_accum_group_43ff72148ab72620ffba5b563e866a8cb56c7180 (Group-Region) representing group 23
    TensorLayout dram_layout__OPT_dp_accum_group_43ff72148ab72620ffba5b563e866a8cb56c7180 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {8192}).at_handle(dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_43ff72148ab72620ffba5b563e866a8cb56c7180 = dram_layout__OPT_dp_accum_group_43ff72148ab72620ffba5b563e866a8cb56c7180.at_address(0);
    /// DRAM and PMU layouts for _OPT_dp_accum_group_9d34dcacdfc5e3740f57fe6b0875d64261f47893 (Group-Region) representing group 33
    TensorLayout dram_layout__OPT_dp_accum_group_9d34dcacdfc5e3740f57fe6b0875d64261f47893 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {262144}).at_handle(dram_layout_ptconvlstm__dense_layer__weight__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_9d34dcacdfc5e3740f57fe6b0875d64261f47893 = dram_layout__OPT_dp_accum_group_9d34dcacdfc5e3740f57fe6b0875d64261f47893.at_address(0);
    /// DRAM and PMU layouts for _OPT_dp_accum_group_a3cd3e13b6b2b2b9cfe22b9b84a0c92ae1ec7594 (Group-Region) representing group 34
    TensorLayout dram_layout__OPT_dp_accum_group_a3cd3e13b6b2b2b9cfe22b9b84a0c92ae1ec7594 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {4096}).at_handle(dram_layout_ptconvlstm__dense_layer__bias__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_a3cd3e13b6b2b2b9cfe22b9b84a0c92ae1ec7594 = dram_layout__OPT_dp_accum_group_a3cd3e13b6b2b2b9cfe22b9b84a0c92ae1ec7594.at_address(0);
    
    /** Add Plasma Outputs References **/
    
    
    
    
    
    /** Section Calls **/
    plasma.workspace().add_section_call(0, {
        {
            {dram_layout_lstm_operand_0.symbol_handle(), true}            ,
            {dram_layout_lstm_operand_1.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1.symbol_handle(), true}            ,
            {dram_layout_group_5.symbol_handle(), true}            ,
            {dram_layout_group_30.symbol_handle(), true}            ,
            {dram_layout_inp_window.symbol_handle(), true}            ,
            {dram_layout_group_29.symbol_handle(), true}            ,
            {dram_layout_group_28.symbol_handle(), true}            ,
            {dram_layout_group_27.symbol_handle(), true}            ,
            {dram_layout_group_26.symbol_handle(), true}            ,
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
            {dram_layout_group_5.symbol_handle(), true}            ,
            {dram_layout_group_30.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__view__outputs__0__grad.symbol_handle(), true}            ,
            {dram_layout_inp_window.symbol_handle(), true}            ,
            {dram_layout_group_29.symbol_handle(), true}            ,
            {dram_layout_group_28.symbol_handle(), true}            ,
            {dram_layout_group_27.symbol_handle(), true}            ,
            {dram_layout_group_26.symbol_handle(), true}            ,
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
            {dram_layout_group_5.symbol_handle(), true}            ,
            {dram_layout_group_33.symbol_handle(), true}            ,
            {dram_layout_group_31.symbol_handle(), true}            ,
            {dram_layout_group_30.symbol_handle(), true}            ,
            {dram_layout_group_34.symbol_handle(), true}            ,
            {dram_layout_group_32.symbol_handle(), true}            ,
            {dram_layout_group_29.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_28.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_27.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_26.symbol_handle(), true}            ,
            {dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad.symbol_handle(), true}            ,
            {dram_layout_group_5.symbol_handle(), false}            ,
            {dram_layout_group_31.symbol_handle(), false}            ,
            {dram_layout_group_30.symbol_handle(), false}            ,
            {dram_layout_group_32.symbol_handle(), false}            ,
            {dram_layout_group_29.symbol_handle(), false}            ,
            {dram_layout_group_28.symbol_handle(), false}            ,
            {dram_layout_group_27.symbol_handle(), false}            ,
            {dram_layout_group_26.symbol_handle(), false}            
        }        
        }, true);
    plasma.workspace().add_section_call(3, {}, true, true);
    
    /** Instantiate Node **/
    arc::LogregTorchSamba::Params params;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_531 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_531;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_532 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_532;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_533 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_533;
    params.ptconvlstm__lstm_layer__bias_hh_l0_0_0_534 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_0_0_534;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_598 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_598;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_599 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_599;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_600 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_600;
    params.ptconvlstm__lstm_layer__bias_hh_l0_1_0_601 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_1_0_601;
    params.ptconvlstm__lstm_layer__bias_hh_l0_2_0_291 = pmu_layout_ptconvlstm__lstm_layer__bias_hh_l0_2_0_291;
    params.ptconvlstm__lstm_layer__bias_hh_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_527 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_527;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_528 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_528;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_529 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_529;
    params.ptconvlstm__lstm_layer__bias_ih_l0_0_0_530 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_0_0_530;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_594 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_594;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_595 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_595;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_596 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_596;
    params.ptconvlstm__lstm_layer__bias_ih_l0_1_0_597 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_1_0_597;
    params.ptconvlstm__lstm_layer__bias_ih_l0_2_0_285 = pmu_layout_ptconvlstm__lstm_layer__bias_ih_l0_2_0_285;
    params.ptconvlstm__lstm_layer__bias_ih_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_523 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_523;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_524 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_524;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_525 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_525;
    params.ptconvlstm__lstm_layer__weight_hh_l0_0_0_526 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_0_0_526;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_590 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_590;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_591 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_591;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_592 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_592;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_593 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_593;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_757 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_757;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_771 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_771;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_785 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_785;
    params.ptconvlstm__lstm_layer__weight_hh_l0_1_0_799 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_1_0_799;
    params.ptconvlstm__lstm_layer__weight_hh_l0_2_0_279 = pmu_layout_ptconvlstm__lstm_layer__weight_hh_l0_2_0_279;
    params.ptconvlstm__lstm_layer__weight_hh_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_519 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_519;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_520 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_520;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_521 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_521;
    params.ptconvlstm__lstm_layer__weight_ih_l0_0_0_522 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_0_0_522;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_586 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_586;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_587 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_587;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_588 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_588;
    params.ptconvlstm__lstm_layer__weight_ih_l0_1_0_589 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_1_0_589;
    params.ptconvlstm__lstm_layer__weight_ih_l0_2_0_273 = pmu_layout_ptconvlstm__lstm_layer__weight_ih_l0_2_0_273;
    params.ptconvlstm__lstm_layer__weight_ih_l0_dram_in = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0;
    params.lstm_operand_1_0_0_125 = pmu_layout_lstm_operand_1_0_0_125;
    params.lstm_operand_1_1_0_170 = pmu_layout_lstm_operand_1_1_0_170;
    params.lstm_operand_1_dram_in = dram_layout_lstm_operand_1;
    params.lstm_operand_0_0_0_122 = pmu_layout_lstm_operand_0_0_0_122;
    params.lstm_operand_0_1_0_167 = pmu_layout_lstm_operand_0_1_0_167;
    params.lstm_operand_0_dram_in = dram_layout_lstm_operand_0;
    params.inp_window_0_0_482 = pmu_layout_inp_window_0_0_482;
    params.inp_window_1_0_485 = pmu_layout_inp_window_1_0_485;
    params.inp_window_1_0_486 = pmu_layout_inp_window_1_0_486;
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
    params.ptconvlstm__dense_layer__weight_1_0_638 = pmu_layout_ptconvlstm__dense_layer__weight_1_0_638;
    params.ptconvlstm__dense_layer__weight_2_0_261 = pmu_layout_ptconvlstm__dense_layer__weight_2_0_261;
    params.ptconvlstm__dense_layer__weight_dram_in = dram_layout_ptconvlstm__dense_layer__weight;
    params.out_window_0_0_483 = pmu_layout_out_window_0_0_483_tile;
    params.out_window_1_0_487 = pmu_layout_out_window_1_0_487;
    params.out_window_dram_in = dram_layout_out_window;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195 = pmu_layout_ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
    params.ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in = dram_layout_ptconvlstm__criterion__mseloss__outputs__0__grad;
    params.ptconvlstm__view__outputs__0__grad_1_0_484 = pmu_layout_ptconvlstm__view__outputs__0__grad_1_0_484;
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
    params.ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490 = pmu_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490;
    params.ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491 = pmu_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491;
    params.ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492 = pmu_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492;
    params.ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493 = pmu_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493;
    params.ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494 = pmu_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494;
    params.ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd;
    params.ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488 = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile;
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
    params.dummy_dp_accum_region_0_dram_in = dram_layout_dummy_dp_accum_region_0;
    params.accum_dummy_0_3_0_811 = pmu_layout_accum_dummy_0_3_0_811;
    params.accum_dummy_0_dram_in = dram_layout_accum_dummy_0;
    params.accum_dummy_0_reduce_buf_3_0_812 = pmu_layout_accum_dummy_0_reduce_buf_3_0_812;
    params.accum_dummy_0_reduce_buf_dram_in = dram_layout_accum_dummy_0_reduce_buf;
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
    params.dummy_dp_accum_region_0_dram_out = dram_layout_dummy_dp_accum_region_0;
    params.accum_dummy_0_dram_out = dram_layout_accum_dummy_0;
    
    
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
            /// Load Group #2            
            FrontingPmu::Params fronting_pmu_load_group_2_params;
            fronting_pmu_load_group_2_params.dram_layout_all = dram_layout_lstm_operand_0_0_0_122;
            fronting_pmu_load_group_2_params.vag_group_id = 0;
            fronting_pmu_load_group_2_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_890));
            auto *fronting_pmu_load_group_2 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_2", partition_parent, &section_plasma, fronting_pmu_load_group_2_params);
            fronting_pmu_load_group_2->configure_node();
            fronting_pmu_load_group_2->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #35            
            FrontingPmu::Params fronting_pmu_load_group_35_params;
            fronting_pmu_load_group_35_params.dram_layout_all = dram_layout_lstm_operand_1_0_0_125;
            fronting_pmu_load_group_35_params.vag_group_id = 0;
            fronting_pmu_load_group_35_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_827));
            auto *fronting_pmu_load_group_35 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_35", partition_parent, &section_plasma, fronting_pmu_load_group_35_params);
            fronting_pmu_load_group_35->configure_node();
            fronting_pmu_load_group_35->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #36            
            FrontingPmu::Params fronting_pmu_load_group_36_params;
            fronting_pmu_load_group_36_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149;
            fronting_pmu_load_group_36_params.vag_group_id = 0;
            fronting_pmu_load_group_36_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::krbuf1u_0_0_335));
            auto *fronting_pmu_load_group_36 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_36", partition_parent, &section_plasma, fronting_pmu_load_group_36_params);
            fronting_pmu_load_group_36->configure_node();
            fronting_pmu_load_group_36->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #5            
            FrontingPmu::Params fronting_pmu_load_group_5_params;
            fronting_pmu_load_group_5_params.dram_layout_all = dram_layout_group_5;
            std::vector<BufferNode *> gbufs_load_group_5 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_0_0_153)                
            };
            fronting_pmu_load_group_5_params.static_buffers = gbufs_load_group_5;
            fronting_pmu_load_group_5_params.atom_transpose = false;
            auto *fronting_pmu_load_group_5 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_5", partition_parent, &section_plasma, fronting_pmu_load_group_5_params);
            fronting_pmu_load_group_5->configure_node();
            fronting_pmu_load_group_5->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #30            
            FrontingPmu::Params fronting_pmu_load_group_30_params;
            fronting_pmu_load_group_30_params.dram_layout_all = dram_layout_group_30;
            std::vector<BufferNode *> gbufs_load_group_30 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_0_0_154)                
            };
            fronting_pmu_load_group_30_params.static_buffers = gbufs_load_group_30;
            fronting_pmu_load_group_30_params.atom_transpose = false;
            auto *fronting_pmu_load_group_30 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_30", partition_parent, &section_plasma, fronting_pmu_load_group_30_params);
            fronting_pmu_load_group_30->configure_node();
            fronting_pmu_load_group_30->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #37            
            FrontingPmu::Params fronting_pmu_load_group_37_params;
            fronting_pmu_load_group_37_params.dram_layout_all = dram_layout_inp_window_0_0_482;
            fronting_pmu_load_group_37_params.vag_group_id = 0;
            fronting_pmu_load_group_37_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf4a_0_0_828));
            auto *fronting_pmu_load_group_37 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_37", partition_parent, &section_plasma, fronting_pmu_load_group_37_params);
            fronting_pmu_load_group_37->configure_node();
            fronting_pmu_load_group_37->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #29            
            FrontingPmu::Params fronting_pmu_load_group_29_params;
            fronting_pmu_load_group_29_params.dram_layout_all = dram_layout_group_29;
            std::vector<BufferNode *> gbufs_load_group_29 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_519)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_520)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_521)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_0_0_522)                
            };
            fronting_pmu_load_group_29_params.static_buffers = gbufs_load_group_29;
            fronting_pmu_load_group_29_params.atom_transpose = false;
            auto *fronting_pmu_load_group_29 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_29", partition_parent, &section_plasma, fronting_pmu_load_group_29_params);
            fronting_pmu_load_group_29->configure_node();
            fronting_pmu_load_group_29->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #28            
            FrontingPmu::Params fronting_pmu_load_group_28_params;
            fronting_pmu_load_group_28_params.dram_layout_all = dram_layout_group_28;
            std::vector<BufferNode *> gbufs_load_group_28 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_523)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_524)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_525)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_0_0_526)                
            };
            fronting_pmu_load_group_28_params.static_buffers = gbufs_load_group_28;
            fronting_pmu_load_group_28_params.atom_transpose = false;
            auto *fronting_pmu_load_group_28 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_28", partition_parent, &section_plasma, fronting_pmu_load_group_28_params);
            fronting_pmu_load_group_28->configure_node();
            fronting_pmu_load_group_28->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_group_27;
            std::vector<BufferNode *> gbufs_load_group_27 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_527)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_528)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_529)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_0_0_530)                
            };
            fronting_pmu_load_group_27_params.static_buffers = gbufs_load_group_27;
            fronting_pmu_load_group_27_params.atom_transpose = false;
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #26            
            FrontingPmu::Params fronting_pmu_load_group_26_params;
            fronting_pmu_load_group_26_params.dram_layout_all = dram_layout_group_26;
            std::vector<BufferNode *> gbufs_load_group_26 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_531)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_532)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_533)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_0_0_534)                
            };
            fronting_pmu_load_group_26_params.static_buffers = gbufs_load_group_26;
            fronting_pmu_load_group_26_params.atom_transpose = false;
            auto *fronting_pmu_load_group_26 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_26", partition_parent, &section_plasma, fronting_pmu_load_group_26_params);
            fronting_pmu_load_group_26->configure_node();
            fronting_pmu_load_group_26->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #48            
            
            /// tile loading ....
            LoadTiler::Params out_window_0_0_483_tile_params;
            out_window_0_0_483_tile_params.image_layout = dram_layout_out_window_0_0_483;
            out_window_0_0_483_tile_params.tile_layout = pmu_layout_out_window_0_0_483_tile;
            out_window_0_0_483_tile_params.conv_align = true;
            out_window_0_0_483_tile_params.strides = std::vector<int64_t>{};
            out_window_0_0_483_tile_params.start_border = std::vector<size_t>{};
            out_window_0_0_483_tile_params.end_border = std::vector<size_t>{};
            out_window_0_0_483_tile_params.dimension_ordering = std::vector<size_t>{};
            out_window_0_0_483_tile_params.buffer_nodes.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_936));
            LoadTiler* out_window_0_0_483_tiler =  section_plasma.create_node<LoadTiler>("out_window_0_0_483_tiler", partition_parent, &section_plasma, out_window_0_0_483_tile_params);
            out_window_0_0_483_tiler->configure_node();
            out_window_0_0_483_tiler->configure_dram_load(loads);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 5);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// storing tile ...
            StoreTiler::Params ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.output_tensor_shape = std::vector<size_t>{101, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.input_tile_layout = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.strides = std::vector<int64_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.start_border= std::vector<size_t>{1, 0, 0};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.end_border= std::vector<size_t>{101, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.dimension_ordering = std::vector<size_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.store_with_zero_fill = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.conv_align = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.read_modify_write = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.g_buffer= ((GBuffer*)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_837));
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params.fill_region_layout = &dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495;
            StoreTiler* ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler =  section_plasma.create_node<StoreTiler>("ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler", partition_parent, &section_plasma, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tile_params);
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler->configure_node();
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler->finalize();
            if(ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler->use_list_buffer()){
                ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler->configure_list_buffer_dram_load(loads);
                loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            } 
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495_tiler->configure_dram_store(stores);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #39;
            BackingPmu::Params backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_params;
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_params.host_fifo_use = false;
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496;
            auto buffer_node_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_831));
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496;
            auto *backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496", partition_parent, &section_plasma, backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496_params);
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496->configure_node();
            backing_pmu_group_39_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #40;
            BackingPmu::Params backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_params;
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_params.host_fifo_use = false;
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497;
            auto buffer_node_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_832));
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497;
            auto *backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497", partition_parent, &section_plasma, backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497_params);
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497->configure_node();
            backing_pmu_group_40_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #41;
            BackingPmu::Params backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_params;
            backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_params.host_fifo_use = false;
            backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498;
            auto buffer_node_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_833));
            backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498;
            auto *backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498", partition_parent, &section_plasma, backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498_params);
            backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498->configure_node();
            backing_pmu_group_41_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #42;
            BackingPmu::Params backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_params;
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_params.host_fifo_use = false;
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499;
            auto buffer_node_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_834));
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499;
            auto *backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499", partition_parent, &section_plasma, backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499_params);
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499->configure_node();
            backing_pmu_group_42_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #43;
            BackingPmu::Params backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_params;
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_params.host_fifo_use = false;
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500;
            auto buffer_node_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_830));
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500;
            auto *backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500", partition_parent, &section_plasma, backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500_params);
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500->configure_node();
            backing_pmu_group_43_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #44;
            BackingPmu::Params backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501_params;
            backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501_params.host_fifo_use = false;
            backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0_0_0_501;
            auto buffer_node_ptconvlstm__view__outputs__0_0_0_501 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_0_0_838));
            backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501_params.buffer_node = buffer_node_ptconvlstm__view__outputs__0_0_0_501;
            auto *backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501", partition_parent, &section_plasma, backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501_params);
            backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501->configure_node();
            backing_pmu_group_44_ptconvlstm__view__outputs__0_0_0_501->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            /// Store Group #45;
            BackingPmu::Params backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor_params;
            backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor_params.host_fifo_use = false;
            backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm_tensor;
            auto buffer_node_ptconvlstm__lstm_layer__lstm_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_839));
            backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm_tensor;
            auto *backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor", partition_parent, &section_plasma, backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor_params);
            backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor->configure_node();
            backing_pmu_group_45_ptconvlstm__lstm_layer__lstm_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #46;
            BackingPmu::Params backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1_params;
            backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1_params.host_fifo_use = false;
            backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm_tensor1;
            auto buffer_node_ptconvlstm__lstm_layer__lstm_tensor1 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_840));
            backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__lstm_tensor1;
            auto *backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1 = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1", partition_parent, &section_plasma, backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1_params);
            backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1->configure_node();
            backing_pmu_group_46_ptconvlstm__lstm_layer__lstm_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// storing tile ...
            StoreTiler::Params ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.output_tensor_shape = std::vector<size_t>{101, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.input_tile_layout = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.strides = std::vector<int64_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.start_border= std::vector<size_t>{0, 0, 0};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.end_border= std::vector<size_t>{1, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.dimension_ordering = std::vector<size_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.store_with_zero_fill = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.conv_align = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.read_modify_write = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298_tile_params.g_buffer= ((GBuffer*)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_826));
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
            
            /// Store Group #49;
            BackingPmu::Params backing_pmu_group_49__tensor_params;
            backing_pmu_group_49__tensor_params.host_fifo_use = false;
            backing_pmu_group_49__tensor_params.dram_layout_all = dram_layout__tensor;
            auto buffer_node__tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_841));
            backing_pmu_group_49__tensor_params.buffer_node = buffer_node__tensor;
            auto *backing_pmu_group_49__tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_49__tensor", partition_parent, &section_plasma, backing_pmu_group_49__tensor_params);
            backing_pmu_group_49__tensor->configure_node();
            backing_pmu_group_49__tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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
            /// Load Group #50            
            FrontingPmu::Params fronting_pmu_load_group_50_params;
            fronting_pmu_load_group_50_params.dram_layout_all = dram_layout_lstm_operand_0_1_0_167;
            fronting_pmu_load_group_50_params.vag_group_id = 0;
            fronting_pmu_load_group_50_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_842));
            auto *fronting_pmu_load_group_50 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_50", partition_parent, &section_plasma, fronting_pmu_load_group_50_params);
            fronting_pmu_load_group_50->configure_node();
            fronting_pmu_load_group_50->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #51            
            FrontingPmu::Params fronting_pmu_load_group_51_params;
            fronting_pmu_load_group_51_params.dram_layout_all = dram_layout_lstm_operand_1_1_0_170;
            fronting_pmu_load_group_51_params.vag_group_id = 0;
            fronting_pmu_load_group_51_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_843));
            auto *fronting_pmu_load_group_51 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_51", partition_parent, &section_plasma, fronting_pmu_load_group_51_params);
            fronting_pmu_load_group_51->configure_node();
            fronting_pmu_load_group_51->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #52            
            FrontingPmu::Params fronting_pmu_load_group_52_params;
            fronting_pmu_load_group_52_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185;
            fronting_pmu_load_group_52_params.vag_group_id = 0;
            fronting_pmu_load_group_52_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::krbuf1u_1_0_402));
            auto *fronting_pmu_load_group_52 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_52", partition_parent, &section_plasma, fronting_pmu_load_group_52_params);
            fronting_pmu_load_group_52->configure_node();
            fronting_pmu_load_group_52->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #5            
            FrontingPmu::Params fronting_pmu_load_group_5_params;
            fronting_pmu_load_group_5_params.dram_layout_all = dram_layout_group_5;
            std::vector<BufferNode *> gbufs_load_group_5 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_1_0_189)                
            };
            fronting_pmu_load_group_5_params.static_buffers = gbufs_load_group_5;
            fronting_pmu_load_group_5_params.atom_transpose = false;
            auto *fronting_pmu_load_group_5 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_5", partition_parent, &section_plasma, fronting_pmu_load_group_5_params);
            fronting_pmu_load_group_5->configure_node();
            fronting_pmu_load_group_5->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #30            
            FrontingPmu::Params fronting_pmu_load_group_30_params;
            fronting_pmu_load_group_30_params.dram_layout_all = dram_layout_group_30;
            std::vector<BufferNode *> gbufs_load_group_30 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_1_0_190)                
            };
            fronting_pmu_load_group_30_params.static_buffers = gbufs_load_group_30;
            fronting_pmu_load_group_30_params.atom_transpose = false;
            auto *fronting_pmu_load_group_30 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_30", partition_parent, &section_plasma, fronting_pmu_load_group_30_params);
            fronting_pmu_load_group_30->configure_node();
            fronting_pmu_load_group_30->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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
            
            /// Load Group #53            
            FrontingPmu::Params fronting_pmu_load_group_53_params;
            fronting_pmu_load_group_53_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217;
            fronting_pmu_load_group_53_params.vag_group_id = 0;
            fronting_pmu_load_group_53_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_844));
            auto *fronting_pmu_load_group_53 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_53", partition_parent, &section_plasma, fronting_pmu_load_group_53_params);
            fronting_pmu_load_group_53->configure_node();
            fronting_pmu_load_group_53->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #54            
            FrontingPmu::Params fronting_pmu_load_group_54_params;
            fronting_pmu_load_group_54_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220;
            fronting_pmu_load_group_54_params.vag_group_id = 0;
            fronting_pmu_load_group_54_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_845));
            auto *fronting_pmu_load_group_54 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_54", partition_parent, &section_plasma, fronting_pmu_load_group_54_params);
            fronting_pmu_load_group_54->configure_node();
            fronting_pmu_load_group_54->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #55            
            FrontingPmu::Params fronting_pmu_load_group_55_params;
            fronting_pmu_load_group_55_params.dram_layout_all = dram_layout_ptconvlstm__view__outputs__0__grad_1_0_484;
            fronting_pmu_load_group_55_params.vag_group_id = 0;
            fronting_pmu_load_group_55_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf4u_1_0_419));
            auto *fronting_pmu_load_group_55 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_55", partition_parent, &section_plasma, fronting_pmu_load_group_55_params);
            fronting_pmu_load_group_55->configure_node();
            fronting_pmu_load_group_55->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #56            
            FrontingPmu::Params fronting_pmu_load_group_56_params;
            fronting_pmu_load_group_56_params.dram_layout_all = dram_layout_inp_window_1_0_485;
            fronting_pmu_load_group_56_params.vag_group_id = 0;
            fronting_pmu_load_group_56_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf4a_1_0_846));
            auto *fronting_pmu_load_group_56 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_56", partition_parent, &section_plasma, fronting_pmu_load_group_56_params);
            fronting_pmu_load_group_56->configure_node();
            fronting_pmu_load_group_56->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #29            
            FrontingPmu::Params fronting_pmu_load_group_29_params;
            fronting_pmu_load_group_29_params.dram_layout_all = dram_layout_group_29;
            std::vector<BufferNode *> gbufs_load_group_29 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_586)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_587)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_588)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_1_0_589)                
            };
            fronting_pmu_load_group_29_params.static_buffers = gbufs_load_group_29;
            fronting_pmu_load_group_29_params.atom_transpose = false;
            auto *fronting_pmu_load_group_29 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_29", partition_parent, &section_plasma, fronting_pmu_load_group_29_params);
            fronting_pmu_load_group_29->configure_node();
            fronting_pmu_load_group_29->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #28            
            FrontingPmu::Params fronting_pmu_load_group_28_params;
            fronting_pmu_load_group_28_params.dram_layout_all = dram_layout_group_28;
            std::vector<BufferNode *> gbufs_load_group_28 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_590)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_591)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_592)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_593)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_757)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_771)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_785)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_1_0_799)                
            };
            fronting_pmu_load_group_28_params.static_buffers = gbufs_load_group_28;
            fronting_pmu_load_group_28_params.atom_transpose = false;
            auto *fronting_pmu_load_group_28 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_28", partition_parent, &section_plasma, fronting_pmu_load_group_28_params);
            fronting_pmu_load_group_28->configure_node();
            fronting_pmu_load_group_28->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_group_27;
            std::vector<BufferNode *> gbufs_load_group_27 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_594)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_595)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_596)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_1_0_597)                
            };
            fronting_pmu_load_group_27_params.static_buffers = gbufs_load_group_27;
            fronting_pmu_load_group_27_params.atom_transpose = false;
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #26            
            FrontingPmu::Params fronting_pmu_load_group_26_params;
            fronting_pmu_load_group_26_params.dram_layout_all = dram_layout_group_26;
            std::vector<BufferNode *> gbufs_load_group_26 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_598)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_599)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_600)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_1_0_601)                
            };
            fronting_pmu_load_group_26_params.static_buffers = gbufs_load_group_26;
            fronting_pmu_load_group_26_params.atom_transpose = false;
            auto *fronting_pmu_load_group_26 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_26", partition_parent, &section_plasma, fronting_pmu_load_group_26_params);
            fronting_pmu_load_group_26->configure_node();
            fronting_pmu_load_group_26->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #57            
            FrontingPmu::Params fronting_pmu_load_group_57_params;
            fronting_pmu_load_group_57_params.dram_layout_all = dram_layout_out_window_1_0_487;
            fronting_pmu_load_group_57_params.vag_group_id = 0;
            fronting_pmu_load_group_57_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf4u_1_0_399));
            auto *fronting_pmu_load_group_57 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_57", partition_parent, &section_plasma, fronting_pmu_load_group_57_params);
            fronting_pmu_load_group_57->configure_node();
            fronting_pmu_load_group_57->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #58            
            FrontingPmu::Params fronting_pmu_load_group_58_params;
            fronting_pmu_load_group_58_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__weight_1_0_638;
            fronting_pmu_load_group_58_params.vag_group_id = 0;
            fronting_pmu_load_group_58_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_851));
            auto *fronting_pmu_load_group_58 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_58", partition_parent, &section_plasma, fronting_pmu_load_group_58_params);
            fronting_pmu_load_group_58->configure_node();
            fronting_pmu_load_group_58->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kInitGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #59            
            FrontingPmu::Params fronting_pmu_load_group_59_params;
            fronting_pmu_load_group_59_params.dram_layout_all = dram_layout_inp_window_1_0_486;
            fronting_pmu_load_group_59_params.vag_group_id = 0;
            fronting_pmu_load_group_59_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf4u_1_0_440));
            auto *fronting_pmu_load_group_59 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_59", partition_parent, &section_plasma, fronting_pmu_load_group_59_params);
            fronting_pmu_load_group_59->configure_node();
            fronting_pmu_load_group_59->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/100);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #60            
            FrontingPmu::Params fronting_pmu_load_group_60_params;
            fronting_pmu_load_group_60_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490;
            fronting_pmu_load_group_60_params.vag_group_id = 0;
            fronting_pmu_load_group_60_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf3u_1_0_443));
            auto *fronting_pmu_load_group_60 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_60", partition_parent, &section_plasma, fronting_pmu_load_group_60_params);
            fronting_pmu_load_group_60->configure_node();
            fronting_pmu_load_group_60->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/100);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #61            
            FrontingPmu::Params fronting_pmu_load_group_61_params;
            fronting_pmu_load_group_61_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491;
            fronting_pmu_load_group_61_params.vag_group_id = 0;
            fronting_pmu_load_group_61_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf3u_1_0_445));
            auto *fronting_pmu_load_group_61 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_61", partition_parent, &section_plasma, fronting_pmu_load_group_61_params);
            fronting_pmu_load_group_61->configure_node();
            fronting_pmu_load_group_61->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/100);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #62            
            FrontingPmu::Params fronting_pmu_load_group_62_params;
            fronting_pmu_load_group_62_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492;
            fronting_pmu_load_group_62_params.vag_group_id = 0;
            fronting_pmu_load_group_62_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf3u_1_0_447));
            auto *fronting_pmu_load_group_62 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_62", partition_parent, &section_plasma, fronting_pmu_load_group_62_params);
            fronting_pmu_load_group_62->configure_node();
            fronting_pmu_load_group_62->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/100);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #63            
            FrontingPmu::Params fronting_pmu_load_group_63_params;
            fronting_pmu_load_group_63_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493;
            fronting_pmu_load_group_63_params.vag_group_id = 0;
            fronting_pmu_load_group_63_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf3u_1_0_449));
            auto *fronting_pmu_load_group_63 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_63", partition_parent, &section_plasma, fronting_pmu_load_group_63_params);
            fronting_pmu_load_group_63->configure_node();
            fronting_pmu_load_group_63->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/100);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #64            
            FrontingPmu::Params fronting_pmu_load_group_64_params;
            fronting_pmu_load_group_64_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494;
            fronting_pmu_load_group_64_params.vag_group_id = 0;
            fronting_pmu_load_group_64_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf3u_1_0_451));
            auto *fronting_pmu_load_group_64 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_64", partition_parent, &section_plasma, fronting_pmu_load_group_64_params);
            fronting_pmu_load_group_64->configure_node();
            fronting_pmu_load_group_64->configure_dram_load(loads, false, /*multi_reverse*/true, /*multi_reverse_group_size*/100);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            loads.back().is_lut = false;
            
            /// Load Group #65            
            
            /// tile loading ....
            LoadTiler::Params ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.image_layout = dram_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.tile_layout = pmu_layout_ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.conv_align = false;
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.strides = std::vector<int64_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.start_border = std::vector<size_t>{0, 0, 0};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.end_border = std::vector<size_t>{100, 60, 64};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.dimension_ordering = std::vector<size_t>{};
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.buffer_nodes.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_1_0_938));
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params.reverse_traverse = true;
            LoadTiler* ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tiler =  section_plasma.create_node<LoadTiler>("ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tiler", partition_parent, &section_plasma, ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tile_params);
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tiler->configure_node();
            ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488_tiler->configure_dram_load(loads);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 100);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #66;
            BackingPmu::Params backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params;
            backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.host_fifo_use = false;
            backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            auto buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__dense_layer__linear_bwd_weight_accum));
            backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params.buffer_node = buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor;
            auto *backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor", partition_parent, &section_plasma, backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor_params);
            backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor->configure_node();
            backing_pmu_group_66_ptconvlstm__dense_layer__linear_bwd_weight_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #67;
            BackingPmu::Params backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params;
            backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.host_fifo_use = false;
            backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.dram_layout_all = dram_layout_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            auto buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kptconvlstm__dense_layer__linear_bwd_weight_accum_1));
            backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params.buffer_node = buffer_node_ptconvlstm__dense_layer__linear_bwd_weight_tensor1;
            auto *backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1", partition_parent, &section_plasma, backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1_params);
            backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1->configure_node();
            backing_pmu_group_67_ptconvlstm__dense_layer__linear_bwd_weight_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #68;
            BackingPmu::Params backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params;
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params.host_fifo_use = false;
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_872));
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300;
            auto *backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300", partition_parent, &section_plasma, backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300_params);
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300->configure_node();
            backing_pmu_group_68_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #69;
            BackingPmu::Params backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params;
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.host_fifo_use = false;
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_873));
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301;
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params.argin_dram_offset = 8192;
            auto *backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301", partition_parent, &section_plasma, backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301_params);
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301->configure_node();
            backing_pmu_group_69_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #70;
            BackingPmu::Params backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params;
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.host_fifo_use = false;
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_874));
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302;
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params.argin_dram_offset = 16384;
            auto *backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302", partition_parent, &section_plasma, backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302_params);
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302->configure_node();
            backing_pmu_group_70_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #71;
            BackingPmu::Params backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params;
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.host_fifo_use = false;
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303;
            auto buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_875));
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303;
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params.argin_dram_offset = 24576;
            auto *backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303", partition_parent, &section_plasma, backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303_params);
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303->configure_node();
            backing_pmu_group_71_ptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #72;
            BackingPmu::Params backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params;
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params.host_fifo_use = false;
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_876));
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304;
            auto *backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304", partition_parent, &section_plasma, backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304_params);
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304->configure_node();
            backing_pmu_group_72_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #73;
            BackingPmu::Params backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params;
            backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.host_fifo_use = false;
            backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_877));
            backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305;
            backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params.argin_dram_offset = 20480;
            auto *backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305", partition_parent, &section_plasma, backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305_params);
            backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305->configure_node();
            backing_pmu_group_73_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #74;
            BackingPmu::Params backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params;
            backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.host_fifo_use = false;
            backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_878));
            backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306;
            backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params.argin_dram_offset = 40960;
            auto *backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306", partition_parent, &section_plasma, backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306_params);
            backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306->configure_node();
            backing_pmu_group_74_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #75;
            BackingPmu::Params backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params;
            backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.host_fifo_use = false;
            backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307;
            auto buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_879));
            backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307;
            backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params.argin_dram_offset = 61440;
            auto *backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307", partition_parent, &section_plasma, backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307_params);
            backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307->configure_node();
            backing_pmu_group_75_ptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #76;
            BackingPmu::Params backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params;
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params.host_fifo_use = false;
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_880));
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308;
            auto *backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308", partition_parent, &section_plasma, backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308_params);
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308->configure_node();
            backing_pmu_group_76_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #77;
            BackingPmu::Params backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params;
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.host_fifo_use = false;
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_881));
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309;
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params.argin_dram_offset = 4096;
            auto *backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309", partition_parent, &section_plasma, backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309_params);
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309->configure_node();
            backing_pmu_group_77_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #78;
            BackingPmu::Params backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params;
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.host_fifo_use = false;
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_882));
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310;
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params.argin_dram_offset = 8192;
            auto *backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310", partition_parent, &section_plasma, backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310_params);
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310->configure_node();
            backing_pmu_group_78_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #79;
            BackingPmu::Params backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params;
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.host_fifo_use = false;
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311;
            auto buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_883));
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311;
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params.argin_dram_offset = 12288;
            auto *backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311", partition_parent, &section_plasma, backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311_params);
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311->configure_node();
            backing_pmu_group_79_ptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #80;
            BackingPmu::Params backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params;
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params.host_fifo_use = false;
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_884));
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312;
            auto *backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312", partition_parent, &section_plasma, backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312_params);
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312->configure_node();
            backing_pmu_group_80_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #81;
            BackingPmu::Params backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params;
            backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.host_fifo_use = false;
            backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_885));
            backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313;
            backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params.argin_dram_offset = 4096;
            auto *backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313", partition_parent, &section_plasma, backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313_params);
            backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313->configure_node();
            backing_pmu_group_81_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #82;
            BackingPmu::Params backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params;
            backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.host_fifo_use = false;
            backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_886));
            backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314;
            backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params.argin_dram_offset = 8192;
            auto *backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314", partition_parent, &section_plasma, backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314_params);
            backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314->configure_node();
            backing_pmu_group_82_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kFinalGroup, 1);
            
            /// Store Group #83;
            BackingPmu::Params backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params;
            backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.host_fifo_use = false;
            backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315;
            auto buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_887));
            backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.buffer_node = buffer_node_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315;
            backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params.argin_dram_offset = 12288;
            auto *backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315 = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315", partition_parent, &section_plasma, backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315_params);
            backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315->configure_node();
            backing_pmu_group_83_ptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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
        { // Begin Section 2, Chip 0
            Partition partition {0, 2};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Group #5            
            FrontingPmu::Params fronting_pmu_load_group_5_params;
            fronting_pmu_load_group_5_params.dram_layout_all = dram_layout_group_5;
            std::vector<BufferNode *> gbufs_load_group_5 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight_2_0_261)                
            };
            fronting_pmu_load_group_5_params.static_buffers = gbufs_load_group_5;
            fronting_pmu_load_group_5_params.atom_transpose = false;
            auto *fronting_pmu_load_group_5 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_5", partition_parent, &section_plasma, fronting_pmu_load_group_5_params);
            fronting_pmu_load_group_5->configure_node();
            fronting_pmu_load_group_5->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #33            
            FrontingPmu::Params fronting_pmu_load_group_33_params;
            fronting_pmu_load_group_33_params.dram_layout_all = dram_layout_group_33;
            std::vector<BufferNode *> gbufs_load_group_33 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__grad_2_0_262)                
            };
            fronting_pmu_load_group_33_params.static_buffers = gbufs_load_group_33;
            fronting_pmu_load_group_33_params.atom_transpose = false;
            auto *fronting_pmu_load_group_33 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_33", partition_parent, &section_plasma, fronting_pmu_load_group_33_params);
            fronting_pmu_load_group_33->configure_node();
            fronting_pmu_load_group_33->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #31            
            FrontingPmu::Params fronting_pmu_load_group_31_params;
            fronting_pmu_load_group_31_params.dram_layout_all = dram_layout_group_31;
            std::vector<BufferNode *> gbufs_load_group_31 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263)                
            };
            fronting_pmu_load_group_31_params.static_buffers = gbufs_load_group_31;
            fronting_pmu_load_group_31_params.atom_transpose = false;
            auto *fronting_pmu_load_group_31 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_31", partition_parent, &section_plasma, fronting_pmu_load_group_31_params);
            fronting_pmu_load_group_31->configure_node();
            fronting_pmu_load_group_31->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #30            
            FrontingPmu::Params fronting_pmu_load_group_30_params;
            fronting_pmu_load_group_30_params.dram_layout_all = dram_layout_group_30;
            std::vector<BufferNode *> gbufs_load_group_30 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias_2_0_267)                
            };
            fronting_pmu_load_group_30_params.static_buffers = gbufs_load_group_30;
            fronting_pmu_load_group_30_params.atom_transpose = false;
            auto *fronting_pmu_load_group_30 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_30", partition_parent, &section_plasma, fronting_pmu_load_group_30_params);
            fronting_pmu_load_group_30->configure_node();
            fronting_pmu_load_group_30->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #34            
            FrontingPmu::Params fronting_pmu_load_group_34_params;
            fronting_pmu_load_group_34_params.dram_layout_all = dram_layout_group_34;
            std::vector<BufferNode *> gbufs_load_group_34 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__grad_2_0_268)                
            };
            fronting_pmu_load_group_34_params.static_buffers = gbufs_load_group_34;
            fronting_pmu_load_group_34_params.atom_transpose = false;
            auto *fronting_pmu_load_group_34 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_34", partition_parent, &section_plasma, fronting_pmu_load_group_34_params);
            fronting_pmu_load_group_34->configure_node();
            fronting_pmu_load_group_34->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #32            
            FrontingPmu::Params fronting_pmu_load_group_32_params;
            fronting_pmu_load_group_32_params.dram_layout_all = dram_layout_group_32;
            std::vector<BufferNode *> gbufs_load_group_32 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287)                ,
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293)                
            };
            fronting_pmu_load_group_32_params.static_buffers = gbufs_load_group_32;
            fronting_pmu_load_group_32_params.atom_transpose = false;
            auto *fronting_pmu_load_group_32 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_32", partition_parent, &section_plasma, fronting_pmu_load_group_32_params);
            fronting_pmu_load_group_32->configure_node();
            fronting_pmu_load_group_32->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #29            
            FrontingPmu::Params fronting_pmu_load_group_29_params;
            fronting_pmu_load_group_29_params.dram_layout_all = dram_layout_group_29;
            std::vector<BufferNode *> gbufs_load_group_29 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_ih_l0_2_0_273)                
            };
            fronting_pmu_load_group_29_params.static_buffers = gbufs_load_group_29;
            fronting_pmu_load_group_29_params.atom_transpose = false;
            auto *fronting_pmu_load_group_29 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_29", partition_parent, &section_plasma, fronting_pmu_load_group_29_params);
            fronting_pmu_load_group_29->configure_node();
            fronting_pmu_load_group_29->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #84            
            FrontingPmu::Params fronting_pmu_load_group_84_params;
            fronting_pmu_load_group_84_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274;
            fronting_pmu_load_group_84_params.vag_group_id = 0;
            fronting_pmu_load_group_84_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_939));
            auto *fronting_pmu_load_group_84 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_84", partition_parent, &section_plasma, fronting_pmu_load_group_84_params);
            fronting_pmu_load_group_84->configure_node();
            fronting_pmu_load_group_84->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #28            
            FrontingPmu::Params fronting_pmu_load_group_28_params;
            fronting_pmu_load_group_28_params.dram_layout_all = dram_layout_group_28;
            std::vector<BufferNode *> gbufs_load_group_28 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__weight_hh_l0_2_0_279)                
            };
            fronting_pmu_load_group_28_params.static_buffers = gbufs_load_group_28;
            fronting_pmu_load_group_28_params.atom_transpose = false;
            auto *fronting_pmu_load_group_28 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_28", partition_parent, &section_plasma, fronting_pmu_load_group_28_params);
            fronting_pmu_load_group_28->configure_node();
            fronting_pmu_load_group_28->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #85            
            FrontingPmu::Params fronting_pmu_load_group_85_params;
            fronting_pmu_load_group_85_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280;
            fronting_pmu_load_group_85_params.vag_group_id = 0;
            fronting_pmu_load_group_85_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_940));
            auto *fronting_pmu_load_group_85 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_85", partition_parent, &section_plasma, fronting_pmu_load_group_85_params);
            fronting_pmu_load_group_85->configure_node();
            fronting_pmu_load_group_85->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #27            
            FrontingPmu::Params fronting_pmu_load_group_27_params;
            fronting_pmu_load_group_27_params.dram_layout_all = dram_layout_group_27;
            std::vector<BufferNode *> gbufs_load_group_27 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_ih_l0_2_0_285)                
            };
            fronting_pmu_load_group_27_params.static_buffers = gbufs_load_group_27;
            fronting_pmu_load_group_27_params.atom_transpose = false;
            auto *fronting_pmu_load_group_27 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_27", partition_parent, &section_plasma, fronting_pmu_load_group_27_params);
            fronting_pmu_load_group_27->configure_node();
            fronting_pmu_load_group_27->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #86            
            FrontingPmu::Params fronting_pmu_load_group_86_params;
            fronting_pmu_load_group_86_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286;
            fronting_pmu_load_group_86_params.vag_group_id = 0;
            fronting_pmu_load_group_86_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_941));
            auto *fronting_pmu_load_group_86 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_86", partition_parent, &section_plasma, fronting_pmu_load_group_86_params);
            fronting_pmu_load_group_86->configure_node();
            fronting_pmu_load_group_86->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #26            
            FrontingPmu::Params fronting_pmu_load_group_26_params;
            fronting_pmu_load_group_26_params.dram_layout_all = dram_layout_group_26;
            std::vector<BufferNode *> gbufs_load_group_26 {
                node.wbuf_in(arc::LogregTorchSamba::Input::kptconvlstm__lstm_layer__bias_hh_l0_2_0_291)                
            };
            fronting_pmu_load_group_26_params.static_buffers = gbufs_load_group_26;
            fronting_pmu_load_group_26_params.atom_transpose = false;
            auto *fronting_pmu_load_group_26 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_26", partition_parent, &section_plasma, fronting_pmu_load_group_26_params);
            fronting_pmu_load_group_26->configure_node();
            fronting_pmu_load_group_26->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #87            
            FrontingPmu::Params fronting_pmu_load_group_87_params;
            fronting_pmu_load_group_87_params.dram_layout_all = dram_layout_ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292;
            fronting_pmu_load_group_87_params.vag_group_id = 0;
            fronting_pmu_load_group_87_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_2_0_942));
            auto *fronting_pmu_load_group_87 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_87", partition_parent, &section_plasma, fronting_pmu_load_group_87_params);
            fronting_pmu_load_group_87->configure_node();
            fronting_pmu_load_group_87->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #5;
            BackingPmu::Params backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params;
            backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.dram_layout_all = dram_layout_group_5;
            std::vector<WeightsBuffer *> wbufs_group_5 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor)                
            };
            backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.weights_buffers = wbufs_group_5;
            backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params);
            backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_node();
            backing_pmu_group_5_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #31;
            BackingPmu::Params backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params;
            backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.host_fifo_use = false;
            backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.dram_layout_all = dram_layout_group_31;
            std::vector<WeightsBuffer *> wbufs_group_31 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1)                
            };
            backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.weights_buffers = wbufs_group_31;
            backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.generate_allrddone = true;
            auto *backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", partition_parent, &section_plasma, backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params);
            backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_node();
            backing_pmu_group_31_ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #30;
            BackingPmu::Params backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params;
            backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.dram_layout_all = dram_layout_group_30;
            std::vector<WeightsBuffer *> wbufs_group_30 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor)                
            };
            backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.weights_buffers = wbufs_group_30;
            backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor_params);
            backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_node();
            backing_pmu_group_30_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #32;
            BackingPmu::Params backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params;
            backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.host_fifo_use = false;
            backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.dram_layout_all = dram_layout_group_32;
            std::vector<WeightsBuffer *> wbufs_group_32 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                ,
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1)                
            };
            backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.weights_buffers = wbufs_group_32;
            backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params.generate_allrddone = true;
            auto *backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1", partition_parent, &section_plasma, backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1_params);
            backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_node();
            backing_pmu_group_32_ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #29;
            BackingPmu::Params backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_29;
            std::vector<WeightsBuffer *> wbufs_group_29 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_29;
            backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_29_ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #28;
            BackingPmu::Params backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_28;
            std::vector<WeightsBuffer *> wbufs_group_28 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_28;
            backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_28_ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #27;
            BackingPmu::Params backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_27;
            std::vector<WeightsBuffer *> wbufs_group_27 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_27;
            backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_27_ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #26;
            BackingPmu::Params backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params;
            backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.dram_layout_all = dram_layout_group_26;
            std::vector<WeightsBuffer *> wbufs_group_26 {
                node.wbuf_out(arc::LogregTorchSamba::Output::kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor)                
            };
            backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.weights_buffers = wbufs_group_26;
            backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor_params);
            backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_node();
            backing_pmu_group_26_ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 2, Chip 0
    };
    auto section3_fn = [&](Plasma &section_plasma, SectionId section_id) {    
        auto *nodep = new (section_plasma.section_alloc_ctx().allocate<arc::LogregTorchSamba>())
              arc::LogregTorchSamba("LogregTorchSamba", nullptr, &rail, params, 3);
        auto &node = *nodep;
        node.configure(3);
        auto *partition_placement = section_plasma.create_condition<PartitionPlacement>();
        /** Add Plasma Outputs References **/
        
        
        
        
        
        { // Begin Section 3, Chip 0
            Partition partition {0, 3};
            SuperNode *partition_parent = node.partition_parent(partition);
            /** DRAM Loads **/
            std::vector<DramInput> loads;
            /// Load Group #0            
            FrontingPmu::Params fronting_pmu_load_group_0_params;
            fronting_pmu_load_group_0_params.dram_layout_all = dram_layout_accum_dummy_0_3_0_811;
            fronting_pmu_load_group_0_params.vag_group_id = 0;
            fronting_pmu_load_group_0_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_3_0_992));
            fronting_pmu_load_group_0_params.argin_dram_base = RuntimeParameter<uint64_t>(0, "dp_accum_base_address_0", ArgInOption::Annotation::kDPReduceAccumBaseAddress);
            fronting_pmu_load_group_0_params.argin_multi_load = RuntimeParameter<uint32_t>(2, "dp_reduce_region_size_0", "dp_reduce_region_size_0", ArgInOption::Annotation::kDPReduceSize, 2);
            fronting_pmu_load_group_0_params.argin_dram_offset = RuntimeParameter<uint64_t>(0, "dp_offset_0");
            auto *fronting_pmu_load_group_0 = section_plasma.create_node<FrontingPmu>("s3.fronting_pmu_load_group_0", partition_parent, &section_plasma, fronting_pmu_load_group_0_params);
            fronting_pmu_load_group_0->configure_node();
            fronting_pmu_load_group_0->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 2);
            loads.back().is_lut = false;
            
            /// Load Group #89            
            FrontingPmu::Params fronting_pmu_load_group_89_params;
            fronting_pmu_load_group_89_params.dram_layout_all = dram_layout_accum_dummy_0_reduce_buf_3_0_812;
            fronting_pmu_load_group_89_params.vag_group_id = 0;
            fronting_pmu_load_group_89_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_3_0_993));
            fronting_pmu_load_group_89_params.argin_dram_base = RuntimeParameter<uint64_t>(0, "dp_base_address_0", ArgInOption::Annotation::kDPReduceBaseAddress);
            fronting_pmu_load_group_89_params.argin_multi_load = RuntimeParameter<uint32_t>(2, "dp_reduce_region_size_0", "dp_reduce_region_size_0", ArgInOption::Annotation::kDPReduceSize, 2);
            fronting_pmu_load_group_89_params.argin_dram_offset = RuntimeParameter<uint64_t>(0, "dp_reduce_offset_0");
            auto *fronting_pmu_load_group_89 = section_plasma.create_node<FrontingPmu>("s3.fronting_pmu_load_group_89", partition_parent, &section_plasma, fronting_pmu_load_group_89_params);
            fronting_pmu_load_group_89->configure_node();
            fronting_pmu_load_group_89->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 2);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #90;
            BackingPmu::Params backing_pmu_group_90_accum_dummy_0_3_0_815_params;
            backing_pmu_group_90_accum_dummy_0_3_0_815_params.host_fifo_use = false;
            backing_pmu_group_90_accum_dummy_0_3_0_815_params.dram_layout_all = dram_layout_accum_dummy_0_3_0_815;
            auto buffer_node_accum_dummy_0_3_0_815 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_3_0_888));
            backing_pmu_group_90_accum_dummy_0_3_0_815_params.buffer_node = buffer_node_accum_dummy_0_3_0_815;
            backing_pmu_group_90_accum_dummy_0_3_0_815_params.argin_dram_offset = RuntimeParameter<uint64_t>(0, "dp_offset_0");
            backing_pmu_group_90_accum_dummy_0_3_0_815_params.argin_multi_store = RuntimeParameter<uint32_t>(2, "dp_reduce_region_size_0", "dp_reduce_region_size_0", ArgInOption::Annotation::kDPReduceSize, 2);
            backing_pmu_group_90_accum_dummy_0_3_0_815_params.argin_dram_base = RuntimeParameter<uint64_t>(0, "dp_accum_base_address_0", ArgInOption::Annotation::kDPReduceAccumBaseAddress);
            auto *backing_pmu_group_90_accum_dummy_0_3_0_815 = section_plasma.create_node<BackingPmu>("s3.backing_pmu_group_90_accum_dummy_0_3_0_815", partition_parent, &section_plasma, backing_pmu_group_90_accum_dummy_0_3_0_815_params);
            backing_pmu_group_90_accum_dummy_0_3_0_815->configure_node();
            backing_pmu_group_90_accum_dummy_0_3_0_815->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 2);
            
            load_inputs(section_plasma, loads, partition);
            node.register_tile_dones(partition);
            store_outputs(section_plasma, stores, partition);
            
            partition_placement->assign_units(partition, node.units(partition));
        } // End of Section 3, Chip 0
    };
    SectionCompileFns section_fns{section0_fn,section1_fn,section2_fn,section3_fn};
    plasma.compile_by_section(section_fns);
    return 0;
}

