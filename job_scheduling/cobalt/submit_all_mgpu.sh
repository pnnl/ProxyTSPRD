#!/bin/bash

GPUS=( "theta" ) # which gpu
MODELS=( "lstm" )
N_NODES=( 1 2 4 )
DTYPE=( "fp16" "fp32" "fp64" ) # with or without mixed precision
MGPU=( "HVD" "DDP" ) # with or without mixed precision
PROF=( 0 ) # with and without profiler
RTYPE=( "train" )

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
                            echo ""
                            bash qsub.sh $model $gpu $n 0 50 2048 $dt $mgpu $p $rtype
                            # sh qsub.sh lstm theta 1 0 50 2048 fp64 "DDP" $p $rtype
                        done
                    done
                done
            done
        done
    done
done