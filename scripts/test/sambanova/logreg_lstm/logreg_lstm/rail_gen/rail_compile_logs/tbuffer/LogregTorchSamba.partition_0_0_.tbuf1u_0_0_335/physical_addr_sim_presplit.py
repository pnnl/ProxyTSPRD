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
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    for x7 in range(x4,x1,x0):
        x8 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x4),qaddr(x4//4),qaddr(x4//64),qaddr(x4),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kFrontDynamicWriteCtx'] = D_0_0_kFrontDynamicWriteCtx
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd')
def D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd():
    x0 = 16
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    for x7 in range(x4,x3,x2):
        x8 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x4),qaddr(x4//4),qaddr(x4//64),qaddr(x4),qaddr(x4),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd'] = D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd

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

