r"""
In this example, we will walk you through the process of defining a model,
compiling it, training and testing it on SN RDU
"""

import argparse
import sys
from typing import Tuple

import os
import time

import numpy as np

import sambaflow.samba.utils as utils
from sambaflow import samba
from sambaflow.samba.utils.argparser import parse_app_args, parse_yaml_to_args
from sambaflow.samba.utils.benchmark_acc import AccuracyReport
from sambaflow.samba.utils.dataset.mnist import dataset_transform
from sambaflow.samba.utils.pef_utils import get_pefmeta
# from sambaflow.samba.utils.tensorboard_debug import dump_accuracy_debug_info

# from grid import TransientDataset

import torch
import torch.distributed as dist
import torch.nn as nn
import torchvision
from torch.utils.data.sampler import SubsetRandomSampler

def add_args(parser: argparse.ArgumentParser) -> None:

    # Compile time args
    parser.add_argument('--lr', type=float, default=0.0015, help="Learning rate for training")
    parser.add_argument('--momentum', type=float, default=0.0, help="Momentum value for training")
    parser.add_argument('--weight-decay', type=float, default=3e-4, help="Weight decay for training")
    parser.add_argument('-e', '--num-epochs', type=int, default=1)
    parser.add_argument('--num-features', type=int, default=784)
    parser.add_argument('--num-classes', type=int, default=10)
    parser.add_argument('--weight-norm', action="store_true", help="Enable weight normalization")
    parser.add_argument('--acc-test', action='store_true', help='Option for accuracy guard test in RDU regression.')
    parser.add_argument('--yaml-config', default=None, type=str, help='YAML file used with launch_app.py')
    parser.add_argument('--data-folder',
                        type=str,
                        default='mnist_data',
                        help="The folder to download the MNIST dataset to.")
    # end args


def add_run_args(parser: argparse.ArgumentParser) -> None:
    # Runtime args
    pass
    # ...
    # end args

class GridNetworkSequentialDataGenerator_PT(torch.utils.data.Dataset):
    'Characterizes a dataset for PyTorch'
    def __init__(self, dir_list, handler_params, dtype, scale_factor=2*np.pi, norm=True, validation_files=None):#, n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor=2, norm=True, d_type="float64"):
        'Initialization'
        self.list_of_directories = dir_list
        self.n_scenarios = len(self.list_of_directories)
        self.n_rows = handler_params["n_rows"]
        self.n_cols = handler_params["n_cols"]
        self.repeat_cols = handler_params["repeat_cols"]
        self.scale_factor = scale_factor # handler_params["scale_factor"]
        self.norm = norm # handler_params["norm"]
        self.look_back = handler_params["look_back"]
        self.look_forward = handler_params["look_forward"]
        self.shift_size = handler_params["shift_size"]
        self.stride = handler_params["stride"]
        self.n_signals = handler_params["n_signals"]
        self.d_type = dtype
        
    def get_training_data(self, x_indexer, y_indexer):
        self.x_indexer = x_indexer
        self.y_indexer = y_indexer
        
        complete_data = []
        for f in self.list_of_directories:
            complete_data.append(self.get_data(f))
        self.X = np.vstack([arr[0] for arr in complete_data]) # stacked_array[0, :, :]
        self.y = np.vstack([arr[1] for arr in complete_data]) # stacked_array[1, :, :]
        
        assert self.X.shape[0]==self.y.shape[0]
        
    def get_data(self, dir_path): # , n_rows, n_cols, n_repeat, x_indexer, y_indexer, scale_factor, norm, d_type
        dataset = np.random.randint(100, size=(1400, 136)) # TransientDataset(dir_path)
        # raw_data = np.repeat(np.concatenate([dataset.F, dataset.Vm], axis=1), self.repeat_cols, axis=1)[:self.n_rows, :].astype(self.d_type)
        raw_data = np.repeat(dataset, self.repeat_cols, axis=1)[:self.n_rows, :].astype(self.d_type)

        split_index = (self.n_cols * self.repeat_cols) // 2
        flat_X_data = raw_data[self.x_indexer]#.reshape(-1, self.n_cols*self.n_repeat)
        flat_Y_data = raw_data[self.y_indexer]#.reshape(-1, self.n_cols*self.n_repeat)
        
        if self.norm:
            flat_X_data[:, :, :split_index] = self.scale_factor*(flat_X_data[:, :, :split_index] - 60)
            flat_X_data[:, :, split_index:] = 10*(flat_X_data[:, :, split_index:] - 1)

            flat_Y_data[:, :, :split_index] = self.scale_factor*(flat_Y_data[:, :, :split_index] - 60)
            flat_Y_data[:, :, split_index:] = 10*(flat_Y_data[:, :, split_index:] - 1)

        return flat_X_data, flat_Y_data

    def __len__(self):
        'Denotes the total number of samples'
        return self.X.shape[0]
    
    def __getitem__(self, index):
        'Generates one sample of data'
        return self.X[index, :], self.y[index, :]
        
