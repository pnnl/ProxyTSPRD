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
ctxs.append('w_loop_0_0')
if opts.ctx == 'w_loop_0_0':
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 0
    for x4 in range(x3,x1,x1):
        for x5 in range(x3,x2,x0):
            for x8 in range(x3,x1,x1):
                x6 = True
                x9 = x5 >= x3
                x10 = x5 < x2
                x11 = x9 & x10
                print("ndaddr: [" + str(x5) +"," + str(x8) +"," + "] en: " + str(x11))
                pass
ctxs.append('kBackReadCtx')
if opts.ctx == 'kBackReadCtx':
    x0 = 32
    x1 = 256
    x2 = 1
    x3 = True
    x4 = 0
    for x5 in range(x4,x1,x0):
        for x8 in range(x4,x2,x2):
            x6 = True
            print("ndaddr: [" + str(x5) +"," + str(x8) +"," + "] en: " + str(x3))
            pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
