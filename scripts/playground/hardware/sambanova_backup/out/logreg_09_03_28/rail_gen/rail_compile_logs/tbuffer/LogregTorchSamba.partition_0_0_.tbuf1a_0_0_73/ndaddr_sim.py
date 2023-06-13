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
ctxs.append('kFrontDynamicWriteCtx')
if opts.ctx == 'kFrontDynamicWriteCtx':
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 0
    for x4 in range(x3,x1,x0):
        x5 = True
        print("ndaddr: [" + str(x4) +"," + "] en: " + str(x2))
        pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputY':
    x0 = 1
    x1 = True
    x2 = 0
    for x3 in range(x2,x0,x0):
        for x4 in range(x2,x0,x0):
            for x7 in range(x2,x0,x0):
                x5 = True
                x8 = x4 + x7
                x9 = x8 < x0
                x10 = x8 if x9 else x2
                print("ndaddr: [" + str(x10) +"," + "] en: " + str(x1))
                x12 = True
                pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputYCopySrc':
    x0 = 1
    x1 = 32
    x2 = True
    x3 = 0
    for x4 in range(x3,x0,x0):
        for x5 in range(x3,x0,x1):
            for x8 in range(x3,x1,x1):
                x6 = True
                x9 = True
                print("ndaddr: [" + str(x5) +"," + "] en: " + str(x2))
                pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
