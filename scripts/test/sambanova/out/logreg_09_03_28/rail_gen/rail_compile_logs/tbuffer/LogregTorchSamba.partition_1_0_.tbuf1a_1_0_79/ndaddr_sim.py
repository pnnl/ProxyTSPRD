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
ctxs.append('kDefaultWrite')
if opts.ctx == 'kDefaultWrite':
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
ctxs.append('LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0')
if opts.ctx == 'LogregTorchSamba.partition_1_0_.logreg__criterion__crossentropyloss_bwd_loss@kInputX0':
    x0 = 2
    x1 = 32
    x2 = 1
    x3 = 12
    x4 = 10
    x5 = 0
    for x6 in range(x5,x2,x2):
        for x7 in range(x5,x0,x2):
            for x8 in range(x5,x2,x1):
                for x9 in range(x5,x3,x2):
                    x10 = True
                    x12 = True
                    x14 = x9 < x4
                    print("ndaddr: [" + str(x9) +"," + str(x8) +"," + "] en: " + str(x14))
                    x16 = True
                    x17 = True
                    x20 = x18 | x19
                    pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
