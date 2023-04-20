import argparse
import os
import numpy as np
import socket
import datetime

def parse_arguments():
    # Parse Arguments
    parser = argparse.ArgumentParser(description='Run Time Series Prediction')
    parser.add_argument(
        "--config_file", 
        type=str,
        help="configuration file for model training", 
        required=True
    )
    parser.add_argument(
        "--platform", 
        choices=["gpu", "cpu", "rdu"], 
        type=str, 
        help="name of the platform (cpu/gpu/rdu)", 
        required=True
    )
    parser.add_argument(
        "--machine_name", 
        type=str, 
        help="name of the machine", 
        required=True
    )
    parser.add_argument(
        "--n_gpus", 
        type=int, help="number of GPUs", 
        default=1
    )
    parser.add_argument(
        "--n_cpus", 
        type=int, 
        help="number of CPUs", 
        default=1
    )
    parser.add_argument(
        "--dtype", 
        choices=["int", "fp16", "fp32", "fp64", "amp"], 
        type=str, 
        help="Data type", 
        default="fp64"
    )
    parser.add_argument(
        "--mgpu_strategy", 
        choices=["HVD", "DDP", "None"], 
        type=str, 
        help="MGPU strategy", 
        default=None
    )
    parser.add_argument(
        "--n_epochs", 
        type=int, 
        help="number of epochs", 
        default=20
    )
    parser.add_argument(
        "--batch_size", 
        type=int, 
        help="batch size", 
        default=1024
    )
    parser.add_argument(
        "--profiling", 
        type=int, 
        help="whether profiling or not using nsys", 
        default=0
    )
    parser.add_argument(
        "--write_graph", 
        action='store_true'
    )
    
    return parser.parse_args()

def setup(device="gpu", seed=2, num_threads=1):
    import os, socket
    import torch
    import torch.distributed as dist
    try:
        # print("MPI44PY")
        from mpi4py import MPI
        # print("MPI44PY...")

        with_ddp=True
        local_rank = os.environ['OMPI_COMM_WORLD_LOCAL_RANK']
        size = MPI.COMM_WORLD.Get_size()
        rank = MPI.COMM_WORLD.Get_rank()
        # print(size, rank)

        # Pytorch will look for these:
        os.environ["RANK"] = str(rank)
        os.environ["WORLD_SIZE"] = str(size)
        # os.environ['CUDA_VISIBLE_DEVICES'] = str(local_rank)

        # It will want the master address too, which we'll broadcast:
        if rank == 0:
            master_addr = socket.gethostname()
        else:
            master_addr = None

        master_addr = MPI.COMM_WORLD.bcast(master_addr, root=0)
        os.environ["MASTER_ADDR"] = master_addr
        os.environ["MASTER_PORT"] = str(2345)

        # What backend?  nccl on GPU, gloo on CPU
        if device == "gpu": backend = 'nccl'
        elif device == "cpu": backend = 'gloo'

        if with_ddp:
            dist.init_process_group(
                backend=backend, 
                init_method='env://'
            )

        torch.manual_seed(seed)

        if device == 'gpu':
            # DDP: pin GPU to local rank.
            torch.cuda.set_device(int(local_rank))
            torch.cuda.manual_seed(seed)

        if (num_threads!=0):
            torch.set_num_threads(num_threads)

        if rank==0:
            print("Torch Thread setup: ")
            print(" Number of threads: ", torch.get_num_threads())

    except Exception as e:
        with_ddp=False
        local_rank = 0
        size = 1
        rank = 0
        print("MPI initialization failed!")
        print(e)

    return with_ddp, size, local_rank, rank

def _discover_local_rank(verbose=False):
    '''
    This function written by Corey Adams, ALCF
    Feel free to modify or use the code below as you need.
    '''

    from mpi4py import MPI
    # Get the global communicator:
    COMM_WORLD = MPI.COMM_WORLD


    # The strategy here is to split into sub communicators
    # Each sub communicator will be just on a single host,
    # And that communicator will assign ranks that can be interpretted
    # as local ranks.

    # To subdivide, each host will need to use a unique key.
    # We'll rely on the hostname and order them all.

    hostname = socket.gethostname()
    # host_key = host_key %
    all_hostnames = COMM_WORLD.gather(hostname, root=0)

    if COMM_WORLD.Get_rank() == 0:
        # Order all the hostnames, and find unique ones
        unique_hosts = np.unique(all_hostnames)
        # Numpy automatically sorts them.
    else:
        unique_hosts = None

    # Broadcast the list of hostnames:
    unique_hosts = COMM_WORLD.bcast(unique_hosts, root=0)

    # Find the integer for this host in the list of hosts:
    i = int(np.where(unique_hosts == hostname)[0])
    # print(f"{hostname} found itself at index {i}")

    new_comm = COMM_WORLD.Split(color=i)
    if verbose:
        print("[INFO (DDP)] Global rank {} of {} mapped to local rank {} of {} on host {}".format(COMM_WORLD.Get_rank(), COMM_WORLD.Get_size(), new_comm.Get_rank(), new_comm.Get_size(), hostname))

    # The rank in the new communicator - which is host-local only - IS the local rank:
    return new_comm.Get_rank()


def _setup_ddp():
    from mpi4py import MPI
    import torch.distributed as dist
            
    size = MPI.COMM_WORLD.Get_size()
    rank = MPI.COMM_WORLD.Get_rank()

    local_rank_key_options = [
            'OMPI_COMM_WORLD_LOCAL_RANK',
            'MV2_COMM_WORLD_LOCAL_RANK',
            'MPI_LOCALRANKID',
            'PMI_LOCAL_RANK',
            ]

    # testable default value:
    local_rank = None
    for key in local_rank_key_options:
        if key in os.environ:
            local_rank = os.environ[key]
            print("[INFO (DDP)] Determined local rank through environment variable {}".format(key))
            break
    if local_rank is None:
        # Try the last-ditch effort of home-brewed local rank deterimination
        # This needs to be a collective call!
        try:
            local_rank = _discover_local_rank()
        except:
            # logger.error("Can not determine local rank for DDP")
            raise Exception("[INFO (DDP)] DDP failed to initialize due to local rank issue")


    os.environ["RANK"] = str(rank)
    os.environ["WORLD_SIZE"] = str(size)

    # It will want the master address too, which we'll broadcast:
    if rank == 0:
        master_addr = socket.gethostname()
        sock = socket.socket()
        sock.bind(('',0))
        master_port  = sock.getsockname()[1]
        master_port  = 2345
    else:
        master_addr = None
        master_port = None
    # logger.info(f"DDP Using master IP {master_addr}")
    master_addr = MPI.COMM_WORLD.bcast(master_addr, root=0)
    master_port = MPI.COMM_WORLD.bcast(master_port, root=0)
    os.environ["MASTER_ADDR"] = master_addr
    os.environ["MASTER_PORT"] = str(master_port)

    backend = 'nccl'
    init_method = 'env://'

    dist.init_process_group(
        backend     = backend,
        init_method = init_method,
        world_size  = size,
        rank        = rank,
        timeout     = datetime.timedelta(seconds=120)
    )

    return local_rank, rank, size