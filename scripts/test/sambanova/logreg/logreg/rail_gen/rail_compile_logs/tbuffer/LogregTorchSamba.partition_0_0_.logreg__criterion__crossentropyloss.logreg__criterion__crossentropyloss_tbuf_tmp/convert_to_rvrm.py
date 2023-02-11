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

    def phase_w0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [32, 1, ])
        np.save('RVRM_phase_w0.npy', matrix)
    if opts.ctx == 'phase_w0':
        phase_w0()

    def phase1_R_max():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [32, 1, ])
        np.save('RVRM_phase1_R_max.npy', matrix)
    if opts.ctx == 'phase1_R_max':
        phase1_R_max()

    def phase_rd_dummy():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'drop', 32, 1, [32, 1, ])
        np.save('RVRM_phase_rd_dummy.npy', matrix)
    if opts.ctx == 'phase_rd_dummy':
        phase_rd_dummy()

    def phase_w1():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [32, 1, ])
        np.save('RVRM_phase_w1.npy', matrix)
    if opts.ctx == 'phase_w1':
        phase_w1()

    def phase2_R_exp():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [32, 1, ])
        np.save('RVRM_phase2_R_exp.npy', matrix)
    if opts.ctx == 'phase2_R_exp':
        phase2_R_exp()

    def phase_w2():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [32, 1, ])
        np.save('RVRM_phase_w2.npy', matrix)
    if opts.ctx == 'phase_w2':
        phase_w2()

    def phase3_R_max():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, -1, [32, 1, ])
        np.save('RVRM_phase3_R_max.npy', matrix)
    if opts.ctx == 'phase3_R_max':
        phase3_R_max()

    def phase3_R_logsum():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, -1, [32, 1, ])
        np.save('RVRM_phase3_R_logsum.npy', matrix)
    if opts.ctx == 'phase3_R_logsum':
        phase3_R_logsum()


    ############
    # End ctxs #
    ############
if __name__ == '__main__':
    main()

