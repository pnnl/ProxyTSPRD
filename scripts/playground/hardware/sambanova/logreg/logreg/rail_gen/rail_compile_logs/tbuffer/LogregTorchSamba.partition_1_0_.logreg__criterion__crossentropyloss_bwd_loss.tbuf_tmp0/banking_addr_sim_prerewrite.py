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
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x15 in range(x4,x5,x8):
        x16 = True
        print("trim_pred: {} ".format(x6), end='')
        print("pmuid: [" + str(x12) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x15),qaddr(x15//2),qaddr(x15//64),qaddr(x12),qaddr(x12),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['phaseW0'] = phaseW0
ctxs.append('phaseRMax')
def phaseRMax():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x16 in range(x4,x5,x8):
        for x15 in range(x12,x3,x1):
            x17 = True
            print("pmuid: [" + str(x12) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x12),qaddr(x12),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['phaseRMax'] = phaseRMax
ctxs.append('phase_rd_dummy')
def phase_rd_dummy():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x16 in range(x12,x2,x13):
        for x15 in range(x12,x3,x1):
            x17 = True
            print("pmuid: [" + str(x12) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x12),qaddr(x12),x6,x0,True,))
    return ndaddrs

ndaddr_funcs['phase_rd_dummy'] = phase_rd_dummy
ctxs.append('phaseW1')
def phaseW1():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x16 in range(x12,x14,x13):
        for x15 in range(x12,x11,x14):
            x17 = True
            print("trim_pred: {} ".format(x6), end='')
            x20 = x15 + x16
            x21 = x20 * x10
            print("pmuid: [" + str(x12) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x12),qaddr(x12),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['phaseW1'] = phaseW1
ctxs.append('phaseRExp0')
def phaseRExp0():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x15 in range(x12,x14,x13):
        for x16 in range(x12,x11,x14):
            x17 = True
            x20 = x16 + x15
            x21 = x20 * x10
            print("pmuid: [" + str(x12) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x12),qaddr(x12),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['phaseRExp0'] = phaseRExp0
ctxs.append('phaseW2')
def phaseW2():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x15 in range(x7,x9,x8):
        x16 = True
        print("trim_pred: {} ".format(x6), end='')
        print("pmuid: [" + str(x12) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x15),qaddr(x15//2),qaddr(x15//64),qaddr(x12),qaddr(x12),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['phaseW2'] = phaseW2
ctxs.append('phaseRExp1')
def phaseRExp1():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x15 in range(x12,x14,x13):
        for x16 in range(x12,x11,x14):
            x17 = True
            x20 = x16 + x15
            x21 = x20 * x10
            print("pmuid: [" + str(x12) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x12),qaddr(x12),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['phaseRExp1'] = phaseRExp1
ctxs.append('phaseRSumRecip')
def phaseRSumRecip():
    x0 = False
    x1 = 1
    x2 = 500
    x3 = 12
    x4 = 13312
    x5 = 14312
    x6 = True
    x7 = 12288
    x8 = 64
    x9 = 13288
    x10 = 2
    x11 = 6144
    x12 = 0
    x13 = 32
    x14 = 512
    ndaddrs = []
    for x16 in range(x7,x9,x8):
        for x15 in range(x12,x3,x1):
            x17 = True
            print("pmuid: [" + str(x12) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x12),qaddr(x12),x6,x6,True,))
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

