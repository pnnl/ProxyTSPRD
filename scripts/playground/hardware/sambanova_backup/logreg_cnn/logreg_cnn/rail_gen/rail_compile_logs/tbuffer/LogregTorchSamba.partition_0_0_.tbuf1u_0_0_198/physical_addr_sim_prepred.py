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

ctxs.append('D_0_0_kFrontDynamicWriteCtx')
def D_0_0_kFrontDynamicWriteCtx():
    x0 = 16
    x1 = 3
    x2 = 4
    x3 = 12
    x4 = 32
    x5 = 136
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x1,x0):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//4),qaddr(x7//64),qaddr(x7),qaddr(x7),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kFrontDynamicWriteCtx'] = D_0_0_kFrontDynamicWriteCtx
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__ptconvcnn__lambda_layer__indexselect_kIndexRd')
def D_0_0_LogregTorchSamba_partition_0_0__ptconvcnn__lambda_layer__indexselect_kIndexRd():
    x0 = 16
    x1 = 3
    x2 = 4
    x3 = 12
    x4 = 32
    x5 = 136
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x3,x2):
        for x9 in range(x7,x5,x4):
            x10 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//4),qaddr(x8//64),qaddr(x7),qaddr(x7),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__ptconvcnn__lambda_layer__indexselect_kIndexRd'] = D_0_0_LogregTorchSamba_partition_0_0__ptconvcnn__lambda_layer__indexselect_kIndexRd

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
