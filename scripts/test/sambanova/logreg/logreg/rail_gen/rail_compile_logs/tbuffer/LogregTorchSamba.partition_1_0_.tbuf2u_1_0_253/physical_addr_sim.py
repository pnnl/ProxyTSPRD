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
    x0 = 19200
    x1 = 1
    x2 = 3
    x3 = 64
    x4 = 60
    x5 = 320
    x6 = 0
    x7 = 2
    ndaddrs = []
    for x8 in range(x6,x0,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kFrontDynamicWriteCtx'] = D_0_0_kFrontDynamicWriteCtx
ctxs.append('D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd')
def D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd():
    x0 = 19200
    x1 = 1
    x2 = 3
    x3 = 64
    x4 = 60
    x5 = 320
    x6 = 0
    x7 = 2
    ndaddrs = []
    for x9 in range(x6,x2,x1):
        for x10 in range(x6,x5,x3):
            x11 = True
            x14 = x8 * x5 + x10
            x15 = x8 >= x4
            x16 =  1 if x15 else 0
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x14),qaddr(x14//2),qaddr(x14//64),qaddr(x6),qaddr(x6),bin(x16)[2::],x16 % 2 >> 0 ,x16 % 4 >> 1 ,x16 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd'] = D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__lambda_layer__indexselect_recompute__kLutRd

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

