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

    def phaseW0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseW0.npy', matrix)
    if opts.ctx == 'phaseW0':
        phaseW0()

    def phaseRMax():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseRMax.npy', matrix)
    if opts.ctx == 'phaseRMax':
        phaseRMax()

    def phase_rd_dummy():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, 'drop', 32, 1, [14, 32, ])
        np.save('RVRM_phase_rd_dummy.npy', matrix)
    if opts.ctx == 'phase_rd_dummy':
        phase_rd_dummy()

    def phaseW1():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseW1.npy', matrix)
    if opts.ctx == 'phaseW1':
        phaseW1()

    def phaseRExp0():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseRExp0.npy', matrix)
    if opts.ctx == 'phaseRExp0':
        phaseRExp0()

    def phaseW2():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseW2.npy', matrix)
    if opts.ctx == 'phaseW2':
        phaseW2()

    def phaseRExp1():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseRExp1.npy', matrix)
    if opts.ctx == 'phaseRExp1':
        phaseRExp1()

    def phaseRSumRecip():
        matrix = crvrm.convert_to_rvrm(addrs, opts.data_file, '', 32, 1, [14, 32, ])
        np.save('RVRM_phaseRSumRecip.npy', matrix)
    if opts.ctx == 'phaseRSumRecip':
        phaseRSumRecip()


    ############
    # End ctxs #
    ############
if __name__ == '__main__':
    main()

