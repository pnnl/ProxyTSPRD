# from mpi4py import MPI
# comm = MPI.COMM_WORLD
#SBATCH --ntasks-per-node=2

import os
import numpy as np

import sys
sys.path.append('../')

# from proxy_apps.utils.data.timeseries import TrainingDataGenerator
from proxy_apps import ProxyTSPRD
import argparse

parser = argparse.ArgumentParser(description='Horovod Testing')
parser.add_argument("--framework", choices=["TF", "PT"], help="which multi-gpu strategy to use", default="None")
parser.add_argument("--mgpu_strategy", choices=["None", "MirroredStrategy", "DDP", "HVD"], help="which multi-gpu strategy to use", default="None")

args = parser.parse_args()

scenario_dir = "../../../data/NewTestScenarios/"
list_of_files = os.listdir(scenario_dir)
list_of_files.sort()

n_files = len(list_of_files)
dir_list = [scenario_dir + "/" + f + "/" for f in list_of_files]

import tensorflow as tf
import horovod.tensorflow.keras as hvd_keras

# tensorflow
if args.framework == "TF":
    if args.mgpu_strategy == "MirroredStrategy":
        mgpu_strategy = tf.distribute.MirroredStrategy()
        # self.mgpu_context = self.mgpu_strategy.scope()        
    elif args.mgpu_strategy == "HVD":
        import horovod.tensorflow.keras as hvd
        # Horovod: initialize Horovod.
        hvd.init()
        print("I am rank %s of %s" %(hvd.rank(), hvd.size()))
    else:
        print("Invalid Multi-GPU Strategy:", args.mgpu_strategy, "for TensorFlow")
    
    # physical gpus
    gpus = tf.config.experimental.list_physical_devices('GPU')
    for gpu in gpus:
       print("Name:", gpu.name, "  Type:", gpu.device_type)
        
    # pin gpu to each worker
    if gpus and (args.mgpu_strategy == "HVD"):
        tf.config.experimental.set_memory_growth(gpus[hvd.local_rank()], True)
        for gpu in gpus:
            tf.config.experimental.set_memory_growth(gpu, True)
        tf.config.experimental.set_visible_devices(gpus[hvd_keras.local_rank()], 'GPU')

    splitter = n_files // hvd.size()
    print(n_files, splitter, splitter*hvd.rank(), splitter*(hvd.rank()+1))
    dir_list=dir_list[splitter*hvd.rank():splitter*(hvd.rank()+1)]
        
    (mnist_images, mnist_labels), _ = tf.keras.datasets.mnist.load_data(path='mnist-%d.npz' % hvd_keras.rank())

    dataset = tf.data.Dataset.from_tensor_slices(
        (tf.cast(mnist_images[..., tf.newaxis] / 255.0, tf.float32),
                 tf.cast(mnist_labels, tf.int64))
    )
    dataset = dataset.repeat().shuffle(10000).batch(128)

    mnist_model = tf.keras.Sequential([
        tf.keras.layers.Conv2D(32, [3, 3], activation='relu'),
        tf.keras.layers.Conv2D(64, [3, 3], activation='relu'),
        tf.keras.layers.MaxPooling2D(pool_size=(2, 2)),
        tf.keras.layers.Dropout(0.25),
        tf.keras.layers.Flatten(),
        tf.keras.layers.Dense(128, activation='relu'),
        tf.keras.layers.Dropout(0.5),
        tf.keras.layers.Dense(10, activation='softmax')
    ])
    
    # Horovod: adjust learning rate based on number of GPUs.
    scaled_lr = 0.001 * hvd_keras.size()
    opt = tf.optimizers.Adam(scaled_lr)

    # Horovod: add Horovod DistributedOptimizer.
    opt = hvd_keras.DistributedOptimizer(
        opt, backward_passes_per_step=1, average_aggregated_gradients=True)

    # Horovod: Specify `experimental_run_tf_function=False` to ensure TensorFlow
    # uses hvd.DistributedOptimizer() to compute gradients.
    mnist_model.compile(loss=tf.losses.SparseCategoricalCrossentropy(),
                        optimizer=opt,
                        metrics=['accuracy'],
                        experimental_run_tf_function=False)

    callbacks = [
        # Horovod: broadcast initial variable states from rank 0 to all other processes.
        # This is necessary to ensure consistent initialization of all workers when
        # training is started with random weights or restored from a checkpoint.
        hvd_keras.callbacks.BroadcastGlobalVariablesCallback(0),

        # Horovod: average metrics among workers at the end of every epoch.
        #
        # Note: This callback must be in the list before the ReduceLROnPlateau,
        # TensorBoard or other metrics-based callbacks.
        hvd_keras.callbacks.MetricAverageCallback(),

        # Horovod: using `lr = 1.0 * hvd.size()` from the very beginning leads to worse final
        # accuracy. Scale the learning rate `lr = 1.0` ---> `lr = 1.0 * hvd.size()` during
        # the first three epochs. See https://arxiv.org/abs/1706.02677 for details.
        hvd_keras.callbacks.LearningRateWarmupCallback(initial_lr=scaled_lr, warmup_epochs=3, verbose=1),
    ]

    # Horovod: save checkpoints only on worker 0 to prevent other workers from corrupting them.
    if hvd_keras.rank() == 0:
        callbacks.append(tf.keras.callbacks.ModelCheckpoint('./checkpoint-{epoch}.h5'))

    # Horovod: write logs on worker 0.
    verbose = 1 if hvd_keras.rank() == 0 else 0

    # Train the model.
    # Horovod: adjust number of steps based on number of GPUs.
    mnist_model.fit(dataset, steps_per_epoch=500 // hvd_keras.size(), callbacks=callbacks, epochs=24, verbose=verbose)


# pytorch
elif args.framework == "PT":
    import torch
    import torch.multiprocessing as mp
    import torch.nn as nn
    import torch.nn.functional as F
    import torch.optim as optim
    from torchvision import datasets, transforms
    import torch.utils.data.distributed
    import horovod.torch as hvd
    
    class Net(nn.Module):
        def __init__(self):
            super(Net, self).__init__()
            self.conv1 = nn.Conv2d(1, 10, kernel_size=5)
            self.conv2 = nn.Conv2d(10, 20, kernel_size=5)
            self.conv2_drop = nn.Dropout2d()
            self.fc1 = nn.Linear(320, 50)
            self.fc2 = nn.Linear(50, 10)

        def forward(self, x):
            x = F.relu(F.max_pool2d(self.conv1(x), 2))
            x = F.relu(F.max_pool2d(self.conv2_drop(self.conv2(x)), 2))
            x = x.view(-1, 320)
            x = F.relu(self.fc1(x))
            x = F.dropout(x, training=self.training)
            x = self.fc2(x)
            return F.log_softmax(x)
        
    class PTLSTM(torch.nn.Module):
        def __init__(self, bw_size, fw_size, n_features, device):
            super(PTLSTM, self).__init__()
            self.bw_size = bw_size # size of the backward window
            self.fw_size = fw_size # size of the backward window
            self.n_features = n_features # size of the backward window
            self.device = device

            self.hidden_size1 = 512
            self.lstm1_layer   = torch.nn.LSTM(hidden_size=self.hidden_size1, input_size=self.n_features, batch_first=True)
            self.hidden_size2 = 256
            self.lstm2_layer   = torch.nn.LSTM(hidden_size=self.hidden_size2, input_size=self.hidden_size1, batch_first=True)
            self.hidden_size3 = 128
            self.lstm3_layer   = torch.nn.LSTM(hidden_size=self.hidden_size3, input_size=self.hidden_size2, batch_first=True)
            self.hidden_size4 = 64
            self.lstm4_layer   = torch.nn.LSTM(hidden_size=self.hidden_size4, input_size=self.hidden_size3, batch_first=True)
            self.dense_layer   = torch.nn.Linear(in_features=self.hidden_size4, out_features=fw_size * n_features)
            # self.output_layer  = tf.keras.layers.Reshape((fw_size, n_features))

        def forward(self,x):
            # print(x.shape)
            h_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1)).to(self.device) #hidden state
            c_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1)).to(self.device) #internal state
            h_1, c_1 = self.lstm1_layer(x, (h_1, c_1))
            #print(h_1.shape)

            h_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2)).to(self.device) #hidden state
            c_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2)).to(self.device) #internal state
            h_2, c_2 = self.lstm2_layer(h_1, (h_2, c_2)) #first Dense
            #print(h_2.shape)

            h_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3)).to(self.device) #hidden state
            c_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3)).to(self.device) #internal state
            h_3, c_3 = self.lstm3_layer(h_2, (h_3, c_3)) #relu
            #print(h_3.shape)

            h_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4)).to(self.device) #hidden state
            c_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4)).to(self.device) #internal state
            h_4, c_4 = self.lstm4_layer(h_3, (h_4, c_4)) #Final Output
            #print(h_4[:, -1, :].shape)

            out = self.dense_layer(h_4[:, -1, :])
            #print(out.shape)

            return out.view((out.shape[0], self.fw_size, self.n_features))
        
    if args.mgpu_strategy == "DDP":
        print("DDP is yet to be implemented")  
    elif args.mgpu_strategy == "HVD":
        import horovod.torch as hvd
        # Horovod: initialize Horovod.
        hvd.init()
        print("I am rank %s of %s" %(hvd.rank(), hvd.size()))
    else:
        print("Invalid Multi-GPU Strategy:", args.mgpu_strategy, "for PyTorch")

    device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
    print("[INFO] Device Type: ", device)
    
    # pin gpu to each worker
    if (device == "cuda") and (args.mgpu_strategy == "HVD"):
        print("[INFO] Setting devices")
        torch.cuda.set_device(hvd.local_rank())
        
        # Horovod: limit # of CPU threads to be used per worker.
        # torch.set_num_threads(1)
        
        # splitter = n_files // hvd.size()
        # print(n_files, splitter, splitter*hvd.rank(), splitter*(hvd.rank()+1))
        # dir_list=dir_list[splitter*hvd.rank():splitter*(hvd.rank()+1)]
        model = PTLSTM(60, 30, 136, device)# Net()
        model.to(device)
        
        lr_scaler = hvd.local_size()
        
        # Horovod: scale learning rate by lr_scaler.
        optimizer = optim.SGD(model.parameters(), lr=0.1 * lr_scaler,
                          momentum=args.momentum)
        
        # Horovod: broadcast parameters & optimizer state.
        hvd.broadcast_parameters(model.state_dict(), root_rank=0)
        hvd.broadcast_optimizer_state(optimizer, root_rank=0)
else:
    print("Invalid Framework")