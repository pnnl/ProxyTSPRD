GPUS=( "tonga" ) # which gpu
FRAMEWORK=( "TF" )
PROF=( 1 ) # with and without profiler
MP=( 0 1 ) # with or without mixed precision
MODELS=( "resnet" )
RTYPE=( "train" )

## For single GPU
for gpu in ${GPUS[@]}; do
    for f in ${FRAMEWORK[@]}; do
        for p in ${PROF[@]}; do
            for mp in ${MP[@]}; do
                for model in ${MODELS[@]}; do
                    for rtype in ${RTYPE[@]}; do
                        echo -n "Model: $model Run Type: $rtype GPU: $gpu Framework: $f Profiler: $p MP: $mp"
                        echo ""
                        sh run_sbatch.sh $model $f $gpu 1 1 20 2048 $mp "None" $p $rtype
                    done
                done
            done
        done
    done
done