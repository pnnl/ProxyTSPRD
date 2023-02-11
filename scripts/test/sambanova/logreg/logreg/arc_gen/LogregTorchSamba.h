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
#include "templates/realign/prism/Realign.h"
#include "mlnodes/View.h"
#include "templates/permute/rail/TBufferPermute.h"
#include "templates/transpose/prism/VectorTranspose.h"
#include "rail/node/tbuffer/TBuffer.h"
#include "templates/index/rail/Index.h"
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
#include "templates/accumulator/rail/ParAccum.h"
#include "templates/transpose/prism/Transpose.h"
#include "templates/optimizer/prism/OptimizerSGD.h"

namespace prism {
namespace plasma {
namespace arc {
class LogregTorchSamba: public SuperNode {

public:
    /// Input Params struct
    struct Params {
        TensorLayout ptconvlstm__conv_layer__weight_0_0_99;
        TensorLayout ptconvlstm__conv_layer__weight_2_0_185;
        TensorLayout ptconvlstm__conv_layer__weight_dram_in;
        TensorLayout inp_window_slice_1_0_0_102;
        TensorLayout inp_window_slice_1_1_0_148;
        TensorLayout inp_window_slice_1_dram_in;
        TensorLayout inp_window_0_0_268;
        TensorLayout inp_window_1_0_273;
        TensorLayout inp_window_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias_0_0_110;
        TensorLayout ptconvlstm__conv_layer__bias_2_0_179;
        TensorLayout ptconvlstm__conv_layer__bias_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias_0_0_115;
        TensorLayout ptconvlstm__dense_layer__bias_2_0_173;
        TensorLayout ptconvlstm__dense_layer__bias_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight_0_0_114;
        TensorLayout ptconvlstm__dense_layer__weight_1_0_344;
        TensorLayout ptconvlstm__dense_layer__weight_2_0_167;
        TensorLayout ptconvlstm__dense_layer__weight_dram_in;
        TensorLayout out_window_0_0_104;
        TensorLayout out_window_1_0_270;
        TensorLayout out_window_dram_in;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_135;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__view__outputs__0__grad_1_0_269;
        TensorLayout ptconvlstm__view__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_169;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_175;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_2_0_181;
        TensorLayout ptconvlstm__conv_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_2_0_187;
        TensorLayout ptconvlstm__conv_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_272;
        TensorLayout ptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_dram_in;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_271;
        TensorLayout ptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__grad_2_0_168;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__grad_2_0_174;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__bias__grad_2_0_180;
        TensorLayout ptconvlstm__conv_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__weight__grad_2_0_186;
        TensorLayout ptconvlstm__conv_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_386;
        TensorLayout ptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_dram_in;
        TensorLayout gather_gradient_output_reshape_id1__gather_list_1_0_387;
        TensorLayout gather_gradient_output_reshape_id1__gather_list_dram_in;
        TensorLayout ptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_388;
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
        kptconvlstm__conv_layer__weight_0_0_99        ,
        // Input
        kinp_window_slice_1_0_0_102        ,
        // Weight
        kptconvlstm__conv_layer__bias_0_0_110        ,
        // Weight
        kptconvlstm__dense_layer__weight_0_0_114        ,
        // Weight
        kptconvlstm__dense_layer__bias_0_0_115        ,
        // Input
        kinp_window_0_0_268        ,
        // Input
        kptconvlstm__conv_layer__conv2d_conv_fwd_stream0__gather_list_0_0_386        ,
        // Input
        kout_window_0_0_104        ,
        // Input
        kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_135        ,
        // Input
        kinp_window_slice_1_1_0_148        ,
        // Input
        kptconvlstm__view__outputs__0__grad_1_0_269        ,
        // Input
        kout_window_1_0_270        ,
        // Input
        kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_1_0_271        ,
        // Weight
        kptconvlstm__dense_layer__weight_1_0_344        ,
        // Input
        kptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_1_0_272        ,
        // Input
        kinp_window_1_0_273        ,
        // Input
        kptconvlstm__conv_layer__conv2d_bwd_conv_grad_stream0_kernel0__gather_list_1_0_388        ,
        // Input
        kgather_gradient_output_reshape_id1__gather_list_1_0_387        ,
        // Weight
        kptconvlstm__dense_layer__weight_2_0_167        ,
        // Input
        kptconvlstm__dense_layer__weight__grad_2_0_168        ,
        // Weight
        kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_169        ,
        // Weight
        kptconvlstm__dense_layer__bias_2_0_173        ,
        // Input
        kptconvlstm__dense_layer__bias__grad_2_0_174        ,
        // Weight
        kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_175        ,
        // Weight
        kptconvlstm__conv_layer__bias_2_0_179        ,
        // Input
        kptconvlstm__conv_layer__bias__grad_2_0_180        ,
        // Weight
        kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_181        ,
        // Weight
        kptconvlstm__conv_layer__weight_2_0_185        ,
        // Input
        kptconvlstm__conv_layer__weight__grad_2_0_186        ,
        // Weight
        kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_187        
    };

