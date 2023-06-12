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
        print("pmufid: {} ".format(x3), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x3),x2,x2,True,))
        pass
ctxs.append('LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss_0_0_0_dup0_R')
if opts.ctx == 'LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputLoss_0_0_0_dup0_R':
    x0 = 12
    x1 = 32
    x2 = 1
    x3 = True
    x4 = 0
    for x6 in range(x4,x2,x1):
        for x5 in range(x4,x0,x2):
            x7 = True
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x4),x3,x3,True,))
            pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
