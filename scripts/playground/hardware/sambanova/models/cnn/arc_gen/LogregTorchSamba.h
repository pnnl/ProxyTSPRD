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
#ifndef PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
#define PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_

#include "Core/SuperNode.h"
#include "Core/Workspace/Definitions.h"
#include "Util/Definitions.h"
#include "Util/NodesUtility.h"
#include "Util/TestHelpers.h"

#include "mlnodes/Accumulator.h"
#include "mlnodes/BackingPmu.h"
#include "mlnodes/Buf.h"
#include "mlnodes/FrontingPmu.h"
#include "mlnodes/LoadTiler.h"
#include "mlnodes/StoreTiler.h"
#include "mlnodes/View.h"
#include "mlnodes/WeightsBuffer.h"
#include "rail/ir/TBufferSyntax.h"
#include "rail/node/tbuffer/TBufferView.h"
#include "subnetworks/SubnetType.h"
#include "shared/compiler/CompilerOptions.h"

#include "prism/Emul/Tensor.h"
#include "mlnodes/NBuffer.h"
#include "mlnodes/Index.h"
#include "mlnodes/GBuffer.h"
#include "mlnodes/View.h"
#include "mlnodes/ListBuffer.h"
#include "mlnodes/ScatterBuffer.h"
#include "mlnodes/KernelGBuffer.h"
#include "mlnodes/BigGemm.h"
#include "mlnodes/BiasTransposeAdd.h"
#include "mlnodes/StreamingTranspose.h"
#include "mlnodes/BiasAdd.h"
#include "mlnodes/Transpose.h"
#include "mlnodes/BinaryOps.h"
#include "mlnodes/MeanP.h"
#include "mlnodes/Buf.h"
#include "mlnodes/MeanPB.h"
#include "mlnodes/ScaleS.h"
#include "mlnodes/AddN.h"
#include "mlnodes/BiasTransposeGrad.h"
#include "compiler/apps/rail/par_accum/template/ParAccum.h"
#include "mlnodes/OptimizerSGD.h"

namespace prism {
namespace plasma {
namespace arc {
class LogregTorchSamba: public SuperNode {

public:
    /// Input Params struct
    struct Params {
        TensorLayout inp_window_slice_1_1_0_124;
        TensorLayout inp_window_slice_1_0_0_83;
        TensorLayout inp_window_slice_1_dram_in;
        TensorLayout inp_window_1_0_268;
        TensorLayout inp_window_0_0_262;
        TensorLayout inp_window_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias_2_0_142;
        TensorLayout ptconvlstm__conv_layer__bias_0_0_88;
        TensorLayout ptconvlstm__conv_layer__bias_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight_2_0_148;
        TensorLayout ptconvlstm__conv_layer__weight_0_0_87;
        TensorLayout ptconvlstm__conv_layer__weight_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias_2_0_154;
        TensorLayout ptconvlstm__dense_layer__bias_0_0_93;
        TensorLayout ptconvlstm__dense_layer__bias_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight_1_0_335;
        TensorLayout ptconvlstm__dense_layer__weight_2_0_160;
        TensorLayout ptconvlstm__dense_layer__weight_0_0_92;
        TensorLayout ptconvlstm__dense_layer__weight_dram_in;
        TensorLayout out_window_1_0_264;
        TensorLayout out_window_0_0_263;
        TensorLayout out_window_dram_in;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__view__outputs__0__grad_1_0_267;
        TensorLayout ptconvlstm__view__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269;
        TensorLayout ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_in;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight__grad_2_0_149;
        TensorLayout ptconvlstm__conv_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias__grad_2_0_143;
        TensorLayout ptconvlstm__conv_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__grad_2_0_161;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__grad_2_0_155;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374;
        TensorLayout ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_dram_in;
        TensorLayout gather_gradient_output_reshape_id1__gather_list_1_0_375;
        TensorLayout gather_gradient_output_reshape_id1__gather_list_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376;
        TensorLayout ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias_dram_out;
        TensorLayout ptconvlstm__conv_layer__weight_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight_dram_out;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_out;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_out;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0_dram_out;
        TensorLayout ptconvlstm__view__outputs__0_dram_out;
        TensorLayout ptconvlstm__conv_layer__weight__grad_dram_out;
        TensorLayout ptconvlstm__conv_layer__bias__grad_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_out;
    };

