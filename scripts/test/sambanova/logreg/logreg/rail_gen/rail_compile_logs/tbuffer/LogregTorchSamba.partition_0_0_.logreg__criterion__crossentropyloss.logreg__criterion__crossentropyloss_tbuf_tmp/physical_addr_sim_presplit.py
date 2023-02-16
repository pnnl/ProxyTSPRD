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
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x18 in range(x13,x14,x7):
        x19 = x18 + x12
        x20 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x13),qaddr(x13),bin(x11)[2::],x11 % 2 >> 0 ,x11 % 4 >> 1 ,x11 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w0'] = D_0_0_phase_w0
ctxs.append('D_0_0_phase1_R_max')
def D_0_0_phase1_R_max():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x19 in range(x13,x14,x7):
        for x18 in range(x13,x1,x4):
            x20 = x19 + x12
            x21 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x13),qaddr(x13),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase1_R_max'] = D_0_0_phase1_R_max
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x18 in range(x13,x0,x4):
        x19 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x13),qaddr(x13),bin(x13)[2::],x13 % 2 >> 0 ,x13 % 4 >> 1 ,x13 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phase_w1')
def D_0_0_phase_w1():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x19 in range(x13,x14,x7):
        for x18 in range(x13,x12,x2):
            x20 = True
            x23 = x19 + x18
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x23),qaddr(x23//2),qaddr(x23//64),qaddr(x13),qaddr(x13),bin(x11)[2::],x11 % 2 >> 0 ,x11 % 4 >> 1 ,x11 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w1'] = D_0_0_phase_w1
ctxs.append('D_0_0_phase2_R_exp')
def D_0_0_phase2_R_exp():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x18 in range(x13,x14,x7):
        for x19 in range(x13,x3,x2):
            x20 = True
            x23 = x18 + x19
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x23),qaddr(x23//2),qaddr(x23//64),qaddr(x13),qaddr(x13),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase2_R_exp'] = D_0_0_phase2_R_exp
ctxs.append('D_0_0_phase_w2')
def D_0_0_phase_w2():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x18 in range(x13,x14,x7):
        x19 = x18 + x15
        x20 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x13),qaddr(x13),bin(x11)[2::],x11 % 2 >> 0 ,x11 % 4 >> 1 ,x11 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w2'] = D_0_0_phase_w2
ctxs.append('D_0_0_phase3_R_max')
def D_0_0_phase3_R_max():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x18 in range(x13,x5,x4):
        x19 = True
        x22 = x18 >> x16
        x23 = x18 & x17
        x24 = x22 * x9 + x23
        x25 = x24 + x8
        x26 = x25 * x11
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x26),qaddr(x26//2),qaddr(x26//64),qaddr(x13),qaddr(x13),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase3_R_max'] = D_0_0_phase3_R_max
ctxs.append('D_0_0_phase3_R_logsum')
def D_0_0_phase3_R_logsum():
    x0 = 160
    x1 = 12
    x2 = 64
    x3 = 640
    x4 = 1
    x5 = 500
    x6 = 0
    x7 = 2048
    x8 = 384
    x9 = 1024
    x10 = 416
    x11 = 2
    x12 = 768
    x13 = 0
    x14 = 32768
    x15 = 832
    x16 = 5
    x17 = 31
    ndaddrs = []
    for x18 in range(x13,x5,x4):
        x19 = True
        x22 = x18 >> x16
        x23 = x18 & x17
        x24 = x22 * x9 + x23
        x25 = x24 + x10
        x26 = x25 * x11
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x26),qaddr(x26//2),qaddr(x26//64),qaddr(x13),qaddr(x13),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
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

