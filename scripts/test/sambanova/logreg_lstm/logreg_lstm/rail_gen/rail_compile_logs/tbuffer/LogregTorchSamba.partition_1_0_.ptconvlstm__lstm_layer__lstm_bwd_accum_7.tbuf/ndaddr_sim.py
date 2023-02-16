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

ctxs.append('w_loop_0_0')
def w_loop_0_0():
    x0 = 100
    x1 = 99
    x2 = 32
    x3 = 8704
    x4 = 1
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x0,x4):
        for x8 in range(x6,x3,x2):
            for x9 in range(x6,x4,x4):
                x10 = True
                x12 = x8 >= x6
                x13 = x8 < x3
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
                x19 = True
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('r_loop_0_0')
def r_loop_0_0():
    x0 = 100
    x1 = 99
    x2 = 32
    x3 = 8704
    x4 = 1
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x1,x4):
        for x8 in range(x6,x3,x2):
            for x9 in range(x6,x4,x4):
                x10 = x8 >= x6
                x11 = x8 < x3
                x12 = x10 & x11
                ndaddr = [x8, x9, ]
                en_drop = x5
                en_zero = x12
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x14 = True
                x18 = True
                x19 = x18 | x17
                x21 = True
    return ndaddrs

ndaddr_funcs['r_loop_0_0'] = r_loop_0_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 100
    x1 = 99
    x2 = 32
    x3 = 8704
    x4 = 1
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x3,x2):
        for x10 in range(x6,x4,x4):
            x8 = True
            ndaddr = [x7, x10, ]
            en_drop = x5
            en_zero = x5
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x12 = True
            x15 = True
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx

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

