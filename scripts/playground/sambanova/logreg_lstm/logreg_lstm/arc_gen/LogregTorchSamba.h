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
#include "rail/node/tbuffer/TBufferView.h"
#include "templates/transpose/prism/StreamingTranspose.h"
#include "templates/mean/prism/MeanUnalign.h"
#include "templates/scale/prism/Scale.h"
#include "templates/add_n/prism/AddN.h"
#include "templates/gemm/prism/BigGemm.h"
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
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_531;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_532;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_533;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_0_0_534;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_598;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_599;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_600;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_1_0_601;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_2_0_291;
        TensorLayout ptconvlstm__lstm_layer__bias_hh_l0_dram_in;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_527;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_528;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_529;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_0_0_530;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_594;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_595;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_596;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_1_0_597;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_2_0_285;
        TensorLayout ptconvlstm__lstm_layer__bias_ih_l0_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_523;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_524;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_525;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_0_0_526;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_590;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_591;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_592;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_593;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_757;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_771;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_785;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_1_0_799;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_2_0_279;
        TensorLayout ptconvlstm__lstm_layer__weight_hh_l0_dram_in;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_519;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_520;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_521;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_0_0_522;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_586;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_587;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_588;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_1_0_589;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_2_0_273;
        TensorLayout ptconvlstm__lstm_layer__weight_ih_l0_dram_in;
        TensorLayout lstm_operand_1_0_0_125;
        TensorLayout lstm_operand_1_1_0_170;
        TensorLayout lstm_operand_1_dram_in;
        TensorLayout lstm_operand_0_0_0_122;
        TensorLayout lstm_operand_0_1_0_167;
        TensorLayout lstm_operand_0_dram_in;
        TensorLayout inp_window_0_0_482;
        TensorLayout inp_window_1_0_485;
        TensorLayout inp_window_1_0_486;
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
        TensorLayout ptconvlstm__dense_layer__weight_1_0_638;
        TensorLayout ptconvlstm__dense_layer__weight_2_0_261;
        TensorLayout ptconvlstm__dense_layer__weight_dram_in;
        TensorLayout out_window_0_0_483;
        TensorLayout out_window_1_0_487;
        TensorLayout out_window_dram_in;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_1_0_195;
        TensorLayout ptconvlstm__criterion__mseloss__outputs__0__grad_dram_in;
        TensorLayout ptconvlstm__view__outputs__0__grad_1_0_484;
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
        TensorLayout ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490;
        TensorLayout ptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491;
        TensorLayout ptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492;
        TensorLayout ptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493;
        TensorLayout ptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494;
        TensorLayout ptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_dram_in;
        TensorLayout ptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488;
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
        TensorLayout dummy_dp_accum_region_0_dram_in;
        TensorLayout accum_dummy_0_3_0_811;
        TensorLayout accum_dummy_0_dram_in;
        TensorLayout accum_dummy_0_reduce_buf_3_0_812;
        TensorLayout accum_dummy_0_reduce_buf_dram_in;
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
        TensorLayout dummy_dp_accum_region_0_dram_out;
        TensorLayout accum_dummy_0_dram_out;
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
        kinp_window_0_0_482        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_519        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_520        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_521        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_0_0_522        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_523        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_524        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_525        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_0_0_526        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_527        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_528        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_529        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_0_0_530        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_531        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_532        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_533        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_0_0_534        ,
        // Input
        kout_window_0_0_483        ,
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
        kptconvlstm__view__outputs__0__grad_1_0_484        ,
        // Input
        kinp_window_1_0_485        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_586        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_587        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_588        ,
        // Weight
        kptconvlstm__lstm_layer__weight_ih_l0_1_0_589        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_590        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_591        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_592        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_593        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_594        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_595        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_596        ,
        // Weight
        kptconvlstm__lstm_layer__bias_ih_l0_1_0_597        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_598        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_599        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_600        ,
        // Weight
        kptconvlstm__lstm_layer__bias_hh_l0_1_0_601        ,
        // Input
        kout_window_1_0_487        ,
        // Weight
        kptconvlstm__dense_layer__weight_1_0_638        ,
        // Input
        kinp_window_1_0_486        ,
        // Input
        kptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_490        ,
        // Input
        kptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_491        ,
        // Input
        kptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_492        ,
        // Input
        kptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_493        ,
        // Input
        kptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_1_0_494        ,
        // Input
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_757        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_771        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_785        ,
        // Weight
        kptconvlstm__lstm_layer__weight_hh_l0_1_0_799        ,
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
        kptconvlstm__lstm_layer__bias_hh_l0__sgd0__momentum_2_0_293        ,
        // Input
        kaccum_dummy_0_3_0_811        ,
        // Input
        kaccum_dummy_0_reduce_buf_3_0_812        
    };

    /// Output enums
    enum Output {
        // Output
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_0_0_495        ,
        // Output
        kptconvlstm__lstm_layer__lstm3_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_496        ,
        // Output
        kptconvlstm__lstm_layer__lstm4_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_497        ,
        // Output
        kptconvlstm__lstm_layer__lstm5_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_498        ,
        // Output
        kptconvlstm__lstm_layer__lstm6_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_499        ,
        // Output
        kptconvlstm__lstm_layer__lstm7_used_by_ptconvlstm__lstm_layer__lstm_bwd_0_0_500        ,
        // Output
        kptconvlstm__view__outputs__0_0_0_501        ,
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
        // Output
        kaccum_dummy_0_3_0_815        ,
        // load tile control output
        kout_window_0_0_483CtrlRdDone,
        kout_window_0_0_483CtrlWrDone        ,
        // load tile control output
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488CtrlRdDone,
        kptconvlstm__lstm_layer__lstm_meta_outputs0_used_by_ptconvlstm__lstm_layer__lstm_shifted_outputs_1_0_488CtrlWrDone        
    };

    /// Node enums
    enum NodeEnum {
        kgbuf1a_0_0_890,
        kgbuf1a_0_0_825,
        kgbuf1a_0_0_827,
        kptconvlstm__lstm_layer__lstm_hidden_loop_buffer,
        kptconvlstm__lstm_layer__lstm_cell_loop_buffer,
        kgbuf4a_0_0_828,
        kgbuf1a_0_0_947,
        kgbuf1a_0_0_946,
        kgbuf1a_0_0_949,
        kgbuf1a_0_0_948,
        kgbuf1a_0_0_951,
        kgbuf1a_0_0_950,
        kgbuf1a_0_0_953,
        kgbuf1a_0_0_952,
        kgbuf1a_0_0_955,
        kgbuf1a_0_0_954,
        kgbuf1a_0_0_956,
        kgbuf1a_0_0_959,
        kgbuf1a_0_0_829,
        kgbuf1a_0_0_957,
        kgbuf1a_0_0_958,
        kgbuf1a_0_0_960,
        ktbuf2u_0_0_334,
        krbuf1u_0_0_335,
        ktbuf2u_0_0_342,
        kgbuf2u_0_0_344,
        kgbuf2a_0_0_1001,
        kgbuf2a_0_0_837,
        kgbuf2a_0_0_831,
        kgbuf2a_0_0_832,
        kgbuf2a_0_0_833,
        kgbuf2a_0_0_834,
        kgbuf2a_0_0_830,
        kgbuf2a_0_0_838,
        kgbuf2a_0_0_836,
        kgbuf2a_0_0_835,
        kgbuf2a_0_0_944,
        kgbuf1a_0_0_839,
        kgbuf1a_0_0_840,
        kgbuf1a_0_0_826,
        kgbuf2a_0_0_936,
        kgbuf2u_0_0_363,
        kgbuf2a_0_0_945,
        kgbuf2a_0_0_994,
        kgbuf1a_0_0_943,
        kgbuf1a_0_0_1002,
        kgbuf1a_0_0_841,
        kgbuf1a_1_0_842,
        kgbuf1a_1_0_843,
        kgbuf1a_1_0_844,
        kgbuf1a_1_0_845,
        kptconvlstm__lstm_layer__lstm_recompute__hidden_loop_buffer,
        kptconvlstm__lstm_layer__lstm_recompute__cell_loop_buffer,
        kptconvlstm__lstm_layer__lstm_bwd_hidden_i_g,
        kptconvlstm__lstm_layer__lstm_bwd_cell_i_g,
        kgbuf4a_1_0_846,
        kgbuf1a_1_0_962,
        kgbuf1a_1_0_961,
        kgbuf1a_1_0_964,
        kgbuf1a_1_0_963,
        kgbuf1a_1_0_966,
        kgbuf1a_1_0_965,
        kgbuf1a_1_0_968,
        kgbuf1a_1_0_967,
        kptconvlstm__lstm_layer__lstm_recompute__temp_cell,
        kgbuf1a_1_0_970,
        kgbuf1a_1_0_969,
        kgbuf1a_1_0_971,
        kgbuf1a_1_0_974,
        kgbuf1a_1_0_972,
        kgbuf1a_1_0_973,
        kgbuf1a_1_0_975,
        kgbuf4u_1_0_399,
        ktbuf2u_1_0_401,
        krbuf1u_1_0_402,
        ktbuf2a_1_0_850,
        ktbuf2u_1_0_406,
        ktbuf2u_1_0_409,
        kgbuf2u_1_0_411,
        kgbuf4u_1_0_419,
        kgbuf2u_1_0_421,
        kgbuf2u_1_0_426,
        kgbuf1a_1_0_851,
        kptconvlstm__dense_layer__linear_bwd_loss_grad_b,
        kgbuf7u_1_0_428,
        kgbuf2u_1_0_429,
        kgbuf2u_1_0_431,
        kgbuf12u_1_0_437,
        kgbuf4u_1_0_440,
        kgbuf3u_1_0_443,
        kgbuf3u_1_0_445,
        kgbuf3u_1_0_447,
        kgbuf3u_1_0_449,
        kgbuf3u_1_0_451,
        kgbuf1a_1_0_1007,
        kgbuf2a_1_0_938,
        kgbuf2u_1_0_453,
        kgbuf2a_1_0_937,
        kgbuf2u_1_0_455,
        kptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg,
        kgbuf1a_1_0_1003,
        kptconvlstm__lstm_layer__lstm_bwd_temp_igates,
        kptconvlstm__lstm_layer__lstm_bwd_temp_fgates,
        kptconvlstm__lstm_layer__lstm_bwd_temp_ggates,
        kgbuf1a_1_0_1008,
        kptconvlstm__lstm_layer__lstm_bwd_temp_ogates,
        kptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates,
        kgbuf1a_1_0_976,
        kptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates,
        kgbuf1a_1_0_977,
        kgbuf1a_1_0_1004,
        kgbuf1a_1_0_991,
        kgbuf1a_1_0_982,
        kgbuf1a_1_0_983,
        kgbuf1a_1_0_1005,
        kgbuf1a_1_0_1006,
        kgbuf1a_1_0_989,
        kgbuf1a_1_0_891,
        kgbuf1a_1_0_988,
        kgbuf1a_1_0_892,
        kgbuf1a_1_0_990,
        kgbuf1a_1_0_893,
        kgbuf2a_1_0_852,
        kgbuf2a_1_0_857,
        kgbuf2a_1_0_853,
        kgbuf2a_1_0_856,
        kgbuf2a_1_0_855,
        kgbuf1a_1_0_894,
        kgbuf2a_1_0_861,
        kgbuf2a_1_0_860,
        kgbuf2a_1_0_859,
        kgbuf1a_1_0_895,
        kgbuf2a_1_0_865,
        kgbuf2a_1_0_864,
        kgbuf2a_1_0_863,
        kgbuf2a_1_0_869,
        kgbuf2a_1_0_868,
        kgbuf2a_1_0_867,
        kgbuf2a_1_0_858,
        kgbuf2a_1_0_862,
        kgbuf2a_1_0_866,
        kgbuf2a_1_0_870,
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
        kgbuf2a_1_0_848,
        kgbuf2a_1_0_847,
        kgbuf2a_1_0_871,
        kgbuf2a_1_0_854,
        kgbuf1a_1_0_872,
        kgbuf1a_1_0_873,
        kgbuf1a_1_0_874,
        kgbuf1a_1_0_875,
        kgbuf1a_1_0_876,
        kgbuf1a_1_0_877,
        kgbuf1a_1_0_878,
        kgbuf1a_1_0_879,
        kgbuf1a_1_0_880,
        kgbuf1a_1_0_881,
        kgbuf1a_1_0_882,
        kgbuf1a_1_0_883,
        kgbuf1a_1_0_884,
        kgbuf1a_1_0_885,
        kgbuf1a_1_0_886,
        kgbuf1a_1_0_887,
        kgbuf1a_2_0_939,
        kgbuf1a_2_0_940,
        kgbuf1a_2_0_941,
        kgbuf1a_2_0_942,
        kgbuf2a_3_0_992,
        kgbuf2a_3_0_993,
        kgbuf2a_3_0_888,
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
            case kptconvlstm__dense_layer__weight_0_0_153: return ptconvlstm__dense_layer__linear_->wbuf();
            case kptconvlstm__dense_layer__bias_0_0_154: return ptconvlstm__dense_layer__linear_->bias_wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_519: return ptconvlstm__lstm_layer__lstm_linear_w_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_520: return ptconvlstm__lstm_layer__lstm_linear_w_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_521: return ptconvlstm__lstm_layer__lstm_linear_w_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_0_0_522: return ptconvlstm__lstm_layer__lstm_linear_w_3_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_523: return ptconvlstm__lstm_layer__lstm_linear_v_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_524: return ptconvlstm__lstm_layer__lstm_linear_v_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_525: return ptconvlstm__lstm_layer__lstm_linear_v_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_0_0_526: return ptconvlstm__lstm_layer__lstm_linear_v_3_->wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_527: return ptconvlstm__lstm_layer__lstm_linear_w_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_528: return ptconvlstm__lstm_layer__lstm_linear_w_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_529: return ptconvlstm__lstm_layer__lstm_linear_w_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_0_0_530: return ptconvlstm__lstm_layer__lstm_linear_w_3_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_531: return ptconvlstm__lstm_layer__lstm_linear_v_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_532: return ptconvlstm__lstm_layer__lstm_linear_v_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_533: return ptconvlstm__lstm_layer__lstm_linear_v_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_0_0_534: return ptconvlstm__lstm_layer__lstm_linear_v_3_->bias_wbuf();
            case kptconvlstm__dense_layer__weight_1_0_189: return ptconvlstm__dense_layer__linear_recompute__->wbuf();
            case kptconvlstm__dense_layer__bias_1_0_190: return ptconvlstm__dense_layer__linear_recompute__->bias_wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_586: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_587: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_588: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_ih_l0_1_0_589: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_590: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_591: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_592: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_593: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_594: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_595: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_596: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_ih_l0_1_0_597: return ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_598: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_599: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_600: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_->bias_wbuf();
            case kptconvlstm__lstm_layer__bias_hh_l0_1_0_601: return ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_->bias_wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_757: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_771: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_785: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_->wbuf();
            case kptconvlstm__lstm_layer__weight_hh_l0_1_0_799: return ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_->wbuf();
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
    GBuffer* gbuf1a_0_0_890_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_825_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_hidden_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_hidden_r_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_827_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_cell_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_cell_r_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_hidden_loop_buffer_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    LoopBuffer* ptconvlstm__lstm_layer__lstm_cell_loop_buffer_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf4a_0_0_828_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_947_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_946_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_949_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_948_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_951_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_950_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_w_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_953_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_linear_v_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_952_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_add_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_i_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_955_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_f_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_954_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_956_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_o_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_959_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_829_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_mul0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_957_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_mul1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_958_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_tanh_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_960_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_hidden_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.VectorTranspose
    VectorTranspose* vector_transpose_0_0_906_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_output_i_t_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_334_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* rbuf1u_0_0_335_;
    // logreg_lstm.py:218:0: tlir.Index
    RAILIndex* ptconvlstm__indexselect_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf2u_0_0_342_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    GemmSubnet* ptconvlstm__dense_layer__linear_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_344_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_0_0_995_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_;
    // logreg_lstm.py:225:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_1001_;
    // logreg_lstm.py:225:0: tlir.Reshape
    ReshapeView* ptconvlstm__view_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_837_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_831_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_832_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_833_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_834_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_830_;
    // logreg_lstm.py:225:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_838_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_836_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_835_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_944_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* permute_view_0_0_563_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_0_0_564_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* permute_view_0_0_565_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_0_0_566_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_839_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_840_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_826_;
    // logreg_lstm.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_936_;
    // logreg_lstm.py:222:0: tlir.StreamingPermute
    StreamingTranspose* streaming_transpose_0_0_909_;
    // logreg_lstm.py:222:0: tlir.Buffer
    GBuffer* gbuf2u_0_0_363_;
    // logreg_lstm.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_2_;
    // logreg_lstm.py:222:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_945_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2a_0_0_994_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_943_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* sub_0_0_568_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_1002_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Mul
    BinaryOps* mul_0_0_569_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.MeanAll
    MeanUnalign* mean_unalign_0_0_570_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf1a_0_0_841_;
    /** Section 1, Chip 0 **/
    PartitionNode *partition_1_0_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_842_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_recompute__hidden_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_recompute__hidden_r_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_843_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_recompute__cell_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_recompute__cell_r_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_844_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_r_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_t_;
    // UnknownFileName:0:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_845_;
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
    GBuffer* gbuf4a_1_0_846_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_962_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_961_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_964_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_963_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_966_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_965_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_w_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_968_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Linear
    GemmSubnet* ptconvlstm__lstm_layer__lstm_recompute__linear_v_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_967_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__add_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_recompute__temp_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__i_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_970_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__f_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_969_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_971_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Sigmoid
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__o_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_974_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__mul0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_972_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__mul1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_973_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_recompute__tanh_cell_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_975_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_recompute__hidden_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_recompute__output_i_t_;
    // logreg_lstm.py:222:0: tlir.Buffer
    GBuffer* gbuf4u_1_0_399_;
    // logreg_lstm.py:222:0: tlir.Reshape
    ReshapeView* ptconvlstm__reshape_2_recompute__;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_401_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* rbuf1u_1_0_402_;
    // logreg_lstm.py:218:0: tlir.Buffer
    TBuffer* tbuf2a_1_0_850_;
    // logreg_lstm.py:218:0: tlir.Index
    RAILIndex* ptconvlstm__indexselect_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_406_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_input0_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    TBuffer* tbuf2u_1_0_409_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    GemmSubnet* ptconvlstm__dense_layer__linear_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_411_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_output0_recompute__;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    ReshapeView* reshape_1_0_630_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Sub
    BinaryOps* ptconvlstm__criterion__mseloss_bwd_sub_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_632_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Scale
    Scale* scale_1_0_633_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf4u_1_0_419_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    ReshapeView* reshape_1_0_634_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_421_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Reshape
    ReshapeView* reshape_1_0_635_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_928_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.AddN
    AddN* ptconvlstm__dense_layer__linear_t_output0_bwd_addn0_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_426_;
    // software/compiler/mac/src/pybind/py_air.cpp:1543:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_851_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Linear
    BigGemm* ptconvlstm__dense_layer__linear_bwd_loss_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf7u_1_0_428_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_429_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__dense_layer__linear_bwd_weight_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_431_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.LayoutCast
    LayoutCast* layout_cast_1_0_996_;
    // /usr/local/lib/python3.7/site-packages/torch/overrides.py:1355:0: tlir.PermuteView
    PermuteView* ptconvlstm__dense_layer__linear_t_input0_bwd_;
    // logreg_lstm.py:218:0: tlir.Buffer
    GBuffer* gbuf12u_1_0_437_;
    // logreg_lstm.py:218:0: tlir.IndexAdd
    IndexAdd* ptconvlstm__indexselect_bwd_loss_just_index_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf4u_1_0_440_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_input_i_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf3u_1_0_443_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf3u_1_0_445_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf3u_1_0_447_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf3u_1_0_449_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf3u_1_0_451_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_1007_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_938_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_453_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_shifted_output_i_t_;
    // logreg_lstm.py:218:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_937_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2u_1_0_455_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.PermuteView
    PermuteView* ptconvlstm__lstm_layer__lstm_bwd_output_g_t_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_hidden_n_g_tempg_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_hidden_i_g_sum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_1003_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_igates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_fgates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_ggates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_1008_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_ogates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_temp_fgates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_976_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* ptconvlstm__lstm_layer__lstm_bwd_temp_temp_igates_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_977_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Tanh
    UnaryOps* ptconvlstm__lstm_layer__lstm_bwd_recompute_cell_t_tanh_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_1004_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_ogate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_991_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_tanh_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_982_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    TanhB* ptconvlstm__lstm_layer__lstm_bwd_cell_i_shifted_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_983_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddV2
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_cell_i_g_sum_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_1005_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_1006_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_fgate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_989_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_891_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_ct_1_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_igate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_988_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_892_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Mul
    BinaryOps* ptconvlstm__lstm_layer__lstm_bwd_ggate_g_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_990_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_893_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    SigmoidB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_0_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_852_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_857_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_0_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_853_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_856_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_855_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_0_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_894_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    SigmoidB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_1_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_861_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_1_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_860_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_859_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_1_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_895_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.TanhGrad
    TanhB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_2_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_865_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_2_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_864_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_863_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_2_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.SigmoidGrad
    SigmoidB* ptconvlstm__lstm_layer__lstm_bwd_pre_act_g_gate_3_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_869_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_w_grad_gate_3_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_868_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.BigLinearGrad
    BigGemm* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_a_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_867_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.LinearGrad
    GemmSubnet* ptconvlstm__lstm_layer__lstm_bwd_linear_v_grad_gate_3_grad_b_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_858_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_862_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_866_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_870_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.AddN
    AddN* addn_1_0_688_;
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
    GBuffer* gbuf2a_1_0_848_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_847_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_871_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf2a_1_0_854_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_912_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_690_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_913_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_691_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_914_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_692_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_915_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_693_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_872_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_873_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_874_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_875_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_916_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_694_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_917_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_695_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_918_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_696_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_919_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_697_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_876_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_877_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_878_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_879_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_924_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_698_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_925_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_699_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_926_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_700_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_927_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_701_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_880_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_881_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_882_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_883_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_920_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_702_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_921_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_703_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_922_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_704_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Transpose
    Transpose* transpose_1_0_923_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Reshape
    ReshapeView* reshape_1_0_705_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_884_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_885_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_886_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_1_0_887_;
    /** Section 2, Chip 0 **/
    PartitionNode *partition_2_0_;
    // ptconvlstm__dense_layer__weight:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__weight__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // ptconvlstm__dense_layer__bias:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__dense_layer__bias__ptconvlstm__dense_layer__linear_bwd_weight_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_939_;
    // ptconvlstm__lstm_layer__weight_ih_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__weight_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_940_;
    // ptconvlstm__lstm_layer__weight_hh_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__weight_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_941_;
    // ptconvlstm__lstm_layer__bias_ih_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__bias_ih_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    // /usr/local/lib/python3.7/site-packages/torch/nn/modules/rnn.py:692:0: tlir.Buffer
    GBuffer* gbuf1a_2_0_942_;
    // ptconvlstm__lstm_layer__bias_hh_l0:0:0: tlir.SGD
    OptimizerSGD* ptconvlstm__lstm_layer__bias_hh_l0__ptconvlstm__lstm_layer__lstm_bwd_opt_;
    /** Section 3, Chip 0 **/
    PartitionNode *partition_3_0_;
    // <unknown location>: tlir.Buffer
    GBuffer* gbuf2a_3_0_992_;
    // <unknown location>: tlir.Buffer
    GBuffer* gbuf2a_3_0_993_;
    // <unknown location>: tlir.AddV2
    BinaryOps* add_3_0_813_;
    // <unknown location>: tlir.Scale
    Scale* scale_3_0_814_;
    // <unknown location>: tlir.Buffer
    GBuffer* gbuf2a_3_0_888_;

};
} // namespace arc
} // namespace plasma
} // namespace prism

#endif // PRISM_PLASMA_TEMPLATES_AUTOGEN_LOGREG_TORCH_SAMBA_H_
