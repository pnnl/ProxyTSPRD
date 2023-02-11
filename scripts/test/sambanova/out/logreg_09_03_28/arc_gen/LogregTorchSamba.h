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
#include "subnetworks/GemmSubnet.h"
#include "mlnodes/GBuffer.h"
#include "mlnodes/Transpose.h"
#include "mlnodes/Buf.h"
#include "mlnodes/View.h"
#include "rail/node/tbuffer/TBuffer.h"
#include "compiler/apps/rail/cross_entropy/template/RAILCrossEntropy.h"
#include "compiler/apps/rail/cross_entropy_grad/template/RAILCrossEntropyGrad.h"
#include "mlnodes/BigGemm.h"
#include "mlnodes/OptimizerSGD.h"

namespace prism {
namespace plasma {
namespace arc {
class LogregTorchSamba: public SuperNode {

public:
    /// Input Params struct
    struct Params {
        TensorLayout logreg__lin_layer__weight_2_0_44;
        TensorLayout logreg__lin_layer__weight_0_0_24;
        TensorLayout logreg__lin_layer__weight_dram_in;
        TensorLayout image_1_0_39;
        TensorLayout image_0_0_25;
        TensorLayout image_dram_in;
        TensorLayout logreg__criterion__crossentropyloss__outputs__0__grad_1_0_36;
        TensorLayout logreg__criterion__crossentropyloss__outputs__0__grad_dram_in;
        TensorLayout label_1_0_35;
        TensorLayout label_0_0_29;
        TensorLayout label_dram_in;
        TensorLayout logreg__lin_layer__weight__sgd0__momentum_2_0_46;
        TensorLayout logreg__lin_layer__weight__sgd0__momentum_dram_in;
        TensorLayout logreg__lin_layer__linear__outputs__0_1_0_34;
        TensorLayout logreg__lin_layer__linear__outputs__0_dram_in;
        TensorLayout logreg__lin_layer__weight__grad_2_0_45;
        TensorLayout logreg__lin_layer__weight__grad_dram_in;
        TensorLayout logreg__lin_layer__weight_dram_out;
        TensorLayout logreg__lin_layer__weight__sgd0__momentum_dram_out;
        TensorLayout logreg__lin_layer__linear__outputs__0_dram_out;
        TensorLayout logreg__criterion__crossentropyloss__outputs__0_dram_out;
        TensorLayout logreg__lin_layer__weight__grad_dram_out;
    };

    /// P2P dram layout
    
    /// Input enums
    enum Input {
        // Weight
        klogreg__lin_layer__weight_0_0_24        ,
        // Input
        kimage_0_0_25        ,
        // Input
        klabel_0_0_29        ,
        // Input
        klogreg__lin_layer__linear__outputs__0_1_0_34        ,
        // Input
        klabel_1_0_35        ,
        // Input
        klogreg__criterion__crossentropyloss__outputs__0__grad_1_0_36        ,
        // Input
        kimage_1_0_39        ,
        // Weight
        klogreg__lin_layer__weight_2_0_44        ,
        // Input
        klogreg__lin_layer__weight__grad_2_0_45        ,
        // Weight
        klogreg__lin_layer__weight__sgd0__momentum_2_0_46        
    };

    /// Output enums
    enum Output {
        // Output
        klogreg__lin_layer__linear_t_output0_tensor        ,
        // Output
        klogreg__criterion__crossentropyloss_tensor        ,
        // Output
        klogreg__lin_layer__linear_bwd_weight_tensor        ,
        // Weight
        klogreg__lin_layer__weight_2_0_48        ,
        // Weight
        klogreg__lin_layer__weight__sgd0__momentum_2_0_49        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf1a_0_0_70,
        kgbuf1a_0_0_72,
        ktbuf1a_0_0_73,
        ktbuf1a_0_0_74,
        ktbuf1a_0_0_75,
        kgbuf1a_1_0_76,
        ktbuf1a_1_0_77,
        ktbuf1a_1_0_78,
        ktbuf1a_1_0_79,
        ktbuf1a_1_0_90,
        kgbuf1a_1_0_80,
        kgbuf1a_1_0_81,
        kgbuf1a_1_0_82,
        klogreg__lin_layer__linear_bwd_weight_grad_a,
        kgbuf1a_1_0_83,
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
            case klogreg__lin_layer__weight_0_0_24: return logreg__lin_layer__linear_->wbuf();
            case klogreg__lin_layer__weight_2_0_44: return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().weight;
            case klogreg__lin_layer__weight__grad_2_0_45: return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case klogreg__lin_layer__weight__sgd0__momentum_2_0_46: return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().momentum;
            default:
              SN_UNREACHABLE("No WeightsBuffer defined for input " << input);
        }
    }
    
    WeightsBuffer *wbuf_out(Output output) const {
        switch (output) {
            case klogreg__lin_layer__weight_2_0_48:             return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().weight;
            case klogreg__lin_layer__weight__sgd0__momentum_2_0_49:             return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().momentum;
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
    SuperNode *partition_0_0_;
    // loc("UnknownFileName":0:0): tlir.Buffer
    NBuffer* nbuf1a_0_0_71_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    GemmSubnet* logreg__lin_layer__linear_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_0_0_70_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Transpose
    Transpose* transpose_0_0_88_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_0_0_72_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.OutputBuffer
    Buf* output_buf_0_0_91_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    PermuteView* permute_view_0_0_67_;
    // loc("UnknownFileName":0:0): tlir.Buffer
    TBuffer* tbuf1a_0_0_73_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    TBuffer* tbuf1a_0_0_74_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.CrossEntropy
    RAILCrossEntropy* logreg__criterion__crossentropyloss_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    TBuffer* tbuf1a_0_0_75_;
    /** Section 1, Chip 0 **/
    SuperNode *partition_1_0_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.InputBuffer
    Buf* input_buf_1_0_92_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_1_0_76_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    PermuteView* permute_view_1_0_68_;
    // loc("UnknownFileName":0:0): tlir.Buffer
    TBuffer* tbuf1a_1_0_77_;
    // loc("UnknownFileName":0:0): tlir.Buffer
    TBuffer* tbuf1a_1_0_78_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    TBuffer* tbuf1a_1_0_79_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.CrossEntropyGrad
    RAILCrossEntropyGrad* logreg__criterion__crossentropyloss_bwd_loss_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    TBuffer* tbuf1a_1_0_90_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_1_0_80_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    PermuteView* permute_view_1_0_69_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.PermuteView
    PermuteView* logreg__lin_layer__linear_t_output0_bwd_;
    // loc("UnknownFileName":0:0): tlir.Buffer
    GBuffer* gbuf1a_1_0_81_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_1_0_82_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Linear
    BigGemm* logreg__lin_layer__linear_bwd_weight_grad_a_;
    // loc("/usr/local/lib/python3.7/site-packages/torch/overrides.py":1202:0): tlir.Buffer
    GBuffer* gbuf1a_1_0_83_;
    /** Section 2, Chip 0 **/
    SuperNode *partition_2_0_;
    // loc("logreg__lin_layer__weight":0:0): tlir.SGD
    OptimizerSGD* logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_;

};
} // namespace arc
} // namespace plasma
} // namespace prism

#endif // PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
