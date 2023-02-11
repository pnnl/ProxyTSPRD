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

ctxs.append('kFrontDynamicWriteCtx')
def kFrontDynamicWriteCtx():
    x0 = 1
    x1 = 3
    x2 = 32
    x3 = 136
    x4 = 60
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x4,x0):
        for x8 in range(x6,x3,x2):
            x9 = True
            ndaddr = [x7, x8, ]
            en_drop = True
            en_zero = x5
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['kFrontDynamicWriteCtx'] = kFrontDynamicWriteCtx
ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd')
def LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd():
    x0 = 1
    x1 = 3
    x2 = 32
    x3 = 136
    x4 = 60
    x5 = True
    x6 = 0
    ndaddrs = []
    for x8 in range(x6,x1,x0):
        for x9 in range(x6,x3,x2):
            x10 = True
            x12 = x7 < x4
            ndaddr = [x7, x9, ]
            en_drop = x5
            en_zero = x12
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd'] = LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd

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