def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
    return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]

def prepare_dataloader(args: argparse.Namespace) -> Tuple[torch.utils.data.DataLoader, torch.utils.data.DataLoader]:
    """
    Prep work to train the logreg model with the `MNIST dataset <http://yann.lecun.com/exdb/mnist/>`__:
    
    We'll split the dataset into train and test sets and return the corresponding data loaders
    
    :param args: argument specifying the location of the dataset
    :type args: argparse.Namespace
    
    :return: Train and test data loaders
    :rtype: Tuple[torch.utils.data.DataLoader]
    """

    handler_params = dict()
    handler_params["n_rows"] = 1400
    handler_params["n_cols"] = 136
    handler_params["repeat_cols"] = 1
    handler_params["look_back"] = 60
    handler_params["look_forward"] = 30
    handler_params["shift_size"] = 1
    handler_params["stride"] = 1
    handler_params["n_signals"] = 3

    dtype = 'float32'
    training_data_dir = "/people/jain432/pacer_saudade/data/NewTestScenarios"
    training_files = [training_data_dir + "/" + f + "/" for f in os.listdir(training_data_dir)]
    print(training_files)
    
    data_handler = GridNetworkSequentialDataGenerator_PT(training_files, handler_params, dtype)
    x_indexer = get_indexer(handler_params["n_rows"],
                                    handler_params["look_back"],
                                    handler_params["shift_size"],
                                    0,
                                    handler_params["n_signals"]+handler_params["look_forward"]
                                    )
    y_indexer = get_indexer(handler_params["n_rows"],
                                    handler_params["look_forward"],
                                    handler_params["shift_size"],
                                    handler_params["look_back"],
                                    handler_params["n_signals"]
                                    )
    
    data_handler.get_training_data(x_indexer, y_indexer)

    # Creating data indices for training and validation splits:
    dataset_size = len(data_handler)
    print("[INFO] Size of total data:", dataset_size)
    indices = list(range(dataset_size))
    split = int(np.floor(0.8 * dataset_size))
    
    np.random.seed(100)
    np.random.shuffle(indices)
    train_indices, test_indices = indices[:split], indices[split:]
    print("[INFO] Size of training data:", len(train_indices))
    print("[INFO] Size of test data:", len(test_indices))
    
    # Creating PT data samplers and loaders:
    train_sampler = SubsetRandomSampler(train_indices)
    test_sampler = SubsetRandomSampler(test_indices)
    train_loader = torch.utils.data.DataLoader(data_handler, 
                                                       batch_size=args.batch_size, 
                                                       pin_memory=True, 
                                                       num_workers=2,
                                                       sampler=train_sampler
                                                      )
    test_loader = torch.utils.data.DataLoader(data_handler, 
                                                       batch_size=args.batch_size, 
                                                       pin_memory=True, 
                                                       num_workers=2,
                                                       sampler=test_sampler
                                                      )
    return train_loader, test_loader
    # sys.exit("Loading data")
    
class Lambda(torch.nn.Module):
    def __init__(self):
        super(Lambda, self).__init__()
        
    def forward(self, x): 
        return x[:, -3:, :]

