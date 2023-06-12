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
ctxs.append('D_0_0.phaseW0_0_dup0_W')
if opts.ctx == 'D_0_0.phaseW0_0_dup0_W':
    x0 = 32
    x1 = 1
    x2 = 832
    x3 = 0
    x4 = 2
    for x5 in range(x3,x1,x0):
        print("wt byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x3),x4,True,))
        pass
ctxs.append('D_0_0.phaseRMax_0_0_dup0_R')
if opts.ctx == 'D_0_0.phaseRMax_0_0_dup0_R':
    x0 = 1
    x1 = 12
    x2 = 832
    x3 = 0
    for x4 in range(x3,x1,x0):
        print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x3),x3,True,))
        pass
ctxs.append('D_0_0.phase_rd_dummy_0_dup0_R')
if opts.ctx == 'D_0_0.phase_rd_dummy_0_dup0_R':
    x0 = 0
    x1 = 1
    for x2 in range(x0,x1,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x0),qaddr(x0//2),qaddr(x0//64),qaddr(x0),x1,True,))
        pass
ctxs.append('D_0_0.phaseW1_0_0_dup0_W')
if opts.ctx == 'D_0_0.phaseW1_0_0_dup0_W':
    x0 = 768
    x1 = 1
    x2 = 32
    x3 = 0
    x4 = 64
    x5 = 2
    for x7 in range(x3,x1,x2):
        for x6 in range(x3,x0,x4):
            print("wt byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x3),x5,True,))
            pass
ctxs.append('D_0_0.phaseRExp0_0_0_dup0_R')
if opts.ctx == 'D_0_0.phaseRExp0_0_0_dup0_R':
    x0 = 768
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = 0
    for x5 in range(x4,x1,x2):
        for x6 in range(x4,x0,x3):
            print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),x4,True,))
            pass
ctxs.append('D_0_0.phaseW2_0_dup0_W')
if opts.ctx == 'D_0_0.phaseW2_0_dup0_W':
    x0 = 32
    x1 = 1
    x2 = 768
    x3 = 0
    x4 = 2
    for x5 in range(x3,x1,x0):
        print("wt byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x3),x4,True,))
        pass
ctxs.append('D_0_0.phaseRExp1_0_0_dup0_R')
if opts.ctx == 'D_0_0.phaseRExp1_0_0_dup0_R':
    x0 = 768
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = 0
    for x5 in range(x4,x1,x2):
        for x6 in range(x4,x0,x3):
            print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),x4,True,))
            pass
ctxs.append('D_0_0.phaseRSumRecip_0_0_dup0_R')
if opts.ctx == 'D_0_0.phaseRSumRecip_0_0_dup0_R':
    x0 = 1
    x1 = 12
    x2 = 768
    x3 = 0
    for x4 in range(x3,x1,x0):
        print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x3),x3,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