    /// Output enums
    enum Output {
        // Output
        kptconvlstm__conv_layer__reshape_20_used_by_ptconvlstm__dense_layer__linear_bwd_weight_0_0_274        ,
        // Output
        kptconvlstm__reshape0_used_by_ptconvlstm__criterion__mseloss_bwd_sub_0_0_275        ,
        // Output
        kptconvlstm__view__outputs__0_0_0_276        ,
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
        kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor        ,
        // Weight
        kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1        ,
        // Weight
        kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor        ,
        // Weight
        kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1        ,
        // Weight
        kptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_tensor        ,
        // Weight
        kptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_tensor1        ,
        // Weight
        kptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_tensor        ,
        // Weight
        kptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_tensor1        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf1a_0_0_430,
        kgbuf1a_0_0_395,
        kgbuf2a_0_0_437,
        ktbuf2u_0_0_197,
        ktbuf1u_0_0_198,
        ktbuf2u_0_0_202,
        kgbuf2u_0_0_204,
        klbuf1a_0_0_396,
        ksbuf2u_0_0_295,
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
        kbiggemm_0_0_313,
        kbiggemm_0_0_314,
        kbiggemm_0_0_315,
        kbiggemm_0_0_316,
        kbiggemm_0_0_317,
        kbiggemm_0_0_318,
        kgbuf2u_0_0_321,
        kgbuf2u_0_0_206,
        kgbuf2u_0_0_208,
        kptconvlstm__dense_layer__linear,
        kgbuf1a_0_0_393,
        kgbuf2u_0_0_210,
        kgbuf2a_0_0_440,
        kgbuf2a_0_0_397,
        kgbuf2a_0_0_441,
        kgbuf2a_0_0_399,
        kgbuf2a_0_0_432,
        kgbuf1a_0_0_431,
        kgbuf1a_0_0_400,
        kgbuf1a_0_0_442,
        kgbuf1a_0_0_401,
        kgbuf2u_1_0_226,
        kgbuf2u_1_0_229,
        kgbuf2u_1_0_232,
        kgbuf2u_1_0_237,
        kgbuf2u_1_0_244,
        kgbuf1a_1_0_402,
        kptconvlstm__dense_layer__linear_bwd_loss_grad_b,
        kgbuf2u_1_0_247,
        kgbuf2u_1_0_248,
        kgbuf2u_1_0_250,
        ktbuf2u_1_0_253,
        ktbuf1u_1_0_254,
        ktbuf2u_1_0_258,
        kgbuf2a_1_0_443,
        kgbuf2u_1_0_366,
        klbuf1a_1_0_405,
        ksbuf2u_1_0_369,
        kbiggemm_1_0_371,
        kbiggemm_1_0_372,
        kbiggemm_1_0_373,
        kbiggemm_1_0_374,
        kgbuf2u_1_0_376,
        kgbuf2a_1_0_406,
        kptconvlstm__dense_layer__linear_bwd_weight_accum,
        kptconvlstm__dense_layer__linear_bwd_weight_accum_1,
        kptconvlstm__conv_layer__conv2d_bwd_accum,
        kptconvlstm__conv_layer__conv2d_bwd_accum_1,
        kgbuf2u_1_0_157,
        klbuf1a_1_0_407,
        ksbuf1a_1_0_408,
        kgbuf1a_1_0_409,
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
            case kptconvlstm__dense_layer__weight_0_0_114: return ptconvlstm__dense_layer__linear_->wbuf();
            case kptconvlstm__dense_layer__bias_0_0_115: return bias_add_0_0_390_->wbuf();
            case kptconvlstm__dense_layer__weight_2_0_167: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__grad_2_0_168: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_169: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias_2_0_173: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__grad_2_0_174: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_175: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__bias_2_0_179: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__bias__grad_2_0_180: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().gradient;
            case kptconvlstm__conv_layer__bias__sgd0__momentum_2_0_181: return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__weight_2_0_185: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__weight__grad_2_0_186: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().gradient;
            case kptconvlstm__conv_layer__weight__sgd0__momentum_2_0_187: return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().momentum;
            default:
              SN_UNREACHABLE("No WeightsBuffer defined for input " << input);
        }
    }
    
