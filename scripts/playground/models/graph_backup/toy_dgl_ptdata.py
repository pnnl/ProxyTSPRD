import os
os.environ["DGLBACKEND"] = 'pytorch'

import pandas as pd
import torch

import dgl
from dgl.data import DGLDataset

class KarateClubDataset(DGLDataset):
    def __init__(self) -> None:
        super().__init__(name="karate_club")

    def process(self):
        # load data
        nodes_data = pd.read_csv("./sample_data/members.csv")
        edges_data = pd.read_csv("./sample_data/interactions.csv")

        # node features
        node_features = torch.from_numpy(nodes_data["Age"].to_numpy())
        node_labels = torch.from_numpy(nodes_data["Club"].astype("category").cat.codes.to_numpy())

        # edge features
        edge_features = torch.from_numpy(edges_data["Weight"].to_numpy())
        edges_src = torch.from_numpy(edges_data["Src"].to_numpy())
        edges_dst = torch.from_numpy(edges_data["Dst"].to_numpy())

        # build graph
        self.graph = dgl.graph(
            (edges_src, edges_dst), num_nodes=nodes_data.shape[0]
        )
        self.graph.ndata["feat"] = node_features
        self.graph.ndata["label"] = node_labels
        self.graph.edata["weight"] = edge_features

    def __getitem__(self, i):
        return self.graph
    
    def __len__(self):
        return 1