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
ctxs.append('LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_0_0_0_dup0_W')
if opts.ctx == 'LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0_0_0_0_dup0_W':
    x0 = 768
    x1 = 640
    x2 = 1
    x3 = True
    x4 = 32
    x5 = 0
    x6 = 64
    for x8 in range(x5,x2,x4):
        for x7 in range(x5,x0,x6):
            x9 = True
            x12 = x7 < x1
            print("trim_pred: {} ".format(x3), end='')
            print("pmufid: {} ".format(x5), end='')
            print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x5),x3,x12,True,))
            pass
ctxs.append('kDefaultRead1_0_0_dup0_R')
if opts.ctx == 'kDefaultRead1_0_0_dup0_R':
    x0 = 640
    x1 = 1
    x2 = True
    x3 = 32
    x4 = 0
    x5 = 64
    for x7 in range(x4,x1,x3):
        for x6 in range(x4,x0,x5):
            x8 = True
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),x2,x2,True,))
            pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
