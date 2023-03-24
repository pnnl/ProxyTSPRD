import argparse
import numpy as np


class NDAddr(object):
    def __init__(self, ndaddr, pred):
        self.ndaddr = ndaddr
        self.pred = pred

    def __repr__(self):
        return 'ndaddr: [{}] pred: {}'.format(', '.join(str(x) for x in self.ndaddr), self.pred)


ctxs = []
ndaddr_funcs = {}

##############
# Start ctxs #
##############

ctxs.append('kDefaultWrite')
def kDefaultWrite():
    x0 = 1
    x1 = 32
    x2 = 64
    x3 = 60
    x4 = True
    x5 = 0
    ndaddrs = []
    for x7 in range(x5,x2,x1):
        for x6 in range(x5,x3,x0):
            x8 = True
            ndaddr = [x6, x7, ]
            en_drop = True
            en_zero = x4
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd')
def LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd():
    x0 = 1
    x1 = 32
    x2 = 64
    x3 = 60
    x4 = True
    x5 = 0
    ndaddrs = []
    for x7 in range(x5,x0,x0):
        for x8 in range(x5,x2,x1):
            x9 = True
            x11 = x6 < x3
            ndaddr = [x6, x8, ]
            en_drop = x4
            en_zero = x11
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd'] = LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd

############
# End ctxs #
############


def ndaddr(ctx):
    return ndaddr_funcs[ctx]()


def qaddr(addr):
    if opts.format == 'dec/hex':
        return str(addr) + '/' + hex(addr)
    elif opts.format == 'dec':
        return str(addr)
    elif opts.format == 'hex':
        return hex(addr)
    else:
        assert False, 'Unsupported format! ' + opts.format


def main():
    parser = argparse.ArgumentParser(description='Physical Address Simulation.')
    parser.add_argument('--ctx', type=str, help='Specify context to print')
    parser.add_argument('--list', action='store_true', default=False, help='List available contexts')
    parser.add_argument('-f', '--format', default='dec/hex', help='Address format. Options: [dec, hex, dec/hex]')
    global opts, args
    opts, args = parser.parse_known_args()
    if opts.list:
        for ctx in ctxs:
            print(ctx)
        exit()


    if opts.ctx is not None:
        for line in ndaddr_funcs[opts.ctx]():print(line)



if __name__ == '__main__':
    main()

