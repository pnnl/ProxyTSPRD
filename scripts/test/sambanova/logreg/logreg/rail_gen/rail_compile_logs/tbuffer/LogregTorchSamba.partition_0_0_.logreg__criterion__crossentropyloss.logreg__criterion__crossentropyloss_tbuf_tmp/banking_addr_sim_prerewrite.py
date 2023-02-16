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
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x19 in range(x8,x9,x17):
        x20 = True
        print("trim_pred: {} ".format(x5), end='')
        print("pmuid: [" + str(x13) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x13),qaddr(x13),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phase_w0'] = phase_w0
ctxs.append('phase1_R_max')
def phase1_R_max():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x20 in range(x8,x9,x17):
        for x19 in range(x13,x2,x3):
            x21 = True
            print("pmuid: [" + str(x13) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x13),qaddr(x13),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phase1_R_max'] = phase1_R_max
ctxs.append('phase_rd_dummy')
def phase_rd_dummy():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x20 in range(x13,x4,x14):
        for x19 in range(x13,x1,x3):
            x21 = True
            print("pmuid: [" + str(x13) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x13),qaddr(x13),x5,x0,True,))
    return ndaddrs

ndaddr_funcs['phase_rd_dummy'] = phase_rd_dummy
ctxs.append('phase_w1')
def phase_w1():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x20 in range(x13,x12,x11):
        for x19 in range(x13,x10,x14):
            x21 = True
            print("trim_pred: {} ".format(x5), end='')
            x24 = x20 + x19
            x25 = x24 * x7
            print("pmuid: [" + str(x13) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x13),qaddr(x13),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phase_w1'] = phase_w1
ctxs.append('phase2_R_exp')
def phase2_R_exp():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x19 in range(x13,x12,x11):
        for x20 in range(x13,x15,x14):
            x21 = True
            x24 = x19 + x20
            x25 = x24 * x7
            print("pmuid: [" + str(x13) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x13),qaddr(x13),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phase2_R_exp'] = phase2_R_exp
ctxs.append('phase_w2')
def phase_w2():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x19 in range(x16,x18,x17):
        x20 = True
        print("trim_pred: {} ".format(x5), end='')
        print("pmuid: [" + str(x13) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x13),qaddr(x13),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phase_w2'] = phase_w2
ctxs.append('phase3_R_max')
def phase3_R_max():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x19 in range(x13,x4,x3):
        x20 = True
        x23 = x19 // x14
        x24 = x23 * x11
        x25 = x19 % x14
        x26 = x24 + x25
        x27 = x26 + x10
        x28 = x27 * x7
        print("pmuid: [" + str(x13) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x28),qaddr(x28//2),qaddr(x28//64),qaddr(x13),qaddr(x13),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phase3_R_max'] = phase3_R_max
ctxs.append('phase3_R_logsum')
def phase3_R_logsum():
    x0 = False
    x1 = 10
    x2 = 12
    x3 = 1
    x4 = 500
    x5 = True
    x6 = 416
    x7 = 2
    x8 = 768
    x9 = 33536
    x10 = 384
    x11 = 1024
    x12 = 16384
    x13 = 0
    x14 = 32
    x15 = 320
    x16 = 832
    x17 = 2048
    x18 = 33600
    ndaddrs = []
    for x19 in range(x13,x4,x3):
        x20 = True
        x23 = x19 // x14
        x24 = x23 * x11
        x25 = x19 % x14
        x26 = x24 + x25
        x27 = x26 + x6
        x28 = x27 * x7
        print("pmuid: [" + str(x13) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x28),qaddr(x28//2),qaddr(x28//64),qaddr(x13),qaddr(x13),x5,x5,True,))
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