    /// P2P dram layout
    
    /// Input enums
    enum Input {
        // Input
        kinp_window_slice_1_0_0_83        ,
        // Weight
        kptconvlstm__conv_layer__weight_0_0_87        ,
        // Weight
        kptconvlstm__conv_layer__bias_0_0_88        ,
        // Weight
        kptconvlstm__dense_layer__weight_0_0_92        ,
        // Weight
        kptconvlstm__dense_layer__bias_0_0_93        ,
        // Input
        kinp_window_0_0_262        ,
        // Input
        kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_conv_fwd_stream0__gather_list_0_0_374        ,
        // Input
        kout_window_0_0_263        ,
        // Input
        kinp_window_slice_1_1_0_124        ,
        // Input
        kout_window_1_0_264        ,
        // Input
        kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_265        ,
        // Input
        kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_266        ,
        // Input
        kptconvlstm__view__outputs__0__grad_1_0_267        ,
        // Weight
        kptconvlstm__dense_layer__weight_1_0_335        ,
        // Input
        kinp_window_1_0_268        ,
        // Input
        kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_376        ,
        // Input
        kptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_269        ,
        // Input
        kgather_gradient_output_reshape_id1__gather_list_1_0_375        ,
        // Weight
        kptconvlstm__conv_layer__bias_2_0_142        ,
        // Input
        kptconvlstm__conv_layer__bias__grad_2_0_143        ,
        // Weight
        kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144        ,
        // Weight
        kptconvlstm__conv_layer__weight_2_0_148        ,
        // Input
        kptconvlstm__conv_layer__weight__grad_2_0_149        ,
        // Weight
        kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150        ,
        // Weight
        kptconvlstm__dense_layer__bias_2_0_154        ,
        // Input
        kptconvlstm__dense_layer__bias__grad_2_0_155        ,
        // Weight
        kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156        ,
        // Weight
        kptconvlstm__dense_layer__weight_2_0_160        ,
        // Input
        kptconvlstm__dense_layer__weight__grad_2_0_161        ,
        // Weight
        kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162        
    };

    /// Output enums
    enum Output {
        // Output
        kptconvlstm__conv_layer__conv1d__squeeze_Reshape0_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_270        ,
        // Output
        kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_271        ,
        // Output
        kptconvlstm__criterion__mseloss__outputs__0_0_0_272        ,
        // Output
        kptconvlstm__view__outputs__0_0_0_273        ,
        // Output
        kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor        ,
        // Output
        kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_tensor1        ,
        // Output
        kptconvlstm__dense_layer__linear_bwd_weight_tensor        ,
        // Output
        kptconvlstm__dense_layer__linear_bwd_weight_tensor1        ,
        // Weight
        kptconvlstm__conv_layer__bias_2_0_146        ,
        // Weight
        kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147        ,
        // Weight
        kptconvlstm__conv_layer__weight_2_0_152        ,
        // Weight
        kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153        ,
        // Weight
        kptconvlstm__dense_layer__bias_2_0_158        ,
        // Weight
        kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159        ,
        // Weight
        kptconvlstm__dense_layer__weight_2_0_164        ,
        // Weight
        kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf2u_0_0_176,
        kgbuf2u_0_0_178,
        kgbuf2u_0_0_180,
        klbuf1a_0_0_383,
        ksbuf2u_0_0_289,
        kbiggemm_0_0_291,
        kbiggemm_0_0_292,
        kbiggemm_0_0_293,
        kbiggemm_0_0_294,
        kbiggemm_0_0_295,
        kbiggemm_0_0_296,
        kbiggemm_0_0_297,
        kbiggemm_0_0_298,
        kbiggemm_0_0_299,
        kbiggemm_0_0_300,
        kbiggemm_0_0_301,
        kbiggemm_0_0_302,
        kbiggemm_0_0_303,
        kbiggemm_0_0_304,
        kbiggemm_0_0_305,
        kbiggemm_0_0_306,
        kbiggemm_0_0_307,
        kbiggemm_0_0_308,
        kbiggemm_0_0_309,
        kbiggemm_0_0_310,
        kbiggemm_0_0_311,
        kbiggemm_0_0_312,
        kgbuf2u_0_0_315,
        kgbuf2u_0_0_182,
        kgbuf2a_0_0_415,
        kptconvlstm__dense_layer__linear,
        kgbuf1a_0_0_381,
        kgbuf2u_0_0_186,
        kgbuf2a_0_0_416,
        kgbuf2u_0_0_194,
        kgbuf2u_0_0_196,
        kgbuf1a_0_0_417,
        kgbuf2u_1_0_221,
        kgbuf2u_1_0_224,
        kgbuf2u_1_0_225,
        kgbuf2u_1_0_228,
        kgbuf2u_1_0_233,
        kgbuf2u_1_0_236,
        kgbuf2u_1_0_238,
        kgbuf1a_1_0_388,
        kptconvlstm__dense_layer__linear_bwd_loss_grad_b,
        kgbuf2u_1_0_244,
        kgbuf2u_1_0_246,
        kgbuf2u_1_0_248,
        kgbuf2a_1_0_418,
        kgbuf2u_1_0_355,
        klbuf1a_1_0_391,
        ksbuf2u_1_0_358,
        kbiggemm_1_0_360,
        kbiggemm_1_0_361,
        kbiggemm_1_0_362,
        kbiggemm_1_0_363,
        kgbuf2u_1_0_365,
        kgbuf2a_1_0_392,
        kgbuf2u_1_0_254,
        kgbuf2u_1_0_255,
        kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum,
        kptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1,
        kgbuf2u_1_0_131,
        klbuf1a_1_0_393,
        ksbuf1a_1_0_394,
    };

