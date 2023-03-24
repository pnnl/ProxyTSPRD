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
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kOutput':
    x0 = 1
    x1 = True
    x2 = 0
    for x4 in range(x2,x0,x0):
        for x5 in range(x2,x0,x0):
            x6 = True
            x9 = True
            print("ndaddr: [" + str(x5) +"," + "] en: " + str(x1))
            pass
ctxs.append('kBackReadCtx')
if opts.ctx == 'kBackReadCtx':
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 0
    for x5 in range(x3,x1,x1):
        for x4 in range(x3,x1,x0):
            x6 = True
            print("ndaddr: [" + str(x4) +"," + "] en: " + str(x2))
            pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
