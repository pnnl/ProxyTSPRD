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
ctxs.append('kDefaultWrite_0_0_dup0_W')
if opts.ctx == 'kDefaultWrite_0_0_dup0_W':
    x0 = 640
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
ctxs.append('LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_0_0_0_0_dup0_R')
if opts.ctx == 'LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_0_0_0_0_dup0_R':
    x0 = 768
    x1 = 640
    x2 = 1
    x3 = True
    x4 = 32
    x5 = 0
    x6 = 2
    x7 = 64
    for x8 in range(x5,x6,x2):
        for x9 in range(x5,x2,x4):
            for x10 in range(x5,x0,x7):
                x11 = True
                x14 = x10 < x1
                print("pmufid: {} ".format(x5), end='')
                print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x5),x14,x3,True,))
                x16 = True
                x19 = x17 | x18
                pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
