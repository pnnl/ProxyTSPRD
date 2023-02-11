import argparse
import numpy as np
parser = argparse.ArgumentParser(description='Physical Address Simulation.')
parser.add_argument('--ctx', type=str, help='Specify context to print')
parser.add_argument('--list', action='store_true', default=False, help='List available contexts')
parser.add_argument('-f', '--format', default='dec/hex', help='Address format. Options: [dec, hex, dec/hex]')
opts, args = parser.parse_known_args()
ctxs = []
def qaddr(addr):
    if opts.format == 'dec/hex':
        return str(addr) + '/' + hex(addr)
    elif opts.format == 'dec':
        return str(addr)
    elif opts.format == 'hex':
        return hex(addr)
    else:
        assert False, 'Unsupported format! ' + opts.format
ctxs.append('phase_w0_0_dup0_W')
if opts.ctx == 'phase_w0_0_dup0_W':
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 768
    x4 = 0
    for x5 in range(x4,x1,x0):
        x6 = True
        print("trim_pred: {} ".format(x2), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x4),x2,x2,True,))
        pass
ctxs.append('phase1_R_max_0_0_dup0_R')
if opts.ctx == 'phase1_R_max_0_0_dup0_R':
    x0 = 32
    x1 = 1
    x2 = 12
    x3 = True
    x4 = 768
    x5 = 0
    for x7 in range(x5,x1,x0):
        for x6 in range(x5,x2,x1):
            x8 = True
            print("pmufid: {} ".format(x5), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x5),x3,x3,True,))
            pass
ctxs.append('phase_rd_dummy_0_dup0_R')
if opts.ctx == 'phase_rd_dummy_0_dup0_R':
    x0 = 1
    x1 = False
    x2 = True
    x3 = 0
    for x4 in range(x3,x0,x0):
        x5 = True
        print("pmufid: {} ".format(x3), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x3),x1,x2,True,))
        pass
ctxs.append('phase_w1_0_0_dup0_W')
if opts.ctx == 'phase_w1_0_0_dup0_W':
    x0 = 768
    x1 = 1
    x2 = True
    x3 = 32
    x4 = 0
    x5 = 64
    for x7 in range(x4,x1,x3):
        for x6 in range(x4,x0,x5):
            x8 = True
            print("trim_pred: {} ".format(x2), end='')
            print("pmufid: {} ".format(x4), end='')
            print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),x2,x2,True,))
            pass
ctxs.append('phase2_R_exp_0_0_dup0_R')
if opts.ctx == 'phase2_R_exp_0_0_dup0_R':
    x0 = 640
    x1 = 1
    x2 = True
    x3 = 32
    x4 = 0
    x5 = 64
    for x6 in range(x4,x1,x3):
        for x7 in range(x4,x0,x5):
            x8 = True
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),x2,x2,True,))
            pass
ctxs.append('phase_w2_0_dup0_W')
if opts.ctx == 'phase_w2_0_dup0_W':
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 832
    x4 = 0
    for x5 in range(x4,x1,x0):
        x6 = True
        print("trim_pred: {} ".format(x2), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x4),x2,x2,True,))
        pass
ctxs.append('phase3_R_max_0_dup0_R')
if opts.ctx == 'phase3_R_max_0_dup0_R':
    x0 = 1
    x1 = True
    x2 = 768
    x3 = 0
    for x4 in range(x3,x0,x0):
        x5 = True
        print("pmufid: {} ".format(x3), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x3),x1,x1,True,))
        pass
ctxs.append('phase3_R_logsum_0_dup0_R')
if opts.ctx == 'phase3_R_logsum_0_dup0_R':
    x0 = 1
    x1 = True
    x2 = 832
    x3 = 0
    for x4 in range(x3,x0,x0):
        x5 = True
        print("pmufid: {} ".format(x3), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x3),x1,x1,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
