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

ctxs.append('D_0_0_phaseW0')
def D_0_0_phaseW0():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x0,x1,x9):
        x14 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW0'] = D_0_0_phaseW0
ctxs.append('D_0_0_phaseRMax')
def D_0_0_phaseRMax():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x14 in range(x0,x1,x9):
        for x13 in range(x12,x7,x6):
            x15 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x14),qaddr(x14//2),qaddr(x14//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRMax'] = D_0_0_phaseRMax
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x14 in range(x12,x3,x2):
        for x13 in range(x12,x7,x6):
            x15 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x12),qaddr(x12),x11,x4,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phaseW1')
def D_0_0_phaseW1():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x14 in range(x12,x5,x9):
        for x13 in range(x12,x8,x5):
            x15 = True
            x18 = x13 + x14
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW1'] = D_0_0_phaseW1
ctxs.append('D_0_0_phaseRExp0')
def D_0_0_phaseRExp0():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x5,x9):
        for x14 in range(x12,x8,x5):
            x15 = True
            x18 = x14 + x13
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRExp0'] = D_0_0_phaseRExp0
ctxs.append('D_0_0_phaseW2')
def D_0_0_phaseW2():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x8,x10,x9):
        x14 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW2'] = D_0_0_phaseW2
ctxs.append('D_0_0_phaseRExp1')
def D_0_0_phaseRExp1():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x13 in range(x12,x5,x9):
        for x14 in range(x12,x8,x5):
            x15 = True
            x18 = x14 + x13
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRExp1'] = D_0_0_phaseRExp1
ctxs.append('D_0_0_phaseRSumRecip')
def D_0_0_phaseRSumRecip():
    x0 = 13312
    x1 = 14312
    x2 = 32
    x3 = 500
    x4 = False
    x5 = 1024
    x6 = 1
    x7 = 12
    x8 = 12288
    x9 = 64
    x10 = 13288
    x11 = True
    x12 = 0
    ndaddrs = []
    for x14 in range(x8,x10,x9):
        for x13 in range(x12,x7,x6):
            x15 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x14),qaddr(x14//2),qaddr(x14//64),qaddr(x12),qaddr(x12),x11,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRSumRecip'] = D_0_0_phaseRSumRecip

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

