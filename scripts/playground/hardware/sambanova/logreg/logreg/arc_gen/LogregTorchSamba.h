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
#include "templates/gemm/prism/BigGemm.h"
#include "templates/transpose/prism/Transpose.h"
#include "mlnodes/View.h"
#include "rail/node/tbuffer/TBuffer.h"
#include "templates/cross_entropy/rail/CrossEntropy.h"
#include "templates/cross_entropy/rail/CrossEntropyGrad.h"
#include "templates/add_n/prism/AddN.h"
#include "templates/optimizer/prism/OptimizerSGD.h"
#include "templates/binary/prism/BinaryOps.h"
#include "templates/scale/prism/Scale.h"

namespace prism {
namespace plasma {
namespace arc {
class LogregTorchSamba: public SuperNode {

public:
    /// Input Params struct
    struct Params {
        TensorLayout logreg__lin_layer__weight_0_0_29;
        TensorLayout logreg__lin_layer__weight_2_0_51;
        TensorLayout logreg__lin_layer__weight_dram_in;
        TensorLayout image_0_0_30;
        TensorLayout image_1_0_46;
        TensorLayout image_dram_in;
        TensorLayout label_0_0_34;
        TensorLayout label_1_0_40;
        TensorLayout label_dram_in;
        TensorLayout logreg__criterion__crossentropyloss__outputs__0__grad_1_0_41;
        TensorLayout logreg__criterion__crossentropyloss__outputs__0__grad_dram_in;
        TensorLayout logreg__lin_layer__linear__outputs__0__grad_1_0_43;
        TensorLayout logreg__lin_layer__linear__outputs__0__grad_dram_in;
        TensorLayout logreg__lin_layer__weight__sgd0__momentum_2_0_53;
        TensorLayout logreg__lin_layer__weight__sgd0__momentum_dram_in;
        TensorLayout logreg__lin_layer__linear__outputs__0_1_0_39;
        TensorLayout logreg__lin_layer__linear__outputs__0_dram_in;
        TensorLayout logreg__lin_layer__weight__grad_2_0_52;
        TensorLayout logreg__lin_layer__weight__grad_dram_in;
        TensorLayout dummy_dp_accum_region_0_dram_in;
        TensorLayout accum_dummy_0_3_0_84;
        TensorLayout accum_dummy_0_dram_in;
        TensorLayout accum_dummy_0_reduce_buf_3_0_85;
        TensorLayout accum_dummy_0_reduce_buf_dram_in;
        TensorLayout logreg__lin_layer__weight_dram_out;
        TensorLayout logreg__lin_layer__weight__sgd0__momentum_dram_out;
        TensorLayout logreg__lin_layer__linear__outputs__0_dram_out;
        TensorLayout logreg__criterion__crossentropyloss__outputs__0_dram_out;
        TensorLayout logreg__lin_layer__weight__grad_dram_out;
        TensorLayout dummy_dp_accum_region_0_dram_out;
        TensorLayout accum_dummy_0_dram_out;
    };

    /// P2P dram layout
    
    /// Input enums
    enum Input {
        // Weight
        klogreg__lin_layer__weight_0_0_29        ,
        // Input
        kimage_0_0_30        ,
        // Input
        klabel_0_0_34        ,
        // Input
        klogreg__lin_layer__linear__outputs__0_1_0_39        ,
        // Input
        klabel_1_0_40        ,
        // Input
        klogreg__criterion__crossentropyloss__outputs__0__grad_1_0_41        ,
        // Input
        klogreg__lin_layer__linear__outputs__0__grad_1_0_43        ,
        // Input
        kimage_1_0_46        ,
        // Weight
        klogreg__lin_layer__weight_2_0_51        ,
        // Input
        klogreg__lin_layer__weight__grad_2_0_52        ,
        // Weight
        klogreg__lin_layer__weight__sgd0__momentum_2_0_53        ,
        // Input
        kaccum_dummy_0_3_0_84        ,
        // Input
        kaccum_dummy_0_reduce_buf_3_0_85        
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
        klogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor        ,
        // Weight
        klogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1        ,
        // Output
        kaccum_dummy_0_3_0_88        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf1a_0_0_93,
        klogreg__lin_layer__linear,
        kgbuf1a_0_0_92,
        kgbuf1a_0_0_94,
        ktbuf1a_0_0_95,
        ktbuf1a_0_0_96,
        ktbuf1a_0_0_97,
        kgbuf1a_1_0_98,
        ktbuf1a_1_0_99,
        ktbuf1a_1_0_100,
        ktbuf1a_1_0_101,
        ktbuf1a_1_0_114,
        kgbuf1a_1_0_102,
        kgbuf1a_1_0_103,
        kgbuf1a_1_0_104,
        kgbuf1a_1_0_105,
        klogreg__lin_layer__linear_bwd_weight_grad_a,
        kgbuf1a_1_0_106,
        kgbuf2a_3_0_115,
        kgbuf2a_3_0_116,
        kgbuf2a_3_0_107,
    };

