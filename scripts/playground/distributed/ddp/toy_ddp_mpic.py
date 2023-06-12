
import os
import sys
import tempfile
import torch
import numpy
import torch.distributed as dist
import datetime
import torch.nn as nn
import torch.optim as optim
import socket


from mpi4py import MPI

from torch.nn.parallel import DistributedDataParallel as DDP


def discover_local_rank(verbose=False):
    '''
    This function written by Corey Adams, ALCF
    Feel free to modify or use the code below as you need.
    '''

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
        unique_hosts = numpy.unique(all_hostnames)
        # Numpy automatically sorts them.
    else:
        unique_hosts = None

    # Broadcast the list of hostnames:
    unique_hosts = COMM_WORLD.bcast(unique_hosts, root=0)

    # Find the integer for this host in the list of hosts:
    i = int(numpy.where(unique_hosts == hostname)[0])
    # print(f"{hostname} found itself at index {i}")

    new_comm = COMM_WORLD.Split(color=i)
    if verbose:
        print("Global rank {} of {} mapped to local rank {} of {} on host {}".format(COMM_WORLD.Get_rank(), COMM_WORLD.Get_size(), new_comm.Get_rank(), new_comm.Get_size(), hostname))

    # The rank in the new communicator - which is host-local only - IS the local rank:
    return new_comm.Get_rank()


def setup():

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
            print("Determined local rank through environment variable {}".format(key))
            break
    if local_rank is None:
        # Try the last-ditch effort of home-brewed local rank deterimination
        # This needs to be a collective call!
        try:
            local_rank = discover_local_rank()
        except:
            # logger.error("Can not determine local rank for DDP")
            raise Exception("DDP failed to initialize due to local rank issue")


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

class ToyModel(nn.Module):
    def __init__(self):
        super(ToyModel, self).__init__()
        self.net1 = nn.Linear(10, 10)
        self.relu = nn.ReLU()
        self.net2 = nn.Linear(10, 5)

    def forward(self, x):
        return self.net2(self.relu(self.net1(x)))

def demo_basic():
    # On each node, discover the rank/size/local_rank with MPI:
    local_rank, rank, world_size = setup()
    print("Running basic DDP example on local rank {}, rank {} of {}.".format(local_rank, rank, world_size))
    print("Rank {} setup complete".format(rank))

    # Set the device you want:
    target_device = torch.device("cuda:{}".format(local_rank))

    # create model and move it to GPU with id rank
    model = ToyModel().to(target_device)
    ddp_model = DDP(model, device_ids=None)

    loss_fn = nn.MSELoss()
    optimizer = optim.SGD(ddp_model.parameters(), lr=0.001)

    optimizer.zero_grad()
    outputs = ddp_model(torch.randn(20, 10, device=target_device))
    labels = torch.randn(20, 5).to(target_device)
    loss_fn(outputs, labels).backward()
    optimizer.step()

    print("Start Cleanup")
    # cleanup()
    print("Cleaned")


# Easier to launch with MPI for multinode, so don't do this:
# def run_demo(demo_fn, world_size):
#     mp.spawn(demo_fn,
#              args=(world_size,),
#              nprocs=world_size,
#              join=True)

if __name__ == "__main__":
    # Call the same script on every node:
    demo_basic()
