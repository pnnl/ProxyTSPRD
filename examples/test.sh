if [[ ${1} == "TFDataOptMGPU" ]] || [[ ${1} == "TFDataOptMGPUAcc" ]] || [[ ${1} == "PyTorch" ]]; then     
    echo ${1}
#     i=0
#     fs=''
#     while [ $i -lt `expr ${2} - 1` ] 
#     do
#         fs=$fs$i,
#         i=`expr $i + 1`
#     done
#     fs=$fs$i
#     export CUDA_VISIBLE_DEVICES=$fs
#     echo $CUDA_VISIBLE_DEVICES
fi