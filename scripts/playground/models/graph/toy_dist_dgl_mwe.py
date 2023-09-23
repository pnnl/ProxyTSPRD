import os, sys, glob
import socket
import argparse
import dgl
import torch
import datetime

def parse_arguments():
    # argument parser
    parser = argparse.ArgumentParser()
    parser.add_argument("--ip_config")
    parser.add_argument("--graph_name")
    parser.add_argument("--part_config")
    parser.add_argument("--local-rank")

    args = parser.parse_args()
    return args

if __name__ == "__main__":
    args = parse_arguments()
    # local_rank = int(os.environ["LOCAL_RANK"])
    host_name = socket.gethostname()
    # print("======>> Python Version", sys.version)
    
    print(f"[INFO] {host_name}: Initializing DistDGL.")
    dgl.distributed.initialize(ip_config=args.ip_config)
    print(f"[INFO] {host_name}: Initializing PyTorch process group.")
    torch.distributed.init_process_group(backend='nccl')
    print(f"{host_name}: Initializing DistGraph.")
    g = dgl.distributed.DistGraph(args.graph_name, part_config=args.part_config)
    print(f"[INFO] Rank of {host_name}: {g.rank()}")

    # get app
    app = GridSTGCNProxyAppPT("gpu")
    
    # load data
    all_files = glob.glob(os.path.join(path, "*"))
    datagen = app.get_datagen(
                files=all_files[:2],
                data_params=data_params,
                dtype="float32"
            )
    