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
    std::string output_path = "/qfs/people/jain432/pacer_saudade/code/sample_scripts/out/logreg_09_03_28/arc_gen/../";
    make_dirs(output_path);
    BitfileTypePerChip chip_types (1);
    std::fill(chip_types.begin(), chip_types.end(), BitfileType::kFourTile);
    mlir::shared::util::cl_output_folder.setInitialValue("/qfs/people/jain432/pacer_saudade/code/sample_scripts/out/logreg_09_03_28/arc_gen/../");
    mlir::shared::util::cl_pef_name.setInitialValue("logreg_09_03_28");
    mlir::rail::RAIL rail(argc, argv);
    rail.init_plasma(chip_types, 3, {"$FWD", "$BCKWD", "$OPT"}, {"logreg__lin_layer__linear_as_initial", "logreg__criterion__crossentropyloss_bwd_loss_as_initial", "logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_as_initial"});
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
    plasma.workspace().get_pef_metadata()["model"] = "LogReg(\x0A  (lin_layer): Linear(in_features=784, out_features=10, bias=False)\x0A  (criterion): CrossEntropyLoss()\x0A)";
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
    /// Input Group #2
    std::vector<PlasmaRegion> group_2_tensors {
        {{10, 784}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "logreg__lin_layer__weight", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_2;
    io_config_group_2.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_2.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_2.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_2.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_2 = add_plasma_input_group(plasma, group_2_tensors, io_config_group_2, "group_2");
    TensorLayout dram_layout_group_2 = group_2.dram_layout;
    TensorLayout dram_layout_logreg__lin_layer__weight = group_2.dram_sub_layouts.at(0);
    TensorLayout dram_layout_logreg__lin_layer__weight_2_0_44 = dram_layout_logreg__lin_layer__weight;
    TensorLayout pmu_layout_logreg__lin_layer__weight_2_0_44 = group_2.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight_2_0_44.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__weight_0_0_24 = dram_layout_logreg__lin_layer__weight;
    TensorLayout pmu_layout_logreg__lin_layer__weight_0_0_24 = group_2.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight_0_0_24.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__weight_2_0_48 = dram_layout_logreg__lin_layer__weight;
    TensorLayout pmu_layout_logreg__lin_layer__weight_2_0_48 = dram_layout_logreg__lin_layer__weight_2_0_48.vector_align().at_address(0);
    
    /// Input Group #0
    std::vector<PlasmaRegion> group_0_tensors {
        {{784, 1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "image", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_0;
    io_config_group_0.python_transforms.push_back(std::make_pair(".transpose(-1,-2)", ".transpose(-1,-2)"));
    io_config_group_0.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_0.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    io_config_group_0.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_0.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_0 = add_plasma_input_group(plasma, group_0_tensors, io_config_group_0, "group_0");
    TensorLayout dram_layout_group_0 = group_0.dram_layout;
    TensorLayout dram_layout_image = group_0.dram_sub_layouts.at(0);
    TensorLayout dram_layout_image_1_0_39 = dram_layout_image;
    TensorLayout pmu_layout_image_1_0_39 = group_0.pmu_layouts.at(0);
    pmu_layout_image_1_0_39.set_vector_transposed(true);
    TensorLayout dram_layout_image_0_0_25 = dram_layout_image;
    TensorLayout pmu_layout_image_0_0_25 = group_0.pmu_layouts.at(0).vector_align().at_address(0);
    pmu_layout_image_0_0_25.set_vector_transposed(true);
    
    /// Input Group #3
    std::vector<PlasmaRegion> group_3_tensors {
        {{1}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kRowMajorVectorAligned,  "logreg__criterion__crossentropyloss__outputs__0__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_3;
    io_config_group_3.python_transforms.push_back(std::make_pair("", ".mean()"));
    io_config_group_3.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_3.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    io_config_group_3.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_3.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_3 = add_plasma_input_group(plasma, group_3_tensors, io_config_group_3, "group_3");
    TensorLayout dram_layout_group_3 = group_3.dram_layout;
    TensorLayout dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad = group_3.dram_sub_layouts.at(0);
    TensorLayout dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36 = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad;
    TensorLayout pmu_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36 = group_3.pmu_layouts.at(0);
    
    /// Input Group #4
    std::vector<PlasmaRegion> group_4_tensors {
        {{1}, node_constants::TemplateDataFormats::kInt16(), PhysicalLayout::kRowMajorVectorAligned,  "label", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_4;
    io_config_group_4.python_transforms.push_back(std::make_pair(".short()", ""));
    io_config_group_4.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_4.input_memory_annotation = TensorInputMemoryAnnotation::kInputMemory;
    io_config_group_4.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_4.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_4 = add_plasma_input_group(plasma, group_4_tensors, io_config_group_4, "group_4");
    TensorLayout dram_layout_group_4 = group_4.dram_layout;
    TensorLayout dram_layout_label = group_4.dram_sub_layouts.at(0);
    TensorLayout dram_layout_label_1_0_35 = dram_layout_label;
    TensorLayout pmu_layout_label_1_0_35 = group_4.pmu_layouts.at(0);
    TensorLayout dram_layout_label_0_0_29 = dram_layout_label;
    TensorLayout pmu_layout_label_0_0_29 = group_4.pmu_layouts.at(0);
    
    /// Input Group #5
    std::vector<PlasmaRegion> group_5_tensors {
        {{10, 784}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "logreg__lin_layer__weight__sgd0__momentum", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_5;
    io_config_group_5.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_5.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_5.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_5.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_5 = add_plasma_input_group(plasma, group_5_tensors, io_config_group_5, "group_5");
    TensorLayout dram_layout_group_5 = group_5.dram_layout;
    TensorLayout dram_layout_logreg__lin_layer__weight__sgd0__momentum = group_5.dram_sub_layouts.at(0);
    TensorLayout dram_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_46 = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_46 = group_5.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_46.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_49 = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    TensorLayout pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_49 = dram_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_49.vector_align().at_address(0);
    
    /// DRAM and PMU layouts for logreg__lin_layer__linear__outputs__0
    PlasmaIOConfig io_config_logreg__lin_layer__linear__outputs__0;
    io_config_logreg__lin_layer__linear__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_logreg__lin_layer__linear__outputs__0.python_transforms.push_back(std::make_pair("", ""));
    io_config_logreg__lin_layer__linear__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_logreg__lin_layer__linear__outputs__0 = add_plasma_input(plasma, {1, 10}, node_constants::TemplateDataFormats::kBf16(), io_config_logreg__lin_layer__linear__outputs__0, "logreg__lin_layer__linear__outputs__0", {});
    TensorLayout dram_layout_logreg__lin_layer__linear__outputs__0_1_0_34 = dram_layout_logreg__lin_layer__linear__outputs__0;
    TensorLayout pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_34 = dram_layout_logreg__lin_layer__linear__outputs__0_1_0_34.vector_align().at_address(0);
    pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_34.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__linear_t_output0_tensor = dram_layout_logreg__lin_layer__linear__outputs__0;
    TensorLayout pmu_layout_logreg__lin_layer__linear_t_output0_tensor = dram_layout_logreg__lin_layer__linear_t_output0_tensor.vector_align().at_address(0);
    /// Input Group #6
    std::vector<PlasmaRegion> group_6_tensors {
        {{10, 784}, node_constants::TemplateDataFormats::kBf16(), PhysicalLayout::kColumnVectorRowMajor,  "logreg__lin_layer__weight__grad", TensorSourceAnnotation::kUserFacing, TensorWeightAnnotation::kNonWeight, TensorSymbolAnnotation::kMarkNone, {}}        
    };
    PlasmaIOConfig io_config_group_6;
    io_config_group_6.python_transforms.push_back(std::make_pair("", ""));
    io_config_group_6.memory_annotation = TensorMemoryAnnotation::kDDR;
    io_config_group_6.source_annotation = TensorSourceAnnotation::kCompilerGen;
    io_config_group_6.weight_annotation = TensorWeightAnnotation::kNonWeight;
    PlasmaInputGroup group_6 = add_plasma_input_group(plasma, group_6_tensors, io_config_group_6, "group_6");
    TensorLayout dram_layout_group_6 = group_6.dram_layout;
    TensorLayout dram_layout_logreg__lin_layer__weight__grad = group_6.dram_sub_layouts.at(0);
    TensorLayout dram_layout_logreg__lin_layer__weight__grad_2_0_45 = dram_layout_logreg__lin_layer__weight__grad;
    TensorLayout pmu_layout_logreg__lin_layer__weight__grad_2_0_45 = group_6.pmu_layouts.at(0);
    pmu_layout_logreg__lin_layer__weight__grad_2_0_45.set_vector_transposed(true);
    TensorLayout dram_layout_logreg__lin_layer__linear_bwd_weight_tensor = dram_layout_logreg__lin_layer__weight__grad;
    TensorLayout pmu_layout_logreg__lin_layer__linear_bwd_weight_tensor = dram_layout_logreg__lin_layer__linear_bwd_weight_tensor.vector_align().at_address(0);
    
    
    /** Add Plasma Outputs **/
    /// DRAM and PMU layouts for logreg__criterion__crossentropyloss__outputs__0
    PlasmaIOConfig io_config_logreg__criterion__crossentropyloss__outputs__0;
    io_config_logreg__criterion__crossentropyloss__outputs__0.conv = PhysicalLayout::kRowMajorVectorAligned;
    io_config_logreg__criterion__crossentropyloss__outputs__0.python_transforms.push_back(std::make_pair("", ".mean()"));
    io_config_logreg__criterion__crossentropyloss__outputs__0.memory_annotation = TensorMemoryAnnotation::kHost;
    TensorLayout dram_layout_logreg__criterion__crossentropyloss__outputs__0 = add_plasma_output(plasma, {1}, node_constants::TemplateDataFormats::kBf16(), io_config_logreg__criterion__crossentropyloss__outputs__0, "logreg__criterion__crossentropyloss__outputs__0", {});
    TensorLayout dram_layout_logreg__criterion__crossentropyloss_tensor = dram_layout_logreg__criterion__crossentropyloss__outputs__0;
    TensorLayout pmu_layout_logreg__criterion__crossentropyloss_tensor = dram_layout_logreg__criterion__crossentropyloss_tensor.vector_align().at_address(0);
    
    
    /** Add Plasma Outputs References **/
    
    
    /** Section Calls **/
    plasma.workspace().add_section_call(0, {
        dram_layout_logreg__lin_layer__weight.symbol_handle()        ,
        dram_layout_group_2.symbol_handle()        ,
        dram_layout_image.symbol_handle()        ,
        dram_layout_label.symbol_handle()        ,
        dram_layout_group_4.symbol_handle()        ,
        dram_layout_logreg__lin_layer__linear__outputs__0.symbol_handle()        ,
        dram_layout_logreg__criterion__crossentropyloss__outputs__0.symbol_handle()        
        }, true);
    plasma.workspace().add_section_call(1, {
        dram_layout_logreg__lin_layer__linear__outputs__0.symbol_handle()        ,
        dram_layout_label.symbol_handle()        ,
        dram_layout_group_4.symbol_handle()        ,
        dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad.symbol_handle()        ,
        dram_layout_group_3.symbol_handle()        ,
        dram_layout_image.symbol_handle()        ,
        dram_layout_group_0.symbol_handle()        ,
        dram_layout_logreg__lin_layer__weight__grad.symbol_handle()        ,
        dram_layout_group_6.symbol_handle()        
        }, true);
    plasma.workspace().add_section_call(2, {
        dram_layout_logreg__lin_layer__weight.symbol_handle()        ,
        dram_layout_group_2.symbol_handle()        ,
        dram_layout_logreg__lin_layer__weight__grad.symbol_handle()        ,
        dram_layout_group_6.symbol_handle()        ,
        dram_layout_logreg__lin_layer__weight__sgd0__momentum.symbol_handle()        ,
        dram_layout_group_5.symbol_handle()        
        }, true);
    
    /** Instantiate Node **/
    arc::LogregTorchSamba::Params params;
    params.logreg__lin_layer__weight_2_0_44 = pmu_layout_logreg__lin_layer__weight_2_0_44;
    params.logreg__lin_layer__weight_0_0_24 = pmu_layout_logreg__lin_layer__weight_0_0_24;
    params.logreg__lin_layer__weight_dram_in = dram_layout_logreg__lin_layer__weight;
    params.image_1_0_39 = pmu_layout_image_1_0_39;
    params.image_0_0_25 = pmu_layout_image_0_0_25;
    params.image_dram_in = dram_layout_image;
    params.logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36 = pmu_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36;
    params.logreg__criterion__crossentropyloss__outputs__0__grad_dram_in = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad;
    params.label_1_0_35 = pmu_layout_label_1_0_35;
    params.label_0_0_29 = pmu_layout_label_0_0_29;
    params.label_dram_in = dram_layout_label;
    params.logreg__lin_layer__weight__sgd0__momentum_2_0_46 = pmu_layout_logreg__lin_layer__weight__sgd0__momentum_2_0_46;
    params.logreg__lin_layer__weight__sgd0__momentum_dram_in = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    params.logreg__lin_layer__linear__outputs__0_1_0_34 = pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_34;
    params.logreg__lin_layer__linear__outputs__0_dram_in = dram_layout_logreg__lin_layer__linear__outputs__0;
    params.logreg__lin_layer__weight__grad_2_0_45 = pmu_layout_logreg__lin_layer__weight__grad_2_0_45;
    params.logreg__lin_layer__weight__grad_dram_in = dram_layout_logreg__lin_layer__weight__grad;
    params.logreg__lin_layer__weight_dram_out = dram_layout_logreg__lin_layer__weight;
    params.logreg__lin_layer__weight__sgd0__momentum_dram_out = dram_layout_logreg__lin_layer__weight__sgd0__momentum;
    params.logreg__lin_layer__linear__outputs__0_dram_out = dram_layout_logreg__lin_layer__linear__outputs__0;
    params.logreg__criterion__crossentropyloss__outputs__0_dram_out = dram_layout_logreg__criterion__crossentropyloss__outputs__0;
    params.logreg__lin_layer__weight__grad_dram_out = dram_layout_logreg__lin_layer__weight__grad;
    
    
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
            /// Load Group #2
            FrontingPmu::Params fronting_pmu_load_group_2_params;
            fronting_pmu_load_group_2_params.dram_layout_all = dram_layout_group_2;
            std::vector<BufferNode *> gbufs_load_group_2 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight_0_0_24)                
            };
            fronting_pmu_load_group_2_params.static_buffers = gbufs_load_group_2;
            fronting_pmu_load_group_2_params.atom_transpose = false;
            auto *fronting_pmu_load_group_2 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_2", partition_parent, &section_plasma, fronting_pmu_load_group_2_params);
            fronting_pmu_load_group_2->configure_node();
            fronting_pmu_load_group_2->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Input image_0_0_25
            DramInput dram_input_image_0_0_25;
            DramLoadParams image_0_0_25_load_params;
            dram_input_image_0_0_25.dram_layout = dram_layout_image_0_0_25;
            dram_input_image_0_0_25.pmu_layout = pmu_layout_image_0_0_25;
            image_0_0_25_load_params.load_once = false;
            image_0_0_25_load_params.vector_transpose = false;
            dram_input_image_0_0_25.sinks = node.input_list(arc::LogregTorchSamba::Input::kimage_0_0_25);
            dram_input_image_0_0_25.params = image_0_0_25_load_params;
            dram_input_image_0_0_25.is_lut = false;
            dram_input_image_0_0_25.group_id = 0;
            dram_input_image_0_0_25.timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.push_back(dram_input_image_0_0_25);
            
            /// Load Group #4
            FrontingPmu::Params fronting_pmu_load_group_4_params;
            fronting_pmu_load_group_4_params.dram_layout_all = dram_layout_label_0_0_29;
            fronting_pmu_load_group_4_params.vag_group_id = 0;
            fronting_pmu_load_group_4_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_0_0_73));
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s0.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Output logreg__lin_layer__linear_t_output0_tensor
            DramOutput dram_output_logreg__lin_layer__linear_t_output0_tensor;
            DramStoreParams logreg__lin_layer__linear_t_output0_tensor_store_params;
            dram_output_logreg__lin_layer__linear_t_output0_tensor.dram_layout = dram_layout_logreg__lin_layer__linear_t_output0_tensor;
            dram_output_logreg__lin_layer__linear_t_output0_tensor.pmu_layout = pmu_layout_logreg__lin_layer__linear_t_output0_tensor;
            dram_output_logreg__lin_layer__linear_t_output0_tensor.source = node.output(arc::LogregTorchSamba::Output::klogreg__lin_layer__linear_t_output0_tensor);
            dram_output_logreg__lin_layer__linear_t_output0_tensor.params = logreg__lin_layer__linear_t_output0_tensor_store_params;
            dram_output_logreg__lin_layer__linear_t_output0_tensor.timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            stores.push_back(dram_output_logreg__lin_layer__linear_t_output0_tensor);
            
            /// Store Group #7;
            BackingPmu::Params backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor_params;
            auto buffer_node_logreg__criterion__crossentropyloss_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_0_0_75));
            backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor_params.buffer_node = buffer_node_logreg__criterion__crossentropyloss_tensor;
            backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor_params.dram_layout_all = dram_layout_logreg__criterion__crossentropyloss_tensor;
            auto *backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor = section_plasma.create_node<BackingPmu>("s0.backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor", partition_parent, &section_plasma, backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor_params);
            backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor->configure_node();
            backing_pmu_group_7_logreg__criterion__crossentropyloss_tensor->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
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
            /// Load Input logreg__lin_layer__linear__outputs__0_1_0_34
            DramInput dram_input_logreg__lin_layer__linear__outputs__0_1_0_34;
            DramLoadParams logreg__lin_layer__linear__outputs__0_1_0_34_load_params;
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.dram_layout = dram_layout_logreg__lin_layer__linear__outputs__0_1_0_34;
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.pmu_layout = pmu_layout_logreg__lin_layer__linear__outputs__0_1_0_34;
            logreg__lin_layer__linear__outputs__0_1_0_34_load_params.load_once = false;
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.sinks = node.input_list(arc::LogregTorchSamba::Input::klogreg__lin_layer__linear__outputs__0_1_0_34);
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.params = logreg__lin_layer__linear__outputs__0_1_0_34_load_params;
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.is_lut = false;
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.group_id = 0;
            dram_input_logreg__lin_layer__linear__outputs__0_1_0_34.timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            loads.push_back(dram_input_logreg__lin_layer__linear__outputs__0_1_0_34);
            
            /// Load Group #4
            FrontingPmu::Params fronting_pmu_load_group_4_params;
            fronting_pmu_load_group_4_params.dram_layout_all = dram_layout_label_1_0_35;
            fronting_pmu_load_group_4_params.vag_group_id = 0;
            fronting_pmu_load_group_4_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_1_0_77));
            auto *fronting_pmu_load_group_4 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_4", partition_parent, &section_plasma, fronting_pmu_load_group_4_params);
            fronting_pmu_load_group_4->configure_node();
            fronting_pmu_load_group_4->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #3
            FrontingPmu::Params fronting_pmu_load_group_3_params;
            fronting_pmu_load_group_3_params.dram_layout_all = dram_layout_logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36;
            fronting_pmu_load_group_3_params.vag_group_id = 0;
            fronting_pmu_load_group_3_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::ktbuf1a_1_0_78));
            auto *fronting_pmu_load_group_3 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_3", partition_parent, &section_plasma, fronting_pmu_load_group_3_params);
            fronting_pmu_load_group_3->configure_node();
            fronting_pmu_load_group_3->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #8
            FrontingPmu::Params fronting_pmu_load_group_8_params;
            fronting_pmu_load_group_8_params.dram_layout_all = dram_layout_image_1_0_39;
            fronting_pmu_load_group_8_params.vag_group_id = 0;
            fronting_pmu_load_group_8_params.dynamic_buffers.push_back((BufferNode *)node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_81));
            auto *fronting_pmu_load_group_8 = section_plasma.create_node<FrontingPmu>("s1.fronting_pmu_load_group_8", partition_parent, &section_plasma, fronting_pmu_load_group_8_params);
            fronting_pmu_load_group_8->configure_node();
            fronting_pmu_load_group_8->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #9;
            BackingPmu::Params backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor_params;
            auto buffer_node_logreg__lin_layer__linear_bwd_weight_tensor = static_cast<BufferNode *>(node.get_node(arc::LogregTorchSamba::NodeEnum::kgbuf1a_1_0_83));
            backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor_params.buffer_node = buffer_node_logreg__lin_layer__linear_bwd_weight_tensor;
            backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor_params.dram_layout_all = dram_layout_logreg__lin_layer__linear_bwd_weight_tensor;
            auto *backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor = section_plasma.create_node<BackingPmu>("s1.backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor", partition_parent, &section_plasma, backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor_params);
            backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor->configure_node();
            backing_pmu_group_9_logreg__lin_layer__linear_bwd_weight_tensor->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
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
            /// Load Group #2
            FrontingPmu::Params fronting_pmu_load_group_2_params;
            fronting_pmu_load_group_2_params.dram_layout_all = dram_layout_group_2;
            std::vector<BufferNode *> gbufs_load_group_2 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight_2_0_44)                
            };
            fronting_pmu_load_group_2_params.static_buffers = gbufs_load_group_2;
            fronting_pmu_load_group_2_params.atom_transpose = false;
            auto *fronting_pmu_load_group_2 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_2", partition_parent, &section_plasma, fronting_pmu_load_group_2_params);
            fronting_pmu_load_group_2->configure_node();
            fronting_pmu_load_group_2->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #6
            FrontingPmu::Params fronting_pmu_load_group_6_params;
            fronting_pmu_load_group_6_params.dram_layout_all = dram_layout_group_6;
            std::vector<BufferNode *> gbufs_load_group_6 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight__grad_2_0_45)                
            };
            fronting_pmu_load_group_6_params.static_buffers = gbufs_load_group_6;
            fronting_pmu_load_group_6_params.atom_transpose = false;
            auto *fronting_pmu_load_group_6 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_6", partition_parent, &section_plasma, fronting_pmu_load_group_6_params);
            fronting_pmu_load_group_6->configure_node();
            fronting_pmu_load_group_6->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Load Group #5
            FrontingPmu::Params fronting_pmu_load_group_5_params;
            fronting_pmu_load_group_5_params.dram_layout_all = dram_layout_group_5;
            std::vector<BufferNode *> gbufs_load_group_5 {
                node.wbuf_in(arc::LogregTorchSamba::Input::klogreg__lin_layer__weight__sgd0__momentum_2_0_46)                
            };
            fronting_pmu_load_group_5_params.static_buffers = gbufs_load_group_5;
            fronting_pmu_load_group_5_params.atom_transpose = false;
            auto *fronting_pmu_load_group_5 = section_plasma.create_node<FrontingPmu>("s2.fronting_pmu_load_group_5", partition_parent, &section_plasma, fronting_pmu_load_group_5_params);
            fronting_pmu_load_group_5->configure_node();
            fronting_pmu_load_group_5->configure_dram_load(loads, false, /*multi_reverse*/false);
            loads.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            
            /** DRAM Stores **/
            std::vector<DramOutput> stores;
            /// Store Group #2;
            BackingPmu::Params backing_pmu_group_2_logreg__lin_layer__weight_2_0_48_params;
            std::vector<WeightsBuffer *> wbufs_group_2 {
                node.wbuf_out(arc::LogregTorchSamba::Output::klogreg__lin_layer__weight_2_0_48)                
            };
            backing_pmu_group_2_logreg__lin_layer__weight_2_0_48_params.weights_buffers = wbufs_group_2;
            backing_pmu_group_2_logreg__lin_layer__weight_2_0_48_params.dram_layout_all = dram_layout_group_2;
            backing_pmu_group_2_logreg__lin_layer__weight_2_0_48_params.generate_allrddone = true;
            auto *backing_pmu_group_2_logreg__lin_layer__weight_2_0_48 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_2_logreg__lin_layer__weight_2_0_48", partition_parent, &section_plasma, backing_pmu_group_2_logreg__lin_layer__weight_2_0_48_params);
            backing_pmu_group_2_logreg__lin_layer__weight_2_0_48->configure_node();
            backing_pmu_group_2_logreg__lin_layer__weight_2_0_48->configure_dram_store(stores, /*multi_reverse*/false);
            stores.back().timing_group = std::make_pair(TimingGroup::kExecGroup, 1);
            
            /// Store Group #5;
            BackingPmu::Params backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49_params;
            std::vector<WeightsBuffer *> wbufs_group_5 {
                node.wbuf_out(arc::LogregTorchSamba::Output::klogreg__lin_layer__weight__sgd0__momentum_2_0_49)                
            };
            backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49_params.weights_buffers = wbufs_group_5;
            backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49_params.dram_layout_all = dram_layout_group_5;
            backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49_params.generate_allrddone = true;
            auto *backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49 = section_plasma.create_node<BackingPmu>("s2.backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49", partition_parent, &section_plasma, backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49_params);
            backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49->configure_node();
            backing_pmu_group_5_logreg__lin_layer__weight__sgd0__momentum_2_0_49->configure_dram_store(stores, /*multi_reverse*/false);
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

