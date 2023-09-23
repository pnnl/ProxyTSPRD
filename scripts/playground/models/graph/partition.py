import argparse
import pandas as pd
from scipy.sparse import coo_matrix
import dgl

def parse_arguments():
    # argument parser
    parser = argparse.ArgumentParser()
    parser.add_argument("--n_nodes", type=int)
    parser.add_argument("--n_partitions", type=int)
    parser.add_argument("--partition_dir")
    parser.add_argument("--graph_name")

    args = parser.parse_args()
    return args

def load_and_partition_graph(n_nodes, n_partitions, graph_name, partition_dir):
    df_distance = pd.read_csv("grid_graph.csv")
    sp_mx = coo_matrix(
        (df_distance["cost"].values, 
        (
            df_distance["from"].values, 
            df_distance["to"].values
        )), shape=(n_nodes, n_nodes)
    )
    
    G = dgl.from_scipy(sp_mx)
    # partition the graphs
    dgl.distributed.partition_graph(G, graph_name=graph_name, num_parts=n_partitions, out_path=partition_dir)

if __name__=="__main__":
    args = parse_arguments()
    load_and_partition_graph(
        args.n_nodes,
        args.n_partitions,
        args.graph_name,
        args.partition_dir
    )