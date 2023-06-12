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
ctxs.append('kFrontDynamicWriteCtx_0_dup0_W')
if opts.ctx == 'kFrontDynamicWriteCtx_0_dup0_W':
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 0
    for x4 in range(x3,x1,x0):
        x5 = True
        print("trim_pred: {} ".format(x2), end='')
        print("pmuid: [" + str(x3) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x3),x2,x2,True,))
        pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY_0_0_0_dup0_R')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY_0_0_0_dup0_R':
    x0 = 1
    x1 = True
    x2 = 0
    for x3 in range(x2,x0,x0):
        x4 = True
        print("pmuid: [" + str(x2) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x2),qaddr(x2//2),qaddr(x2//64),qaddr(x2),x1,x1,True,))
        pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc_0_0_0_dup0_R')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc_0_0_0_dup0_R':
    x0 = 1
    x1 = 32
    x2 = True
    x3 = 0
    for x4 in range(x3,x0,x1):
        x5 = True
        print("pmuid: [" + str(x3) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x3),x2,x2,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
