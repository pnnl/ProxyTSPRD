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
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x11 in range(x8,x9,x4):
        x12 = x11 + x7
        x13 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x8),qaddr(x8),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW0'] = D_0_0_phaseW0
ctxs.append('D_0_0_phaseRMax')
def D_0_0_phaseRMax():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x12 in range(x8,x9,x4):
        for x11 in range(x8,x3,x2):
            x13 = x12 + x7
            x14 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x8),qaddr(x8),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRMax'] = D_0_0_phaseRMax
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x11 in range(x8,x0,x2):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x8),qaddr(x8),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phaseW1')
def D_0_0_phaseW1():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x12 in range(x8,x1,x4):
        for x11 in range(x8,x10,x1):
            x13 = True
            x16 = x11 + x12
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),qaddr(x8),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW1'] = D_0_0_phaseW1
ctxs.append('D_0_0_phaseRExp0')
def D_0_0_phaseRExp0():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x11 in range(x8,x1,x4):
        for x12 in range(x8,x10,x1):
            x13 = True
            x16 = x12 + x11
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),qaddr(x8),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRExp0'] = D_0_0_phaseRExp0
ctxs.append('D_0_0_phaseW2')
def D_0_0_phaseW2():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x11 in range(x8,x9,x4):
        x12 = x11 + x10
        x13 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x8),qaddr(x8),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW2'] = D_0_0_phaseW2
ctxs.append('D_0_0_phaseRExp1')
def D_0_0_phaseRExp1():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x11 in range(x8,x1,x4):
        for x12 in range(x8,x10,x1):
            x13 = True
            x16 = x12 + x11
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),qaddr(x8),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRExp1'] = D_0_0_phaseRExp1
ctxs.append('D_0_0_phaseRSumRecip')
def D_0_0_phaseRSumRecip():
    x0 = 192
    x1 = 1024
    x2 = 1
    x3 = 12
    x4 = 64
    x5 = 2
    x6 = 0
    x7 = 13312
    x8 = 0
    x9 = 1000
    x10 = 12288
    ndaddrs = []
    for x12 in range(x8,x9,x4):
        for x11 in range(x8,x3,x2):
            x13 = x12 + x10
            x14 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x8),qaddr(x8),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
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

