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
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXVec_0':
    x0 = 2
    x1 = 32
    x2 = 1
    x3 = 12
    x4 = True
    x5 = 0
    for x6 in range(x5,x2,x2):
        for x7 in range(x5,x0,x2):
            for x8 in range(x5,x2,x1):
                for x9 in range(x5,x3,x2):
                    x10 = True
                    x12 = True
                    print("ndaddr: [" + str(x9) +"," + str(x8) +"," + "] en: " + str(x4))
                    x15 = True
                    x16 = True
                    x17 = True
                    x22 = x20 | x21
                    pass
ctxs.append('LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar')
if opts.ctx == 'LogregTorchSamba.partition_0_0_.logreg__criterion__crossentropyloss@kInputXScalar':
    x0 = 1
    x1 = 10
    x2 = True
    x3 = 0
    for x4 in range(x3,x0,x0):
        for x5 in range(x3,x0,x0):
            for x8 in range(x3,x0,x0):
                x6 = True
                x9 = True
                x12 = x11 < x1
                x13 = x11 if x12 else x3
                x14 = x5 + x8
                print("ndaddr: [" + str(x13) +"," + str(x14) +"," + "] en: " + str(x2))
                x16 = True
                x21 = True
                pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
