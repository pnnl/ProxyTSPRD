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
ctxs.append('D_0_0.LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0_0_0_0_0_dup0_R')
if opts.ctx == 'D_0_0.LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0_0_0_0_0_dup0_R':
    x0 = 768
    x1 = 1
    x2 = 32
    x3 = 2
    x4 = 64
    x5 = 0
    for x6 in range(x5,x3,x1):
        for x7 in range(x5,x1,x2):
            for x8 in range(x5,x0,x4):
                print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),x5,True,))
                x18 = x16 | x17
                pass
ctxs.append('D_0_0.LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar_0_0_0_dup0_R')
if opts.ctx == 'D_0_0.LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar_0_0_0_dup0_R':
    x0 = 10
    x1 = 1
    x2 = 64
    x3 = 0
    for x4 in range(x3,x1,x1):
        x10 = x9 < x0
        x11 = x9 if x10 else x3
        x13 = x11 * x2
        print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x3),x3,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
