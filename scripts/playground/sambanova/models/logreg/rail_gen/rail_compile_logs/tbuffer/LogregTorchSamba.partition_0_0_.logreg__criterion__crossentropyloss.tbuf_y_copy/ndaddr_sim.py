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
ctxs.append('phase_y_copy_write')
if opts.ctx == 'phase_y_copy_write':
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 0
    for x4 in range(x3,x1,x0):
        x5 = True
        print("ndaddr: [" + str(x4) +"," + "] en: " + str(x2))
        pass
ctxs.append('phase_y_copy_read')
if opts.ctx == 'phase_y_copy_read':
    x0 = 1
    x1 = True
    x2 = 0
    for x3 in range(x2,x0,x0):
        x4 = True
        x6 = x3 < x0
        x7 = x3 if x6 else x2
        print("ndaddr: [" + str(x7) +"," + "] en: " + str(x1))
        x9 = True
        x12 = True
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
