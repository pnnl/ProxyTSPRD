import os, sys
import glob
import torch

sys.path.append("../../../")
from proxy_apps.apps.grid_prediction.grid_ptapp import GridGCNProxyAppPT

# get app
app = GridGCNProxyAppPT("gpu")
path = "/home/milanjain91/data/power_system/NewTestScenarios/"
all_files = glob.glob(os.path.join(path, "*"))

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
datagen = app.get_datagen(
            files=all_files[:2],
            data_params=data_params,
            dtype="float32"
        )

dataloader = torch.utils.data.DataLoader(
                datagen, 
                batch_size=1024
            )

# load model
from spatial_temporal_model import STGCN_WAVE

# device
device = "cpu"

# data parameters
n_history = data_params["iw_params"]["window_size"]
n_nodes = data_params["n_cols"]

# random graph
from scipy.sparse import random, coo_matrix
import dgl
adj_mx = random(n_nodes, n_nodes, density=0.25)
sp_mx = coo_matrix(adj_mx)
G = dgl.from_scipy(sp_mx)

# model parameters
drop_prob = 0
num_layers = 5
channels = [1, 16, 32, 64] # [1, 16, 32, 64, 32, 128]
control_str = "TNTST" # "TNTSTNTST"

loss = torch.nn.MSELoss()
model = STGCN_WAVE(
    channels, n_history, n_nodes, G, drop_prob, num_layers, device, control_str
)
optimizer = torch.optim.RMSprop(
    model.parameters(), lr=0.001
)
scheduler = torch.optim.lr_scheduler.StepLR(optimizer, step_size=5, gamma=0.7)

import numpy as np
min_val_loss = np.inf

# train model
for epoch in range(1, 3):
    l_sum, n = 0.0, 0
    model.train()
    for i, (inputs, targets) in enumerate(dataloader):
        print(inputs.shape, targets.shape)
        # forward pass
        y_pred = model(inputs)
        print(y_pred.shape)
        # compute loss
        l = loss(y_pred, targets)
        # backward pass
        optimizer.zero_grad()
        l.backward()
        optimizer.step()
        
        # total error
        l_sum += l.item() * targets.shape[0]
        n += targets.shape[0]

    scheduler.step()
    print(
        "epoch",
        epoch,
        ", train loss:",
        l_sum / n,
    )