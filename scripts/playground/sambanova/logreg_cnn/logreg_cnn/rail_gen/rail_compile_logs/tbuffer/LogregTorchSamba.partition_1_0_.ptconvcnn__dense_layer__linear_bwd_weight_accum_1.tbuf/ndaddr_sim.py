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
    x0 = 32
    x1 = 4096
    x2 = 1
    x3 = True
    x4 = 0
    ndaddrs = []
    for x5 in range(x4,x2,x2):
        for x6 in range(x4,x1,x0):
            for x7 in range(x4,x2,x2):
                x8 = True
                x10 = x6 >= x4
                x11 = x6 < x1
                x12 = x10 & x11
                ndaddr = [x6, x7, ]
                en_drop = True
                en_zero = x3
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x15 = True
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 32
    x1 = 4096
    x2 = 1
    x3 = True
    x4 = 0
    ndaddrs = []
    for x5 in range(x4,x1,x0):
        for x8 in range(x4,x2,x2):
            x6 = True
            ndaddr = [x5, x8, ]
            en_drop = x3
            en_zero = x3
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
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

