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
ctxs.append('D_0_0.kDefaultWrite_0_0_dup0_W')
if opts.ctx == 'D_0_0.kDefaultWrite_0_0_dup0_W':
    x0 = 640
    x1 = 1
    x2 = 32
    x3 = 0
    x4 = 64
    x5 = 2
    for x7 in range(x3,x1,x2):
        for x6 in range(x3,x0,x4):
            print("wt byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x3),x5,True,))
            pass
ctxs.append('D_0_0.LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_0_0_0_0_dup0_R')
if opts.ctx == 'D_0_0.LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0_0_0_0_0_dup0_R':
    x0 = 768
    x1 = 640
    x2 = 1
    x3 = 32
    x4 = 0
    x5 = 2
    x6 = 64
    for x7 in range(x4,x5,x2):
        for x8 in range(x4,x2,x3):
            for x9 in range(x4,x0,x6):
                x15 = x9 >= x1
                x16 =  1 if x15 else 0
                print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x4),x16,True,))
                x19 = x17 | x18
                pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
