#!/bin/bash
# gridcnntf, amp
GPUS=( "theta" ) # which gpu
MODELS=( "climatelstmpt" "gridcnnpt" "gridlstmpt" "climatecnntf" "climatelstmtf" "gridcnntf" "gridlstmtf" ) # "climatecnnpt" "climatelstmpt" "gridcnnpt" "gridlstmpt" "climatecnntf" "climatelstmtf" "gridcnntf" "gridlstmtf"
N_NODES=( 1 )
DTYPE=( "fp16" "fp32" "fp64" "amp" ) # "fp16" "fp32" "fp64" "amp" with or without mixed precision
MGPU=( "None" ) # "HVD" "DDP" with or without mixed precision
PROF=( 0 1 ) # with and without profiler
RTYPE=( "infer" )
NODE="full-node"
EPOCHS=50
BATCH_SIZE=2048
TRAIN_SUFFIX=""

## For single GPU
for gpu in ${GPUS[@]}; do
    #if [ ${gpu} == "tonga" ]; then
    #   N_GPUS+=( 16 )
    #fi
    for model in ${MODELS[@]}; do
        for n in ${N_NODES[@]}; do
            for dt in ${DTYPE[@]}; do
                for mgpu in ${MGPU[@]}; do
                    for p in ${PROF[@]}; do
                        for rtype in ${RTYPE[@]}; do
                            RANKS_PER_NODE=8
                            let N_RANKS=${RANKS_PER_NODE}*${n}

                            if [[ $rtype = inf* ]]
                            then
                                echo "Inference Mode"
                                NODE="single-gpu"
                                EPOCHS=1
                                BATCH_SIZE=1
                                TRAIN_SUFFIX="gpu_ng8_nc0_e50_b2048_dfp32_mpguHVD_prof0"
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
                            
                            echo "GPU: $gpu; Model: $model N_GPUs: ${N_RANKS}; DTYPE: $dt;  MGPU: $mgpu; Profiler: $p; Run Type: $rtype"
                            
                            echo "bash submit_qsub.sh $model $gpu $n 0 $EPOCHS $BATCH_SIZE $dt $mgpu $p $rtype $NODE $TRAIN_SUFFIX"

                            bash submit_qsub.sh $model $gpu $n 0 $EPOCHS $BATCH_SIZE $dt $mgpu $p $rtype $NODE $TRAIN_SUFFIX
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
done