class PTConvLSTM(torch.nn.Module):
    def __init__(self, bw_size, fw_size, n_features):
        super(PTConvLSTM, self).__init__()
        self.bw_size = bw_size # size of the backward window
        self.fw_size = fw_size # size of the backward window
        self.n_features = n_features # size of the backward window
        self.hidden_units = 64

        self.lambda_layer  = Lambda()
        self.lstm_layer    = torch.nn.LSTM(input_size=136, hidden_size=self.hidden_units)
        self.dense_layer   = torch.nn.Linear(in_features=self.hidden_units, out_features=fw_size * n_features)
        self.criterion = nn.MSELoss()
        
    def forward(self, inputs, targets):
        from torch.autograd import Variable
        print(inputs.shape)
        # hidden layers
        h = Variable(torch.zeros(1, inputs.shape[1], self.hidden_units))#.to(self.device)
        c = Variable(torch.zeros(1, inputs.shape[1], self.hidden_units))#.to(self.device)
        h_out, c_out = self.lstm_layer(inputs, (h, c)) #Final Output
        
        # prediction
        out = self.dense_layer(h_out[:, -1, :])

        loss = self.criterion(
            out.reshape(-1, self.fw_size*self.n_features), 
            targets.reshape(-1, self.fw_size*self.n_features))
        
        # return output
        return loss, out.view((out.shape[0], self.fw_size, self.n_features))

def train(args: argparse.Namespace, model: nn.Module, output_tensors: Tuple[samba.SambaTensor]) -> None:
    """
    Train the model.
    At the end of a training loop, the model will be able
    to correctly predict the class labels for any input, within a certain
    accuracy.
    
    :param args: Hyperparameter values and accuracy test behavior controls
    :type args: argparse.Namespace
    
    :param model: Model to be trained
    :type model: torch.nn.Module
    
    """

    # Get data loaders for training and test data
    train_loader, test_loader = prepare_dataloader(args)

    # Total training steps (iterations) per epoch
    total_step = len(train_loader)
    # print("Size of Training Loader", total_step)
    # sys.exit("Hello")

    hyperparam_dict = {"lr": args.lr, "momentum": args.momentum, "weight_decay": args.weight_decay}
    start_time = time.perf_counter()

    # Train and test for specified number of epochs
    for epoch in range(args.num_epochs):
        avg_loss = 0

        # Train the model for all samples in the train data loader
        for i, (inp_win, out_win) in enumerate(train_loader):
            # print(i)
            sn_inp = samba.from_torch_tensor(inp_win, name='inp_window', batch_dim=0)
            sn_out = samba.from_torch_tensor(out_win, name='out_window', batch_dim=0)

            outputs, loss = samba.session.run(input_tensors=[sn_inp, sn_out],
                                              output_tensors=output_tensors,
                                              hyperparam_dict=hyperparam_dict,
                                              data_parallel=args.data_parallel,
                                              reduce_on_rdu=args.reduce_on_rdu)

            # Sync the loss and outputs with host memory
            outputs, loss = samba.to_torch(loss), samba.to_torch(outputs)
            avg_loss += loss.mean()

            # Print loss per 10,000th sample in every epoch
            if (i + 1) % 10000 == 0 and args.local_rank <= 0:
                print('[INFO] Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'.format(epoch + 1, args.num_epochs, i + 1, total_step,
                                                                         avg_loss / (i + 1)))

        # Check the accuracy of the trained model for all samples in the test data loader
        # Sync the model parameters with host memory
        samba.session.to_cpu(model)
        test_acc = 0.0
        with torch.no_grad():
            total_loss = 0
            for inp_win, out_win in test_loader:
                outputs, loss = model(inp_win, out_win)
                outputs, loss = samba.to_torch(loss), samba.to_torch(outputs)
                total_loss += loss.mean()
            
            if args.local_rank <= 0:
                print('[INFO] Validation Loss: {:.4f}'.format(total_loss.item() / (len(test_loader))))

        if args.acc_test:
            assert args.num_epochs == 1, "Accuracy test only supported for 1 epoch"
            assert test_acc > 91.0 and test_acc < 92.0, "Test accuracy not within specified bounds."

    print("Training Time: %d" %(time.perf_counter()-start_time))
    if args.json is not None:
        report = AccuracyReport(val_accuracy=test_acc.item(),
                                batch_size=args.batch_size,
                                num_iterations=args.num_epochs * total_step)
        report.save(args.json)


