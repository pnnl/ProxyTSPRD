import os, sys
os.environ["DGLBACKEND"] = "tensorflow"

import glob
import argparse
import numpy as np
import pandas as pd

import tensorflow as tf
from scipy.sparse import random, coo_matrix, triu
import dgl

sys.path.append("../../../../")
from proxy_apps.apps.tf.grid import GridSTGCNProxyAppTF

# load model
from stgcn_tf import STGCN_WAVE

path = "/home/milanjain91/data/power_system/NewTestScenarios/"
# path = "/people/jain432/pacer_remote/data/NewTestScenarios/"

# device
device = "theta"

# load data
data_params = {
    "n_rows": 1400,
    "n_cols": 136,
    "repeat_cols": 1,
    "n_channels": 1,
    "iw_params": {
        "window_size": 60,
        "shift_size": 1,
        "stride": 1,
        "start_at": 0,
        "leave_last": 30
    },
    "ow_params": {
        "window_size": 30,
        "shift_size": 1,
        "stride": 1,
        "start_at": 60,
        "leave_last": 0
    }
}

# model parameters
batch_size = 1024
drop_prob = 0
num_layers = 5
channels = [2, 16, 32, 64] # [1, 16, 32, 64, 32, 128] 
control_str = "TNTGT" # "TNTSTNTST" 

def parse_arguments():
    # argument parser
    parser = argparse.ArgumentParser()
    parser.add_argument("--run_device")

    args = parser.parse_args()
    return args

# read the arguments
args = parse_arguments()
_run_device = args.run_device
print("[INFO] Selected Device: %s" %(_run_device))

if __name__ == "__main__":
    if _run_device in ["theta", "pnnl"]:
        # gpu params
        import horovod.tensorflow.keras as hvd_keras
        hvd_keras = hvd_keras
        hvd_keras.init()
        size = hvd_keras.size()
        local_rank = hvd_keras.local_rank()
        global_rank = hvd_keras.rank()
    else:
        local_rank = 0
        global_rank = 0
        size = 1
        
    print("[INFO] Local Rank: %d, Global Rank: %d" %(local_rank, global_rank))
    
    # get app
    app = GridSTGCNProxyAppTF("gpu")
    
    # load data
    all_files = glob.glob(os.path.join(path, "*"))
    data_generator = app.get_datagen(
                files=all_files[:2],
                data_params=data_params,
                dtype="float32"
            )
    # print(datagen.X.shape, datagen.y.shape)
    # sys.exit(1)
    dataloader = tf.data.Dataset.from_generator(
        data_generator,
        output_signature = (
            tf.TensorSpec(
                shape=(2, data_generator.x_indexer.shape[1], data_generator.n_cols // 2),
                dtype=data_generator.d_type
            ),
            tf.TensorSpec(
                shape=(2, data_generator.y_indexer.shape[1], data_generator.n_cols // 2),
                dtype=data_generator.d_type
            )
        )
    )
    data_options = tf.data.Options()
    dataloader = dataloader.with_options(data_options).batch(batch_size)
    dataloader = dataloader.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
    # for x, y in dataloader:
    #     print(x.shape, y.shape)
    #     sys.exit(1)

    # data parameters
    n_history = data_params["iw_params"]["window_size"]
    n_nodes = data_params["n_cols"] // 2

    # random graph
    # adj_mx = triu(random(n_nodes, n_nodes, density=0.95), k=0)
    df_distance = pd.read_csv("grid_graph.csv")
    sp_mx = coo_matrix(
        (df_distance["cost"].values, 
        (
            df_distance["from"].values, 
            df_distance["to"].values
        )), shape=(n_nodes, n_nodes)
    )
    
    G = dgl.from_scipy(sp_mx)
    G = dgl.add_self_loop(G)
    # graphloader = dgl.dataloading.DataLoader(
    #     # The following arguments are specific to DataLoader.
    #     graph=G,  # The graph
    #     indices=range(n_nodes),  # The node IDs to iterate over in minibatches
    #     graph_sampler=sampler,  # The neighbor sampler
    #     device=device,  # Put the sampled MFGs on CPU or GPU
    #     use_ddp=False,  # Make it work with distributed data parallel
    #     # The following arguments are inherited from PyTorch DataLoader.
    #     batch_size=n_nodes//size,  # Per-device batch size.
    #     # The effective batch size is this number times the number of GPUs.
    #     shuffle=False,  # Whether to shuffle the nodes for every epoch
    #     drop_last=False,  # Whether to drop the last incomplete batch
    #     num_workers=0,  # Number of sampler processes
    # )

    # init model
    loss_fcn = tf.keras.losses.MeanSquaredError()
    model = STGCN_WAVE(
        channels, 60, 30, G, device, control_str
    )
    optimizer = tf.keras.optimizers.RMSprop()
    # model(tf.random.uniform(shape=(batch_size, 2, 60, 68)))
    # print(model.summary())
    # model.compile(optimizer=optimizer, loss=loss)
    # model.fit(dataloader)
    
    for epoch in range(1, 3):
        epoch_loss = 0
        n = 0
        for inputs, targets in dataloader:
            # forward
            with tf.GradientTape() as tape:
                out_values = model(inputs)
                loss_value = loss_fcn(targets, out_values)
                # Manually Weight Decay
                # We found Tensorflow has a different implementation on weight decay
                # of Adam(W) optimizer with PyTorch. And this results in worse results.
                # Manually adding weights to the loss to do weight decay solves this problem.
                for weight in model.trainable_weights:
                    loss_value = loss_value + 5e-4 * tf.nn.l2_loss(
                        weight
                    )

                grads = tape.gradient(loss_value, model.trainable_weights)
                optimizer.apply_gradients(zip(grads, model.trainable_weights))
            
            # acc = evaluate(model, g, features, labels, val_mask)
            epoch_loss += loss_value.numpy().item() * inputs.shape[0]
            n += inputs.shape[0]
        print(
            "Epoch {:05d} | Loss {:.4f} | Accuracy {:.4f} | ".format(
                epoch,
                epoch_loss / n,
                0
            )
        )

        # acc = evaluate(model, g, features, labels, test_mask)
        # print("Test Accuracy {:.4f}".format(acc))