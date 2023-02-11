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
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x12,x0,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x12
                x19 = x14 < x0
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('w_loop_1_0')
def w_loop_1_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x0,x1,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x0
                x19 = x14 < x1
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_1_0'] = w_loop_1_0
ctxs.append('w_loop_2_0')
def w_loop_2_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x1,x2,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x1
                x19 = x14 < x2
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_2_0'] = w_loop_2_0
ctxs.append('w_loop_3_0')
def w_loop_3_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x2,x3,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x2
                x19 = x14 < x3
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_3_0'] = w_loop_3_0
ctxs.append('w_loop_4_0')
def w_loop_4_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x3,x4,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x3
                x19 = x14 < x4
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_4_0'] = w_loop_4_0
ctxs.append('w_loop_5_0')
def w_loop_5_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x4,x5,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x4
                x19 = x14 < x5
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_5_0'] = w_loop_5_0
ctxs.append('w_loop_6_0')
def w_loop_6_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x5,x6,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x5
                x19 = x14 < x6
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_6_0'] = w_loop_6_0
ctxs.append('w_loop_7_0')
def w_loop_7_0():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x9,x9):
        for x14 in range(x6,x8,x7):
            for x15 in range(x12,x10,x9):
                x16 = True
                x18 = x14 >= x6
                x19 = x14 < x8
                x20 = x18 & x19
                ndaddr = [x14, x15, ]
                en_drop = True
                en_zero = x11
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x23 = True
    return ndaddrs

ndaddr_funcs['w_loop_7_0'] = w_loop_7_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 512
    x1 = 1024
    x2 = 1536
    x3 = 2048
    x4 = 2560
    x5 = 3072
    x6 = 3584
    x7 = 32
    x8 = 4080
    x9 = 1
    x10 = 64
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x8,x7):
        for x16 in range(x12,x10,x9):
            x14 = True
            ndaddr = [x13, x16, ]
            en_drop = x11
            en_zero = x11
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

