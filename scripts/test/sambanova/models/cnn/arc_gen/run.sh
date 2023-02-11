#!/usr/bin/env bash

set -ex
/opt/llvm11/bin/clang++ -DAT_PARALLEL_OPENMP=1 -D_THP_CORE -I/opt/llvm12/include -I/usr/local/lib/python3.7/site-packages/torch/lib -I./ -I/opt/sambaflow/include -isystem /usr/local/lib/python3.7/site-packages/torch/include/torch/csrc/api/include -isystem /usr/local/lib/python3.7/site-packages/torch/include  -fvisibility=hidden -fno-exceptions -fno-rtti -Werror -Wall -Wno-reorder -Wno-conversion -Wno-sign-conversion -Wno-sign-compare -Wno-unused-parameter -Wno-unused-function -Wno-unused-result -Wno-unused-variable -Wno-strict-aliasing -Wno-unused-local-typedefs -Wunreachable-code-aggressive -Wsometimes-uninitialized -Wconditional-uninitialized -Woverflow -Waddress-of-temporary -Wpointer-arith -Wimplicit -Wbitfield-enum-conversion -Wno-unused-private-field -DSOURCE_PREFIX_LENGTH=84 -g -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -Wno-unused-parameter -Wno-missing-field-initializers -Wno-write-strings -Wno-unknown-pragmas -Wno-missing-braces -fopenmp=libomp -std=gnu++14 -o LogregTorchSamba.cpp.o -c LogregTorchSamba.cpp
/opt/llvm11/bin/clang++ -DAT_PARALLEL_OPENMP=1 -D_THP_CORE -I/opt/llvm12/include -I/usr/local/lib/python3.7/site-packages/torch/lib -I./ -I/opt/sambaflow/include -isystem /usr/local/lib/python3.7/site-packages/torch/include/torch/csrc/api/include -isystem /usr/local/lib/python3.7/site-packages/torch/include  -fvisibility=hidden -fno-exceptions -fno-rtti -Werror -Wall -Wno-reorder -Wno-conversion -Wno-sign-conversion -Wno-sign-compare -Wno-unused-parameter -Wno-unused-function -Wno-unused-result -Wno-unused-variable -Wno-strict-aliasing -Wno-unused-local-typedefs -Wunreachable-code-aggressive -Wsometimes-uninitialized -Wconditional-uninitialized -Woverflow -Waddress-of-temporary -Wpointer-arith -Wimplicit -Wbitfield-enum-conversion -Wno-unused-private-field -DSOURCE_PREFIX_LENGTH=84 -g -D_GNU_SOURCE -D__STDC_CONSTANT_MACROS -D__STDC_FORMAT_MACROS -D__STDC_LIMIT_MACROS -Wno-unused-parameter -Wno-missing-field-initializers -Wno-write-strings -Wno-unknown-pragmas -Wno-missing-braces -fopenmp=libomp -std=gnu++14 -o TestLogregTorchSamba.cpp.o -c TestLogregTorchSamba.cpp
/opt/llvm11/bin/clang++ -I/opt/llvm12/include -I/usr/local/lib/python3.7/site-packages/torch/lib -I./ -I/opt/sambaflow/include -isystem /usr/local/lib/python3.7/site-packages/torch/include/torch/csrc/api/include -isystem /usr/local/lib/python3.7/site-packages/torch/include  -fvisibility=hidden -fno-exceptions -fno-rtti -Werror -Wall -Wno-reorder -Wno-conversion -Wno-sign-conversion -Wno-sign-compare -Wno-unused-parameter -Wno-unused-function -Wno-unused-result -Wno-unused-variable -Wno-strict-aliasing -Wno-unused-local-typedefs -Wunreachable-code-aggressive -Wsometimes-uninitialized -Wconditional-uninitialized -Woverflow -Waddress-of-temporary -Wpointer-arith -Wimplicit -Wbitfield-enum-conversion -Wno-unused-private-field -DSOURCE_PREFIX_LENGTH=84  -g TestLogregTorchSamba.cpp.o LogregTorchSamba.cpp.o  -o test_arc_cnn  -L/opt/sambaflow/lib -L/opt/sambaflow/lib64/ -L/usr/local/lib -L/usr/local/lib64 -L/opt/llvm12/lib -L/usr/lib/x86_64-linux-gnu -Wl,-rpath,/opt/sambaflow/lib:/opt/llvm12/lib:/usr/lib/x86_64-linux-gnu:/usr/local/lib:/usr/local/lib64:/usr/local/lib/python3.7/site-packages/torch/lib -lPrismPlasmaTemplates -lPrismPlasma -lPrismShared -lRAIL -lRAILUtil -lBufferNode -lisl -lMLIRDynamicWrapper -lCompilerShared -lCompilerAppsCarraraTemplates -lCompilerAppsRAILTemplates /usr/local/lib/python3.7/site-packages/torch/lib/libc10.so -lpef -lunwind -lyaml-cpp -ltcc /usr/local/lib/python3.7/site-packages/torch/lib/libtorch.so /usr/local/lib/python3.7/site-packages/torch/lib/libtorch_cpu.so /usr/local/lib/python3.7/site-packages/torch/lib/libc10.so -lz -lrt -ldl -ltinfo -lpthread -lm -labsl_str_format_internal -labsl_strings -labsl_strings_internal -labsl_throw_delegate -labsl_int128 -labsl_bad_optional_access -labsl_bad_variant_access -labsl_base -labsl_dynamic_annotations -labsl_log_severity -labsl_spinlock_wait -lomp -lpthread
set +x
ulimit -s unlimited
./test_arc_cnn $@ | tee pef_generation.log
exit ${PIPESTATUS[0]}
