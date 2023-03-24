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
ctxs.append('phase_w0')
if opts.ctx == 'phase_w0':
    x0 = 32
    x1 = 1
    x2 = 12
    x3 = True
    x4 = 0
    for x5 in range(x4,x1,x0):
        x6 = True
        print("ndaddr: [" + str(x2) +"," + str(x5) +"," + "] en: " + str(x3))
        x9 = True
        pass
ctxs.append('phase1_R_max')
if opts.ctx == 'phase1_R_max':
    x0 = 32
    x1 = 1
    x2 = 12
    x3 = True
    x4 = 0
    for x6 in range(x4,x1,x0):
        for x5 in range(x4,x2,x1):
            x7 = True
            print("ndaddr: [" + str(x2) +"," + str(x6) +"," + "] en: " + str(x3))
            x10 = True
            pass
ctxs.append('phase_rd_dummy')
if opts.ctx == 'phase_rd_dummy':
    x0 = 1
    x1 = False
    x2 = 0
    for x3 in range(x2,x0,x0):
        x4 = True
        print("ndaddr: [" + str(x2) +"," + str(x2) +"," + "] en: " + str(x1))
        x7 = True
        pass
ctxs.append('phase_w1')
if opts.ctx == 'phase_w1':
    x0 = 12
    x1 = 32
    x2 = 1
    x3 = True
    x4 = 0
    for x6 in range(x4,x2,x1):
        for x5 in range(x4,x0,x2):
            x7 = True
            print("ndaddr: [" + str(x5) +"," + str(x6) +"," + "] en: " + str(x3))
            pass
ctxs.append('phase2_R_exp')
if opts.ctx == 'phase2_R_exp':
    x0 = 32
    x1 = 1
    x2 = 10
    x3 = True
    x4 = 0
    for x5 in range(x4,x1,x0):
        for x8 in range(x4,x2,x1):
            x6 = True
            print("ndaddr: [" + str(x8) +"," + str(x5) +"," + "] en: " + str(x3))
            x10 = True
            pass
ctxs.append('phase_w2')
if opts.ctx == 'phase_w2':
    x0 = 32
    x1 = 1
    x2 = 13
    x3 = True
    x4 = 0
    for x5 in range(x4,x1,x0):
        x6 = True
        print("ndaddr: [" + str(x2) +"," + str(x5) +"," + "] en: " + str(x3))
        pass
ctxs.append('phase3_R_max')
if opts.ctx == 'phase3_R_max':
    x0 = 1
    x1 = 12
    x2 = True
    x3 = 0
    for x4 in range(x3,x0,x0):
        x5 = True
        print("ndaddr: [" + str(x1) +"," + str(x4) +"," + "] en: " + str(x2))
        x8 = True
        x10 = True
        pass
ctxs.append('phase3_R_logsum')
if opts.ctx == 'phase3_R_logsum':
    x0 = 1
    x1 = 13
    x2 = True
    x3 = 0
    for x4 in range(x3,x0,x0):
        x5 = True
        print("ndaddr: [" + str(x1) +"," + str(x4) +"," + "] en: " + str(x2))
        x8 = True
        pass
if opts.list:
    for ctx in ctxs:
        print(ctx)
