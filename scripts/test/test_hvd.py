import os
import sys
# sys.path.append('../')

# from proxy_apps.utils.data.timeseries import TrainingDataGenerator
# from proxy_apps import ProxyTSPRD
import argparse

parser = argparse.ArgumentParser(description='Horovod Testing')
parser.add_argument("--framework", choices=["TF", "PT"], help="which multi-gpu strategy to use", default="None")
args = parser.parse_args()

import tensorflow as tf

# tensorflow
if args.framework == "TF":
    import horovod.tensorflow.keras as hvd_keras
    # Horovod: initialize Horovod.
    hvd_keras.init()
    print("I am rank %s of %s" %(hvd_keras.rank(), hvd_keras.size()))
elif args.framework == "PT":
    import horovod.torch as hvd_torch
    # Horovod: initialize Horovod.
    hvd_torch.init()
    print("I am rank %s of %s" %(hvd_torch.rank(), hvd_torch.size()))

