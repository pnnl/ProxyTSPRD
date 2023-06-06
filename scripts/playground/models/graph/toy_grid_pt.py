import os, sys
import glob
import argparse
import numpy as np
import pandas as pd

import torch
from scipy.sparse import random, coo_matrix, triu
import dgl

sys.path.append("../../../../")
from proxy_apps.apps.pt.grid import GridSTGCNProxyAppPT
sys.path.append("../")
from helper_fncs import setup, _setup_ddp
# load model
# from spatial_temporal_model import STGCN_WAVE
from stgcn import STGCN_WAVE

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
drop_prob = 0
num_layers = 5
channels = [2, 16, 32, 64, 32, 128] # [1, 16, 32, 64, 32, 128] 
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
        # setup ddp
        if _run_device == "theta":
            local_rank, global_rank, size = _setup_ddp()
            local_rank, global_rank, size = int(local_rank), int(global_rank), int(size)
            # print("[INFO]", local_rank, global_rank, size)
        elif _run_device == "pnnl":
            with_ddp, size, local_rank, global_rank = setup()
        
        # gpu params
        use_ddp = True
        device = torch.device("cuda:" + str(local_rank))
        torch.cuda.set_device(device)
    else:
        local_rank = 0
        global_rank = 0
        size = 1
        use_ddp = False
        device = torch.device("cpu")
    
    print("[INFO] Local Rank: %d, Global Rank: %d" %(local_rank, global_rank))
    
    # get app
    app = GridSTGCNProxyAppPT("gpu")
    
    # load data
    all_files = glob.glob(os.path.join(path, "*"))
    datagen = app.get_datagen(
                files=all_files[:2],
                data_params=data_params,
                dtype="float32"
            )
    # print(datagen.X.shape, datagen.y.shape)
    # sys.exit(1)
    dataloader = torch.utils.data.DataLoader(
                    datagen, 
                    batch_size=1024,
                    drop_last=True
                )

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
    sampler = dgl.dataloading.NeighborSampler([4, 4])
    print("[INFO] Device:", device)
    graphloader = dgl.dataloading.DataLoader(
        # The following arguments are specific to DataLoader.
        graph=G,  # The graph
        indices=range(n_nodes),  # The node IDs to iterate over in minibatches
        graph_sampler=sampler,  # The neighbor sampler
        device=device,  # Put the sampled MFGs on CPU or GPU
        use_ddp=use_ddp,  # Make it work with distributed data parallel
        # The following arguments are inherited from PyTorch DataLoader.
        batch_size=n_nodes//size,  # Per-device batch size.
        # The effective batch size is this number times the number of GPUs.
        shuffle=False,  # Whether to shuffle the nodes for every epoch
        drop_last=False,  # Whether to drop the last incomplete batch
        num_workers=0,  # Number of sampler processes
    )

    # init model
    loss = torch.nn.MSELoss()
    model = STGCN_WAVE(
        channels, n_history, n_nodes, drop_prob, num_layers, device, control_str
    )
    optimizer = torch.optim.RMSprop(
        model.parameters(), lr=0.001
    )
    scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=5, gamma=0.7)

    # train model
    min_val_loss = np.inf
    for epoch in range(1, 51):
        l_sum, n = 0.0, 0
        count_nodes = 0
        model.train()
        # iterate over minibatches of graph
        for input_nodes, output_nodes, mfgs in graphloader:
            print(input_nodes.shape, output_nodes.shape)
            count_nodes = count_nodes + output_nodes.shape[0]
            # iterate over data
            for i, (inputs, targets) in enumerate(dataloader):
                # get data
                # print(inputs.shape, targets.shape)  
                inputs, targets = inputs.to(device), targets.to(device)           
                inp = inputs[:,:,:,input_nodes]
                tgt = targets[:,:,:,output_nodes]
                # print("Actual Data:", inp.shape, tgt.shape)
                # print(input_nodes[:10], output_nodes)
                
                # forward pass
                y_pred = model(inp, mfgs)
                # print("Prediction:", y_pred.shape)
                
                # compute loss
                # yn_pred = y_pred.permute(0, 2, 3, 1).reshape(y_pred.shape[0], y_pred.shape[2], y_pred.shape[3] * y_pred.shape[1])
                # tgtn_pred = tgt.permute(0, 2, 3, 1).reshape(tgt.shape[0], tgt.shape[2], tgt.shape[3] * tgt.shape[1])
                # print("Prediction(n):", yn_pred.shape, tgtn_pred.shape)
                l = loss(y_pred, tgt)
                # backward pass
                optimizer.zero_grad()
                l.backward()
                optimizer.step()
                
                # total error
                l_sum += l.item()# * tgt.shape[0]
                n += tgt.shape[0]
                print(l_sum, n)

        scheduler.step()
        print(
            "epoch %d: %f"
            %(epoch, l_sum / n)
        )

        print("Count:", count_nodes)