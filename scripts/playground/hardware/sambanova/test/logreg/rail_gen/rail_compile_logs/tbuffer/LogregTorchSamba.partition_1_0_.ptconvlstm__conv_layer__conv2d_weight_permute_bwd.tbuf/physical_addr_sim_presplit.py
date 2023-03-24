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

ctxs.append('D_0_0_0_0_0_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 256
    x1 = 327680
    x2 = 0
    x3 = 64
    x4 = 192
    x5 = 2
    for x6 in range(x2,x4,x3):
        for x7 in range(x2,x1,x0):
            x8 = True
            x11 = x7 + x6
            print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 256
    x1 = 65536
    x2 = 0
    x3 = 0
    x4 = 64
    x5 = 8704
    x6 = 11
    x7 = 2047
    for x8 in range(x3,x1,x0):
        for x9 in range(x3,x5,x4):
            x10 = True
            x13 = x9 >> x6
            x14 = x13 * x1 + x8
            x15 = x9 & x7
            x16 = x14 + x15
            print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x15),bin(x2)[2::],x2 % 2 >> 0 ,x2 % 4 >> 1 ,x2 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_R_0_0_0_0__dup0_R

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

