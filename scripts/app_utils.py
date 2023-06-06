import os, sys, json
import argparse
from mpi4py import MPI

def argument_parser():
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
        "--n_units", 
        type=int, help="number of GPUs/RDUs", 
        default=1
    )
    parser.add_argument(
        "--n_cpus", 
        type=int, 
        help="number of CPUs, invalid for RDUs", 
        default=1
    )
    parser.add_argument(
        "--dtype", 
        choices=["int", "fp16", "amp", "fp32", "fp64"], 
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
        "--run_type", 
        type=str, 
        choices=["train", "infer", "infer_ait", "infer_onnx", "compile", "run"], 
        help="Action to take. compile and run commands are specific to sambanova.", 
        default="train"
    )
    parser.add_argument(
        "--train_suffix", 
        type=str, 
        default="None"
    )
    parser.add_argument(
        "--profiling", 
        type=int, 
        help="whether profiling or not using nsys", 
        default=0
    )
    parser.add_argument(
        "--write_graph", 
        action='store_true',
        help="Invalid for sambanova"
    )

    # read the arguments
    args = parser.parse_args()

    return args

def read_config(config_file):
    # get print rank
    comm = MPI.COMM_WORLD
    print_rank = comm.Get_rank()
    
    # check if configuration file exists
    assert os.path.exists(config_file), "Configuration file not found: %s" %(config_file)
    # read configuration file
    with open(config_file) as fp:
        config = json.load(fp)
    
    return config, print_rank

def app_selector(app_name, platform):
    # select app
    n_channels = 1
    if app_name == "ClimateLSTMProxyAppPT":
        from proxy_apps.apps.pt.climate import ClimateLSTMProxyAppPT
        app = ClimateLSTMProxyAppPT(platform)
    elif app_name == "ClimateLSTMProxyAppTF":
        from proxy_apps.apps.tf.climate import ClimateLSTMProxyAppTF
        app = ClimateLSTMProxyAppTF(platform)
    elif app_name == "ClimateCNNProxyAppPT":
        from proxy_apps.apps.pt.climate import ClimateCNNProxyAppPT
        app = ClimateCNNProxyAppPT(platform)
    elif app_name == "ClimateCNNProxyAppPTATT":
        from proxy_apps.apps.pt.climate import ClimateCNNProxyAppPTATT
        app = ClimateCNNProxyAppPTATT(platform)
        n_channels = 4
    elif app_name == "ClimateCNNProxyAppTF":
        from proxy_apps.apps.tf.climate import ClimateCNNProxyAppTF
        app = ClimateCNNProxyAppTF(platform)
    elif app_name == "ClimateSTGCNProxyAppPT":
        from proxy_apps.apps.pt.climate import ClimateSTGCNProxyAppPT
        app = ClimateSTGCNProxyAppPT(platform)
    elif app_name == "GridLSTMProxyAppPT":
        from proxy_apps.apps.pt.grid import GridLSTMProxyAppPT
        app = GridLSTMProxyAppPT(platform)
    elif app_name == "GridLSTMProxyAppTF":
        from proxy_apps.apps.tf.grid import GridLSTMProxyAppTF
        app = GridLSTMProxyAppTF(platform)
    elif app_name == "GridCNNProxyAppPT":
        from proxy_apps.apps.pt.grid import GridCNNProxyAppPT
        app = GridCNNProxyAppPT(platform)
    elif app_name == "GridCNNProxyAppPTATT":
        from proxy_apps.apps.pt.grid import GridCNNProxyAppPTATT
        app = GridCNNProxyAppPTATT(platform)
        n_channels = 4
    elif app_name == "GridCNNProxyAppTF":
        from proxy_apps.apps.tf.grid import GridCNNProxyAppTF
        app = GridCNNProxyAppTF(platform)
    elif app_name == "GridSTGCNProxyAppPT":
        from proxy_apps.apps.pt.grid import GridSTGCNProxyAppPT
        app = GridSTGCNProxyAppPT(platform)
    else:
        sys.exit("[ERROR] Invalid App: %s" %(app_name))

    return app, n_channels
    