    WeightsBuffer *wbuf_out(Output output) const {
        switch (output) {
            case kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor:             return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1:             return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor:             return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1:             return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_tensor:             return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_tensor1:             return ptconvlstm__conv_layer__bias__ptconvlstm__conv_layer__conv2d_bwd_opt_->weight_update().momentum;
            case kptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_tensor:             return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().weight;
            case kptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_tensor1:             return ptconvlstm__conv_layer__weight__ptconvlstm__conv_layer__reshape_1_bwd_opt_->weight_update().momentum;
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
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_430_;
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Realign
    Realign* realign_0_0_412_;
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_395_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Realign
    Realign* realign_0_0_413_;
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    TBufferPermute* ptconvlstm__conv_layer__conv2d_weight_permute_;
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.VectorTranspose
    VectorTranspose* vector_transpose_0_0_414_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv2d_weight_reshape_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_437_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_197_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf1u_0_0_198_;
    // logreg_ts.py:194:0: tlir.Index
    RAILIndex* ptconvlstm__lambda_layer__indexselect_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_202_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_204_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:201:0: tlir.Buffer
    ListBuffer* lbuf1a_0_0_396_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:206:0: tlir.Buffer
    ScatterBuffer* sbuf2u_0_0_295_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    KernelGBuffer* split_kernel_gbuf_0_0_296_;
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
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_311_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_312_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_313_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_314_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_315_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_316_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_317_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_0_0_318_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:297:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_321_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:298:0: tlir.BiasTransposeAdd
    BiasTransposeAdd* bias_transpose_add_0_0_322_;
    // software/arc/src/lib/templates/ConvIm2Col.cpp:371:0: tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_0_0_323_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_206_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_2_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_208_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_393_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    BiasAdd* bias_add_0_0_390_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_210_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_0_0_438_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_440_;
    // logreg_ts.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_;
    // logreg_ts.py:229:0: tlir.Reshape
    ReshapeView* ptconvlstm__view_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_397_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_441_;
    // logreg_ts.py:229:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_399_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_432_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_431_;
    // UnknownFileName:0:0: tlir.Realign
    Realign* realign_0_0_418_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_400_;
    // logreg_ts.py:223:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_1_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* sub_0_0_330_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_442_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    BinaryOps* mul_0_0_331_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    MeanUnalign* mean_unalign_0_0_332_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_401_;
    /** Section 1, Chip 0 **/
    PartitionNode *partition_1_0_;
    // logreg_ts.py:229:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_226_;
    // logreg_ts.py:229:0: tlir.Reshape
    ReshapeView* ptconvlstm__view_bwd_;
    // logreg_ts.py:223:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_229_;
    // logreg_ts.py:223:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_1_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_232_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* ptconvlstm__criterion__mseloss_bwd_sub_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_339_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_340_;
    // logreg_ts.py:222:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_237_;
    // logreg_ts.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_bwd_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_439_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    AddN* ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_244_;
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_402_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_247_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_248_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__dense_layer__linear_bwd_weight_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_250_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_2_bwd_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_253_;
    // logreg_ts.py:194:0: tlir.Buffer
    TBuffer* tbuf1u_1_0_254_;
    // logreg_ts.py:194:0: tlir.Index
    RAILIndex* ptconvlstm__lambda_layer__indexselect_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_258_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_443_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1020:0: tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_1_0_365_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1072:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_366_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:419:0: tlir.Buffer
    ListBuffer* lbuf1a_1_0_405_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:469:0: tlir.Buffer
    ScatterBuffer* sbuf2u_1_0_369_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:40:0: tlir.Split
    KernelGBuffer* split_kernel_gbuf_1_0_370_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_371_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_372_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_373_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:80:0: tlir.Linear
    BigGemm* biggemm_1_0_374_;
    // software/arc/src/lib/templates/BigLinearExternalColPar.cpp:110:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_376_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.BiasTransposeGrad
    BiasTransposeGrad* bias_transpose_grad_1_0_378_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1116:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_406_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1118:0: tlir.Reshape
    ReshapeView* reshape_1_0_379_;
    // software/arc/src/lib/templates/ConvGradIm2Col.cpp:1119:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_380_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__dense_layer__linear_bwd_weight_accum_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__dense_layer__linear_bwd_weight_accum_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__conv_layer__conv2d_bwd_accum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__conv_layer__conv2d_bwd_accum_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_157_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    ListBuffer* lbuf1a_1_0_407_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    ScatterBuffer* sbuf1a_1_0_408_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.VectorTranspose
    VectorTranspose* vector_transpose_1_0_426_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.PermuteView
    PermuteView* permute_view_1_0_424_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    Realign* realign_1_0_427_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__conv2d_weight_reshape_bwd_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Realign
    Realign* realign_1_0_428_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Permute
    TBufferPermute* permute_1_0_425_;
    // ptconvlstm__conv_layer__conv2d_weight_reshape:0:0: tlir.Transpose
    Transpose* transpose_1_0_429_;
    // ptconvlstm__conv_layer__conv2d_weight_permute:0:0: tlir.Permute
    TBufferPermute* ptconvlstm__conv_layer__conv2d_weight_permute_bwd_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Reshape
    ReshapeView* ptconvlstm__conv_layer__reshape_1_bwd_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/conv.py:298:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_409_;
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
