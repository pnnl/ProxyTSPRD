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

ctxs.append('phase_w0')
def phase_w0():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x9 in range(x8,x5,x2):
        x10 = True
        ndaddr = [x3, x9, ]
        en_drop = True
        en_zero = x7
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
        x13 = True
    return ndaddrs

ndaddr_funcs['phase_w0'] = phase_w0
ctxs.append('phase1_R_max')
def phase1_R_max():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x10 in range(x8,x5,x2):
        for x9 in range(x8,x3,x4):
            x11 = True
            ndaddr = [x3, x10, ]
            en_drop = x7
            en_zero = x7
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x14 = True
    return ndaddrs

ndaddr_funcs['phase1_R_max'] = phase1_R_max
ctxs.append('phase_rd_dummy')
def phase_rd_dummy():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x10 in range(x8,x5,x2):
        for x9 in range(x8,x1,x4):
            x11 = True
            ndaddr = [x8, x8, ]
            en_drop = x0
            en_zero = x7
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['phase_rd_dummy'] = phase_rd_dummy
ctxs.append('phase_w1')
def phase_w1():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x10 in range(x8,x5,x2):
        for x9 in range(x8,x3,x4):
            x11 = True
            ndaddr = [x9, x10, ]
            en_drop = True
            en_zero = x7
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['phase_w1'] = phase_w1
ctxs.append('phase2_R_exp')
def phase2_R_exp():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x9 in range(x8,x5,x2):
        for x12 in range(x8,x1,x4):
            x10 = True
            ndaddr = [x12, x9, ]
            en_drop = x7
            en_zero = x7
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x14 = True
    return ndaddrs

ndaddr_funcs['phase2_R_exp'] = phase2_R_exp
ctxs.append('phase_w2')
def phase_w2():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x9 in range(x8,x5,x2):
        x10 = True
        ndaddr = [x6, x9, ]
        en_drop = True
        en_zero = x7
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['phase_w2'] = phase_w2
ctxs.append('phase3_R_max')
def phase3_R_max():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x9 in range(x8,x5,x4):
        x10 = True
        ndaddr = [x3, x9, ]
        en_drop = x7
        en_zero = x7
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
        x13 = True
    return ndaddrs

ndaddr_funcs['phase3_R_max'] = phase3_R_max
ctxs.append('phase3_R_logsum')
def phase3_R_logsum():
    x0 = False
    x1 = 10
    x2 = 32
    x3 = 12
    x4 = 1
    x5 = 500
    x6 = 13
    x7 = True
    x8 = 0
    ndaddrs = []
    for x9 in range(x8,x5,x4):
        x10 = True
        ndaddr = [x6, x9, ]
        en_drop = x7
        en_zero = x7
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
        x13 = True
    return ndaddrs

ndaddr_funcs['phase3_R_logsum'] = phase3_R_logsum

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

