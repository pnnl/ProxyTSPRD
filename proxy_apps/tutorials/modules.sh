#!/bin/bash
#SBATCH -A pacer
#SBATCH -t 4:00:00
#SBATCH -N 1
#SBATCH -p shared
#SBATCH --gres=gpu:1
#SBATCH -J deepDMD
#SBATCH -o logs/out_srun.txt
#SBATCH -e logs/err_srun.txt

source /etc/profile.d/modules.csh

module purge
module load python/anaconda3.2019.3
module load cuda/10.2.89

conda activate pacer_ml_grid

unlimit

echo
echo "loaded modules"
echo
module list >& _modules.lis_
cat _modules.lis_
/bin/rm -f _modules.lis_
echo
echo limits
echo
limit
echo
echo "Environment Variables"
echo
printenv
echo
echo "Model Output"
echo
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction.py 50
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction.py 100
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction.py 150
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction.py 200
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction.py 250
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFData.py 50
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFData.py 100
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFData.py 150
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFData.py 200
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFData.py 250
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFDataOpt.py 50
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFDataOpt.py 100
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFDataOpt.py 150
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFDataOpt.py 200
srun nvprof --unified-memory-profiling off python ./TimeSeriesPrediction_withTFDataOpt.py 250