    LogregTorchSamba(const std::string &name, SuperNode *parent, mlir::rail::RAIL *rail, Params params, int64_t section_id);

    void configure(int64_t section_id);

    void construct_section0();
    void configure_section0();
    void construct_section1();
    void configure_section1();
    void construct_section2();
    void configure_section2();
    void construct_section3();
    void configure_section3();
    BufferNode *wbuf_in(Input input) const {
        switch (input) {
            case klogreg__lin_layer__weight_0_0_29: return logreg__lin_layer__linear_->wbuf();
            case klogreg__lin_layer__weight_2_0_51: return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().weight;
            case klogreg__lin_layer__weight__grad_2_0_52: return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case klogreg__lin_layer__weight__sgd0__momentum_2_0_53: return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().momentum;
            default:
              SN_UNREACHABLE("No WeightsBuffer defined for input " << input);
        }
    }
    
    WeightsBuffer *wbuf_out(Output output) const {
        switch (output) {
            case klogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor:             return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().weight;
            case klogreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_tensor1:             return logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_->weight_update().momentum;
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
        if (partition.section_id == 3 && partition.chip_id == 0)
          return partition_3_0_;
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
        if (partition.section_id == 3) {
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
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_93_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* logreg__lin_layer__linear_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_92_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    Transpose* transpose_0_0_112_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Transpose
    Transpose* transpose_0_0_109_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_94_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* permute_view_0_0_75_;
    // UnknownFileName:0:0: tlir.Buffer
    TBuffer* tbuf1a_0_0_95_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf1a_0_0_96_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropy
    RAILCrossEntropy* logreg__criterion__crossentropyloss_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf1a_0_0_97_;
    /** Section 1, Chip 0 **/
    PartitionNode *partition_1_0_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_98_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* permute_view_1_0_76_;
    // UnknownFileName:0:0: tlir.Buffer
    TBuffer* tbuf1a_1_0_99_;
    // UnknownFileName:0:0: tlir.Buffer
    TBuffer* tbuf1a_1_0_100_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf1a_1_0_101_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.CrossEntropyGrad
    RAILCrossEntropyGrad* logreg__criterion__crossentropyloss_bwd_loss_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf1a_1_0_114_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_102_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* permute_view_1_0_77_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_103_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    AddN* logreg__lin_layer__linear_t_output0_bwd_addn0_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* logreg__lin_layer__linear_t_output0_bwd_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_104_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_105_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* logreg__lin_layer__linear_bwd_weight_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_106_;
    /** Section 2, Chip 0 **/
    PartitionNode *partition_2_0_;
    // logreg__lin_layer__weight:0:0: tlir.SGD
    OptimizerSGD* logreg__lin_layer__weight__logreg__lin_layer__linear_bwd_weight_opt_;
    /** Section 3, Chip 0 **/
    PartitionNode *partition_3_0_;
    // <unknown location>: tlir.Buffer
    GBuffer* gbuf2a_3_0_115_;
    // <unknown location>: tlir.Buffer
    GBuffer* gbuf2a_3_0_116_;
    // <unknown location>: tlir.AddV2
    BinaryOps* add_3_0_86_;
    // <unknown location>: tlir.Scale
    Scale* scale_3_0_87_;
    // <unknown location>: tlir.Buffer
    GBuffer* gbuf2a_3_0_107_;

};
} // namespace arc
} // namespace plasma
} // namespace prism

#endif // PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
