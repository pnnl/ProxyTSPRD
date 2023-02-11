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
    x0 = 3
    x1 = 1
    x2 = 136
    x3 = 32
    x4 = 256
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x4,x1):
        for x8 in range(x6,x0,x1):
            for x9 in range(x6,x1,x1):
                for x10 in range(x6,x2,x3):
                    x11 = True
                    ndaddr = [x7, x8, x9, x10, ]
                    en_drop = True
                    en_zero = x5
                    ND = NDAddr(ndaddr, en_zero and en_drop)
                    ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['W'] = W
ctxs.append('R')
def R():
    x0 = 3
    x1 = 1
    x2 = 136
    x3 = 32
    x4 = 256
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x0,x1):
        for x9 in range(x6,x1,x1):
            for x15 in range(x6,x4,x3):
                for x12 in range(x6,x2,x1):
                    x8 = x7 < x0
                    x10 = x9 < x1
                    x11 = x8 & x10
                    x13 = x12 < x2
                    x14 = x11 & x13
                    x16 = x15 < x4
                    x17 = x14 & x16
                    x18 = True
                    ndaddr = [x15, x7, x9, x12, ]
                    en_drop = x17
                    en_zero = x5
                    ND = NDAddr(ndaddr, en_zero and en_drop)
                    ndaddrs.append(ND)
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

