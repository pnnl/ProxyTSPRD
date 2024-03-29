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

ctxs.append('phaseW0')
def phaseW0():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x4,x3):
        x9 = True
        ndaddr = [x0, x8, ]
        en_drop = True
        en_zero = x6
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
        x12 = True
    return ndaddrs

ndaddr_funcs['phaseW0'] = phaseW0
ctxs.append('phaseRMax')
def phaseRMax():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x9 in range(x7,x4,x3):
        for x8 in range(x7,x5,x2):
            x10 = True
            ndaddr = [x0, x9, ]
            en_drop = x6
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x13 = True
            x15 = True
    return ndaddrs

ndaddr_funcs['phaseRMax'] = phaseRMax
ctxs.append('phase_rd_dummy')
def phase_rd_dummy():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x9 in range(x7,x4,x3):
        for x8 in range(x7,x5,x2):
            x10 = True
            ndaddr = [x7, x7, ]
            en_drop = x1
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['phase_rd_dummy'] = phase_rd_dummy
ctxs.append('phaseW1')
def phaseW1():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x9 in range(x7,x4,x3):
        for x8 in range(x7,x5,x2):
            x10 = True
            ndaddr = [x8, x9, ]
            en_drop = True
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x13 = True
    return ndaddrs

ndaddr_funcs['phaseW1'] = phaseW1
ctxs.append('phaseRExp0')
def phaseRExp0():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x4,x3):
        for x9 in range(x7,x5,x2):
            x10 = True
            ndaddr = [x9, x8, ]
            en_drop = x6
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x13 = True
            x15 = True
    return ndaddrs

ndaddr_funcs['phaseRExp0'] = phaseRExp0
ctxs.append('phaseW2')
def phaseW2():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x4,x3):
        x9 = True
        ndaddr = [x5, x8, ]
        en_drop = True
        en_zero = x6
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
        x12 = True
    return ndaddrs

ndaddr_funcs['phaseW2'] = phaseW2
ctxs.append('phaseRExp1')
def phaseRExp1():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x4,x3):
        for x9 in range(x7,x5,x2):
            x10 = True
            ndaddr = [x9, x8, ]
            en_drop = x6
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x13 = True
    return ndaddrs

ndaddr_funcs['phaseRExp1'] = phaseRExp1
ctxs.append('phaseRSumRecip')
def phaseRSumRecip():
    x0 = 13
    x1 = False
    x2 = 1
    x3 = 32
    x4 = 500
    x5 = 12
    x6 = True
    x7 = 0
    ndaddrs = []
    for x9 in range(x7,x4,x3):
        for x8 in range(x7,x5,x2):
            x10 = True
            ndaddr = [x5, x9, ]
            en_drop = x6
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x13 = True
    return ndaddrs

ndaddr_funcs['phaseRSumRecip'] = phaseRSumRecip

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