def test(args: argparse.Namespace, model: nn.Module, inputs: Tuple[samba.SambaTensor],
         outputs: Tuple[samba.SambaTensor]) -> None:
    """
    Test the outputs generated on SN RDU against golden reference outputs generated on CPU
    
    :param args: Arguments to control
    :type args: argparse.Namespace
    
    :param model: Model instance
    :type model: torch.nn.Module
    
    :param inputs: RDU memory for the inputs 
    :type inputs: Tuple[samba.SambaTensor]
    
    :param outputs: RDU memory for the outputs
    :type outputs: Tuple[samba.SambaTensor]
    """
    outputs_gold = model(*inputs)

    print("Output:", outputs_gold[1])
    outputs_samba = samba.session.run(input_tensors=inputs,
                                      output_tensors=outputs,
                                      data_parallel=args.data_parallel,
                                      reduce_on_rdu=args.reduce_on_rdu)

    print("Output Samba:", outputs_samba[1])
    # Check that all RDU and CPU outputs match numerically
    for i, (output_samba, output_gold) in enumerate(zip(outputs_samba, outputs_gold)):
        if i == 1:
            output_samba = output_samba[0]
        print('samba:', output_samba)
        print('gold:', output_gold)
        utils.assert_close(output_samba, output_gold, f'forward output #{i}', threshold=5e-3)

    # sys.exit("Check")
    if args.weight_norm:
        # Perform extra checks for verifying weight norm implementation
        g_output, v_output = samba.session.get_tensors_by_name(
            ["logreg__lin_layer__weight_magnitude", "logreg__lin_layer__weight_direction"])
        print("Magnitude_tensor", g_output)
        print("Direction_tensor", v_output)


def test_spatial(args: argparse.Namespace, model: nn.Module, inputs: Tuple[samba.SambaTensor],
                 traced_outputs: Tuple[samba.SambaTensor], optimizer: torch.optim.Optimizer,
                 mini_batch_size: int) -> None:
    # Similiar to test
    # Run CPU version of model
    for idx in range(args.num_spatial_batches):
        start_idx, end_idx = mini_batch_size * idx, mini_batch_size * (idx + 1)
        image, label = samba.to_torch(inputs[0]), samba.to_torch(inputs[1])
        input_sliced = (image[start_idx:end_idx, :], label[start_idx:end_idx])

        optimizer.zero_grad()
        gold_loss, gold_output = model(*input_sliced)
        gold_loss.mean().backward()
        optimizer.step()
    gold_weight = model.lin_layer.weight
    # Run RDU version of model
    samba.session.run(inputs, traced_outputs)
    utils.assert_close(gold_weight.sn_data, gold_weight, 'weight',
                       0.02)  #FIXME(tanl) Checking the correctness based on one iteration seems not right

