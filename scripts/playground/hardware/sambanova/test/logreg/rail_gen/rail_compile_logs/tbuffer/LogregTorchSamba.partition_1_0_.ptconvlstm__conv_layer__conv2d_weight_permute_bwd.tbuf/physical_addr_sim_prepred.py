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
    x5 = True
    for x6 in range(x2,x4,x3):
        for x7 in range(x2,x1,x0):
            x8 = True
            x11 = x7 + x6
            print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x6),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 256
    x1 = 2048
    x2 = 0
    x3 = 32
    x4 = 4352
    x5 = 1024
    x6 = 2
    x7 = 65536
    x8 = True
    for x9 in range(x2,x7,x0):
        for x10 in range(x2,x4,x3):
            x11 = True
            x14 = x10 // x5
            x15 = x10 * x6
            x16 = x15 % x1
            x17 = x10 % x5
            x18 = x14 * x7
            x19 = x18 + x9
            x20 = x17 * x6
            x21 = x19 + x20
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x16),x8,x8,True,))
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

