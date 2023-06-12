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
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_0_0.npy', matrix)
    if opts.ctx == 'w_loop_0_0':
        w_loop_0_0()

    def w_loop_1_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_1_0.npy', matrix)
    if opts.ctx == 'w_loop_1_0':
        w_loop_1_0()

    def w_loop_2_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_2_0.npy', matrix)
    if opts.ctx == 'w_loop_2_0':
        w_loop_2_0()

    def w_loop_3_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_3_0.npy', matrix)
    if opts.ctx == 'w_loop_3_0':
        w_loop_3_0()

    def w_loop_4_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_4_0.npy', matrix)
    if opts.ctx == 'w_loop_4_0':
        w_loop_4_0()

    def w_loop_5_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_5_0.npy', matrix)
    if opts.ctx == 'w_loop_5_0':
        w_loop_5_0()

    def w_loop_6_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_6_0.npy', matrix)
    if opts.ctx == 'w_loop_6_0':
        w_loop_6_0()

    def w_loop_7_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_7_0.npy', matrix)
    if opts.ctx == 'w_loop_7_0':
        w_loop_7_0()

    def w_loop_8_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_8_0.npy', matrix)
    if opts.ctx == 'w_loop_8_0':
        w_loop_8_0()

    def w_loop_9_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_9_0.npy', matrix)
    if opts.ctx == 'w_loop_9_0':
        w_loop_9_0()

    def w_loop_10_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_10_0.npy', matrix)
    if opts.ctx == 'w_loop_10_0':
        w_loop_10_0()

    def w_loop_11_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_11_0.npy', matrix)
    if opts.ctx == 'w_loop_11_0':
        w_loop_11_0()

    def w_loop_12_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_12_0.npy', matrix)
    if opts.ctx == 'w_loop_12_0':
        w_loop_12_0()

    def w_loop_13_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_13_0.npy', matrix)
    if opts.ctx == 'w_loop_13_0':
        w_loop_13_0()

    def w_loop_14_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_14_0.npy', matrix)
    if opts.ctx == 'w_loop_14_0':
        w_loop_14_0()

    def w_loop_15_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_15_0.npy', matrix)
    if opts.ctx == 'w_loop_15_0':
        w_loop_15_0()

    def w_loop_16_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_16_0.npy', matrix)
    if opts.ctx == 'w_loop_16_0':
        w_loop_16_0()

    def w_loop_17_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_17_0.npy', matrix)
    if opts.ctx == 'w_loop_17_0':
        w_loop_17_0()

    def w_loop_18_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_18_0.npy', matrix)
    if opts.ctx == 'w_loop_18_0':
        w_loop_18_0()

    def w_loop_19_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_19_0.npy', matrix)
    if opts.ctx == 'w_loop_19_0':
        w_loop_19_0()

    def w_loop_20_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_20_0.npy', matrix)
    if opts.ctx == 'w_loop_20_0':
        w_loop_20_0()

    def w_loop_21_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_21_0.npy', matrix)
    if opts.ctx == 'w_loop_21_0':
        w_loop_21_0()

    def w_loop_22_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_22_0.npy', matrix)
    if opts.ctx == 'w_loop_22_0':
        w_loop_22_0()

    def w_loop_23_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_23_0.npy', matrix)
    if opts.ctx == 'w_loop_23_0':
        w_loop_23_0()

    def w_loop_24_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_24_0.npy', matrix)
    if opts.ctx == 'w_loop_24_0':
        w_loop_24_0()

    def w_loop_25_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_25_0.npy', matrix)
    if opts.ctx == 'w_loop_25_0':
        w_loop_25_0()

    def w_loop_26_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_26_0.npy', matrix)
    if opts.ctx == 'w_loop_26_0':
        w_loop_26_0()

    def w_loop_27_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_27_0.npy', matrix)
    if opts.ctx == 'w_loop_27_0':
        w_loop_27_0()

    def w_loop_28_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_28_0.npy', matrix)
    if opts.ctx == 'w_loop_28_0':
        w_loop_28_0()

    def w_loop_29_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_29_0.npy', matrix)
    if opts.ctx == 'w_loop_29_0':
        w_loop_29_0()

    def w_loop_30_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_30_0.npy', matrix)
    if opts.ctx == 'w_loop_30_0':
        w_loop_30_0()

    def w_loop_31_0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateDrop', 32, 0, [4096, 256, ])
        np.save('RVRM_w_loop_31_0.npy', matrix)
    if opts.ctx == 'w_loop_31_0':
        w_loop_31_0()

    def kBackReadCtx():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'kPredicateForceZero', 32, 0, [4096, 256, ])
        np.save('RVRM_kBackReadCtx.npy', matrix)
    if opts.ctx == 'kBackReadCtx':
        kBackReadCtx()


    ############
    # End ctxs #
    ############
if __name__ == '__main__':
    main()

