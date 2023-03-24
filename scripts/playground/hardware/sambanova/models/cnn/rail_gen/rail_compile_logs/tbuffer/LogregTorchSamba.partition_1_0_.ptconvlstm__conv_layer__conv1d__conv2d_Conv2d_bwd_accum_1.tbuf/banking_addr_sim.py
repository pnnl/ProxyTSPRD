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
ctxs.append('w_loop_0_0_0_0_0_dup0_W')
if opts.ctx == 'w_loop_0_0_0_0_0_dup0_W':
    x0 = True
    x1 = 0
    x2 = 64
    x3 = 512
    for x4 in range(x1,x3,x2):
        x5 = True
        print("trim_pred: {} ".format(x0), end='')
        print("pmufid: {} ".format(x1), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x1),x0,x0,True,))
        pass
ctxs.append('kBackReadCtx_0_0_dup0_R')
if opts.ctx == 'kBackReadCtx_0_0_dup0_R':
    x0 = 256
    x1 = True
    x2 = 0
    x3 = 32
    x4 = 2
    for x5 in range(x2,x0,x3):
        x6 = True
        x9 = x5 * x4
        print("pmufid: {} ".format(x2), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x2),x1,x1,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
