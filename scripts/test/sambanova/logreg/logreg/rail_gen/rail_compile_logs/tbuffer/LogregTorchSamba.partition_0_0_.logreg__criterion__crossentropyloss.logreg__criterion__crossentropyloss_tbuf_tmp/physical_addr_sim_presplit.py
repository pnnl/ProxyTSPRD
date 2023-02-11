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

ctxs.append('D_0_0_phase_w0')
def D_0_0_phase_w0():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x6,x4):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x8),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w0'] = D_0_0_phase_w0
ctxs.append('D_0_0_phase1_R_max')
def D_0_0_phase1_R_max():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x0,x6):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x8),qaddr(x8),bin(x10)[2::],x10 % 2 >> 0 ,x10 % 4 >> 1 ,x10 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase1_R_max'] = D_0_0_phase1_R_max
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x1,x6):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x8),qaddr(x8),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phase_w1')
def D_0_0_phase_w1():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x5,x2):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x8),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w1'] = D_0_0_phase_w1
ctxs.append('D_0_0_phase2_R_exp')
def D_0_0_phase2_R_exp():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x8),qaddr(x8),bin(x10)[2::],x10 % 2 >> 0 ,x10 % 4 >> 1 ,x10 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase2_R_exp'] = D_0_0_phase2_R_exp
ctxs.append('D_0_0_phase_w2')
def D_0_0_phase_w2():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x6,x4):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x8),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w2'] = D_0_0_phase_w2
ctxs.append('D_0_0_phase3_R_max')
def D_0_0_phase3_R_max():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x6,x6):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x8),qaddr(x8),bin(x10)[2::],x10 % 2 >> 0 ,x10 % 4 >> 1 ,x10 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase3_R_max'] = D_0_0_phase3_R_max
ctxs.append('D_0_0_phase3_R_logsum')
def D_0_0_phase3_R_logsum():
    x0 = 12
    x1 = 10
    x2 = 64
    x3 = 640
    x4 = 32
    x5 = 768
    x6 = 1
    x7 = 832
    x8 = 0
    x9 = 2
    x10 = 0
    ndaddrs = []
    for x11 in range(x8,x6,x6):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x8),qaddr(x8),bin(x10)[2::],x10 % 2 >> 0 ,x10 % 4 >> 1 ,x10 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase3_R_logsum'] = D_0_0_phase3_R_logsum

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

