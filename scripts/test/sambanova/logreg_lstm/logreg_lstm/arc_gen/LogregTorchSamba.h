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
#include "mlnodes/LoopBuffer.h"
#include "templates/gemm/prism/GemmSubnet.h"
#include "templates/binary/prism/BinaryOps.h"
#include "templates/unary/prism/UnaryOps.h"
#include "templates/transpose/prism/VectorTranspose.h"
#include "rail/node/tbuffer/TBuffer.h"
#include "templates/index/rail/Index.h"
#include "templates/gemm/prism/BigGemm.h"
#include "templates/bias_add/prism/BiasAdd.h"
#include "rail/node/tbuffer/TBufferView.h"
#include "templates/realign/prism/Realign.h"
#include "templates/mean/prism/MeanUnalign.h"
#include "templates/scale/prism/Scale.h"
#include "templates/add_n/prism/AddN.h"
#include "templates/index/prism/IndexAdd.h"
#include "templates/tanh/prism/TanhB.h"
#include "templates/sigmoid/prism/SigmoidB.h"
#include "templates/accumulator/rail/ParAccum.h"
#include "templates/transpose/prism/Transpose.h"
#include "templates/optimizer/prism/OptimizerSGD.h"
#include "templates/tiler/prism/LoadTiler.h"
#include "templates/tiler/prism/StoreTiler.h"

namespace prism {
namespace plasma {
namespace arc {
class LogregTorchSamba: public SuperNode {

public:
    /// Input Params struct
    struct Params {
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_521;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_522;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_523;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_524;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_588;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_589;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_590;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_591;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_2_0_291;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_517;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_518;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_519;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_520;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_584;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_585;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_586;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_587;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_2_0_285;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_513;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_514;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_515;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_516;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_580;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_581;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_582;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_583;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_747;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_761;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_775;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_789;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_2_0_279;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_509;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_510;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_511;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_512;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_576;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_577;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_578;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_579;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_2_0_273;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_dram_in;
        TensorLayout lstm_operand_1_0_0_125;
        TensorLayout lstm_operand_1_1_0_170;
        TensorLayout lstm_operand_1_dram_in;
        TensorLayout lstm_operand_0_0_0_122;
        TensorLayout lstm_operand_0_1_0_167;
        TensorLayout lstm_operand_0_dram_in;
        TensorLayout inp_window_0_0_475;
        TensorLayout inp_window_1_0_477;
        TensorLayout inp_window_1_0_478;
        TensorLayout inp_window_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149;
        TensorLayout ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185;
        TensorLayout ptconvlstm__lstm_layer__lstm__outputs__0_slice_1_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias_0_0_154;
        TensorLayout ptconvlstm__dense_layer__bias_1_0_190;
        TensorLayout ptconvlstm__dense_layer__bias_2_0_267;
        TensorLayout ptconvlstm__dense_layer__bias_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight_0_0_153;
        TensorLayout ptconvlstm__dense_layer__weight_1_0_189;
        TensorLayout ptconvlstm__dense_layer__weight_1_0_628;
        TensorLayout ptconvlstm__dense_layer__weight_2_0_261;
        TensorLayout ptconvlstm__dense_layer__weight_dram_in;
        TensorLayout out_window_0_0_147;
        TensorLayout out_window_1_0_479;
        TensorLayout out_window_dram_in;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__view__outputs__0__grad_1_0_476;
        TensorLayout ptconvlstm__view__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220;
        TensorLayout ptconvlstm__lstm_layer__lstm__cell__output__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217;
        TensorLayout ptconvlstm__lstm_layer__lstm__hidden__output__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482;
        TensorLayout ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483;
        TensorLayout ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484;
        TensorLayout ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485;
        TensorLayout ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486;
        TensorLayout ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480;
        TensorLayout ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_dram_in;
        TensorLayout ptconvlstm__dense_layer__weight__grad_2_0_262;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_in;
        TensorLayout ptconvlstm__dense_layer__bias__grad_2_0_268;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0__grad_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_dram_out;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_dram_out;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_dram_out;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm__hidden__output_dram_out;
        TensorLayout ptconvlstm__lstm_layer__lstm__cell__output_dram_out;
        TensorLayout ptconvlstm__view__outputs__0_dram_out;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0_dram_out;
        TensorLayout ptconvlstm__dense_layer__weight__grad_dram_out;
        TensorLayout ptconvlstm__dense_layer__bias__grad_dram_out;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0__grad_dram_out;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0__grad_dram_out;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0__grad_dram_out;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0__grad_dram_out;
    };

