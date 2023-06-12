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
            print("pmuid: [" + str(x4) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),x2,x2,True,))
            pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0_0_0_0_0_dup0_R')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0_0_0_0_0_dup0_R':
    x0 = 768
    x1 = 1
    x2 = True
    x3 = 32
    x4 = 0
    x5 = 2
    x6 = 64
    for x7 in range(x4,x5,x1):
        for x8 in range(x4,x1,x3):
            for x9 in range(x4,x0,x6):
                x10 = True
                print("pmuid: [" + str(x4) +"," + "] ", end='')
                print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x4),x2,x2,True,))
                x14 = True
                x19 = x17 | x18
                pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar_0_0_0_dup0_R')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar_0_0_0_dup0_R':
    x0 = 10
    x1 = True
    x2 = 0
    x3 = 1
    x4 = 64
    for x5 in range(x2,x3,x3):
        x6 = True
        x10 = x9 < x0
        x11 = x9 if x10 else x2
        x13 = x11 * x4
        print("pmuid: [" + str(x2) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x2),x1,x1,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
