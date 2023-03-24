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
ctxs.append('D_0_0.LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_0_0_0_dup0_W')
if opts.ctx == 'D_0_0.LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_0_0_0_dup0_W':
    x0 = 768
    x1 = 640
    x2 = 1
    x3 = 32
    x4 = 0
    x5 = 64
    x6 = 2
    for x8 in range(x4,x2,x3):
        for x7 in range(x4,x0,x5):
            x13 = x7 < x1
            x15 =  1 if x13 else 0
            x16 = x15 * x6
            print("wt byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),x16,True,))
            pass
ctxs.append('D_0_0.kDefaultRead1_0_0_dup0_R')
if opts.ctx == 'D_0_0.kDefaultRead1_0_0_dup0_R':
    x0 = 640
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = 0
    for x6 in range(x4,x1,x2):
        for x5 in range(x4,x0,x3):
            print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x4,True,))
            pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
