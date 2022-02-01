GPUS=( "tonga" ) # which gpu
N_GPUS=( 16 )
FRAMEWORK=( "PT" )
PROF=( 0 ) # with and without profiler
MP=( 0 ) # with or without mixed precision
MODELS=( "resnet" )
RTYPE=( "eval" )

## For single GPU
for gpu in ${GPUS[@]}; do
    #if [ ${gpu} == "tonga" ]; then
    #   N_GPUS+=( 16 )
    #fi
    for n in ${N_GPUS[@]}; do
        for f in ${FRAMEWORK[@]}; do
            for p in ${PROF[@]}; do
                for mp in ${MP[@]}; do
                    for model in ${MODELS[@]}; do
                        for rtype in ${RTYPE[@]}; do
                            echo -n "Model: $model Run Type: $rtype GPU: $gpu; N_GPUs: $n; Framework: $f; Profiler: $p; MP: $mp"
                            echo ""
                            sh run_sbatch.sh $model $f $gpu $n 1 20 2048 $mp "HVD" $p $rtype
                        done
                    done
                done
            done
        done
    done
done

# sh run_sbatch.sh lstm TF a100 2 1 20 2048 0 HVD 1