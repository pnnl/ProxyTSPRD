import argparse

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