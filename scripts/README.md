## Model Training

### Activate environment
```
conda activate horovod
```

### Run the python script: 
```
python app.py --config_file ${1} 
		--framework ${2} 
		--machine_name ${3} 
		--n_gpus ${4} 
		--n_cpus ${5} 
		--n_epochs ${6} 
		--batch_size ${7} 
		--mixed_precision ${8} 
		--mgpu_strategy ${9} 
		--profiling ${10}
```
<b>Example:</b> 
> python app.py --config_file lstm --framework TF --machine_name a100 --n_gpus 4 --n_cpus 1 --n_epochs 20 --batch_size 2048 --mixed_precision 1 --mgpu_strategy HVD --profiling 1

```
Following is the list of arguments:

--config_file: name of the configuration file (samples are available in /configs/)
--framework (TF/PT): name of the framework to use, currently support TensorFlow (TF) and PyTorch (PT)
--machine_name: GPU partition to run the code, options are 'a100', 'a100_shared', 'tonga'
--n_gpus: number of gpus to use for model training
--n_cpus: number of cpus to use for model training
--n_epochs: number of epochs for model training
--batch_size: batch size for model training
--mixed_precision: whether to use mixed precision
--mgpu_strategy: which scaling strategy to use for model training
--profiling: whether to enable nsys profiling
```

### Execute the sbatch script: 
```
sh run_sbatch.sh <model> 
		<framework> 
		<paritition> 
		<n_gpus> 
		<n_cpus> 
		<n_epochs> 
		<batch_size> 
		<mixed_precision> 
		<mgpu_strategy> 
		<nsys_profiling>
```
**Example:** 
> sh run_sbatch.sh lstm TF a100 4 1 20 2048 1 HVD 1

#### Submit All Scripts (without Horovod):
```
sh submit_all_sgpu.sh
```

#### Submit All Scripts (with Horovod): 
```
sh submit_all_mgpu.sh
```

#### Cancel pacer commands: 
```
squeue -u <username> | awk '$3 e_lstm {print $1}' | tail -n+2 | xargs scancel
```

# Sambanova
```
1. (Activate the Environment) source /opt/sambaflow/apps/starters/logreg/venv/bin/activate
2. (Run CNN Example) python test_sambanova.py --config_file="./configs/config_cnn.json" --platform="rdu" --machine_name="sambanova"
```
## Known Issues
1. *Bad argument to internal function:* Following error occurs if you import `torch.distributed` before `sambaflow` modules in the code. To fix the following error, import `torch.distributed` (everything related to torch for the safe side) after importing `samba` and `sambaflow` related modules. 

```
Traceback (most recent call last):
  File "logreg.py", line 18, in <module>
    import sambaflow.samba.utils as utils
  File "sambaflow/samba/__init__.py", line 6, in init sambaflow.samba.__init__
  File "sambaflow/samba/random.py", line 7, in init sambaflow.samba.random
    sequences
  File "/usr/local/lib/python3.7/site-packages/tensorflow/__init__.py", line 41, in <module>
    from tensorflow.python.tools import module_util as _module_util
  File "/usr/local/lib/python3.7/site-packages/tensorflow/python/__init__.py", line 41, in <module>
    from tensorflow.python.eager import context
  File "/usr/local/lib/python3.7/site-packages/tensorflow/python/eager/context.py", line 33, in <module>
    from tensorflow.core.framework import function_pb2
  File "/usr/local/lib/python3.7/site-packages/tensorflow/core/framework/function_pb2.py", line 16, in <module>
    from tensorflow.core.framework import attr_value_pb2 as tensorflow_dot_core_dot_framework_dot_attr__value__pb2
  File "/usr/local/lib/python3.7/site-packages/tensorflow/core/framework/attr_value_pb2.py", line 16, in <module>
    from tensorflow.core.framework import tensor_pb2 as tensorflow_dot_core_dot_framework_dot_tensor__pb2
  File "/usr/local/lib/python3.7/site-packages/tensorflow/core/framework/tensor_pb2.py", line 16, in <module>
    from tensorflow.core.framework import resource_handle_pb2 as tensorflow_dot_core_dot_framework_dot_resource__handle__pb2
  File "/usr/local/lib/python3.7/site-packages/tensorflow/core/framework/resource_handle_pb2.py", line 150, in <module>
    '__module__' : 'tensorflow.core.framework.resource_handle_pb2'
SystemError: google/protobuf/pyext/descriptor.cc:354: bad argument to internal function
```

