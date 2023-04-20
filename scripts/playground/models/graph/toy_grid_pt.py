import os, sys
import glob
import numpy as np

import torch
from scipy.sparse import random, coo_matrix, triu
import dgl

sys.path.append("../../../../")
from proxy_apps.apps.pt.grid import GridGCNProxyAppPT
sys.path.append("../")
from helper_fncs import setup, _setup_ddp
# load model
from spatial_temporal_model import STGCN_WAVE

# path = "/home/milanjain91/data/power_system/NewTestScenarios/"
path = "/people/jain432/pacer_remote/data/NewTestScenarios/"

# device
device = "cpu"

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
        "leave_last": 1
    },
    "ow_params": {
        "window_size": 1,
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
control_str = "TNTGTNTGT" # "TNTSTNTST" 
_run_device = "cpu"

if __name__ == "__main__":
    if _run_device in ["theta", "pnnl"]:
        # setup ddp
        if _run_device == "theta":
            local_rank, global_rank, size = _setup_ddp()
        elif _run_device == "pnnl":
            with_ddp, size, local_rank, global_rank = setup()
        
        # gpu params
        use_ddp = True
        device = torch.device("cuda:" + str(local_rank))
    else:
        local_rank = 0
        global_rank = 0
        size = 1
        use_ddp = False
        device = torch.device("cpu")
    
    print(local_rank, global_rank)
    
    # get app
    app = GridGCNProxyAppPT("cpu")
    
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
    adj_mx = triu(random(n_nodes, n_nodes, density=0.95), k=0)
    sp_mx = coo_matrix(adj_mx)
    G = dgl.from_scipy(sp_mx)
    sampler = dgl.dataloading.NeighborSampler([6, 6])
    graphloader = dgl.dataloading.DataLoader(
        # The following arguments are specific to DataLoader.
        graph=G,  # The graph
        indices=range(n_nodes),  # The node IDs to iterate over in minibatches
        graph_sampler=sampler,  # The neighbor sampler
        device=device,  # Put the sampled MFGs on CPU or GPU
        use_ddp=use_ddp,  # Make it work with distributed data parallel
        # The following arguments are inherited from PyTorch DataLoader.
        batch_size=10,  # Per-device batch size.
        # The effective batch size is this number times the number of GPUs.
        shuffle=True,  # Whether to shuffle the nodes for every epoch
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
    for epoch in range(1, 3):
        l_sum, n = 0.0, 0
        model.train()
        # iterate over minibatches of graph
        for input_nodes, output_nodes, mfgs in graphloader:
            # iterate over data
            for i, (inputs, targets) in enumerate(dataloader):
                # get data
                print(inputs.shape, targets.shape)                
                inp = inputs[:,:,:,input_nodes]
                tgt = targets[:,:,:,output_nodes]
                # print(inp.shape, tgt.shape)
                print(input_nodes[:10], output_nodes)
                
                # forward pass
                y_pred = model(inp, mfgs)
                
                # compute loss
                l = loss(y_pred, tgt)
                # backward pass
                optimizer.zero_grad()
                l.backward()
                optimizer.step()
                
                # total error
                l_sum += l.item() * tgt.shape[0]
                n += tgt.shape[0]

        scheduler.step()
        print(
            "epoch %d: %f"
            %(epoch, l_sum / n)
        )