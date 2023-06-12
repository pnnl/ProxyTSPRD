import argparse
import importlib.util
import ndaddr_sim
import numpy as np
import os
import sys


def main():

    SOFTWARE_HOME = os.getenv('SOFTWARE_HOME')
    spec = importlib.util.spec_from_file_location('convert_to_rvrm', '{}/prism/tools/convert_to_rvrm/convert_to_rvrm.py'.format(SOFTWARE_HOME))
    crvrm = importlib.util.module_from_spec(spec)
    spec.loader.exec_module(crvrm)

    parser = argparse.ArgumentParser(description='Convert Printed Data to RVRM.')
    parser.add_argument('--ctx', type=str, help='Specify context to use')
    parser.add_argument('--data_file', type=str, help='File containing printed data.')
    opts, args = parser.parse_known_args()

    np.set_printoptions(suppress=True, threshold=sys.maxsize)

    addrs = ndaddr_sim.ndaddr(opts.ctx)

    ##############
    # Start ctxs #
    ##############

    def kFrontDynamicWriteCtx():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateForceZero', 32, 1, [60, 160, ])
        np.save('RVRM_kFrontDynamicWriteCtx.npy', matrix)
    if opts.ctx == 'kFrontDynamicWriteCtx':
        kFrontDynamicWriteCtx()

    def LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateForceZero', 32, 1, [60, 160, ])
        np.save('RVRM_LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd.npy', matrix)
    if opts.ctx == 'LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd':
        LogregTorchSamba.partition_1_0_.ptconvlstm__lambda_layer__indexselect_recompute_@kLutRd()


    ############
    # End ctxs #
    ############
if __name__ == '__main__':
    main()

