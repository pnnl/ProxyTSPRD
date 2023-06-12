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

ctxs.append('D_0_0_0_0_0_W')
def D_0_0_0_0_0_W():
    x0 = 192
    x1 = 327680
    x2 = 256
    x3 = 65536
    x4 = 0
    x5 = 2
    x6 = 0
    x7 = 64
    x8 = 8704
    x9 = 11
    x10 = 2047
    ndaddrs = []
    for x11 in range(x6,x0,x7):
        for x12 in range(x6,x1,x2):
            x13 = True
            x16 = x12 + x11
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x11),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_W'] = D_0_0_0_0_0_W
ctxs.append('D_0_0_0_0_0_R')
def D_0_0_0_0_0_R():
    x0 = 192
    x1 = 327680
    x2 = 256
    x3 = 65536
    x4 = 0
    x5 = 2
    x6 = 0
    x7 = 64
    x8 = 8704
    x9 = 11
    x10 = 2047
    ndaddrs = []
    for x11 in range(x6,x3,x2):
        for x12 in range(x6,x8,x7):
            x13 = True
            x16 = x12 >> x9
            x17 = x16 * x3 + x11
            x18 = x12 & x10
            x19 = x17 + x18
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x18),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_R'] = D_0_0_0_0_0_R

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

