
#include <iostream>
#include <string>
#include <stdexcept>
#include "cutlass/cutlass.h"
#include "cutlass/conv/kernel/default_conv2d_fprop.h"
#include "cutlass/conv/device/implicit_gemm_convolution.h"
#include "cutlass/util/host_tensor.h"
#include "cutlass/util/reference/host/tensor_fill.h"
#include <cutlass/epilogue/thread/linear_combination_bias_relu.h>
#include <cutlass/epilogue/thread/linear_combination_hardswish.h>



#define CUTLASS_CHECK(status)                                                         \
  {                                                                                   \
    cutlass::Status error = status;                                                   \
    if (error != cutlass::Status::kSuccess) {                                         \
      auto msg = std::string("[") + __FILE__ + "] Got cutlass error: " +              \
          cutlassGetStatusString(error) + " at: " + std::to_string(__LINE__);         \
      std::cerr << msg << std::endl;                                                  \
      throw std::runtime_error(msg);                                                  \
    }                                                                                 \
  }



  // Conv2dFprop Fixed_channels kernel instance "cutlass_tensorop_f16_s16816fprop_fixed_channels_f16_64x64_32x3_nhwc_align4"
  using cutlass_tensorop_f16_s16816fprop_fixed_channels_f16_64x64_32x3_nhwc_align4_base = 
  typename cutlass::conv::kernel::DefaultConv2dFprop<
    cutlass::half_t, 
    cutlass::layout::TensorNHWC,
    cutlass::half_t, 
    cutlass::layout::TensorNHWC,
    cutlass::half_t, 
    cutlass::layout::TensorNHWC,
    float,
    cutlass::arch::OpClassTensorOp,
    cutlass::arch::Sm80,
    cutlass::gemm::GemmShape<64, 64, 32>,
    cutlass::gemm::GemmShape<32, 32, 32 >,
    cutlass::gemm::GemmShape<16, 8, 16>,
    cutlass::epilogue::thread::LinearCombinationHardSwish<
      cutlass::half_t,
      8,
      float,
      float
    >,
    cutlass::gemm::threadblock::GemmIdentityThreadblockSwizzle<4>, // cutlass::gemm::threadblock::GemmSplitKIdentityThreadblockSwizzle<>,
    3,
    cutlass::arch::OpMultiplyAdd,
    cutlass::conv::IteratorAlgorithm::kFixedChannels,
    cutlass::conv::StrideSupport::kStrided,
    4,
    4
  >::Kernel;

using f4fcada3ac85f38822b753512ddd9e96a802420c5 = cutlass::conv::device::ImplicitGemmConvolution<cutlass_tensorop_f16_s16816fprop_fixed_channels_f16_64x64_32x3_nhwc_align4_base>;



void conv2d_bias_hardswish_few_channels_1 (
    void* in_ptr,
    void* weight_ptr,
    void* out_ptr,
    void* bias_ptr,
    uint8_t* workspace,
    int64_t* batch,
    int64_t* out_ch,
    int64_t* in_ch,
    int64_t* kernel_h,
    int64_t* kernel_w,
    int64_t* in_h,
    int64_t* in_w,
    int64_t* out_batch,
    int64_t* out_h,
    int64_t* out_w,
    int stride,
    int dilation,
    int pad,
    cudaStream_t stream
  ) {

  
  int64_t NI = *batch;
  int64_t HI = *in_h;
  int64_t WI = *in_w;
  int64_t CI = *in_ch;
  int64_t CO = *out_ch;
  int64_t KH = *kernel_h;
  int64_t KW = *kernel_w;
  int64_t SH = stride;
  int64_t SW = stride;
  int64_t DH = dilation;
  int64_t DW = dilation;
  int64_t PH = pad;
  int64_t PW = pad;
  int64_t KHEff = (KH - 1) * DH + 1;
  int64_t KWEff = (KW - 1) * DW + 1;
  int64_t NO = NI;
  int64_t HO = (HI + PH + PH - KHEff) / SH + 1;
  int64_t WO = (WI + PW + PW - KWEff) / SW + 1;
  *out_batch = NO;
  *out_h = HO;
  *out_w = WO;
  *out_ch = CO;
  int i32_batch = *batch;
  int i32_in_h = *in_h;
  int i32_in_w = *in_w;
  int i32_in_ch = *in_ch;
  int i32_out_ch = *out_ch;
  int i32_kernel_h = *kernel_h;
  int i32_kernel_w = *kernel_w;
  int i32_out_batch = *out_batch;
  int i32_out_h = *out_h;
  int i32_out_w = *out_w;

  using cutlass::layout::TensorNHWC;
  TensorNHWC layout_A(TensorNHWC::packed(cutlass::make_Coord(i32_batch, i32_in_h, i32_in_w, i32_in_ch)));
  TensorNHWC layout_B(TensorNHWC::packed(cutlass::make_Coord(i32_out_ch, i32_kernel_h, i32_kernel_w, i32_in_ch)));
  TensorNHWC layout_C(TensorNHWC::packed(cutlass::make_Coord(i32_out_batch, i32_out_h, i32_out_w, i32_out_ch)));

  cutlass::conv::Conv2dProblemSize problem_size(
    {i32_batch, i32_in_h, i32_in_w, i32_in_ch},
        {i32_out_ch, i32_kernel_h, i32_kernel_w, i32_in_ch},
        {pad, pad, pad, pad},
        {stride, stride},
        {dilation, dilation},
        {i32_out_batch, i32_out_h, i32_out_w, i32_out_ch},
        cutlass::conv::Mode::kCrossCorrelation,
        1
  );

  
  if (NI == 1 && HI == 224 && WI == 224 && CI == 4) {
    
    using ElementComputeEpilogue = typename f4fcada3ac85f38822b753512ddd9e96a802420c5::ElementCompute;
//  TODO: cast to right dtype
    typename f4fcada3ac85f38822b753512ddd9e96a802420c5::Arguments arguments{
        problem_size,
        {static_cast<cutlass::half_t*>(in_ptr), layout_A},
        {static_cast<cutlass::half_t*>(weight_ptr), layout_B},
        {static_cast<cutlass::half_t*>(bias_ptr), cutlass::layout::TensorNHWC::Stride(0)},
        {static_cast<cutlass::half_t*>(out_ptr), layout_C},
        {ElementComputeEpilogue(1), ElementComputeEpilogue(1)},
    };
    f4fcada3ac85f38822b753512ddd9e96a802420c5 implicit_gemm_op;

    auto status = implicit_gemm_op.can_implement(arguments);
    CUTLASS_CHECK(status);
    status = implicit_gemm_op.initialize(arguments, workspace);
    CUTLASS_CHECK(status);
    status = implicit_gemm_op(stream);
    CUTLASS_CHECK(status);
    return;
  }
  throw std::runtime_error(
      "Unsupported workload for this conv2d specialization."
  );
}