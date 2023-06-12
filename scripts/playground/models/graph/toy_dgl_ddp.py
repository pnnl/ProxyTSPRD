import os, sys
os.environ['DGLBACKEND']='pytorch'

import torch
import torch.nn as nn
import torch.nn.functional as F

import dgl
import dgl.data
# load conv layer
from dgl.nn import GraphConv

sys.path.append("../")
from helper_fncs import setup, _setup_ddp

# PyTorch Model
class GCN(nn.Module):
    def __init__(self, in_feats, h_feats, num_classes) -> None:
        super(GCN, self).__init__()
        self.conv1 = GraphConv(in_feats, h_feats)
        self.conv2 = GraphConv(h_feats, num_classes)

    def forward(self, mfgs, in_feat):
        print("In the train loop:", mfgs, in_feat.shape)
        h_dst = in_feat[: mfgs[0].num_dst_nodes()]
        print("h_dst:", h_dst.shape)
        h = self.conv1(mfgs[0], (in_feat, h_dst))
        print("h:", h.shape)
        h = F.relu(h)
        print("h (relu):", h.shape)
        h_dst = h[: mfgs[1].num_dst_nodes()]
        print("h_dst:", h_dst.shape)
        h = self.conv2(mfgs[1], (h, h_dst))
        print("h (out):", h.shape)
        sys.exit()
        return h
    
# train the model
def train(model, train_dataloader):
    optimizer = torch.optim.Adam(model.parameters(), lr=0.01)
    best_val_acc = 0
    best_test_acc = 0

    for e in range(2):
        model.train()

        for input_nodes, output_nodes, mfgs in train_dataloader:
            inputs = mfgs[0].srcdata["feat"]
            labels = mfgs[-1].dstdata["label"]

            print("Train Loop:", input_nodes.shape, output_nodes.shape, inputs.shape, labels.shape)

            # forward 
            logits = model(mfgs, inputs)
            
            # compute prediction
            pred = logits.argmax(1)

            # loss
            loss = F.cross_entropy(logits, labels)

            # Compute accuracy on training/validation/test
            train_acc = (pred==labels).float().mean()
            # val_acc = (pred==labels[val_mask]).float().mean()
            # test_acc = (pred[test_mask] == labels[test_mask]).float().mean()

            # Save the best validation accuracy and the corresponding test accuracy.
            # if best_val_acc < val_acc:
            #     best_val_acc = val_acc
            #     best_test_acc = test_acc

            # Backword
            optimizer.zero_grad()
            loss.backward()
            optimizer.step()

        print(
            "In epoch {}, loss: {:.3f}".format(
                e, loss
            )
        )

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
        size = 1
        use_ddp = False
        device = torch.device("cpu")
    
    # load data
    dataset = dgl.data.CoraGraphDataset()
    print("Number of categories: %d" %(dataset.num_classes))

    # load the graph
    g = dataset[0]
    print("Node features:")
    print(g.ndata['feat'].shape)
    print("Edge features:")
    print(g.edata)
    n_nodes = g.ndata['feat'].shape[0]

    sampler = dgl.dataloading.NeighborSampler([4, 4])
    train_dataloader = dgl.dataloading.DataLoader(
        # The following arguments are specific to DataLoader.
        graph=g,  # The graph
        indices=range(g.ndata['feat'].shape[0]-1000),  # The node IDs to iterate over in minibatches
        graph_sampler=sampler,  # The neighbor sampler
        device=device,  # Put the sampled MFGs on CPU or GPU
        use_ddp=use_ddp,  # Make it work with distributed data parallel
        # The following arguments are inherited from PyTorch DataLoader.
        batch_size=1024, #n_nodes//size,  # Per-device batch size.
        # The effective batch size is this number times the number of GPUs.
        shuffle=True,  # Whether to shuffle the nodes for every epoch
        drop_last=False,  # Whether to drop the last incomplete batch
        num_workers=0,  # Number of sampler processes
    )

    for input_nodes, output_nodes, mfgs in train_dataloader:
        print(local_rank, input_nodes.shape, output_nodes.shape, mfgs)
    
    # create the model with given dimensions
    model = GCN(
                g.ndata["feat"].shape[1], 
                16, 
                dataset.num_classes
            )

    train(model, train_dataloader)