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
    x0 = 3
    x1 = 32
    x2 = 136
    x3 = True
    x4 = 16
    x5 = 12
    x6 = 4
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x0,x4):
        x9 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmuid: [" + str(x7) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//4),qaddr(x7//64),qaddr(x7),qaddr(x7),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kFrontDynamicWriteCtx'] = kFrontDynamicWriteCtx
ctxs.append('LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd')
def LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd():
    x0 = 3
    x1 = 32
    x2 = 136
    x3 = True
    x4 = 16
    x5 = 12
    x6 = 4
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x5,x6):
        for x9 in range(x7,x2,x1):
            x10 = True
            print("pmuid: [" + str(x7) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//4),qaddr(x8//64),qaddr(x7),qaddr(x7),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd'] = LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd

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

