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

#include "templates/accumulator/prism/Accumulator.h"
#include "mlnodes/BackingPmu.h"
#include "mlnodes/FrontingPmu.h"
#include "templates/tiler/prism/LoadTiler.h"
#include "templates/tiler/prism/StoreTiler.h"
#include "mlnodes/View.h"
#include "mlnodes/WeightsBuffer.h"
#include "rail/ir/TBufferSyntax.h"
#include "rail/node/tbuffer/TBufferView.h"
#include "templates/subnet_type/prism/SubnetType.h"
#include "shared/compiler/CompilerOptions.h"

#include "templates/common/PrismBox.h"

#include "prism/Emul/Tensor.h"
#include "mlnodes/GBuffer.h"
#include "mlnodes/View.h"
#include "templates/realign/prism/Realign.h"
#include "compiler/apps/rail/permute/template/TBufferPermute.h"
#include "templates/transpose/prism/VectorTranspose.h"
#include "rail/node/tbuffer/TBuffer.h"
#include "compiler/apps/rail/rail_index/template/RAILIndex.h"
#include "templates/buffer/prism/ListBuffer.h"
#include "mlnodes/ScatterBuffer.h"
#include "templates/buffer/prism/KernelGBuffer.h"
#include "templates/gemm/prism/BigGemm.h"
#include "templates/transpose/prism/BiasTransposeAdd.h"
#include "templates/transpose/prism/StreamingTranspose.h"
#include "templates/bias_add/prism/BiasAdd.h"
#include "rail/node/tbuffer/TBufferView.h"
#include "templates/binary/prism/BinaryOps.h"
#include "templates/mean/prism/MeanUnalign.h"
#include "templates/scale/prism/Scale.h"
#include "templates/add_n/prism/AddN.h"
#include "templates/transpose/prism/BiasTransposeGrad.h"
#include "compiler/apps/rail/par_accum/template/ParAccum.h"
#include "templates/transpose/prism/Transpose.h"
#include "templates/optimizer/prism/OptimizerSGD.h"

namespace prism {
namespace plasma {
namespace arc {
class LogregTorchSamba: public SuperNode {

public:
    /// Input Params struct
    struct Params {
        TensorLayout ptconvlstm__conv_layer__weight_2_0_177;
        TensorLayout ptconvlstm__conv_layer__weight_0_0_91;
        TensorLayout ptconvlstm__conv_layer__weight_dram_in;
        TensorLayout inp_window_slice_1_1_0_140;
        TensorLayout inp_window_slice_1_0_0_94;
        TensorLayout inp_window_slice_1_dram_in;
        TensorLayout inp_window_1_0_265;
        TensorLayout inp_window_0_0_260;
        TensorLayout inp_window_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias_2_0_171;
        TensorLayout ptconvlstm__conv_layer__bias_0_0_102;
        TensorLayout ptconvlstm__conv_layer__bias_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias_2_0_165;
        TensorLayout ptconvlstm__dense_layer__bias_0_0_107;
        TensorLayout ptconvlstm__dense_layer__bias_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight_1_0_336;
        TensorLayout ptconvlstm__dense_layer__weight_2_0_159;
        TensorLayout ptconvlstm__dense_layer__weight_0_0_106;
        TensorLayout ptconvlstm__dense_layer__weight_dram_in;
        TensorLayout out_window_1_0_262;
        TensorLayout out_window_0_0_96;
        TensorLayout out_window_dram_in;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__view__outputs__0__grad_1_0_261;
        TensorLayout ptconvlstm__view__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264;
        TensorLayout ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_in;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__grad_2_0_160;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__grad_2_0_166;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias__grad_2_0_172;
        TensorLayout ptconvlstm__conv_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight__grad_2_0_178;
        TensorLayout ptconvlstm__conv_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378;
        TensorLayout ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_dram_in;
        TensorLayout gather_gradient_output_reshape_id1__gather_list_1_0_379;
        TensorLayout gather_gradient_output_reshape_id1__gather_list_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380;
        TensorLayout ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight_dram_out;
        TensorLayout ptconvlstm__conv_layer__bias_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_out;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_out;
        TensorLayout ptconvlstm__view__outputs__0_dram_out;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_out;
        TensorLayout ptconvlstm__conv_layer__bias__grad_dram_out;
        TensorLayout ptconvlstm__conv_layer__weight__grad_dram_out;
    };

    /// P2P dram layout
    
