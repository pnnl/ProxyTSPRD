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
    x0 = 64
    x1 = 19200
    x2 = 1
    x3 = 3
    x4 = 60
    x5 = True
    x6 = 2
    x7 = 0
    x8 = 32
    x9 = 160
    ndaddrs = []
    for x10 in range(x7,x1,x0):
        x11 = True
        print("trim_pred: {} ".format(x5), end='')
        print("pmuid: [" + str(x7) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['kFrontDynamicWriteCtx'] = kFrontDynamicWriteCtx
ctxs.append('LogregTorchSamba_partition_1_0__ptconvcnn__lambda_layer__indexselect_recompute__kLutRd')
def LogregTorchSamba_partition_1_0__ptconvcnn__lambda_layer__indexselect_recompute__kLutRd():
    x0 = 64
    x1 = 19200
    x2 = 1
    x3 = 3
    x4 = 60
    x5 = True
    x6 = 2
    x7 = 0
    x8 = 32
    x9 = 160
    ndaddrs = []
    for x11 in range(x7,x3,x2):
        for x12 in range(x7,x9,x8):
            x13 = True
            x15 = x10 < x4
            x17 = x10 * x9
            x18 = x17 + x12
            x19 = x18 * x6
            print("pmuid: [" + str(x7) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x7),qaddr(x7),x15,x5,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__ptconvcnn__lambda_layer__indexselect_recompute__kLutRd'] = LogregTorchSamba_partition_1_0__ptconvcnn__lambda_layer__indexselect_recompute__kLutRd

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