    /// P2P dram layout
    
    /// Input enums
    enum Input {
        // Input
        klstm_operand_0_0_0_122        ,
        // Input
        klstm_operand_1_0_0_125        ,
        // Input
        kptconvlstm__lstm_layer__lstm__outputs__0_slice_1_0_0_149        ,
        // Weight
        kptconvlstm__dense_layer__weight_0_0_153        ,
        // Weight
        kptconvlstm__dense_layer__bias_0_0_154        ,
        // Input
        kinp_window_0_0_475        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_509        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_510        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_511        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_512        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_513        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_514        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_515        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_516        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_517        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_518        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_519        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_520        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_521        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_522        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_523        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_524        ,
        // Input
        kout_window_0_0_147        ,
        // Input
        klstm_operand_0_1_0_167        ,
        // Input
        klstm_operand_1_1_0_170        ,
        // Input
        kptconvlstm__lstm_layer__lstm__outputs__0_slice_1_1_0_185        ,
        // Weight
        kptconvlstm__dense_layer__weight_1_0_189        ,
        // Weight
        kptconvlstm__dense_layer__bias_1_0_190        ,
        // Input
        kptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195        ,
        // Input
        kptconvlstm__lstm_layer__lstm__hidden__output__grad_1_0_217        ,
        // Input
        kptconvlstm__lstm_layer__lstm__cell__output__grad_1_0_220        ,
        // Input
        kptconvlstm__view__outputs__0__grad_1_0_476        ,
        // Input
        kinp_window_1_0_477        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_576        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_577        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_578        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_579        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_580        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_581        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_582        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_583        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_584        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_585        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_586        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_587        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_588        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_589        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_590        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_591        ,
        // Input
        kout_window_1_0_479        ,
        // Weight
        kptconvlstm__dense_layer__weight_1_0_628        ,
        // Input
        kinp_window_1_0_478        ,
        // Input
        kptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_482        ,
        // Input
        kptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_483        ,
        // Input
        kptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_484        ,
        // Input
        kptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_485        ,
        // Input
        kptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_486        ,
        // Input
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_747        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_761        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_775        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_789        ,
        // Weight
        kptconvlstm__dense_layer__weight_2_0_261        ,
        // Input
        kptconvlstm__dense_layer__weight__grad_2_0_262        ,
        // Weight
        kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263        ,
        // Weight
        kptconvlstm__dense_layer__bias_2_0_267        ,
        // Input
        kptconvlstm__dense_layer__bias__grad_2_0_268        ,
        // Weight
        kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_2_0_273        ,
        // Input
        kptconvlstm__lstm_layer__weight_ih_l0__grad_2_0_274        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_2_0_279        ,
        // Input
        kptconvlstm__lstm_layer__weight_hh_l0__grad_2_0_280        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_2_0_285        ,
        // Input
        kptconvlstm__lstm_layer__bias_ih_l0__grad_2_0_286        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_2_0_291        ,
        // Input
        kptconvlstm__lstm_layer__bias_hh_l0__grad_2_0_292        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293        
    };

