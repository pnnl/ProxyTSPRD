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
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x3,x1):
        x10 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x0),qaddr(x0//2),qaddr(x0//64),qaddr(x6),qaddr(x6),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW0'] = D_0_0_phaseW0
ctxs.append('D_0_0_phaseRMax')
def D_0_0_phaseRMax():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x4,x3):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x0),qaddr(x0//2),qaddr(x0//64),qaddr(x6),qaddr(x6),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRMax'] = D_0_0_phaseRMax
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x4,x3):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x6),qaddr(x6),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phaseW1')
def D_0_0_phaseW1():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x5,x2):
        x10 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW1'] = D_0_0_phaseW1
ctxs.append('D_0_0_phaseRExp0')
def D_0_0_phaseRExp0():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x5,x2):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRExp0'] = D_0_0_phaseRExp0
ctxs.append('D_0_0_phaseW2')
def D_0_0_phaseW2():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x3,x1):
        x10 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x6),qaddr(x6),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseW2'] = D_0_0_phaseW2
ctxs.append('D_0_0_phaseRExp1')
def D_0_0_phaseRExp1():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x5,x2):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phaseRExp1'] = D_0_0_phaseRExp1
ctxs.append('D_0_0_phaseRSumRecip')
def D_0_0_phaseRSumRecip():
    x0 = 832
    x1 = 32
    x2 = 64
    x3 = 1
    x4 = 12
    x5 = 768
    x6 = 0
    x7 = 2
    x8 = 0
    ndaddrs = []
    for x9 in range(x6,x4,x3):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x6),qaddr(x6),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
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

