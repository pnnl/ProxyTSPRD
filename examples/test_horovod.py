import tensorflow as tf
import horovod.tensorflow as hvd

# Horovod: initialize Horovod.
hvd.init()
print("I am rank %s of %s" %(hvd.rank(), hvd.size()))
