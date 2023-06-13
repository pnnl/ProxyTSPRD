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

    def forward(self, g, in_feat):
        h = self.conv1(g, in_feat)
        h = F.relu(h)
        h = self.conv2(g, h)
        return h
    
# train the model
def train(model, g):
    optimizer = torch.optim.Adam(model.parameters(), lr=0.01)
    best_val_acc = 0
    best_test_acc = 0

    features = g.ndata["feat"]
    labels = g.ndata["label"]
    train_mask = g.ndata["train_mask"]
    test_mask = g.ndata["test_mask"]
    val_mask = g.ndata["val_mask"]

    for e in range(2):
        model.train()

        # forward 
        logits = model(g, features)
        
        # compute prediction
        pred = logits.argmax(1)

        # loss
        loss = F.cross_entropy(logits[train_mask], labels[train_mask])

        # Compute accuracy on training/validation/test
        train_acc = (pred[train_mask] == labels[train_mask]).float().mean()
        val_acc = (pred[val_mask] == labels[val_mask]).float().mean()
        test_acc = (pred[test_mask] == labels[test_mask]).float().mean()

        # Save the best validation accuracy and the corresponding test accuracy.
        if best_val_acc < val_acc:
            best_val_acc = val_acc
            best_test_acc = test_acc

        # Backword
        optimizer.zero_grad()
        loss.backward()
        optimizer.step()

        print(
            "In epoch {}, loss: {:.3f}, val acc: {:.3f} (best {:.3f}), test acc: {:.3f} (best {:.3f})".format(
                e, loss, val_acc, best_val_acc, test_acc, best_test_acc
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

    # create the model with given dimensions
    model = GCN(
                g.ndata["feat"].shape[1], 
                16, 
                dataset.num_classes
            )

    train(model, g)
        