    LogregTorchSamba(const std::string &name, const SuperNode *parent, mlir::rail::RAIL *rail, Params params, int64_t section_id);

    void configure(int64_t section_id);

    void construct_section0();
    void configure_section0();
    void construct_section1();
    void configure_section1();
    void construct_section2();
    void configure_section2();
    BufferNode *wbuf_in(Input input) const {
        switch (input) {
            case kptconvlstm__dense_layer__weight_0_0_92: return ptconvlstm__dense_layer__linear_->wbuf();
            case kptconvlstm__dense_layer__bias_0_0_93: return bias_add_0_0_378_->wbuf();
            case kptconvlstm__conv_layer__bias_2_0_142: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__bias__grad_2_0_143: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().gradient;
            case kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_144: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__weight_2_0_148: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__weight__grad_2_0_149: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().gradient;
            case kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_150: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias_2_0_154: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__grad_2_0_155: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_156: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__weight_2_0_160: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__grad_2_0_161: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_162: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            default:
              SN_UNREACHABLE("No WeightsBuffer defined for input " << input);
        }
    }
    
    WeightsBuffer *wbuf_out(Output output) const {
        switch (output) {
            case kptconvlstm__conv_layer__bias_2_0_146:             return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_147:             return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__weight_2_0_152:             return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_153:             return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias_2_0_158:             return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_159:             return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__weight_2_0_164:             return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_165:             return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            default:
              SN_UNREACHABLE("No WeightsBuffer defined for output" << output);
        }
    }
    
    /// Returns all Plasma units in a given partition
    SuperNode *partition_parent(Partition &partition) {
        if (partition.section_id == 0 && partition.chip_id == 0)
          return partition_0_0_;
        if (partition.section_id == 1 && partition.chip_id == 0)
          return partition_1_0_;
        if (partition.section_id == 2 && partition.chip_id == 0)
          return partition_2_0_;
        return nullptr;
    }
    
    /// Returns all Plasma units in a given partition
    std::vector<Unit *> units(Partition &partition) {
        if (auto *parent = partition_parent(partition))
          return plasma_->get_units_in_template_subgraph(parent);
        else
          return {};
    }
    
    /// Returns the internal done signals from all tiles in the given partition
    void register_tile_dones(Partition &partition) {
        if (partition.section_id == 0) {
            if (partition.chip_id == 0) {
            }
        }
        if (partition.section_id == 1) {
            if (partition.chip_id == 0) {
                add_template_tile_dones(ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output_list(BigGemm::kAccumulatorsDone), partition);
                add_template_tile_dones({ptconvlstm__dense_layer__linear_bwd_weight_grad_a_->ctrl_output(BigGemm::kBiasGradAccumulatorDone)}, partition);
            }
        }
        if (partition.section_id == 2) {
            if (partition.chip_id == 0) {
            }
        }
    }
    
