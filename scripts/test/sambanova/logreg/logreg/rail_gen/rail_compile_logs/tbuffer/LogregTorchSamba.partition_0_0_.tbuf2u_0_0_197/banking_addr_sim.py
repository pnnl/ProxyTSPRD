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
    x0 = 19200
    x1 = 1
    x2 = 3
    x3 = 60
    x4 = True
    x5 = 64
    x6 = 0
    x7 = 320
    ndaddrs = []
    for x8 in range(x6,x0,x5):
        x9 = True
        print("trim_pred: {} ".format(x4), end='')
        print("pmufid: {} ".format(x6), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['kFrontDynamicWriteCtx'] = kFrontDynamicWriteCtx
ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd')
def LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kLutRd():
    x0 = 19200
    x1 = 1
    x2 = 3
    x3 = 60
    x4 = True
    x5 = 64
    x6 = 0
    x7 = 320
    ndaddrs = []
    for x9 in range(x6,x2,x1):
        for x10 in range(x6,x7,x5):
            x11 = True
            x13 = x8 < x3
            x15 = x8 * x7
            x16 = x15 + x10
            print("pmufid: {} ".format(x6), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x6),qaddr(x6),x13,x4,True,))
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

