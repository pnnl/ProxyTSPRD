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

ctxs.append('D_0_0_kDefaultWrite')
def D_0_0_kDefaultWrite():
    x0 = 3840
    x1 = 7680
    x2 = 60
    x3 = 64
    x4 = 0
    x5 = 2
    ndaddrs = []
    for x6 in range(x4,x1,x3):
        x7 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kDefaultWrite'] = D_0_0_kDefaultWrite
ctxs.append('D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd')
def D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd():
    x0 = 3840
    x1 = 7680
    x2 = 60
    x3 = 64
    x4 = 0
    x5 = 2
    ndaddrs = []
    for x7 in range(x4,x1,x0):
        x8 = True
        x11 = x6 * x3 + x7
        x12 = x6 >= x2
        x13 =  1 if x12 else 0
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x4),qaddr(x4),bin(x13)[2::],x13 % 2 >> 0 ,x13 % 4 >> 1 ,x13 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd'] = D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd

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

