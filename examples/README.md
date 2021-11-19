To train a model, steps are mentioned below:
1. *Activate `horovod` environment:* `conda activate horovod`
2. *Execute the python script:* `python app.py --config_file ${1} --framework ${2} --machine_name ${3} --n_gpus ${4} --n_cpus ${5} --n_epochs ${6} --batch_size ${7} --mixed_precision ${8} --mgpu_strategy ${9} --profiling ${10}`
Example: `python app.py --config_file lstm --framework TF --machine_name a100 --n_gpus 4 --n_cpus 1 --n_epochs 20 -batch_size 2048 --mixed_precision 1 --mgpu_strategy HVD --profiling 1`

3. *Execute the sbatch script:* `sh run_sbatch.sh <model> <framework> <paritition> <n_gpus> <n_cpus> <n_epochs> <batch_size> <mixed_precision> <mgpu_strategy> <nsys_profiling>`
Example: `sh run_sbatch.sh lstm TF a100 4 1 20 2048 1 HVD 1`

Following is the list of arguments:
- `-config_file`: name of the configuration file (samples are available in /configs/)
- `-framework (TF/PT)`: name of the framework to use, currently support TensorFlow (TF) and PyTorch (PT)
- `-machine_name`: GPU partition to run the code, options are 'a100', 'a100_shared', 'tonga'
- `-lf`: size of the look forward window (future predictions)
- `-n_gpus`: number of gpus to use for model training
- `-n_gpus`: number of cpus to use for model training
- `-m`: name of the baseline model (options: `tadgan`, `arima`, `lstm-autoencoder`)
- `-n_epochs`: number of epochs for model training
- `-batch_size`: batch size for model training
- `-mixed_precision`: whether to use mixed precision
- `-mgpu_strategy`: which scaling strategy to use for model training
- `-profiling`: whether to enable nsys profiling

Submit All Scripts (without Horovod): sh submit_all_mgpu.sh
Submit All Scripts (with Horovod): sh submit_all_mgpu.sh

Cancel pacer commands: `squeue -u jain432 | awk '$3 e_lstm {print $1}' | tail -n+2 | xargs scancel`