    SuperNode* get_node(NodeEnum node_enum);
    
    TensorLayout result_layout(int id) const override { return result_layouts_.at(id).front(); }
    std::vector<TensorLayout> result_layouts(int64_t id) const override { return result_layouts_.at(id); }
    
    void add_node_result_layout(int id, const std::vector<TensorLayout> &layouts) { result_layouts_[id] = layouts; }
    void add_node_result_layout(int id, const TensorLayout &layout) { result_layouts_[id] = { layout }; }
    Params params_;
    std::unordered_map<int, std::vector<TensorLayout>> result_layouts_;
    /** Section 0, Chip 0 **/
    SuperNode *partition_0_0_;
    // loc("software/compiler/mac/src/pybind/py_air.cpp":1503:0): tlir.Buffer
    NBuffer* nbuf1a_0_0_382_;
    // loc("logreg_ts.py":191:0): tlir.Buffer
    NBuffer* nbuf2u_0_0_173_;
    // loc("logreg_ts.py":191:0): tlir.Buffer
    NBuffer* nbuf1u_0_0_174_;
    // loc("logreg_ts.py":191:0): tlir.Index
    Index* ptconvlstm__lambda_layer__indexselect_;
    // loc("logreg_ts.py":212:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_176_;
    // loc("logreg_ts.py":212:0): tlir.PermuteView
    PermuteView* ptconvlstm__permute_;
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_178_;
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_180_;
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":200:0): tlir.Buffer
    ListBuffer* lbuf1a_0_0_383_;
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":205:0): tlir.Buffer
    ScatterBuffer* sbuf2u_0_0_289_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":40:0): tlir.Split
    KernelGBuffer* split_kernel_gbuf_0_0_290_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_291_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_292_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_293_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_294_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_295_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_296_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_297_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_298_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_299_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_300_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_301_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_302_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_303_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_304_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_305_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_306_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_307_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_308_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_309_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_310_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_311_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_0_0_312_;
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":295:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_315_;
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":296:0): tlir.BiasTransposeAdd
    BiasTransposeAdd* bias_transpose_add_0_0_316_;
    // loc("software/arc/src/lib/templates/ConvIm2Col.cpp":368:0): tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_0_0_317_;
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_182_;
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv1d__squeeze_Reshape_;
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    GBuffer* gbuf2a_0_0_415_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_0_0_381_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AddBias
    BiasAdd* bias_add_0_0_378_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_186_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_;
    // loc("logreg_ts.py":219:0): tlir.Buffer
    GBuffer* gbuf2a_0_0_416_;
    // loc("logreg_ts.py":219:0): tlir.Transpose
    Transpose* transpose_0_0_398_;
    // loc("logreg_ts.py":219:0): tlir.LayoutCast
    LayoutCast* layout_cast_0_0_399_;
    // loc("logreg_ts.py":219:0): tlir.Reshape
    ReshapeView* ptconvlstm__reshape_;
    // loc("logreg_ts.py":220:0): tlir.Buffer
    NBuffer* nbuf2u_0_0_191_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_194_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Reshape
    ReshapeView* reshape_0_0_322_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    LayoutCast* layout_cast_0_0_401_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_0_0_196_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Sub
    BinaryOps* sub_0_0_323_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_0_0_417_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mul
    BinaryOps* mul_0_0_324_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mean
    MeanP* mean_p_0_0_325_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    LayoutCast* layout_cast_0_0_402_;
    // loc("logreg_ts.py":226:0): tlir.Reshape
    ReshapeView* ptconvlstm__view_;
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.OutputBuffer
    Buf* output_buf_0_0_408_;
    // loc("logreg_ts.py":219:0): tlir.Buffer
    NBuffer* nbuf2a_0_0_385_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    NBuffer* nbuf2a_0_0_386_;
    // loc("logreg_ts.py":226:0): tlir.Buffer
    NBuffer* nbuf2a_0_0_387_;
    /** Section 1, Chip 0 **/
    SuperNode *partition_1_0_;
    // loc("logreg_ts.py":220:0): tlir.Buffer
    NBuffer* nbuf2u_1_0_213_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    NBuffer* nbuf2u_1_0_216_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.SumGrad
    MeanPB* ptconvlstm__criterion__mseloss_bwd_expand_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    NBuffer* nbuf2u_1_0_219_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Reshape
    ReshapeView* reshape_1_0_328_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_221_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Sub
    BinaryOps* ptconvlstm__criterion__mseloss_bwd_sub_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Scale
    ScaleS* ptconvlstm__criterion__mseloss_bwd_scale_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_224_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_225_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    LayoutCast* layout_cast_1_0_413_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Mul
    BinaryOps* ptconvlstm__criterion__mseloss_bwd_mul_;
    // loc("logreg_ts.py":226:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_228_;
    // loc("logreg_ts.py":226:0): tlir.Reshape
    ReshapeView* ptconvlstm__view_bwd_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_233_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.AddN
    AddN* ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_236_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.LayoutCast
    LayoutCast* layout_cast_1_0_414_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_bwd_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_238_;
    // loc("software/compiler/mac/src/pybind/py_air.cpp":1503:0): tlir.Buffer
    GBuffer* gbuf1a_1_0_388_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
    // loc("logreg_ts.py":191:0): tlir.Buffer
    NBuffer* nbuf2u_1_0_241_;
    // loc("logreg_ts.py":191:0): tlir.Buffer
    NBuffer* nbuf1u_1_0_242_;
    // loc("logreg_ts.py":191:0): tlir.Index
    Index* ptconvlstm__lambda_layer__indexselect_recompute__;
    // loc("logreg_ts.py":212:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_244_;
    // loc("logreg_ts.py":212:0): tlir.PermuteView
    PermuteView* ptconvlstm__permute_recompute__;
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_246_;
    // loc("ptconvlstm__conv_layer__conv1d__squeeze_Reshape":0:0): tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv1d__squeeze_Reshape_bwd_;
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_248_;
    // loc("ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape":0:0): tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv1d__unsqueeze_Reshape_recompute__;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    GBuffer* gbuf2a_1_0_418_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1022:0): tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_1_0_354_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1074:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_355_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":419:0): tlir.Buffer
    ListBuffer* lbuf1a_1_0_391_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":469:0): tlir.Buffer
    ScatterBuffer* sbuf2u_1_0_358_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":40:0): tlir.Split
    KernelGBuffer* split_kernel_gbuf_1_0_359_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_1_0_360_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_1_0_361_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_1_0_362_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":80:0): tlir.Linear
    BigGemm* biggemm_1_0_363_;
    // loc("software/arc/src/lib/templates/BigLinearExternalColPar.cpp":110:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_365_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1118:0): tlir.BiasTransposeGrad
    BiasTransposeGrad* bias_transpose_grad_1_0_367_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1118:0): tlir.Buffer
    GBuffer* gbuf2a_1_0_392_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1120:0): tlir.Reshape
    ReshapeView* reshape_1_0_368_;
    // loc("software/arc/src/lib/templates/ConvGradIm2Col.cpp":1121:0): tlir.LayoutCast
    LayoutCast* layout_cast_1_0_369_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_254_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_255_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.BigLinearGrad
    BigGemm* ptconvlstm__dense_layer__linear_bwd_weight_grad_a_;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.mutate.Accumulate
    ParAccum* ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.mutate.Accumulate
    ParAccum* ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_accum_1_;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    GBuffer* gbuf2u_1_0_131_;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    ListBuffer* lbuf1a_1_0_393_;
    // loc("ptconvlstm__conv_layer__conv1d__conv2d_Conv2d":0:0): tlir.Buffer
    ScatterBuffer* sbuf1a_1_0_394_;
    /** Section 2, Chip 0 **/
    SuperNode *partition_2_0_;
    // loc("ptconvlstm__conv_layer__bias":0:0): tlir.SGD
    OptimizerSGD* ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_;
    // loc("ptconvlstm__conv_layer__weight":0:0): tlir.SGD
    OptimizerSGD* ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__conv1d__conv2d_Conv2d_bwd_opt_;
    // loc("ptconvlstm__dense_layer__bias":0:0): tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // loc("ptconvlstm__dense_layer__weight":0:0): tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_;

};
} // namespace arc
} // namespace plasma
} // namespace prism

#endif // PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
