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
ctxs.append('D_0_0_0.w_loop_0_0_0_0_0_dup0_W')
if opts.ctx == 'D_0_0_0.w_loop_0_0_0_0_0_dup0_W':
    x0 = 0
    x1 = 64
    x2 = 512
    x3 = 2
    for x4 in range(x0,x2,x1):
        print("wt byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x0),x3,True,))
        pass
ctxs.append('D_0_0_0.kBackReadCtx_0_0_dup0_R')
if opts.ctx == 'D_0_0_0.kBackReadCtx_0_0_dup0_R':
    x0 = 64
    x1 = 512
    x2 = 0
    for x3 in range(x2,x1,x0):
        print("rd byte:{} word:{} vec:{} rotate:{} pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x2),x2,True,))
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
