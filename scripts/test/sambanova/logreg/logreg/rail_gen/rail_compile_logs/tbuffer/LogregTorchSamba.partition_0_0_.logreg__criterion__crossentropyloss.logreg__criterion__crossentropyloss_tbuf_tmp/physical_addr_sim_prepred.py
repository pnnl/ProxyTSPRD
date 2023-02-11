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
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x7,x5):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w0'] = D_0_0_phase_w0
ctxs.append('D_0_0_phase1_R_max')
def D_0_0_phase1_R_max():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x0,x7):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase1_R_max'] = D_0_0_phase1_R_max
ctxs.append('D_0_0_phase_rd_dummy')
def D_0_0_phase_rd_dummy():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x1,x7):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x10),qaddr(x10),x9,x2,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_rd_dummy'] = D_0_0_phase_rd_dummy
ctxs.append('D_0_0_phase_w1')
def D_0_0_phase_w1():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x6,x3):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w1'] = D_0_0_phase_w1
ctxs.append('D_0_0_phase2_R_exp')
def D_0_0_phase2_R_exp():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x4,x3):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase2_R_exp'] = D_0_0_phase2_R_exp
ctxs.append('D_0_0_phase_w2')
def D_0_0_phase_w2():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x7,x5):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase_w2'] = D_0_0_phase_w2
ctxs.append('D_0_0_phase3_R_max')
def D_0_0_phase3_R_max():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x7,x7):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_phase3_R_max'] = D_0_0_phase3_R_max
ctxs.append('D_0_0_phase3_R_logsum')
def D_0_0_phase3_R_logsum():
    x0 = 12
    x1 = 10
    x2 = False
    x3 = 64
    x4 = 640
    x5 = 32
    x6 = 768
    x7 = 1
    x8 = 832
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x7,x7):
        x12 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x10),qaddr(x10),x9,x9,True,))
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

