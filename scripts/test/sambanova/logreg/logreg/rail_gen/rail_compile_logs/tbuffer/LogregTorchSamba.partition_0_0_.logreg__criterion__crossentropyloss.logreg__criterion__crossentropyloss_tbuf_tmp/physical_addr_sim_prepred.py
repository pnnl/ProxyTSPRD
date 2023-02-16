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
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x20 in range(x4,x1,x9):
        x21 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x19),qaddr(x19),x18,x18,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w0'] = D_0_0_phase_w0
ctxs.append('D_0_0_phase1_R_max')
def D_0_0_phase1_R_max():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x21 in range(x4,x1,x9):
        for x20 in range(x19,x0,x12):
            x22 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x19),qaddr(x19),x18,x18,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase1_R_max'] = D_0_0_phase1_R_max
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x21 in range(x19,x13,x14):
        for x20 in range(x19,x2,x12):
            x22 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x19),qaddr(x19),x18,x3,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phase_w1')
def D_0_0_phase_w1():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x21 in range(x19,x5,x9):
        for x20 in range(x19,x4,x6):
            x22 = True
            x25 = x21 + x20
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x19),qaddr(x19),x18,x18,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w1'] = D_0_0_phase_w1
ctxs.append('D_0_0_phase2_R_exp')
def D_0_0_phase2_R_exp():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x20 in range(x19,x5,x9):
        for x21 in range(x19,x7,x6):
            x22 = True
            x25 = x20 + x21
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x19),qaddr(x19),x18,x18,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase2_R_exp'] = D_0_0_phase2_R_exp
ctxs.append('D_0_0_phase_w2')
def D_0_0_phase_w2():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x20 in range(x8,x10,x9):
        x21 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x19),qaddr(x19),x18,x18,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w2'] = D_0_0_phase_w2
ctxs.append('D_0_0_phase3_R_max')
def D_0_0_phase3_R_max():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x20 in range(x19,x13,x12):
        x21 = True
        x24 = x20 // x14
        x25 = x20 % x14
        x26 = x24 * x15
        x27 = x26 + x25
        x28 = x27 + x11
        x29 = x28 * x17
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x29),qaddr(x29//2),qaddr(x29//64),qaddr(x19),qaddr(x19),x18,x18,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase3_R_max'] = D_0_0_phase3_R_max
ctxs.append('D_0_0_phase3_R_logsum')
def D_0_0_phase3_R_logsum():
    x0 = 12
    x1 = 33536
    x2 = 10
    x3 = False
    x4 = 768
    x5 = 32768
    x6 = 64
    x7 = 640
    x8 = 832
    x9 = 2048
    x10 = 33600
    x11 = 384
    x12 = 1
    x13 = 500
    x14 = 32
    x15 = 1024
    x16 = 416
    x17 = 2
    x18 = True
    x19 = 0
    ndaddrs = []
    for x20 in range(x19,x13,x12):
        x21 = True
        x24 = x20 // x14
        x25 = x20 % x14
        x26 = x24 * x15
        x27 = x26 + x25
        x28 = x27 + x16
        x29 = x28 * x17
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x29),qaddr(x29//2),qaddr(x29//64),qaddr(x19),qaddr(x19),x18,x18,True,))
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