    /// Output enums
    enum Output {
        // Output
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_487        ,
        // Output
        kptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_488        ,
        // Output
        kptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_489        ,
        // Output
        kptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_490        ,
        // Output
        kptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_491        ,
        // Output
        kptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_492        ,
        // Output
        kptconvlstm__view__outputs__0_0_0_493        ,
        // Output
        kptconvlstm__lstm_layer__lstm_tensor        ,
        // Output
        kptconvlstm__lstm_layer__lstm_tensor1        ,
        // Output
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_298        ,
        // Output
        k_tensor        ,
        // Output
        kptconvlstm__dense_layer__linear_bwd_weight_tensor        ,
        // Output
        kptconvlstm__dense_layer__linear_bwd_weight_tensor1        ,
        // Output
        kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_300        ,
        // Output
        kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_301        ,
        // Output
        kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_302        ,
        // Output
        kptconvlstm__lstm_layer__weight_hh_l0__grad_1_0_303        ,
        // Output
        kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_304        ,
        // Output
        kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_305        ,
        // Output
        kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_306        ,
        // Output
        kptconvlstm__lstm_layer__weight_ih_l0__grad_1_0_307        ,
        // Output
        kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_308        ,
        // Output
        kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_309        ,
        // Output
        kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_310        ,
        // Output
        kptconvlstm__lstm_layer__bias_ih_l0__grad_1_0_311        ,
        // Output
        kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_312        ,
        // Output
        kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_313        ,
        // Output
        kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_314        ,
        // Output
        kptconvlstm__lstm_layer__bias_hh_l0__grad_1_0_315        ,
        // Weight
        kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor        ,
        // Weight
        kptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1        ,
        // Weight
        kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor        ,
        // Weight
        kptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_tensor1        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1        ,
        // load tile control output
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480CtrlRdDone,
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_480CtrlWrDone        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf1a_0_0_871,
        kgbuf1a_0_0_807,
        kgbuf1a_0_0_809,
        kptconvlstm__lstm_layer__lstm_hidden_loop_buffer,
        kptconvlstm__lstm_layer__lstm_cell_loop_buffer,
        kgbuf2a_0_0_810,
        kgbuf1a_0_0_923,
        kgbuf1a_0_0_922,
        kgbuf1a_0_0_925,
        kgbuf1a_0_0_924,
        kgbuf1a_0_0_927,
        kgbuf1a_0_0_926,
        kgbuf1a_0_0_929,
        kgbuf1a_0_0_928,
        kgbuf1a_0_0_931,
        kgbuf1a_0_0_930,
        kgbuf1a_0_0_932,
        kgbuf1a_0_0_935,
        kgbuf1a_0_0_811,
        kgbuf1a_0_0_933,
        kgbuf1a_0_0_934,
        kgbuf1a_0_0_936,
        ktbuf2u_0_0_334,
        ktbuf1u_0_0_335,
        ktbuf2u_0_0_342,
        kptconvlstm__dense_layer__linear_wo_bias,
        kptconvlstm__dense_layer__linear_stage_buf,
        kgbuf2u_0_0_344,
        kgbuf2a_0_0_974,
        kgbuf2a_0_0_819,
        kgbuf2a_0_0_813,
        kgbuf2a_0_0_814,
        kgbuf2a_0_0_815,
        kgbuf2a_0_0_816,
        kgbuf2a_0_0_812,
        kgbuf2a_0_0_820,
        kgbuf2a_0_0_818,
        kgbuf2a_0_0_817,
        kgbuf2a_0_0_921,
        kgbuf1a_0_0_821,
        kgbuf1a_0_0_822,
        kgbuf1a_0_0_808,
        kgbuf1a_0_0_914,
        kgbuf1a_0_0_823,
        kgbuf1a_0_0_975,
        kgbuf1a_0_0_824,
        kgbuf1a_1_0_825,
        kgbuf1a_1_0_826,
        kgbuf1a_1_0_872,
        kgbuf1a_1_0_827,
        kgbuf1a_1_0_828,
        kptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer,
        kptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer,
        kptconvlstm__lstm_layer__lstm_bwd_hidden_i_g,
        kptconvlstm__lstm_layer__lstm_bwd_cell_i_g,
        kgbuf2a_1_0_829,
        kgbuf1a_1_0_938,
        kgbuf1a_1_0_937,
        kgbuf1a_1_0_940,
        kgbuf1a_1_0_939,
        kgbuf1a_1_0_942,
        kgbuf1a_1_0_941,
        kgbuf1a_1_0_944,
        kgbuf1a_1_0_943,
        kptconvlstm__lstm_layer__lstm_recompute__temp_cell,
        kgbuf1a_1_0_946,
        kgbuf1a_1_0_945,
        kgbuf1a_1_0_947,
        kgbuf1a_1_0_950,
        kgbuf1a_1_0_948,
        kgbuf1a_1_0_949,
        kgbuf1a_1_0_951,
        kgbuf2u_1_0_392,
        ktbuf2u_1_0_394,
        ktbuf1a_1_0_832,
        ktbuf2u_1_0_399,
        ktbuf2u_1_0_402,
        kptconvlstm__dense_layer__linear_recompute_,
        kgbuf1a_1_0_805,
        kgbuf2u_1_0_406,
        kgbuf2u_1_0_412,
        kgbuf2u_1_0_414,
        kgbuf2u_1_0_419,
        kgbuf1a_1_0_834,
        kptconvlstm__dense_layer__linear_bwd_loss_grad_b,
        kgbuf2u_1_0_421,
        kgbuf2u_1_0_422,
        kgbuf2u_1_0_424,
        kgbuf2u_1_0_430,
        kgbuf2u_1_0_433,
        kgbuf2u_1_0_436,
        kgbuf2u_1_0_438,
        kgbuf2u_1_0_440,
        kgbuf2u_1_0_442,
        kgbuf2u_1_0_444,
        kgbuf1a_1_0_980,
        kgbuf2a_1_0_916,
        kgbuf2u_1_0_446,
        kgbuf2a_1_0_915,
        kgbuf2u_1_0_448,
        kptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg,
        kgbuf1a_1_0_976,
        kptconvlstm__lstm_layer__lstm_bwd_temp_igates,
        kptconvlstm__lstm_layer__lstm_bwd_temp_fgates,
        kptconvlstm__lstm_layer__lstm_bwd_temp_ggates,
        kgbuf1a_1_0_981,
        kptconvlstm__lstm_layer__lstm_bwd_temp_ogates,
        kptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates,
        kgbuf1a_1_0_952,
        kptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates,
        kgbuf1a_1_0_953,
        kgbuf1a_1_0_977,
        kgbuf1a_1_0_967,
        kgbuf1a_1_0_958,
        kgbuf1a_1_0_959,
        kgbuf1a_1_0_978,
        kgbuf1a_1_0_979,
        kgbuf1a_1_0_965,
        kgbuf1a_1_0_873,
        kgbuf1a_1_0_964,
        kgbuf1a_1_0_874,
        kgbuf1a_1_0_966,
        kgbuf1a_1_0_875,
        kgbuf2a_1_0_835,
        kgbuf2a_1_0_840,
        kgbuf2a_1_0_836,
        kgbuf2a_1_0_839,
        kgbuf2a_1_0_838,
        kgbuf1a_1_0_876,
        kgbuf2a_1_0_844,
        kgbuf2a_1_0_843,
        kgbuf2a_1_0_842,
        kgbuf1a_1_0_877,
        kgbuf2a_1_0_848,
        kgbuf2a_1_0_847,
        kgbuf2a_1_0_846,
        kgbuf2a_1_0_852,
        kgbuf2a_1_0_851,
        kgbuf2a_1_0_850,
        kgbuf2a_1_0_841,
        kgbuf2a_1_0_845,
        kgbuf2a_1_0_849,
        kgbuf2a_1_0_853,
        kptconvlstm__dense_layer__linear_bwd_weight_accum,
        kptconvlstm__dense_layer__linear_bwd_weight_accum_1,
        kptconvlstm__lstm_layer__lstm_bwd_accum,
        kptconvlstm__lstm_layer__lstm_bwd_accum_1,
        kptconvlstm__lstm_layer__lstm_bwd_accum_2,
        kptconvlstm__lstm_layer__lstm_bwd_accum_3,
        kptconvlstm__lstm_layer__lstm_bwd_accum_4,
        kptconvlstm__lstm_layer__lstm_bwd_accum_5,
        kptconvlstm__lstm_layer__lstm_bwd_accum_6,
        kptconvlstm__lstm_layer__lstm_bwd_accum_7,
        kptconvlstm__lstm_layer__lstm_bwd_accum_8,
        kptconvlstm__lstm_layer__lstm_bwd_accum_9,
        kptconvlstm__lstm_layer__lstm_bwd_accum_10,
        kptconvlstm__lstm_layer__lstm_bwd_accum_11,
        kptconvlstm__lstm_layer__lstm_bwd_accum_12,
        kptconvlstm__lstm_layer__lstm_bwd_accum_13,
        kptconvlstm__lstm_layer__lstm_bwd_accum_14,
        kptconvlstm__lstm_layer__lstm_bwd_accum_15,
        kgbuf2a_1_0_831,
        kgbuf2a_1_0_830,
        kgbuf2a_1_0_854,
        kgbuf2a_1_0_837,
        kgbuf1a_1_0_855,
        kgbuf1a_1_0_856,
        kgbuf1a_1_0_857,
        kgbuf1a_1_0_858,
        kgbuf1a_1_0_859,
        kgbuf1a_1_0_860,
        kgbuf1a_1_0_861,
        kgbuf1a_1_0_862,
        kgbuf1a_1_0_863,
        kgbuf1a_1_0_864,
        kgbuf1a_1_0_865,
        kgbuf1a_1_0_866,
        kgbuf1a_1_0_867,
        kgbuf1a_1_0_868,
        kgbuf1a_1_0_869,
        kgbuf1a_1_0_870,
        kgbuf1a_2_0_917,
        kgbuf1a_2_0_918,
        kgbuf1a_2_0_919,
        kgbuf1a_2_0_920,
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
            case kptconvlstm__dense_layer__weight_0_0_153: return ptconvlstm__dense_layer__linear_wo_bias_->wbuf();
            case kptconvlstm__dense_layer__bias_0_0_154: return ptconvlstm__dense_layer__linear_add_bias_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_509: return ptconvlstm__lstm_layer__lstm_linear_w_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_510: return ptconvlstm__lstm_layer__lstm_linear_w_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_511: return ptconvlstm__lstm_layer__lstm_linear_w_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_512: return ptconvlstm__lstm_layer__lstm_linear_w_3_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_513: return ptconvlstm__lstm_layer__lstm_linear_v_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_514: return ptconvlstm__lstm_layer__lstm_linear_v_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_515: return ptconvlstm__lstm_layer__lstm_linear_v_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_516: return ptconvlstm__lstm_layer__lstm_linear_v_3_->wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_517: return ptconvlstm__lstm_layer__lstm_linear_w_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_518: return ptconvlstm__lstm_layer__lstm_linear_w_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_519: return ptconvlstm__lstm_layer__lstm_linear_w_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_520: return ptconvlstm__lstm_layer__lstm_linear_w_3_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_521: return ptconvlstm__lstm_layer__lstm_linear_v_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_522: return ptconvlstm__lstm_layer__lstm_linear_v_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_523: return ptconvlstm__lstm_layer__lstm_linear_v_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_524: return ptconvlstm__lstm_layer__lstm_linear_v_3_->bias_wbuf();
            case kptconvlstm__dense_layer__weight_1_0_189: return ptconvlstm__dense_layer__linear_recompute__->wbuf();
            case kptconvlstm__dense_layer__bias_1_0_190: return bias_add_1_0_802_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_576: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_577: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_578: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_579: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_580: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_581: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_582: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_583: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_584: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_585: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_586: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_587: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_588: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_589: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_590: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_591: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->bias_wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_747: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_761: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_775: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_789: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->wbuf();
            case kptconvlstm__dense_layer__weight_2_0_261: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__weight__grad_2_0_262: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__weight__sgd0__momentum_2_0_263: return ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__dense_layer__bias_2_0_267: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().weight;
            case kptconvlstm__dense_layer__bias__grad_2_0_268: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().gradient;
            case kptconvlstm__dense_layer__bias__sgd0__momentum_2_0_269: return ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__weight_ih_l0_2_0_273: return ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__weight_ih_l0__sgd0__momentum_2_0_275: return ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__weight_hh_l0_2_0_279: return ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__weight_hh_l0__sgd0__momentum_2_0_281: return ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__bias_ih_l0_2_0_285: return ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__bias_ih_l0__sgd0__momentum_2_0_287: return ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__bias_hh_l0_2_0_291: return ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293: return ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
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
            case kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor:             return ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1:             return ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor:             return ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1:             return ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor:             return ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1:             return ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
            case kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor:             return ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().weight;
            case kptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_tensor1:             return ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_->weight_update().momentum;
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
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_871_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_807_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_hidden_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_hidden_r_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_809_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_cell_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_cell_r_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_cell_loop_buffer_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_810_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_923_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_922_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_925_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_924_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_927_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_926_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_929_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_928_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_i_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_931_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_f_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_930_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_932_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_o_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_935_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_811_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_mul0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_933_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_mul1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_934_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_tanh_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_936_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_hidden_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.VectorTranspose
    VectorTranspose* vector_transpose_0_0_886_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_output_i_t_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_334_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf1u_0_0_335_;
    // logreg_lstm.py:218:0: tlir.Index
    RAILIndex* ptconvlstm__indexselect_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_342_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_wo_bias_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* ptconvlstm__dense_layer__linear_stage_buf_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    BiasAdd* ptconvlstm__dense_layer__linear_add_bias_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_344_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_0_0_968_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_;
    // logreg_lstm.py:225:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_974_;
    // logreg_lstm.py:225:0: tlir.Reshape
    ReshapeView* ptconvlstm__view_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_819_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_813_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_814_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_815_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_816_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_812_;
    // logreg_lstm.py:225:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_820_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_818_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_817_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_921_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* permute_view_0_0_553_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_0_0_554_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* permute_view_0_0_555_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_0_0_556_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_821_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_822_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_808_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_914_;
    // UnknownFileName:0:0: tlir.Realign
    Realign* realign_0_0_889_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_823_;
    // logreg_lstm.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_2_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* sub_0_0_558_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_975_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    BinaryOps* mul_0_0_559_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    MeanUnalign* mean_unalign_0_0_560_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_824_;
    /** Section 1, Chip 0 **/
    PartitionNode *partition_1_0_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_825_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_recompute__hidden_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_826_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_recompute__cell_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_872_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_827_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_828_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_cell_n_g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_829_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_938_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_937_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_940_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_939_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_942_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_941_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_944_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_943_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_recompute__temp_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__i_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_946_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__f_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_945_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_947_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__o_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_950_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__mul0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_948_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__mul1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_949_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_951_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__hidden_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_recompute__output_i_t_;
    // logreg_lstm.py:222:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_392_;
    // logreg_lstm.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_2_recompute__;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_394_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf1a_1_0_832_;
    // logreg_lstm.py:218:0: tlir.Index
    RAILIndex* ptconvlstm__indexselect_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_399_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_input0_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_402_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_805_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddBias
    BiasAdd* bias_add_1_0_802_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_406_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    ReshapeView* reshape_1_0_620_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* ptconvlstm__criterion__mseloss_bwd_sub_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_622_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_623_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_412_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    ReshapeView* reshape_1_0_624_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_414_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    ReshapeView* reshape_1_0_625_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_906_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    AddN* ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_419_;
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_834_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_421_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_422_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__dense_layer__linear_bwd_weight_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_424_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_969_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_input0_bwd_;
    // logreg_lstm.py:218:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_430_;
    // logreg_lstm.py:218:0: tlir.IndexAdd
    IndexAdd* ptconvlstm__indexselect_bwd_loss_just_index_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_433_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_input_i_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_436_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_438_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_440_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_442_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_444_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_980_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_916_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_446_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_;
    // logreg_lstm.py:218:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_915_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_448_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_output_g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_976_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_igates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_981_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_952_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_953_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_977_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_ogate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_967_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_tanh_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_958_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    TanhB* ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_959_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_978_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_979_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_fgate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_965_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_873_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_igate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_964_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_874_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_ggate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_966_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_875_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    SigmoidB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_835_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_840_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_836_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_839_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_838_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_876_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    SigmoidB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_844_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_843_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_842_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_877_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    TanhB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_848_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_847_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_846_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    SigmoidB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_852_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_851_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_850_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_841_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_845_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_849_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_853_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddN
    AddN* addn_1_0_678_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__dense_layer__linear_bwd_weight_accum_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__dense_layer__linear_bwd_weight_accum_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_4_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_5_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_6_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_7_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_8_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_9_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_10_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_11_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_12_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_13_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_14_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.mutate.Accumulate
    ParAccum* ptconvlstm__lstm_layer__lstm_bwd_accum_15_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_831_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_830_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_854_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_837_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_890_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_680_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_891_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_681_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_892_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_682_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_893_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_683_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_855_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_856_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_857_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_858_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_894_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_684_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_895_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_685_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_896_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_686_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_897_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_687_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_859_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_860_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_861_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_862_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_902_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_688_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_903_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_689_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_904_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_690_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_905_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_691_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_863_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_864_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_865_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_866_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_898_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_692_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_899_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_693_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_900_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_694_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_901_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_695_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_867_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_868_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_869_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_870_;
    /** Section 2, Chip 0 **/
    PartitionNode *partition_2_0_;
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_917_;
    // ptconvlstm__lstm_layer__weight_ih_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_918_;
    // ptconvlstm__lstm_layer__weight_hh_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_919_;
    // ptconvlstm__lstm_layer__bias_ih_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_920_;
    // ptconvlstm__lstm_layer__bias_hh_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;

};
} // namespace arc
} // namespace plasma
} // namespace prism

#endif // PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
