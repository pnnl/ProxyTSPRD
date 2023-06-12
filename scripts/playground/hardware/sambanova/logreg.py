r"""
In this example, we will walk you through the process of defining a model,
compiling it, training and testing it on SN RDU
"""

import argparse
import os
import sys
import time
from typing import Tuple

import numpy as np
from termcolor import colored

import sambaflow.samba.utils as utils
from sambaflow import samba
from sambaflow.samba.schema.snconfig import SNConfig
from sambaflow.samba.test import TestWithGold
from sambaflow.samba.utils.argparser import (SambaConfig, parse_app_args,
                                             parse_yaml_to_args)
from sambaflow.samba.utils.benchmark_acc import AccuracyReport
from sambaflow.samba.utils.dataset.mnist import dataset_transform
from sambaflow.samba.utils.pef_utils import get_pefmeta
from sambaflow.samba.utils.tensorboard_debug import dump_accuracy_debug_info

import torch
import torch.distributed as dist
import torch.nn as nn
import torchvision

class LogReg(nn.Module):
    """
    Define the model architecture i.e. the layers in the model and the
    number of features in each layer
    
    :ivar lin_layer: Linear layer
    :ivar criterion: Cross Entropy loss layer
    """
    def __init__(self, num_features: int, num_classes: int):
        """
        
        :param num_features: Number of input features for the model
        :param num_classes: Number of output labels the model classifies inputs
        """
        super().__init__()
        self.num_features = num_features
        self.num_classes = num_classes

        #: Linear layer for predicting target class of inputs
        self.lin_layer = nn.Linear(in_features=num_features, out_features=num_classes, bias=False)

        #: Cross Entropy layer for loss computation
        self.criterion = nn.CrossEntropyLoss()

    def forward(self, inputs: torch.Tensor, targets: torch.Tensor) -> Tuple[torch.Tensor, torch.Tensor]:
        """
        Forward pass of the model for the given inputs. The forward pass
        predicts the class labels for the inputs and computes the loss
        between the correct and predicted class labels.
        
        :param inputs: The input samples in the dataset
        :type inputs: torch.Tensor
        
        :param targets: The correct labels for the inputs
        :type targets: torch.Tensor
        
        :return: The loss and predicted classes of the inputs
        :rtype: torch.Tensor
        """
        out = self.lin_layer(inputs)
        loss = self.criterion(out, targets)

        return loss, out

    def setup_mock_online_inference(self, args: argparse.Namespace):
        """
        Setups mock online inference by getting inputs from MNIST as tensors, and sending to Queue/Client classes.

        :param args: arguments for command
        :type args: argparse.Namespace
        """
        from sambaflow.online_inference_service.sn_sqs_handler import Queue
        n_mock = 10
        dataset = torchvision.datasets.MNIST(root=args.data_dir, train=False, transform=None, download=True)
        mock_inputs = [(str(i), dataset[i][0]) for i in range(n_mock)]
        queue = Queue(request_queue_name='', mock_inputs=mock_inputs)
        return queue

    def online_inference(self, args: argparse.Namespace, mock=False):
        """
        Runs online inference with this logreg model. Receives inputs from a SQS Queue,
        and returns predictions on each input, one at a time.
        Currently uses a mock SQS queue class, with pre-determined inputs from MNIST.

        Tutorial on google docs for setting up an online inference test for any model:
        https://docs.google.com/document/d/1OLmAORauWlFp0MwaNjsUWGulq5cMTVcsl6guAWoC648/edit?usp=sharing

        :param args: arguments for command
        :type args: argparse.Namespace

        :param mock: if True, fills queue with MNIST inputs by sending inputs to mock_boto3 Client
        :type mock: boolean
        """

        # set model to eval, get preprocessing
        self.lin_layer.eval()
        preprocess = dataset_transform({'num_features': self.num_features})

        # get sns queue
        try:
            import pprint
            import time

            from sambaflow.online_inference_service.sn_sqs_handler import Queue
            if mock:
                queue = self.setup_mock_online_inference(args)
            else:
                queue = Queue(request_queue_name='')

        except Exception as e:
            raise Exception(f'ERROR queue setup failed') from e

        while queue:
            # get next item from queue
            queue_item = queue.wait_msg()
            input_from_sqs, msg_id = queue_item
            response = {'msg_id': msg_id}

            if input_from_sqs == queue.TERMINATION_MESSAGE:  # terminate app
                return

            outputs = []
            start_data_time = time.time()

            try:  # read image from file path, resize & preprocess
                input_tensor = input_from_sqs['item']
                input_tensor = preprocess(input_tensor).reshape([1, -1])
                assert input_tensor.shape[-1] == self.num_features
            except:  # Failure response
                status = "Invalid image path: {}".format(input_from_sqs)
                print(status)
                response['status'] = status
                queue.send_msg(response)
                continue

            end_data_time = time.time()

            # get model outputs
            start_rdu_time = time.time()
            output = samba.to_torch(self.lin_layer(input_tensor).unsqueeze(0))
            output = torch.argmax(output, dim=-1)
            output = output.tolist()
            end_rdu_time = time.time()

            # send response & prediction back
            response_body = {
                'prediction': output,
                'rdu_time': end_rdu_time - start_rdu_time,
                'data_time': end_data_time - start_data_time
            }
            response.update({'status': 'success', 'responses': response_body})
            print(response)
            queue.send_msg(response)


