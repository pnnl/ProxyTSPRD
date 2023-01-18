#!/bin/bash

GPUS=( "theta" ) # which gpu
MODELS=(  "climatecnntf" "climatelstmtf" "gridcnntf" "gridlstmtf" ) # "climatecnnpt" "climatelstmpt" "gridcnnpt" "gridlstmpt" "climatecnntf" "climatelstmtf" "gridcnntf" "gridlstmtf"
N_NODES=( 4 )
DTYPE=( "fp32" "amp" "fp64" ) # "fp32" "fp64" "amp" with or without mixed precision
MGPU=( "HVD" ) # "HVD" "DDP" with or without mixed precision
PROF=( 1 ) # with and without profiler
RTYPE=( "train" )
NODE="full-node"

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

                            echo -n "GPU: $gpu; Model: $model N_GPUs: ${N_RANKS}; DTYPE: $dt;  MGPU: $mgpu; Profiler: $p; Run Type: $rtype"
                            
                            echo "bash submit_qsub.sh $model $gpu $n 0 50 2048 $dt $mgpu $p $rtype $NODE"
                            bash submit_qsub.sh $model $gpu $n 0 50 2048 $dt $mgpu $p $rtype $NODE
                            # bash submit_qsub.sh climatecnnpt theta 1 0 50 2048 fp64 "DDP" $p $rtype
                            # bash submit_qsub.sh climatecnnpt theta 1 0 1 2048 fp32 "HVD" 0 "infer" "single-gpu"
                        done
                    done
                done
            done
        done
    done
done