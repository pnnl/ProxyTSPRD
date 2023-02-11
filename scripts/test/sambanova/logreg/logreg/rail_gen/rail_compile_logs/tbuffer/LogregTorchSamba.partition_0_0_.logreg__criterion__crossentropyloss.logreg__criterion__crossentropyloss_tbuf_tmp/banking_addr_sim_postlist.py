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
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x4,x5):
        x12 = True
        print("trim_pred: {} ".format(x7), end='')
        print("pmufid: {} ".format(x9), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x9),qaddr(x9),x7,x7,True,))
    return ndaddrs

ndaddr_funcs['phase_w0'] = phase_w0
ctxs.append('phase1_R_max')
def phase1_R_max():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x3,x4):
        x12 = True
        print("pmufid: {} ".format(x9), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x9),qaddr(x9),x7,x7,True,))
    return ndaddrs

ndaddr_funcs['phase1_R_max'] = phase1_R_max
ctxs.append('phase_rd_dummy')
def phase_rd_dummy():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x2,x4):
        x12 = True
        print("pmufid: {} ".format(x9), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x9),qaddr(x9),x7,x1,True,))
    return ndaddrs

ndaddr_funcs['phase_rd_dummy'] = phase_rd_dummy
ctxs.append('phase_w1')
def phase_w1():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x6,x10):
        x12 = True
        print("trim_pred: {} ".format(x7), end='')
        print("pmufid: {} ".format(x9), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x9),qaddr(x9),x7,x7,True,))
    return ndaddrs

ndaddr_funcs['phase_w1'] = phase_w1
ctxs.append('phase2_R_exp')
def phase2_R_exp():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x0,x10):
        x12 = True
        print("pmufid: {} ".format(x9), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x9),qaddr(x9),x7,x7,True,))
    return ndaddrs

ndaddr_funcs['phase2_R_exp'] = phase2_R_exp
ctxs.append('phase_w2')
def phase_w2():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x4,x5):
        x12 = True
        print("trim_pred: {} ".format(x7), end='')
        print("pmufid: {} ".format(x9), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x9),qaddr(x9),x7,x7,True,))
    return ndaddrs

ndaddr_funcs['phase_w2'] = phase_w2
ctxs.append('phase3_R_max')
def phase3_R_max():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x4,x4):
        x12 = True
        print("pmufid: {} ".format(x9), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x9),qaddr(x9),x7,x7,True,))
    return ndaddrs

ndaddr_funcs['phase3_R_max'] = phase3_R_max
ctxs.append('phase3_R_logsum')
def phase3_R_logsum():
    x0 = 640
    x1 = False
    x2 = 10
    x3 = 12
    x4 = 1
    x5 = 32
    x6 = 768
    x7 = True
    x8 = 832
    x9 = 0
    x10 = 64
    ndaddrs = []
    for x11 in range(x9,x4,x4):
        x12 = True
        print("pmufid: {} ".format(x9), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x9),qaddr(x9),x7,x7,True,))
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

