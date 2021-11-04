# from mpi4py import MPI
# comm = MPI.COMM_WORLD
#SBATCH --ntasks-per-node=2

import tensorflow as tf
import horovod.tensorflow as hvd

# Horovod: initialize Horovod.
hvd.init()
print("I am rank %s of %s" %(hvd.rank(), hvd.size()))

# physical gpus
gpus = tf.config.experimental.list_physical_devices('GPU')
for gpu in gpus:
    print("Name:", gpu.name, "  Type:", gpu.device_type)

if gpus:
    tf.config.experimental.set_memory_growth(gpus[hvd.local_rank()], True)
    tf.config.experimental.set_visible_devices(gpus[hvd.local_rank()], 'GPU')
    
# for gpu in gpus:
#     print("Name:", gpu.name, "  Type:", gpu.device_type)
#     try: 
#         tf.config.experimental.set_memory_growth(gpus[hvd.local_rank()], True)
#     except RuntimeError as e:
#         # Memory growth must be set before GPUs have been initialized
#         print(e)

