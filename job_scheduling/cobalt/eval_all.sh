#!/bin/bash

GPUS=( "theta" ) # which gpu
MODELS=( "climatecnnpt" ) # "climatecnnpt" "climatelstmpt" "gridcnnpt" "gridlstmpt" "climatecnntf" "climatelstmtf" "gridcnntf" "gridlstmtf"
N_NODES=( 1 )
DTYPE=( "fp64" ) # "fp32" "fp64" "amp" with or without mixed precision
MGPU=( "HVD" ) # "HVD" "DDP" with or without mixed precision
PROF=( 1 ) # with and without profiler
RTYPE=( "infer" )
NODE="single-gpu"
STATUS=0
JOBID=0

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
                            if [ "$NODE" = "full-node" ]; then
                                RANKS_PER_NODE=8
                            else
                                RANKS_PER_NODE=1
                            fi
                            let N_RANKS=${RANKS_PER_NODE}*${n}

                            # echo -n "GPU: $gpu; Model: $model N_GPUs: ${N_RANKS}; DTYPE: $dt;  MGPU: $mgpu; Profiler: $p; Run Type: $rtype"
                            if [ ! -z $JOBID ] 
                            then 
                                if [ $JOBID -ne 0 ]
                                then
                                    echo $JOBID
                                    while [ $STATUS -gt 0 ]
                                    do
                                        sleep 2
                                        STATUS=$(qstat $JOBID | wc -l)
                                        # echo "Helloooooooooo"
                                        # echo $STATUS
                                    done
                                fi
                            else
                                sleep 10
                            fi
                            echo "bash submit_qsub.sh $model $gpu $n 0 50 2048 $dt $mgpu $p $rtype $NODE"
                            bash submit_qsub.sh $model $gpu $n 0 50 2048 $dt $mgpu $p $rtype $NODE
                            # bash submit_qsub.sh climatecnnpt theta 1 0 50 2048 fp64 "DDP" $p $rtype
                            # bash submit_qsub.sh climatecnnpt theta 1 0 1 2048 fp32 "HVD" 0 "infer" "single-gpu"
                            JOBID=$(qstat --header JobId:State:RunTime:Queue -u milanjain91 | awk '{ if ($4 == "single-gpu") { print } }' | awk '{ print $1}' | tail -1)
                            echo ${JOBID}
                            STATUS=$(qstat $JOBID | wc -l)
                        done
                    done
                done
            done
        done
    done
done