    /// Input enums
    enum Input {
        // Weight
        kptconvlstm__conv_layer__weight_0_0_91        ,
        // Input
        kinp_window_slice_1_0_0_94        ,
        // Weight
        kptconvlstm__conv_layer__bias_0_0_102        ,
        // Weight
        kptconvlstm__dense_layer__weight_0_0_106        ,
        // Weight
        kptconvlstm__dense_layer__bias_0_0_107        ,
        // Input
        kinp_window_0_0_260        ,
        // Input
        kptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_378        ,
        // Input
        kout_window_0_0_96        ,
        // Input
        kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_127        ,
        // Input
        kinp_window_slice_1_1_0_140        ,
        // Input
        kptconvlstm__view__outputs__0__grad_1_0_261        ,
        // Input
        kout_window_1_0_262        ,
        // Input
        kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_263        ,
        // Weight
        kptconvlstm__dense_layer__weight_1_0_336        ,
        // Input
        kptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_264        ,
        // Input
        kinp_window_1_0_265        ,
        // Input
        kptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_380        ,
        // Input
        kgather_gradient_output_reshape_id1__gather_list_1_0_379        ,
        // Weight
        kptconvlstm__dense_layer__weight_2_0_159        ,
        // Input
        kptconvlstm__dense_layer__weight__grad_2_0_160        ,
        // Weight
        kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161        ,
        // Weight
        kptconvlstm__dense_layer__bias_2_0_165        ,
        // Input
        kptconvlstm__dense_layer__bias__grad_2_0_166        ,
        // Weight
        kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167        ,
        // Weight
        kptconvlstm__conv_layer__bias_2_0_171        ,
        // Input
        kptconvlstm__conv_layer__bias__grad_2_0_172        ,
        // Weight
        kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173        ,
        // Weight
        kptconvlstm__conv_layer__weight_2_0_177        ,
        // Input
        kptconvlstm__conv_layer__weight__grad_2_0_178        ,
        // Weight
        kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179        
    };

    /// Output enums
    enum Output {
        // Output
        kptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_266        ,
        // Output
        kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_267        ,
        // Output
        kptconvlstm__view__outputs__0_0_0_268        ,
        // Output
        k_tensor        ,
        // Output
        kptconvlstm__dense_layer__linear_bwd_weight_tensor        ,
        // Output
        kptconvlstm__dense_layer__linear_bwd_weight_tensor1        ,
        // Output
        kptconvlstm__conv_layer__conv2d_bwd_tensor        ,
        // Output
        kptconvlstm__conv_layer__reshape_1_bwd_tensor        ,
        // Weight
        kptconvlstm__dense_layer__weight_2_0_163        ,
        // Weight
        kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164        ,
        // Weight
        kptconvlstm__dense_layer__bias_2_0_169        ,
        // Weight
        kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170        ,
        // Weight
        kptconvlstm__conv_layer__bias_2_0_175        ,
        // Weight
        kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176        ,
        // Weight
        kptconvlstm__conv_layer__weight_2_0_181        ,
        // Weight
        kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf1a_0_0_387,
        kgbuf2a_0_0_427,
        ktbuf2u_0_0_189,
        ktbuf1u_0_0_190,
        ktbuf2u_0_0_194,
        kgbuf2u_0_0_196,
        klbuf1a_0_0_388,
        ksbuf2u_0_0_287,
        kbiggemm_0_0_289,
        kbiggemm_0_0_290,
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
        kgbuf2u_0_0_313,
        kgbuf2u_0_0_198,
        kgbuf2u_0_0_200,
        kptconvlstm__dense_layer__linear,
        kgbuf1a_0_0_385,
        kgbuf2u_0_0_202,
        kgbuf2a_0_0_430,
        kgbuf2a_0_0_389,
        kgbuf2a_0_0_431,
        kgbuf2a_0_0_391,
        kgbuf2a_0_0_422,
        kgbuf1a_0_0_421,
        kgbuf1a_0_0_392,
        kgbuf1a_0_0_432,
        kgbuf1a_0_0_393,
        kgbuf2u_1_0_218,
        kgbuf2u_1_0_221,
        kgbuf2u_1_0_224,
        kgbuf2u_1_0_229,
        kgbuf2u_1_0_236,
        kgbuf1a_1_0_394,
        kptconvlstm__dense_layer__linear_bwd_loss_grad_b,
        kgbuf2u_1_0_239,
        kgbuf2u_1_0_240,
        kgbuf2u_1_0_242,
        ktbuf2u_1_0_245,
        ktbuf1u_1_0_246,
        ktbuf2u_1_0_250,
        kgbuf2a_1_0_433,
        kgbuf2u_1_0_358,
        klbuf1a_1_0_397,
        ksbuf2u_1_0_361,
        kbiggemm_1_0_363,
        kbiggemm_1_0_364,
        kbiggemm_1_0_365,
        kbiggemm_1_0_366,
        kgbuf2u_1_0_368,
        kgbuf2a_1_0_398,
        kptconvlstm__dense_layer__linear_bwd_weight_accum,
        kptconvlstm__dense_layer__linear_bwd_weight_accum_1,
        kptconvlstm__conv_layer__conv2d_bwd_accum,
        kptconvlstm__conv_layer__conv2d_bwd_accum_1,
        kgbuf2u_1_0_149,
        klbuf1a_1_0_399,
        ksbuf1a_1_0_400,
        kgbuf1a_1_0_401,
    };

    LogregTorchSamba(const std::string &name, SuperNode *parent, mlir::rail::RAIL *rail, Params params, int64_t section_id);

    void configure(int64_t section_id);

