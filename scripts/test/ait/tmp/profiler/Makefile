
programs = gemm_rcr_bias_add/gemm_rcr_bias_add_d899bb6f03fb1ad5ed6d7926a0d1b8aa86c9e65f_1 gemm_rcr_bias_fast_gelu/gemm_rcr_bias_fast_gelu_d899bb6f03fb1ad5ed6d7926a0d1b8aa86c9e65f_1
all: $(programs)
.PHONY: all clean

$(programs): %: %.cu
	nvcc -DCUTLASS_ENABLE_TENSOR_CORE_MMA=1 -DCUTLASS_USE_TANH_FOR_SIGMOID=1 -w -gencode=arch=compute_80,code=[sm_80,compute_80] -Xcompiler=-fPIC -Xcompiler=-Wconversion -Xcompiler=-fno-strict-aliasing -Xcompiler -fvisibility=hidden -O3 -std=c++17 --expt-relaxed-constexpr --use_fast_math -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/include -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/tools/util/include -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/examples/35_gemm_softmax -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/examples/42_fused_multi_head_attention -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/examples/43_dual_gemm -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/../../backend/cuda/attention/src/./ -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/../../backend/cuda/attention/src/fmha -DNDEBUG -o $@ $<

clean:
	rm -f $(programs)