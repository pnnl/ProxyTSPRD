#!/bin/bash
# gridcnntf, amp
GPUS=( "theta" ) # which gpu
MODELS=( "gridcnnptatt" ) # "climatecnnpt" "climatelstmpt" "gridcnnpt" "gridlstmpt" "climatecnntf" "climatelstmtf" "gridcnntf" "gridlstmtf", "climatecnnptatt", "gridcnnptatt" "gridstgcngpt" "gridstgcngtf"
# "gridcnnpt" "gridlstmpt" "gridcnntf" "gridlstmtf" "gridstgcngpt" "gridstgcngtf"
# "gridlstmpt" "gridcnnpt" "gridlstmtf" "gridcnntf"
N_NODES=1
DTYPE=( "fp32" ) # "fp16" "fp32" "fp64" "amp" with or without mixed precision
MGPU=( "None" ) # "HVD" "DDP" with or without mixed precision
PROF=( 0 1 ) # with and without profiler
RTYPE=( "infer" ) # "infer" "infer_onnx" "infer_onnxtrti8" "infer_onnxtrtfp16" "infer_tftrti8" "infer_tftrtfp16"
NODE="single-gpu"
EPOCHS=1
BATCH_SIZE=2048
TRAIN_SUFFIX="None"
RUN_TIME="01:00:00"

## For single GPU
for gpu in ${GPUS[@]}; do
    #if [ ${gpu} == "tonga" ]; then
    #   N_GPUS+=( 16 )
    #fi
    for model in ${MODELS[@]}; do
        for dt in ${DTYPE[@]}; do
            for mgpu in ${MGPU[@]}; do
                for p in ${PROF[@]}; do
                    for rtype in ${RTYPE[@]}; do
                        echo "Inference Mode"
                        TRAIN_SUFFIX="gpu_ng8_nc0_e50_b2048_d${dt}_mpguHVD_prof0"
                        
                        if [[ $model = gridstgcngtf* ]]
                        then
                            echo "STGCN TF"
                            TRAIN_SUFFIX="gpu_ng1_nc0_e50_b2048_d${dt}_mpguNone_prof0"
                        fi
                        if [[ $model = gridstgcngpt* ]]
                        then
                            echo "STGCN PT"
                            TRAIN_SUFFIX="gpu_ng8_nc0_e50_b2048_d${dt}_mpguNone_prof0"
                        fi
                        if [[ $model = *cnnptatt ]]
                        then
                            echo "AIT Inference"
                            TRAIN_SUFFIX="gpu_ng1_nc1_e20_b1024_dfp32_mpguNone_prof0"
                        fi

                        JOBID=$(qstat --header JobId:State:RunTime:Queue -u milanjain91 | awk -v node="$NODE" '{ if ($4 == node) { print } }' | awk '{ print $1}' | tail -1)
                        echo "Job ID: ${JOBID}"
                        STATUS=$(qstat $JOBID | wc -l)
                        echo "Status: $STATUS"

                        if [[ $NODE = single* ]]
                        then
                            if [ ! -z $JOBID ] 
                            then 
                                if [ $JOBID -ne 0 ]
                                then
                                    # echo $JOBID
                                    while [ $STATUS -gt 0 ]
                                    do
                                        sleep 5
                                        STATUS=$(qstat $JOBID | wc -l)
                                        echo "Wait for 5 seconds"
                                    done
                                fi
                            fi
                        fi
                        
                        echo "GPU: $gpu; Model: $model N_GPUs: ${N_NODES}; DTYPE: $dt;  MGPU: $mgpu; Profiler: $p; Run Type: $rtype"
                        
                        echo "bash submit_qsub.sh $model $gpu $N_NODES 0 $EPOCHS $BATCH_SIZE $dt None $p $rtype $NODE $TRAIN_SUFFIX $RUN_TIME"

                        bash submit_qsub.sh $model $gpu $N_NODES 0 $EPOCHS $BATCH_SIZE $dt None $p $rtype $NODE $TRAIN_SUFFIX $RUN_TIME
                        # bash submit_qsub.sh climatecnnpt theta 1 0 50 2048 fp64 "DDP" $p $rtype
                        # bash submit_qsub.sh climatecnnpt theta 1 0 1 2048 fp32 "HVD" 0 "infer" "single-gpu"
                        JOBID=$(qstat --header JobId:State:RunTime:Queue -u milanjain91 | awk -v node="$NODE" '{ if ($4 == node) { print } }' | awk '{ print $1}' | tail -1)
                        echo "Job ID: ${JOBID}"
                        STATUS=$(qstat $JOBID | wc -l)
                        echo $STATUS
                    done
                done
            done
        done
    
    done
done