    void construct_section0();
    void configure_section0();
    void construct_section1();
    void configure_section1();
    void construct_section2();
    void configure_section2();
    BufferNode *wbuf_in(Input input) const {
        switch (input) {
            case kptconvlstm__dense_layer__weight_0_0_106: return ptconvlstm__dense_layer__linear_->wbuf();
            case kptconvlstm__dense_layer__bias_0_0_107: return bias_add_0_0_382_->wbuf();
            case kptconvlstm__dense_layer__weight_2_0_159: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__grad_2_0_160: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_161: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias_2_0_165: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__grad_2_0_166: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_167: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__bias_2_0_171: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__bias__grad_2_0_172: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().gradient;
            case kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_173: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__weight_2_0_177: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__weight__grad_2_0_178: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().gradient;
            case kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_179: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().momentum;
            default:
              SN_UNREACHABLE("No WeightsBuffer defined for input " << input);
        }
    }
    
    WeightsBuffer *wbuf_out(Output output) const {
        switch (output) {
            case kptconvlstm__dense_layer__weight_2_0_163:             return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_164:             return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias_2_0_169:             return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_170:             return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__bias_2_0_175:             return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_176:             return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__weight_2_0_181:             return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_182:             return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().momentum;
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
    PartitionNode *partition_0_0_;
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_387_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    Realign* realign_0_0_404_;
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    TBufferPermute* ptconvlstm__conv_layer__conv2d_weight_permute_;
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    VectorTranspose* vector_transpose_0_0_405_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv2d_weight_reshape_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_427_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_189_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf1u_0_0_190_;
    // logreg_ts.py:194:0: tlir.Index
    RAILIndex* ptconvlstm__lambda_layer__indexselect_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_194_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_196_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    ListBuffer* lbuf1a_0_0_388_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    ScatterBuffer* sbuf2u_0_0_287_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    KernelGBuffer* split_kernel_gbuf_0_0_288_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_289_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_290_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_291_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_292_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_293_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_294_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_295_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_296_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_297_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_298_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_299_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_300_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_301_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_302_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_303_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_304_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_305_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_306_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_307_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_308_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_309_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_310_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_313_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    BiasTransposeAdd* bias_transpose_add_0_0_314_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_0_0_315_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_198_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_2_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_200_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_385_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    BiasAdd* bias_add_0_0_382_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_202_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_0_0_428_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_430_;
    // logreg_ts.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_;
    // logreg_ts.py:229:0: tlir.Reshape
    ReshapeView* ptconvlstm__view_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_389_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_431_;
    // logreg_ts.py:229:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_391_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_422_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_421_;
    // UnknownFileName:0:0: tlir.Realign
    Realign* realign_0_0_409_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_392_;
    // logreg_ts.py:223:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_1_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* sub_0_0_322_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_432_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    BinaryOps* mul_0_0_323_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    MeanUnalign* mean_unalign_0_0_324_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_393_;
    /** Section 1, Chip 0 **/
    PartitionNode *partition_1_0_;
    // logreg_ts.py:229:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_218_;
    // logreg_ts.py:229:0: tlir.Reshape
    ReshapeView* ptconvlstm__view_bwd_;
    // logreg_ts.py:223:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_221_;
    // logreg_ts.py:223:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_1_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_224_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* ptconvlstm__criterion__mseloss_bwd_sub_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_331_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_332_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_229_;
    // logreg_ts.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_bwd_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_429_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    AddN* ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_236_;
    // software/compiler/mac/src/pybind/py_air.cpp:1531:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_394_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_239_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_240_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__dense_layer__linear_bwd_weight_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_242_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_2_bwd_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_245_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf1u_1_0_246_;
    // logreg_ts.py:194:0: tlir.Index
    RAILIndex* ptconvlstm__lambda_layer__indexselect_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_250_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_433_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1019:0: tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_1_0_357_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1071:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_358_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:418:0: tlir.Buffer
    ListBuffer* lbuf1a_1_0_397_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:468:0: tlir.Buffer
    ScatterBuffer* sbuf2u_1_0_361_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    KernelGBuffer* split_kernel_gbuf_1_0_362_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_363_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_364_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_365_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_366_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_368_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.BiasTransposeGrad
    BiasTransposeGrad* bias_transpose_grad_1_0_370_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1115:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_398_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1117:0: tlir.Reshape
    ReshapeView* reshape_1_0_371_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_372_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__dense_layer__linear_bwd_weight_accum_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__dense_layer__linear_bwd_weight_accum_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__conv_layer__conv2d_bwd_accum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__conv_layer__conv2d_bwd_accum_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_149_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    ListBuffer* lbuf1a_1_0_399_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    ScatterBuffer* sbuf1a_1_0_400_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    VectorTranspose* vector_transpose_1_0_417_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    PermuteView* permute_view_1_0_415_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    Realign* realign_1_0_418_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    Realign* realign_1_0_419_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    TBufferPermute* permute_1_0_416_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    Transpose* transpose_1_0_420_;
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    TBufferPermute* ptconvlstm__conv_layer__conv2d_weight_permute_bwd_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_1_bwd_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_401_;
    /** Section 2, Chip 0 **/
    PartitionNode *partition_2_0_;
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // ptconvlstm__conv_layer__bias:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_;
    // ptconvlstm__conv_layer__weight:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_;

};
} // namespace arc
} // namespace plasma
} // namespace prism

#endif // PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
