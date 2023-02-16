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

ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr')
def LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr():
    x0 = 128
    x1 = 32
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    ndaddrs = []
    for x6 in range(x4,x5,x5):
        for x7 in range(x4,x2,x1):
            x8 = True
            ndaddr = [x7, x6, ]
            en_drop = True
            en_zero = x3
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr'] = LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr
ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB')
def LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB():
    x0 = 128
    x1 = 32
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    ndaddrs = []
    for x6 in range(x4,x0,x5):
        for x9 in range(x4,x2,x2):
            for x11 in range(x4,x5,x5):
                for x12 in range(x4,x5,x5):
                    for x10 in range(x4,x2,x1):
                        for x13 in range(x4,x5,x5):
                            x7 = True
                            x14 = x4 - x13
                            x15 = x11 + x12
                            x16 = x15 + x14
                            x17 = x9 + x10
                            x18 = x16 < x5
                            ndaddr = [x17, x16, ]
                            en_drop = x18
                            en_zero = x3
                            ND = NDAddr(ndaddr, en_zero and en_drop)
                            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB'] = LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB

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

