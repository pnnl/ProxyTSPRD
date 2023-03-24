
CC = nvcc
CFLAGS = 
fPIC_flag = -Xcompiler=-fPIC

obj_files = concatenate_5.obj constants.obj model_container_base.obj model_container.obj model_interface.obj debug_utility.obj utility.obj

%.obj : %.cu
	nvcc -DCUTLASS_ENABLE_TENSOR_CORE_MMA=1 -DCUTLASS_USE_TANH_FOR_SIGMOID=1 -w -gencode=arch=compute_80,code=[sm_80,compute_80] -Xcompiler=-fPIC -Xcompiler=-Wconversion -Xcompiler=-fno-strict-aliasing -Xcompiler -fvisibility=hidden -O3 -std=c++17 --expt-relaxed-constexpr --use_fast_math -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/include -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/tools/util/include -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/examples/35_gemm_softmax -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/examples/42_fused_multi_head_attention -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/examples/43_dual_gemm -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/../../backend/cuda/attention/src/./ -I/home/milanjain91/.local/thetagpu/conda/2022-07-01/lib/python3.8/site-packages/aitemplate/3rdparty/cutlass/../../backend/cuda/attention/src/fmha -DNDEBUG -c -o $@ $<
%.obj : %.bin
	ld -r -b binary -o $@ $<

.PHONY: all clean clean_constants
all: constant_folding.so

constant_folding.so: $(obj_files)
	$(CC) -shared $(fPIC_flag) $(CFLAGS) -o $@ $(obj_files)

clean:
	rm -f *.obj constant_folding.so test.so

clean_constants:
	rm -f constants.bin