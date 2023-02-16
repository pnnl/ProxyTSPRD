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

    def w_loop_0_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'drop', 32, 0, [262144, 1, ])
        np.save('RVRM_w_loop_0_0.npy', matrix)
    if opts.ctx == 'w_loop_0_0':
        w_loop_0_0()

    def r_loop_0_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 0, [262144, 1, ])
        np.save('RVRM_r_loop_0_0.npy', matrix)
    if opts.ctx == 'r_loop_0_0':
        r_loop_0_0()

    def kBackReadCtx():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 0, [262144, 1, ])
        np.save('RVRM_kBackReadCtx.npy', matrix)
    if opts.ctx == 'kBackReadCtx':
        kBackReadCtx()


    ############
    # End ctxs #
    ############
if __name__ == '__main__':
    main()

