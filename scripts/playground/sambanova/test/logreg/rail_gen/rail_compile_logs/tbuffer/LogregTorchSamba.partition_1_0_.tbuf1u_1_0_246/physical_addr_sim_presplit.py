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

ctxs.append('D_0_0_kFrontDynamicWriteCtx_0__dup0_W')
def D_0_0_kFrontDynamicWriteCtx_0__dup0_W():
    ndaddrs = []
    x0 = 16
    x1 = 3
    x2 = 0
    x3 = 2
    for x4 in range(x2,x1,x0):
        x5 = True
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x2),qaddr(x2//4),qaddr(x2//64),qaddr(x2),bin(x3)[2::],x3 % 2 >> 0 ,x3 % 4 >> 1 ,x3 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kFrontDynamicWriteCtx_0__dup0_W'] = D_0_0_kFrontDynamicWriteCtx_0__dup0_W
ctxs.append('D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd_0_0__dup0_R')
def D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd_0_0__dup0_R():
    ndaddrs = []
    x0 = 32
    x1 = 136
    x2 = 0
    x3 = 12
    x4 = 4
    x5 = 0
    for x6 in range(x2,x3,x4):
        for x7 in range(x2,x1,x0):
            x8 = True
            print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//4),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd_0_0__dup0_R'] = D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kIndexRd_0_0__dup0_R

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

