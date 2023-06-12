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

ctxs.append('W_0_0_0_0__dup0_W')
def W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = True
    x1 = 256
    x2 = 327680
    x3 = 0
    x4 = 64
    x5 = 192
    for x6 in range(x3,x5,x4):
        for x7 in range(x3,x2,x1):
            x8 = True
            print("trim_pred: {} ".format(x0), end='')
            x11 = x7 + x6
            print("pmufid: {} ".format(x3), end='')
            print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x6),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['W_0_0_0_0__dup0_W'] = W_0_0_0_0__dup0_W
ctxs.append('R_0_0_0_0__dup0_R')
def R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = True
    x1 = 256
    x2 = 2048
    x3 = 0
    x4 = 32
    x5 = 4352
    x6 = 1024
    x7 = 2
    x8 = 65536
    for x9 in range(x3,x8,x1):
        for x10 in range(x3,x5,x4):
            x11 = True
            x14 = x10 // x6
            x15 = x10 * x7
            x16 = x15 % x2
            x17 = x10 % x6
            x18 = x14 * x8
            x19 = x18 + x9
            x20 = x17 * x7
            x21 = x19 + x20
            print("pmufid: {} ".format(x3), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x16),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['R_0_0_0_0__dup0_R'] = R_0_0_0_0__dup0_R

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

