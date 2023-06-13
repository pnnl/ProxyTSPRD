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

ctxs.append('W')
def W():
    x0 = True
    x1 = 327680
    x2 = 256
    x3 = 2048
    x4 = 64
    x5 = 192
    x6 = 0
    x7 = 32
    x8 = 4352
    x9 = 1024
    x10 = 2
    x11 = 65536
    ndaddrs = []
    for x12 in range(x6,x5,x4):
        for x13 in range(x6,x1,x2):
            x14 = True
            print("trim_pred: {} ".format(x0), end='')
            x17 = x13 + x12
            print("pmufid: {} ".format(x6), end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x12),qaddr(x6),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['W'] = W
ctxs.append('R')
def R():
    x0 = True
    x1 = 327680
    x2 = 256
    x3 = 2048
    x4 = 64
    x5 = 192
    x6 = 0
    x7 = 32
    x8 = 4352
    x9 = 1024
    x10 = 2
    x11 = 65536
    ndaddrs = []
    for x12 in range(x6,x11,x2):
        for x13 in range(x6,x8,x7):
            x14 = True
            x17 = x13 // x9
            x18 = x13 * x10
            x19 = x18 % x3
            x20 = x13 % x9
            x21 = x17 * x11
            x22 = x21 + x12
            x23 = x20 * x10
            x24 = x22 + x23
            print("pmufid: {} ".format(x6), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x24),qaddr(x24//2),qaddr(x24//64),qaddr(x19),qaddr(x6),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['R'] = R

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