def add_args(parser: argparse.ArgumentParser) -> None:
    # Add DaaS args
    parser.add_argument('--pod-name', type=str, default='starters', help="Pod name the app belongs to")
    parser.add_argument('--script', type=str, default=__file__, help="Script file to run the app")
    parser.add_argument('--mpirun', action='store_true', help="Whether it run with MPIRUN or not")
    parser.add_argument('--world-size', type=int, default=1, help="Number of communicators to run DP/MP apps")
    parser.add_argument('--task-name', type=str, default='classification', help="Task name")
    parser.add_argument('--model-name', type=str, default=__file__.split('/')[-1].split('.')[0], help="Dataset name")
    parser.add_argument('--data-name', type=str, default='mnist', help="Dataset name")
    parser.add_argument('--data-type', type=str, default='image', help="Training dataset type")
    parser.add_argument('--label-type',
                        type=str,
                        default='classes',
                        choices=['classes', 'numbers', 'resolvers'],
                        help="Label type")
    parser.add_argument('--ckpt-dir', type=str, default='', help="Checkpoint directory")
    parser.add_argument('--dataloader',
                        type=str,
                        default='torchloader',
                        choices=['torchloader', 'sambaloader'],
                        help="Dataloader type")
    parser.add_argument('--logger-name', type=str, default='default', choices=['default', 'acp'], help="Logger type")
    parser.add_argument('--logger-dir', type=str, default='output', help="Logger output dir")

    # Other args
    parser.add_argument('--optim', type=str, default='sgd', help="Optimizer to use for training")
    parser.add_argument('--lr', type=float, default=0.0015, help="Learning rate for training")
    parser.add_argument('--momentum', type=float, default=0.0, help="Momentum value for training")
    parser.add_argument('--weight-decay', type=float, default=3e-4, help="Weight decay for training")
    parser.add_argument('--num-epochs', '-e', type=int, default=1)
    parser.add_argument('--num-steps', type=int, default=-1)
    parser.add_argument('--num-features', type=int, default=784)
    parser.add_argument('--num-classes', type=int, default=10)
    parser.add_argument('--weight-norm', action="store_true", help="Enable weight normalization")
    parser.add_argument('--acc-test', action='store_true', help='Option for accuracy guard test in RDU regression.')
    parser.add_argument('--yaml-config', default=None, type=str, help='YAML file used with launch_app.py')
    parser.add_argument('--data-dir',
                        '--data-folder',
                        type=str,
                        default='mnist_data',
                        help="The folder to download the MNIST dataset to.")
    parser.add_argument('--visualize', action="store_true", help="Generate plots for accuracy comparisons")
    parser.add_argument('--enable-profiler', action='store_true', help='Enable Samba Profiler')
    parser.add_argument('--profiler-trace', type=str, help='Samba profiler trace output file')
    # end args


