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
    std::string output_path = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg/logreg/";
    make_dirs(output_path);
    BitfileTypePerChip chip_types (1);
    std::fill(chip_types.begin(), chip_types.end(), BitfileType::kFourTile);
    sn::cl_output_folder.setInitialValue("/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg/logreg/");
    sn::cl_pef_name.setInitialValue("logreg");
    mlir::arc::PrismInfo::initialize();
    mlir::arc::Arc::Options arc_options;
    arc_options.mlir_file_name = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg/logreg/arc_gen/mlir/final.mlir";
    arc_options.data_file_name = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg/logreg/arc_gen/mlir/final.data";
    arc_options.overwrite_dir = "/qfs/people/jain432/pacer_saudade/code/ProxyTSPRD/scripts/test/sambanova/logreg/logreg/";
    arc_options.in_codegen = true;
    mlir::arc::Arc arc(argc, argv, arc_options);
    mlir::rail::RAIL &rail = *arc.rail();
    Plasma &plasma = *mlir::rail::RAIL::plasma();
    rail.append_to_preface_module(arc.preface_module());
    plasma.workspace().get_pef_metadata()["acc_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["acc_test"] = "False";
    plasma.workspace().get_pef_metadata()["amp_level"] = "4";
    plasma.workspace().get_pef_metadata()["arc_debug_mode"] = "False";
    plasma.workspace().get_pef_metadata()["batch_size"] = "500";
    plasma.workspace().get_pef_metadata()["bench_report_json"] = "None";
    plasma.workspace().get_pef_metadata()["ckpt_dir"] = "";
    plasma.workspace().get_pef_metadata()["compiled_stats_json"] = "None";
    plasma.workspace().get_pef_metadata()["compiler_mode"] = "";
    plasma.workspace().get_pef_metadata()["data_dir"] = "mnist_data";
    plasma.workspace().get_pef_metadata()["data_name"] = "mnist";
    plasma.workspace().get_pef_metadata()["data_parallel"] = "True";
    plasma.workspace().get_pef_metadata()["data_parallel_mode"] = "normal";
    plasma.workspace().get_pef_metadata()["data_type"] = "image";
    plasma.workspace().get_pef_metadata()["dataloader"] = "torchloader";
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
    plasma.workspace().get_pef_metadata()["enable_profiler"] = "False";
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
    plasma.workspace().get_pef_metadata()["label_type"] = "classes";
    plasma.workspace().get_pef_metadata()["latency_budget_bwd"] = "None";
    plasma.workspace().get_pef_metadata()["latency_budget_fwd"] = "None";
    plasma.workspace().get_pef_metadata()["listen_for_input"] = "False";
    plasma.workspace().get_pef_metadata()["local_rank"] = "0";
    plasma.workspace().get_pef_metadata()["log_dir"] = "None";
    plasma.workspace().get_pef_metadata()["logger_dir"] = "output";
    plasma.workspace().get_pef_metadata()["logger_name"] = "default";
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
    plasma.workspace().get_pef_metadata()["model"] = "LogReg(\x0A  (lin_layer): Linear(in_features=784, out_features=10, bias=False)\x0A  (criterion): CrossEntropyLoss()\x0A)";
    plasma.workspace().get_pef_metadata()["model_name"] = "logreg";
    plasma.workspace().get_pef_metadata()["model_parallel"] = "False";
    plasma.workspace().get_pef_metadata()["modelbox"] = "False";
    plasma.workspace().get_pef_metadata()["momentum"] = "0.0";
    plasma.workspace().get_pef_metadata()["mpirun"] = "False";
    plasma.workspace().get_pef_metadata()["n_chips"] = "1";
    plasma.workspace().get_pef_metadata()["ndtest"] = "False";
    plasma.workspace().get_pef_metadata()["ndtest_mp"] = "False";
    plasma.workspace().get_pef_metadata()["num_classes"] = "10";
    plasma.workspace().get_pef_metadata()["num_epochs"] = "1";
    plasma.workspace().get_pef_metadata()["num_features"] = "784";
    plasma.workspace().get_pef_metadata()["num_iterations"] = "100";
    plasma.workspace().get_pef_metadata()["num_sections"] = "None";
    plasma.workspace().get_pef_metadata()["num_spatial_batches"] = "1";
    plasma.workspace().get_pef_metadata()["num_steps"] = "-1";
    plasma.workspace().get_pef_metadata()["num_tiles"] = "-1";
    plasma.workspace().get_pef_metadata()["optim"] = "sgd";
    plasma.workspace().get_pef_metadata()["optim_level"] = "o3";
    plasma.workspace().get_pef_metadata()["optimize_concat_split"] = "False";
    plasma.workspace().get_pef_metadata()["pef"] = "None";
    plasma.workspace().get_pef_metadata()["plot"] = "None";
    plasma.workspace().get_pef_metadata()["pod_name"] = "starters";
    plasma.workspace().get_pef_metadata()["pp_lamb_optimizer"] = "False";
    plasma.workspace().get_pef_metadata()["profiler_trace"] = "None";
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
    plasma.workspace().get_pef_metadata()["script"] = "logreg.py";
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
    plasma.workspace().get_pef_metadata()["task_name"] = "classification";
    plasma.workspace().get_pef_metadata()["tensor_parallel"] = "none";
    plasma.workspace().get_pef_metadata()["tile_orientation"] = "auto";
    plasma.workspace().get_pef_metadata()["traced_attributes_folder"] = "";
    plasma.workspace().get_pef_metadata()["unroll_first"] = "False";
    plasma.workspace().get_pef_metadata()["use_correct_tiling_cost_model"] = "False";
    plasma.workspace().get_pef_metadata()["use_integrated_bias"] = "False";
    plasma.workspace().get_pef_metadata()["validate_mac_resource_prediction"] = "False";
    plasma.workspace().get_pef_metadata()["verbose"] = "3";
    plasma.workspace().get_pef_metadata()["visualize"] = "False";
    plasma.workspace().get_pef_metadata()["weight_caching"] = "False";
    plasma.workspace().get_pef_metadata()["weight_decay"] = "0.0003";
    plasma.workspace().get_pef_metadata()["weight_layout"] = "None";
    plasma.workspace().get_pef_metadata()["weight_norm"] = "False";
    plasma.workspace().get_pef_metadata()["world_size"] = "2";
    plasma.workspace().get_pef_metadata()["yaml_config"] = "None";
    
    /** Add Plasma Inputs **/
    /// Input Group #7
    std::vector<PlasmaRegion> group_7_tensors {
        {{10, 784}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "logreg__lin_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_7;
    io_config_group_7.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_7.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_7.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_7.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_7 = add_plasma_input_group(plasma, group_7_tensors, io_config_group_7, "group_7");
    TensorLayout dram_layout_group_7 = group_7.dram_layout;
    TensorLayout dram_layout_logreg__lin_layer__weight = group_7.dram_sub_layouts.at(0);
    dram_layout_logreg__lin_layer__weight.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__lin_layer__weight_0_0_29 = dram_layout_logreg__lin_layer__weight;
    TensorLayout pmu_layout_logreg__lin_layer__weight_0_0_29 = group_7.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight_0_0_29.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__weight_2_0_51 = dram_layout_logreg__lin_layer__weight;
    TensorLayout pmu_layout_logreg__lin_layer__weight_2_0_51 = group_7.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight_2_0_51.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor = dram_layout_logreg__lin_layer__weight;
    TensorLayout pmu_layout_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor = dram_layout_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for image
    PlasmaIOConfig io_config_image;
    io_config_image.conv = PhysicalLayout::kColumnVectorRowMajor;
    io_config_image.python_transforms.push_back(std::make_pair(".transpose(-1,-2)", ".transpose(-1,-2)"));
    io_config_image.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_image.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_image = add_plasma_input(plasma, {784, 500}, node_constants::TemplateDataFormats::kBf16(), io_config_image, "image", {});
    dram_layout_image.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_image_0_0_30 = dram_layout_image;
    TensorLayout pmu_layout_image_0_0_30 = dram_layout_image_0_0_30.vector_align().at_address(0);
    pmu_layout_image_0_0_30.set_vector_transposed(true);
    TensorLayout dram_layout_image_1_0_46 = dram_layout_image;
    TensorLayout pmu_layout_image_1_0_46 = dram_layout_image_1_0_46.vector_align().at_address(0);
    pmu_layout_image_1_0_46.set_vector_transposed(true);
    /// DRAM and PMU layouts for label
    PlasmaIOConfig io_config_label;
    io_config_label.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_label.python_transforms.push_back(std::make_pair(".short()", ""));
    io_config_label.memory_annotation = TensorMemoryAnnotation::kHost;
    io_config_label.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_label = add_plasma_input(plasma, {500}, node_constants::TemplateDataFormats::kInt16(), io_config_label, "label", {});
    dram_layout_label.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_label_0_0_34 = dram_layout_label;
    TensorLayout pmu_layout_label_0_0_34 = dram_layout_label_0_0_34.vector_align().at_address(0);
    TensorLayout dram_layout_label_1_0_40 = dram_layout_label;
    TensorLayout pmu_layout_label_1_0_40 = dram_layout_label_1_0_40.vector_align().at_address(0);
    /// DRAM and PMU layouts for logreg__criterion__crossentropyloss__outputs__0__grad
    PlasmaIOConfig io_config_logreg__criterion__crossentropyloss__outputs__0__grad;
    io_config_logreg__criterion__crossentropyloss__outputs__0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_logreg__criterion__crossentropyloss__outputs__0__grad.python_transforms.push_back(std::make_pair("", ".mean()"));
    io_config_logreg__criterion__crossentropyloss__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_logreg__criterion__crossentropyloss__outputs__0__grad.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    TensorLayout dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad = add_plasma_input(plasma, {500}, node_constants::TemplateDataFormats::kBf16(), io_config_logreg__criterion__crossentropyloss__outputs__0__grad, "logreg__criterion__crossentropyloss__outputs__0__grad", {});
    dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41 = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad;
    TensorLayout pmu_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41 = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41.vector_align().at_address(0);
    /// DRAM and PMU layouts for logreg__lin_layer__linear__outputs__0__grad
    PlasmaIOConfig io_config_logreg__lin_layer__linear__outputs__0__grad;
    io_config_logreg__lin_layer__linear__outputs__0__grad.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_logreg__lin_layer__linear__outputs__0__grad.python_transforms.push_back(std::make_pair("", ""));
    io_config_logreg__lin_layer__linear__outputs__0__grad.memory_annotation = TensorMemoryAnnotation::kDDR;
    TensorLayout dram_layout_logreg__lin_layer__linear__outputs__0__grad = add_plasma_input(plasma, {500, 10}, node_constants::TemplateDataFormats::kBf16(), io_config_logreg__lin_layer__linear__outputs__0__grad, "logreg__lin_layer__linear__outputs__0__grad", {});
    dram_layout_logreg__lin_layer__linear__outputs__0__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__lin_layer__linear__outputs__0__grad_1_0_43 = dram_layout_logreg__lin_layer__linear__outputs__0__grad;
    TensorLayout pmu_layout_logreg__lin_layer__linear__outputs__0__grad_1_0_43 = dram_layout_logreg__lin_layer__linear__outputs__0__grad_1_0_43.vector_align().at_address(0);
    pmu_layout_logreg__lin_layer__linear__outputs__0__grad_1_0_43.set_vector_transposed(true);
    /// Input Group #10
    std::vector<PlasmaRegion> group_10_tensors {
        {{10, 784}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "logreg__lin_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_10;
    io_config_group_10.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_10.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_10.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_10.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_10 = add_plasma_input_group(plasma, group_10_tensors, io_config_group_10, "group_10");
    TensorLayout dram_layout_group_10 = group_10.dram_layout;
    TensorLayout dram_layout_logreg__lin_layer__weight__sgd0__momentum = group_10.dram_sub_layouts.at(0);
    dram_layout_logreg__lin_layer__weight__sgd0__momentum.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_53 = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_53 = group_10.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_53.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1 = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1 = dram_layout_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for logreg__lin_layer__linear__outputs__0
    PlasmaIOConfig io_config_logreg__lin_layer__linear__outputs__0;
    io_config_logreg__lin_layer__linear__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_logreg__lin_layer__linear__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_logreg__lin_layer__linear__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_logreg__lin_layer__linear__outputs__0 = add_plasma_input(plasma, {500, 10}, node_constants::TemplateDataFormats::kBf16(), io_config_logreg__lin_layer__linear__outputs__0, "logreg__lin_layer__linear__outputs__0", {});
    dram_layout_logreg__lin_layer__linear__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__lin_layer__linear__outputs__0_1_0_39 = dram_layout_logreg__lin_layer__linear__outputs__0;
    TensorLayout pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_39 = dram_layout_logreg__lin_layer__linear__outputs__0_1_0_39.vector_align().at_address(0);
    pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_39.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__linear_t_output0_tensor = dram_layout_logreg__lin_layer__linear__outputs__0;
    TensorLayout pmu_layout_logreg__lin_layer__linear_t_output0_tensor = dram_layout_logreg__lin_layer__linear_t_output0_tensor.vector_align().at_address(0);
    /// Input Group #11
    std::vector<PlasmaRegion> group_11_tensors {
        {{10, 784}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "logreg__lin_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_11;
    io_config_group_11.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_11.annotation = TensorSymbolAnnotation::kMarkAccumulator;
    io_config_group_11.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_11.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_11.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_11 = add_plasma_input_group(plasma, group_11_tensors, io_config_group_11, "$OPT_dp_accum_group_543114451f3d1265bbcd7e0a69d4d88d7aba7c71");
    TensorLayout dram_layout_group_11 = group_11.dram_layout;
    TensorLayout dram_layout_logreg__lin_layer__weight__grad = group_11.dram_sub_layouts.at(0);
    dram_layout_logreg__lin_layer__weight__grad.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__lin_layer__weight__grad_2_0_52 = dram_layout_logreg__lin_layer__weight__grad;
    TensorLayout pmu_layout_logreg__lin_layer__weight__grad_2_0_52 = group_11.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight__grad_2_0_52.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__linear_bwd_weight_tensor = dram_layout_logreg__lin_layer__weight__grad;
    TensorLayout pmu_layout_logreg__lin_layer__linear_bwd_weight_tensor = dram_layout_logreg__lin_layer__linear_bwd_weight_tensor.vector_align().at_address(0);
    
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
    TensorLayout dram_layout_accum_dummy_0_reduce_buf = add_plasma_input(plasma, {25152}, node_constants::TemplateDataFormats::kBf16(), io_config_accum_dummy_0_reduce_buf, "accum_dummy_0_reduce_buf", {});
    dram_layout_accum_dummy_0_reduce_buf.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_accum_dummy_0_reduce_buf_3_0_85 = dram_layout_accum_dummy_0_reduce_buf.with_logical_shape({16384});
    TensorLayout pmu_layout_accum_dummy_0_reduce_buf_3_0_85 = dram_layout_accum_dummy_0_reduce_buf_3_0_85.with_logical_shape({8192}).vector_align().at_address(0);
    pmu_layout_accum_dummy_0_reduce_buf_3_0_85.set_vector_transposed(false);
    TensorLayout pmu_layout_accum_dummy_0_reduce_buf_3_0_85_full = pmu_layout_accum_dummy_0_reduce_buf_3_0_85.supertensor({}).at_address(0);
    pmu_layout_accum_dummy_0_reduce_buf_3_0_85_full.set_vector_transposed(false);
    
    /// DRAM and PMU layouts for accum_dummy_0 (Group-Region) representing group 0
    TensorLayout dram_layout_accum_dummy_0 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {16384}).at_handle(dram_layout_dummy_dp_accum_region_0.symbol_handle());
    TensorLayout pmu_layout_accum_dummy_0 = dram_layout_accum_dummy_0.at_address(0);
    TensorLayout dram_layout_accum_dummy_0_3_0_84 = dram_layout_accum_dummy_0.with_logical_shape({16384});
    TensorLayout pmu_layout_accum_dummy_0_3_0_84 = dram_layout_accum_dummy_0_3_0_84.with_logical_shape({8192}).vector_align().at_address(0);
    pmu_layout_accum_dummy_0_3_0_84.set_vector_transposed(false);
    TensorLayout pmu_layout_accum_dummy_0_3_0_84_full = pmu_layout_accum_dummy_0_3_0_84.supertensor({}).at_address(0);
    pmu_layout_accum_dummy_0_3_0_84_full.set_vector_transposed(false);
    
    TensorLayout dram_layout_accum_dummy_0_3_0_88 = dram_layout_accum_dummy_0.with_logical_shape({16384});
    TensorLayout pmu_layout_accum_dummy_0_3_0_88 = dram_layout_accum_dummy_0_3_0_88.with_logical_shape({8192}).vector_align().at_address(0);
    TensorLayout pmu_layout_accum_dummy_0_3_0_88_full = pmu_layout_accum_dummy_0_3_0_88.supertensor({}).at_address(0);
    pmu_layout_accum_dummy_0_3_0_88_full.set_vector_transposed(false);
    
    
    /** Add Plasma Outputs **/
    /// DRAM and PMU layouts for logreg__criterion__crossentropyloss__outputs__0
    PlasmaIOConfig io_config_logreg__criterion__crossentropyloss__outputs__0;
    io_config_logreg__criterion__crossentropyloss__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_logreg__criterion__crossentropyloss__outputs__0.python_transforms.push_back(std::make_pair("", ".mean()"));
    io_config_logreg__criterion__crossentropyloss__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_logreg__criterion__crossentropyloss__outputs__0 = add_plasma_output(plasma, {500}, node_constants::TemplateDataFormats::kBf16(), io_config_logreg__criterion__crossentropyloss__outputs__0, "logreg__criterion__crossentropyloss__outputs__0", {});
    dram_layout_logreg__criterion__crossentropyloss__outputs__0.symbol_handle()->die_id = std::nullopt;
    TensorLayout dram_layout_logreg__criterion__crossentropyloss_tensor = dram_layout_logreg__criterion__crossentropyloss__outputs__0;
    TensorLayout pmu_layout_logreg__criterion__crossentropyloss_tensor = dram_layout_logreg__criterion__crossentropyloss_tensor.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for _OPT_dp_accum_group_543114451f3d1265bbcd7e0a69d4d88d7aba7c71 (Group-Region) representing group 11
    TensorLayout dram_layout__OPT_dp_accum_group_543114451f3d1265bbcd7e0a69d4d88d7aba7c71 = TensorLayout(node_constants::TemplateDataFormats::kBf16(), {25088}).at_handle(dram_layout_logreg__lin_layer__weight__grad.symbol_handle());
    TensorLayout pmu_layout__OPT_dp_accum_group_543114451f3d1265bbcd7e0a69d4d88d7aba7c71 = dram_layout__OPT_dp_accum_group_543114451f3d1265bbcd7e0a69d4d88d7aba7c71.at_address(0);
    
    /** Add Plasma Outputs References **/
    
    
    /** Section Calls **/
    plasma.workspace().add_section_call(0, {
        {
            {dram_layout_group_7.symbol_handle(), true}            ,
            {dram_layout_image.symbol_handle(), true}            ,
            {dram_layout_label.symbol_handle(), true}            ,
            {dram_layout_logreg__lin_layer__linear__outputs__0.symbol_handle(), false}            ,
            {dram_layout_logreg__criterion__crossentropyloss__outputs__0.symbol_handle(), false}            
        }        
        }, true);
    plasma.workspace().add_section_call(1, {
        {
            {dram_layout_logreg__lin_layer__linear__outputs__0.symbol_handle(), true}            ,
            {dram_layout_label.symbol_handle(), true}            ,
            {dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad.symbol_handle(), true}            ,
            {dram_layout_logreg__lin_layer__linear__outputs__0__grad.symbol_handle(), true}            ,
            {dram_layout_image.symbol_handle(), true}            ,
            {dram_layout_logreg__lin_layer__weight__grad.symbol_handle(), false}            
        }        
        }, true);
    plasma.workspace().add_section_call(2, {
        {
            {dram_layout_group_7.symbol_handle(), true}            ,
            {dram_layout_group_11.symbol_handle(), true}            ,
            {dram_layout_group_10.symbol_handle(), true}            ,
            {dram_layout_group_7.symbol_handle(), false}            ,
            {dram_layout_group_10.symbol_handle(), false}            
        }        
        }, true);
    plasma.workspace().add_section_call(3, {}, true, true);
    
    /** Instantiate Node **/
    arc::LogregTorchSamba::Params params;
    params.logreg__lin_layer__weight_0_0_29 = pmu_layout_logreg__lin_layer__weight_0_0_29;
    params.logreg__lin_layer__weight_2_0_51 = pmu_layout_logreg__lin_layer__weight_2_0_51;
    params.logreg__lin_layer__weight_dram_in = dram_layout_logreg__lin_layer__weight;
    params.image_0_0_30 = pmu_layout_image_0_0_30;
    params.image_1_0_46 = pmu_layout_image_1_0_46;
    params.image_dram_in = dram_layout_image;
    params.label_0_0_34 = pmu_layout_label_0_0_34;
    params.label_1_0_40 = pmu_layout_label_1_0_40;
    params.label_dram_in = dram_layout_label;
    params.logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41 = pmu_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41;
    params.logreg__criterion__crossentropyloss__outputs__0__grad_dram_in = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad;
    params.logreg__lin_layer__linear__outputs__0__grad_1_0_43 = pmu_layout_logreg__lin_layer__linear__outputs__0__grad_1_0_43;
    params.logreg__lin_layer__linear__outputs__0__grad_dram_in = dram_layout_logreg__lin_layer__linear__outputs__0__grad;
    params.logreg__lin_layer__weight__sgd0__momentum_2_0_53 = pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_53;
    params.logreg__lin_layer__weight__sgd0__momentum_dram_in = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    params.logreg__lin_layer__linear__outputs__0_1_0_39 = pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_39;
    params.logreg__lin_layer__linear__outputs__0_dram_in = dram_layout_logreg__lin_layer__linear__outputs__0;
    params.logreg__lin_layer__weight__grad_2_0_52 = pmu_layout_logreg__lin_layer__weight__grad_2_0_52;
    params.logreg__lin_layer__weight__grad_dram_in = dram_layout_logreg__lin_layer__weight__grad;
    params.dummy_dp_accum_region_0_dram_in = dram_layout_dummy_dp_accum_region_0;
    params.accum_dummy_0_3_0_84 = pmu_layout_accum_dummy_0_3_0_84;
    params.accum_dummy_0_dram_in = dram_layout_accum_dummy_0;
    params.accum_dummy_0_reduce_buf_3_0_85 = pmu_layout_accum_dummy_0_reduce_buf_3_0_85;
    params.accum_dummy_0_reduce_buf_dram_in = dram_layout_accum_dummy_0_reduce_buf;
    params.logreg__lin_layer__weight_dram_out = dram_layout_logreg__lin_layer__weight;
    params.logreg__lin_layer__weight__sgd0__momentum_dram_out = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    params.logreg__lin_layer__linear__outputs__0_dram_out = dram_layout_logreg__lin_layer__linear__outputs__0;
    params.logreg__criterion__crossentropyloss__outputs__0_dram_out = dram_layout_logreg__criterion__crossentropyloss__outputs__0;
    params.logreg__lin_layer__weight__grad_dram_out = dram_layout_logreg__lin_layer__weight__grad;
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
            /// Load Group #7            
            FrontingPmu::Params fronting_pmu_load_group_7_params;
            fronting_pmu_load_group_7_params.dram_layout_all = dram_layout_group_7;
            std::vector<BufferNode *> gbufs_load_group_7 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight_0_0_29)                
            };
            fronting_pmu_load_group_7_params.static_buffers = gbufs_load_group_7;
            fronting_pmu_load_group_7_params.atom_transpose = false;
            auto *fronting_pmu_load_group_7 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_7", partition_parent, &section_plasma, fronting_pmu_load_group_7_params);
            fronting_pmu_load_group_7->configure_node();
            fronting_pmu_load_group_7->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #1            
            FrontingPmu::Params fronting_pmu_load_group_1_params;
            fronting_pmu_load_group_1_params.dram_layout_all = dram_layout_image_0_0_30;
            fronting_pmu_load_group_1_params.vag_group_id = 0;
            fronting_pmu_load_group_1_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_93));
            auto *fronting_pmu_load_group_1 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_1", partition_parent, &section_plasma, fronting_pmu_load_group_1_params);
            fronting_pmu_load_group_1->configure_node();
            fronting_pmu_load_group_1->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #8            
            FrontingPmu::Params fronting_pmu_load_group_8_params;
            fronting_pmu_load_group_8_params.dram_layout_all = dram_layout_label_0_0_34;
            fronting_pmu_load_group_8_params.vag_group_id = 0;
            fronting_pmu_load_group_8_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_0_0_95));
            auto *fronting_pmu_load_group_8 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_8", partition_parent, &section_plasma, fronting_pmu_load_group_8_params);
            fronting_pmu_load_group_8->configure_node();
            fronting_pmu_load_group_8->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #12;
            BackingPmu::Params backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor_params;
            backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor_params.host_fifo_use = false;
            backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor_params.dram_layout_all = dram_layout_logreg__lin_layer__linear_t_output0_tensor;
            auto buffer_node_logreg__lin_layer__linear_t_output0_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_0_0_94));
            backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor_params.buffer_node = buffer_node_logreg__lin_layer__linear_t_output0_tensor;
            auto *backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor", partition_parent, &section_plasma, backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor_params);
            backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor->configure_node();
            backing_pmu_group_12_logreg__lin_layer__linear_t_output0_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #13;
            BackingPmu::Params backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor_params;
            backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor_params.tbuf_ctx_name = BackingPmu::get_tbuf_ctx_names(BackingPmu::kInput).at(0);
            backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor_params.host_fifo_use = false;
            backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor_params.dram_layout_all = dram_layout_logreg__criterion__crossentropyloss_tensor;
            auto buffer_node_logreg__criterion__crossentropyloss_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_0_0_97));
            backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor_params.buffer_node = buffer_node_logreg__criterion__crossentropyloss_tensor;
            auto *backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor", partition_parent, &section_plasma, backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor_params);
            backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor->configure_node();
            backing_pmu_group_13_logreg__criterion__crossentropyloss_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
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
            /// Load Group #14            
            FrontingPmu::Params fronting_pmu_load_group_14_params;
            fronting_pmu_load_group_14_params.dram_layout_all = dram_layout_logreg__lin_layer__linear__outputs__0_1_0_39;
            fronting_pmu_load_group_14_params.vag_group_id = 0;
            fronting_pmu_load_group_14_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_98));
            auto *fronting_pmu_load_group_14 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_14", partition_parent, &section_plasma, fronting_pmu_load_group_14_params);
            fronting_pmu_load_group_14->configure_node();
            fronting_pmu_load_group_14->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #8            
            FrontingPmu::Params fronting_pmu_load_group_8_params;
            fronting_pmu_load_group_8_params.dram_layout_all = dram_layout_label_1_0_40;
            fronting_pmu_load_group_8_params.vag_group_id = 0;
            fronting_pmu_load_group_8_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_1_0_99));
            auto *fronting_pmu_load_group_8 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_8", partition_parent, &section_plasma, fronting_pmu_load_group_8_params);
            fronting_pmu_load_group_8->configure_node();
            fronting_pmu_load_group_8->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #9            
            FrontingPmu::Params fronting_pmu_load_group_9_params;
            fronting_pmu_load_group_9_params.dram_layout_all = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41;
            fronting_pmu_load_group_9_params.vag_group_id = 0;
            fronting_pmu_load_group_9_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_1_0_100));
            auto *fronting_pmu_load_group_9 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_9", partition_parent, &section_plasma, fronting_pmu_load_group_9_params);
            fronting_pmu_load_group_9->configure_node();
            fronting_pmu_load_group_9->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #15            
            FrontingPmu::Params fronting_pmu_load_group_15_params;
            fronting_pmu_load_group_15_params.dram_layout_all = dram_layout_logreg__lin_layer__linear__outputs__0__grad_1_0_43;
            fronting_pmu_load_group_15_params.vag_group_id = 0;
            fronting_pmu_load_group_15_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_103));
            auto *fronting_pmu_load_group_15 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_15", partition_parent, &section_plasma, fronting_pmu_load_group_15_params);
            fronting_pmu_load_group_15->configure_node();
            fronting_pmu_load_group_15->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #16            
            FrontingPmu::Params fronting_pmu_load_group_16_params;
            fronting_pmu_load_group_16_params.dram_layout_all = dram_layout_image_1_0_46;
            fronting_pmu_load_group_16_params.vag_group_id = 0;
            fronting_pmu_load_group_16_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_104));
            auto *fronting_pmu_load_group_16 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_16", partition_parent, &section_plasma, fronting_pmu_load_group_16_params);
            fronting_pmu_load_group_16->configure_node();
            fronting_pmu_load_group_16->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #17;
            BackingPmu::Params backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor_params;
            backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor_params.host_fifo_use = false;
            backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor_params.dram_layout_all = dram_layout_logreg__lin_layer__linear_bwd_weight_tensor;
            auto buffer_node_logreg__lin_layer__linear_bwd_weight_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_106));
            backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor_params.buffer_node = buffer_node_logreg__lin_layer__linear_bwd_weight_tensor;
            auto *backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor", partition_parent, &section_plasma, backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor_params);
            backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor->configure_node();
            backing_pmu_group_17_logreg__lin_layer__linear_bwd_weight_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
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
            /// Load Group #7            
            FrontingPmu::Params fronting_pmu_load_group_7_params;
            fronting_pmu_load_group_7_params.dram_layout_all = dram_layout_group_7;
            std::vector<BufferNode *> gbufs_load_group_7 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight_2_0_51)                
            };
            fronting_pmu_load_group_7_params.static_buffers = gbufs_load_group_7;
            fronting_pmu_load_group_7_params.atom_transpose = false;
            auto *fronting_pmu_load_group_7 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_7", partition_parent, &section_plasma, fronting_pmu_load_group_7_params);
            fronting_pmu_load_group_7->configure_node();
            fronting_pmu_load_group_7->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #11            
            FrontingPmu::Params fronting_pmu_load_group_11_params;
            fronting_pmu_load_group_11_params.dram_layout_all = dram_layout_group_11;
            std::vector<BufferNode *> gbufs_load_group_11 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight__grad_2_0_52)                
            };
            fronting_pmu_load_group_11_params.static_buffers = gbufs_load_group_11;
            fronting_pmu_load_group_11_params.atom_transpose = false;
            auto *fronting_pmu_load_group_11 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_11", partition_parent, &section_plasma, fronting_pmu_load_group_11_params);
            fronting_pmu_load_group_11->configure_node();
            fronting_pmu_load_group_11->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            /// Load Group #10            
            FrontingPmu::Params fronting_pmu_load_group_10_params;
            fronting_pmu_load_group_10_params.dram_layout_all = dram_layout_group_10;
            std::vector<BufferNode *> gbufs_load_group_10 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight__sgd0__momentum_2_0_53)                
            };
            fronting_pmu_load_group_10_params.static_buffers = gbufs_load_group_10;
            fronting_pmu_load_group_10_params.atom_transpose = false;
            auto *fronting_pmu_load_group_10 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_10", partition_parent, &section_plasma, fronting_pmu_load_group_10_params);
            fronting_pmu_load_group_10->configure_node();
            fronting_pmu_load_group_10->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #7;
            BackingPmu::Params backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor_params;
            backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor_params.host_fifo_use = false;
            backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor_params.dram_layout_all = dram_layout_group_7;
            std::vector<WeightsBuffer *> wbufs_group_7 {
                node.wbuf_out(arc::LogregTorchSamba::Output::klogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor)                
            };
            backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor_params.weights_buffers = wbufs_group_7;
            backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor_params.generate_allrddone = true;
            auto *backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor", partition_parent, &section_plasma, backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor_params);
            backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor->configure_node();
            backing_pmu_group_7_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #10;
            BackingPmu::Params backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1_params;
            backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1_params.host_fifo_use = false;
            backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1_params.dram_layout_all = dram_layout_group_10;
            std::vector<WeightsBuffer *> wbufs_group_10 {
                node.wbuf_out(arc::LogregTorchSamba::Output::klogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1)                
            };
            backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1_params.weights_buffers = wbufs_group_10;
            backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1_params.generate_allrddone = true;
            auto *backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1", partition_parent, &section_plasma, backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1_params);
            backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1->configure_node();
            backing_pmu_group_10_logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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
            fronting_pmu_load_group_0_params.dram_layout_all = dram_layout_accum_dummy_0_3_0_84;
            fronting_pmu_load_group_0_params.vag_group_id = 0;
            fronting_pmu_load_group_0_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_3_0_115));
            fronting_pmu_load_group_0_params.argin_dram_base = RuntimeParameter<uint64_t>(0, "dp_accum_base_address_0", ArgInOption::Annotation::kDPReduceAccumBaseAddress);
            fronting_pmu_load_group_0_params.argin_multi_load = RuntimeParameter<uint32_t>(2, "dp_reduce_region_size_0", "dp_reduce_region_size_0", ArgInOption::Annotation::kDPReduceSize, 2);
            fronting_pmu_load_group_0_params.argin_dram_offset = RuntimeParameter<uint64_t>(0, "dp_offset_0");
            auto *fronting_pmu_load_group_0 = section_plasma.create_node<FrontingPmu>("s3.fronting_pmu_load_group_0", partition_parent, &section_plasma, fronting_pmu_load_group_0_params);
            fronting_pmu_load_group_0->configure_node();
            fronting_pmu_load_group_0->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 2);
            loads.back().is_lut = false;
            
            /// Load Group #19            
            FrontingPmu::Params fronting_pmu_load_group_19_params;
            fronting_pmu_load_group_19_params.dram_layout_all = dram_layout_accum_dummy_0_reduce_buf_3_0_85;
            fronting_pmu_load_group_19_params.vag_group_id = 0;
            fronting_pmu_load_group_19_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_3_0_116));
            fronting_pmu_load_group_19_params.argin_dram_base = RuntimeParameter<uint64_t>(0, "dp_base_address_0", ArgInOption::Annotation::kDPReduceBaseAddress);
            fronting_pmu_load_group_19_params.argin_multi_load = RuntimeParameter<uint32_t>(2, "dp_reduce_region_size_0", "dp_reduce_region_size_0", ArgInOption::Annotation::kDPReduceSize, 2);
            fronting_pmu_load_group_19_params.argin_dram_offset = RuntimeParameter<uint64_t>(0, "dp_reduce_offset_0");
            auto *fronting_pmu_load_group_19 = section_plasma.create_node<FrontingPmu>("s3.fronting_pmu_load_group_19", partition_parent, &section_plasma, fronting_pmu_load_group_19_params);
            fronting_pmu_load_group_19->configure_node();
            fronting_pmu_load_group_19->configure_dram_load(loads, false, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 2);
            loads.back().is_lut = false;
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #20;
            BackingPmu::Params backing_pmu_group_20_accum_dummy_0_3_0_88_params;
            backing_pmu_group_20_accum_dummy_0_3_0_88_params.host_fifo_use = false;
            backing_pmu_group_20_accum_dummy_0_3_0_88_params.dram_layout_all = dram_layout_accum_dummy_0_3_0_88;
            auto buffer_node_accum_dummy_0_3_0_88 = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf2a_3_0_107));
            backing_pmu_group_20_accum_dummy_0_3_0_88_params.buffer_node = buffer_node_accum_dummy_0_3_0_88;
            backing_pmu_group_20_accum_dummy_0_3_0_88_params.argin_dram_offset = RuntimeParameter<uint64_t>(0, "dp_offset_0");
            backing_pmu_group_20_accum_dummy_0_3_0_88_params.argin_multi_store = RuntimeParameter<uint32_t>(2, "dp_reduce_region_size_0", "dp_reduce_region_size_0", ArgInOption::Annotation::kDPReduceSize, 2);
            backing_pmu_group_20_accum_dummy_0_3_0_88_params.argin_dram_base = RuntimeParameter<uint64_t>(0, "dp_accum_base_address_0", ArgInOption::Annotation::kDPReduceAccumBaseAddress);
            auto *backing_pmu_group_20_accum_dummy_0_3_0_88 = section_plasma.create_node<BackingPmu>("s3.backing_pmu_group_20_accum_dummy_0_3_0_88", partition_parent, &section_plasma, backing_pmu_group_20_accum_dummy_0_3_0_88_params);
            backing_pmu_group_20_accum_dummy_0_3_0_88->configure_node();
            backing_pmu_group_20_accum_dummy_0_3_0_88->configure_dram_store(stores, /*multi_reverse*/false, /*multi_reverse_group_size*/0);
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

