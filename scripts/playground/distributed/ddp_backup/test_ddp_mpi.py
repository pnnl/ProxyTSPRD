import os
import torch
import torch.nn as nn
import torch.distributed as dist
import torch.optim as optim
from torch.nn.parallel import DistributedDataParallel as DDP

import socket

def setup(device="gpu", seed=2, num_threads=1):
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

def cleanup():
    dist.destroy_process_group()

class ToyModel(nn.Module):
    def __init__(self):
        super(ToyModel, self).__init__()
        self.net1 = nn.Linear(10, 10)
        self.relu = nn.ReLU()
        self.net2 = nn.Linear(10, 5)

    def forward(self, x):
        return self.net2(self.relu(self.net1(x)))

if __name__ == "__main__":
    with_ddp, size, local_rank, global_rank = setup(device="gpu")
    print(with_ddp, size, local_rank, global_rank)

    # create model and move it to GPU with id rank
    print(local_rank, global_rank)
    model = ToyModel().to(f'cuda:{local_rank}')
    ddp_model = DDP(model, device_ids=[global_rank])
    # ddp_model = DDP(ToyModel().cuda())
    loss_fn = nn.MSELoss()
    optimizer = optim.SGD(ddp_model.parameters(), lr=0.001)

    # set training mode
    ddp_model.train()
    optimizer.zero_grad()
    outputs = ddp_model(torch.randn(20, 10).cuda())
    labels = torch.randn(20, 5).cuda()
    loss_fn(outputs, labels).backward()
    optimizer.step()

    cleanup()