def prepare_dataloader(args: argparse.Namespace) -> Tuple[torch.utils.data.DataLoader, torch.utils.data.DataLoader]:
    """
    Prep work to train the logreg model with the `MNIST dataset <http://yann.lecun.com/exdb/mnist/>`__:
    
    We'll split the dataset into train and test sets and return the corresponding data loaders
    
    :param args: argument specifying the location of the dataset
    :type args: argparse.Namespace
    
    :return: Train and test data loaders
    :rtype: Tuple[torch.utils.data.DataLoader]
    """

    # Get the train & test data (images and labels) from the MNIST dataset
    train_dataset = torchvision.datasets.MNIST(root=f'{args.data_dir}',
                                               train=True,
                                               transform=dataset_transform(vars(args)),
                                               download=True)
    test_dataset = torchvision.datasets.MNIST(root=f'{args.data_dir}',
                                              train=False,
                                              transform=dataset_transform(vars(args)))

    print(args.world_size)
    train_sampler = torch.utils.data.distributed.DistributedSampler(
    	train_dataset,
    	num_replicas=1
    )
    test_sampler = torch.utils.data.distributed.DistributedSampler(
    	test_dataset,
    	num_replicas=1
    )
    # Get the train & test data loaders (input pipeline)
    train_loader = torch.utils.data.DataLoader(dataset=train_dataset, batch_size=args.batch_size, sampler=train_sampler)
    test_loader = torch.utils.data.DataLoader(dataset=test_dataset, batch_size=args.batch_size, sampler=test_sampler)
    return train_loader, test_loader


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

    hyperparam_dict = {"lr": args.lr, "momentum": args.momentum, "weight_decay": args.weight_decay}

    # Train and test for specified number of epochs
    for epoch in range(args.num_epochs):
        avg_loss = 0

        # Train the model for all samples in the train data loader
        for i, (images, labels) in enumerate(train_loader):
            global_step = epoch * total_step + i
            if args.num_steps > 0 and global_step >= args.num_steps:
                print('Maximum num of steps reached. ')
                return None

            data_event = samba.session.profiler.start_event('data_step')
            sn_images = samba.from_torch_tensor(images, name='image', batch_dim=0)
            sn_labels = samba.from_torch_tensor(labels, name='label', batch_dim=0)
            samba.session.profiler.end_event(data_event)

            compute_step = samba.session.profiler.start_event('compute_step')
            loss, outputs = samba.session.run(input_tensors=[sn_images, sn_labels],
                                              output_tensors=output_tensors,
                                              hyperparam_dict=hyperparam_dict,
                                              data_parallel=args.data_parallel,
                                              reduce_on_rdu=args.reduce_on_rdu)
            samba.session.profiler.end_event(compute_step)

            get_outputs_event = samba.session.profiler.start_event('get_outputs')
            # Sync the loss and outputs with host memory
            loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
            avg_loss += loss.mean()
            samba.session.profiler.end_event(get_outputs_event)

            # Print loss per 10,000th sample in every epoch
            if (i + 1) % 10000 == 0 and args.local_rank <= 0:
                print('Epoch [{}/{}], Step [{}/{}], Loss: {:.4f}'.format(epoch + 1, args.num_epochs, i + 1, total_step,
                                                                         avg_loss / (i + 1)))

        # Check the accuracy of the trained model for all samples in the test data loader
        # Sync the model parameters with host memory
        samba.session.to_cpu(model)
        test_acc = 0.0
        with torch.no_grad():
            correct = 0
            total = 0
            total_loss = 0
            for images, labels in test_loader:
                loss, outputs = model(images, labels)
                loss, outputs = samba.to_torch(loss), samba.to_torch(outputs)
                total_loss += loss.mean()
                _, predicted = torch.max(outputs.data, 1)
                total += labels.size(0)
                correct += (predicted == labels).sum()

            test_acc = 100.0 * correct / total

            if args.local_rank <= 0:
                print('Test Accuracy: {:.2f}'.format(test_acc),
                      ' Loss: {:.4f}'.format(total_loss.item() / (len(test_loader))))

        if args.acc_test:
            assert args.num_epochs == 1, "Accuracy test only supported for 1 epoch"
            assert test_acc > 91.0 and test_acc < 92.0, "Test accuracy not within specified bounds."

    if args.acc_report_json is not None:
        val_metrics = {'acc': test_acc.item() / 100.0, 'loss': total_loss.item() / len(test_loader)}
        report = AccuracyReport(val_metrics=val_metrics,
                                batch_size=args.batch_size,
                                num_iterations=args.num_epochs * total_step)
        report.save(args.acc_report_json)


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
    # Run forwards and backwards on CPU
    outputs_gold = model(*inputs)
    loss, out = outputs_gold
    loss.backward()

    # Run all sections on RDU. If the graph was compiled for inference, this is only the forward pass. Otherwise, the
    # pass includes backwards and optimizer sections, which will also be executed.
    outputs_samba = samba.session.run(input_tensors=inputs,
                                      output_tensors=outputs,
                                      data_parallel=args.data_parallel,
                                      reduce_on_rdu=args.reduce_on_rdu)

    # Check that all RDU and CPU outputs match numerically
    for i, (output_samba, output_gold) in enumerate(zip(outputs_samba, outputs_gold)):
        print('samba:', output_samba)
        print('gold:', output_gold)
        utils.assert_close(output_samba, output_gold, f'forward output #{i}', threshold=5e-3, visualize=args.visualize)

    if not args.inference:
        # Check all weight gradients
        for name, param in model.named_parameters():
            # Retrieve gradient that was calculated on CPU
            golden_gradient = param.grad
            # Retrieve gradient that was calculated on RDU
            samba_gradient = param.sn_grad
            utils.assert_close(golden_gradient, samba_gradient, f'Gradient for {name}', visualize=args.visualize)

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

    migrated_arguments = {'-e': '--num-epochs', '--data-folder': '--data-dir'}
    deprecated_args_found = set(migrated_arguments.keys()) & set(argv)
    if deprecated_args_found:
        for arg in deprecated_args_found:
            print(
                colored(f'This specific argument {arg} is being deprecated, new argument is {migrated_arguments[arg]}',
                        'red'))

    args_cli = parse_app_args(argv=argv, common_parser_fn=add_args)
    args_composed = parse_yaml_to_args(args_cli.yaml_config, args_cli) if args_cli.yaml_config else args_cli
    _ = SambaConfig(args_composed, SNConfig).get_all_params()

    args = args_composed
    # args.batch_size = 1024
    # sys.exit(args.batch_size)
    # when it is not distributed mode, local rank is -1.
    args.local_rank = dist.get_rank() if dist.is_initialized() else -1
    # print(
    #     "-------------- All Arguments: -----------------\n", 
    #     args,
    #     "\n-----------------------------------------------\n", 
    # )

    # Create random input and output data for testing
    ipt = samba.randn(args.batch_size, args.num_features, name='image', batch_dim=0,
                      named_dims=('B', 'F')).bfloat16().float()
    tgt = samba.randint(args.num_classes, (args.batch_size, ), name='label', batch_dim=0, named_dims=('B', ))

    ipt.mem_type = None
    tgt.mem_type = None

    # Instantiate the model
    model = LogReg(args.num_features, args.num_classes)

    # Sync model parameters with RDU memory
    samba.from_torch_model_(model)

    # Annotate parameters if weight normalization is on
    if args.weight_norm:
        utils.weight_norm_(model.lin_layer)

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
        # print(
        #     "---------- Compile - Inputs ------------- \n",
        #     inputs,
        #     "\n------------------------------------------- \n",
        # )
        HOST_MEMORY = {'host': True, 'device': False, 'auto': None}
        samba.session.compile(model,
                              inputs,
                              optimizer,
                              name='logreg_torch',
                              app_dir=utils.get_file_dir(__file__),
                              config_dict=vars(args),
                              pef_metadata=get_pefmeta(args, model),
                              io_host_memory=None)

    elif args.__dict__.get("listen_for_input", False):
        model.online_inference(args=args, mock=args.mock_inference)

    elif args.__dict__.get("dump_accuracy_debug_info", False):
        # Runs the whole graph by default
        traced_outputs = utils.trace_graph(model, inputs, optimizer, pef=args.pef, mapping=args.mapping, dev_mode=True)
        # Dump accuracy info to tensorboard logs
        # Use 'tensorboard --logdir ./runs/' to check in tensorboard
        dump_accuracy_debug_info(args, model, inputs, traced_outputs)

    elif args.command in ["test", "run", "measure-performance"]:
        if args.enable_profiler:
            samba.session.start_samba_profile()

        # Build inputs of the correct shape for spatial
        if args.mapping == "spatial":
            inputs = (samba.SambaTensor(samba.to_torch(inputs[0]).repeat(args.num_spatial_batches, 1),
                                        name='image',
                                        batch_dim=0),
                      samba.SambaTensor(samba.to_torch(inputs[1]).repeat(args.num_spatial_batches),
                                        name='label',
                                        batch_dim=0))

        # Trace the compiled graph to initialize the model weights and input/output tensors
        # for execution on the RDU.
        # The PEF required for tracing is the binary generated during compilation
        # Mapping refers to how the model layers are arranged in a pipeline for execution.
        # Valid options: 'spatial' or 'section'
        # print(
        #     "---------- Training - Inputs ------------- \n",
        #     inputs,
        #     "\n------------------------------------------- \n",
        # )
        # print(args.pef)
        # print(args.distlearn_config)
        # init_output_grads = not (args.ignore_output_grads or args.inference)
        traced_outputs = utils.trace_graph(model,
                                           inputs,
                                           optimizer,
                                           pef=args.pef,
                                           mapping=args.mapping,
                                           distlearn_config=args.distlearn_config,
                                           data_parallel_mode=args.data_parallel_mode
                            )

        if args.command == "test":
            # Test the model's functional correctness. This tests if the result of execution
            # on the RDU is comparable to that on a CPU. CPU run results are used as reference.
            # Note that this test is different from testing model fit during training.
            # Given the same initial weights and inputs, this tests if the graph execution
            # on RDU generates outputs that are comparable to those generated on a CPU.
            if args.mapping == 'spatial':
                # spatial
                mini_batch_size = args.batch_size
                args.batch_size *= args.num_spatial_batches
                test_spatial(args, model, inputs, traced_outputs, optimizer, mini_batch_size)
            else:
                if args.gold_file_path:
                    # If gold files have been provided by the user, utilize that to run bit-wise checking
                    # to ensure the behavior of the model is identical to the ones cached in the gold files.
                    t = TestWithGold(args, "logreg", model, None, optimizer)
                    t.test()
                else:
                    test(args, model, inputs, traced_outputs)

        elif args.command == "run":
            # Train the model on RDU. This is where the model will be trained
            # i.e. weights will be learned to fit the input dataset
            start_time = time.perf_counter()
            train(args, model, traced_outputs)
            print("[INFO] Training Time: %f" %(time.perf_counter()-start_time))

        elif args.command == 'measure-performance':
            utils.measure_performance(model,
                                      inputs,
                                      args.batch_size,
                                      args.n_chips,
                                      args.inference,
                                      run_graph_only=args.run_graph_only,
                                      n_iterations=args.num_iterations,
                                      json=args.bench_report_json,
                                      compiled_stats_json=args.compiled_stats_json,
                                      data_parallel=args.data_parallel,
                                      reduce_on_rdu=args.reduce_on_rdu,
                                      use_sambaloader=True,
                                      min_duration=args.min_duration)

        if args.enable_profiler:
            samba.session.end_samba_profile(filename=args.profiler_trace)


if __name__ == '__main__':
    main(sys.argv[1:])