def main(argv):
    """
    :param argv: Command line arguments (`compile`, `test`, `run`, `measure-performance` or `measure-sections`)
    """
    utils.set_seed(256)
    
    args = parse_app_args(
        argv=argv, common_parser_fn=add_args, run_parser_fn=add_run_args)
    # print("---------------------- Hellooo ----------------------")
    # print(argv)
    # sys.exit(vars(args))
    if args.yaml_config:
        print("Config file do exist!")
        parse_yaml_to_args(args.yaml_config, args)

    # when it is not distributed mode, local rank is -1.
    args.local_rank = dist.get_rank() if dist.is_initialized() else -1

    # # Create random input and output data for testing
    # args.batch_size = 1024
    ipt = samba.randn(args.batch_size, 60, 136, name='inp_window', batch_dim=0,
                      named_dims=('B', 'W', 'F')).bfloat16().float()
    # ipt = samba.from_torch(torch.from_numpy(data_handler.X))
    # print(ipt)
    tgt = samba.randn(args.batch_size, 30, 136, name='out_window', batch_dim=0, 
                        named_dims=('B', 'W', 'F')).bfloat16().float()
    # tgt = samba.from_torch(torch.from_numpy(data_handler.y))
    # print(tgt)
    

    ipt.host_memory = False
    tgt.host_memory = False

    # Instantiate the model
    # model = LogReg(args.num_features, args.num_classes)
    model = PTConvLSTM(
        bw_size=60, 
        fw_size=30, 
        n_features=136
    )

    # Sync model parameters with RDU memory
    samba.from_torch_model_(model)
    # sys.exit("Create Model")

    # # Annotate parameters if weight normalization is on
    # if args.weight_norm:
    #     utils.weight_norm_(model.lin_layer)

    inputs = (ipt, tgt)

    # Instantiate an optimizer if the model will be trained
    if args.inference:
        optimizer = None
    else:
        # We use the SGD optimizer to update the weights of the model
        optimizer = samba.optim.SGD(model.parameters(),
                                    lr=args.lr,
                                    momentum=args.momentum,
                                    weight_decay=args.weight_decay)

    if args.command == "compile":
        #  Compile the model to generate a PEF (Plasticine Executable Format) binary
        samba.session.compile(model,
                              inputs,
                              optimizer,
                              name='logreg_torch',
                              app_dir=utils.get_file_dir(__file__),
                              config_dict=vars(args),
                              pef_metadata=get_pefmeta(args, model))

    elif args.__dict__.get("listen_for_input", False):
        model.online_inference(args=args, mock=args.mock_inference)

    elif args.__dict__.get("dump_accuracy_debug_info", False):
        # Runs the whole graph by default
        traced_outputs = utils.trace_graph(model, inputs, optimizer, pef=args.pef, mapping=args.mapping, dev_mode=True)
        # Dump accuracy info to tensorboard logs
        # Use 'tensorboard --logdir ./runs/' to check in tensorboard
        dump_accuracy_debug_info(args, model, inputs, traced_outputs)

    elif args.command in ["test", "run", "measure-performance"]:
        # print(args.mapping)
        # Build inputs of the correct shape for spatial
        if args.mapping == "spatial":
            # print(inputs[0].shape, inputs[1].shape)
            # print(args.num_spatial_batches)
        
            inputs = (samba.SambaTensor(samba.to_torch(inputs[0]).repeat(args.num_spatial_batches, 1),
                                        name='inp_window',
                                        batch_dim=0),
                      samba.SambaTensor(samba.to_torch(inputs[1]).repeat(args.num_spatial_batches),
                                        name='out_window',
                                        batch_dim=0))

        # Trace the compiled graph to initialize the model weights and input/output tensors
        # for execution on the RDU.
        # The PEF required for tracing is the binary generated during compilation
        # Mapping refers to how the model layers are arranged in a pipeline for execution.
        # Valid options: 'spatial' or 'section'
        print("--------------------- Hello --------------------------------")
        print(args.distlearn_config, args.mapping)
        traced_outputs = utils.trace_graph(model,
                                           inputs,
                                           optimizer,
                                           pef=args.pef,
                                           mapping=args.mapping,
                                           distlearn_config=args.distlearn_config)

        if args.command == "test":
            # Test the model's functional correctness. This tests if the result of execution
            # on the RDU is comparable to that on a CPU. CPU run results are used as reference.
            # Note that this test is different from testing model fit during training.
            # Given the same initial weights and inputs, this tests if the graph execution
            # on RDU generates outputs that are comparable to those generated on a CPU.
            # sys.exit("Let's test!")
            if args.mapping == 'spatial':
                # spatial
                mini_batch_size = args.batch_size
                args.batch_size *= args.num_spatial_batches
                test_spatial(args, model, inputs, traced_outputs, optimizer, mini_batch_size)
            else:
                # section by section
                test(args, model, inputs, traced_outputs)

        elif args.command == "run":
            # Train the model on RDU. This is where the model will be trained
            # i.e. weights will be learned to fit the input dataset
            train(args, model, traced_outputs)

        elif args.command == 'measure-performance':
            utils.measure_performance(model,
                                      inputs,
                                      args.batch_size,
                                      args.n_chips,
                                      args.inference,
                                      run_graph_only=args.run_graph_only,
                                      n_iterations=args.num_iterations,
                                      json=args.json,
                                      compiled_stats_json=args.compiled_stats_json,
                                      data_parallel=args.data_parallel,
                                      reduce_on_rdu=args.reduce_on_rdu,
                                      use_sambaloader=True,
                                      min_duration=args.min_duration)


if __name__ == '__main__':
    main(sys.argv[1:])
