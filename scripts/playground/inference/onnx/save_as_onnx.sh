#!/bin/bash

datasets=( "Climate" "Grid" )
models=( "LSTM" "CNN" )
model_dir="/home/milanjain91/models"
for d in ${datasets[@]}
do
    for m in ${models[@]}
    do
        if [[ $d = "Climate" ]] 
        then
            directory="ClimateApp"
        elif [[ $d = "Grid" ]]
        then
            directory="ProxyTSPRD_IPDPS"
        fi
        echo $m
        echo $d
        echo ${directory}
        # array=`find ${model_dir}/${directory}/${d}${m}ProxyAppTF/tf_models/ -name "*" -type d -print0 | xargs -0 ls`
        basedir=${model_dir}/${directory}/${d}${m}ProxyAppTF/tf_models/ 
        array=`ls -1p ${basedir}`
        for a in ${array[@]}
        do
            b=${a%"/"}
            echo $b
            python -m tf2onnx.convert --saved-model ${basedir}${a} --output ${basedir}/${a%"/"}.onnx
        done
    done
done

