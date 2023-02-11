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
ctxs.append('LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0')
if opts.ctx == 'LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kOutput0':
    x0 = 12
    x1 = 32
    x2 = 1
    x3 = 10
    x4 = 0
    for x5 in range(x4,x2,x2):
        for x7 in range(x4,x2,x1):
            for x6 in range(x4,x0,x2):
                x8 = True
                x11 = True
                x12 = x6 < x3
                print("ndaddr: [" + str(x6) +"," + str(x7) +"," + "] en: " + str(x12))
                pass
ctxs.append('kDefaultRead1')
if opts.ctx == 'kDefaultRead1':
    x0 = 10
    x1 = 32
    x2 = 1
    x3 = True
    x4 = 0
    for x6 in range(x4,x2,x1):
        for x5 in range(x4,x0,x2):
            x7 = True
            print("ndaddr: [" + str(x5) +"," + str(x6) +"," + "] en: " + str(x3))
            pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
