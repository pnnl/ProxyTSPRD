import argparse
import numpy as np


class NDAddr(object):
    def __init__(self, ndaddr, pred):
        self.ndaddr = ndaddr
        self.pred = pred

    def __repr__(self):
        return 'ndaddr: [{}] pred: {}'.format(', '.join(str(x) for x in self.ndaddr), self.pred)


ctxs = []
ndaddr_funcs = {}

##############
# Start ctxs #
##############

ctxs.append('phaseW0')
def phaseW0():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x1,x4):
        x10 = True
        print("trim_pred: {} ".format(x5), end='')
        print("pmufid: {} ".format(x7), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseW0'] = phaseW0
ctxs.append('phaseRMax')
def phaseRMax():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x2,x1):
        x10 = True
        print("pmufid: {} ".format(x7), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x3),qaddr(x3//2),qaddr(x3//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseRMax'] = phaseRMax
ctxs.append('phase_rd_dummy')
def phase_rd_dummy():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x2,x1):
        x10 = True
        print("pmufid: {} ".format(x7), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x7),qaddr(x7),x5,x0,True,))
    return ndaddrs

ndaddr_funcs['phase_rd_dummy'] = phase_rd_dummy
ctxs.append('phaseW1')
def phaseW1():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x6,x8):
        x10 = True
        print("trim_pred: {} ".format(x5), end='')
        print("pmufid: {} ".format(x7), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseW1'] = phaseW1
ctxs.append('phaseRExp0')
def phaseRExp0():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x6,x8):
        x10 = True
        print("pmufid: {} ".format(x7), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseRExp0'] = phaseRExp0
ctxs.append('phaseW2')
def phaseW2():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x1,x4):
        x10 = True
        print("trim_pred: {} ".format(x5), end='')
        print("pmufid: {} ".format(x7), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseW2'] = phaseW2
ctxs.append('phaseRExp1')
def phaseRExp1():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x6,x8):
        x10 = True
        print("pmufid: {} ".format(x7), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseRExp1'] = phaseRExp1
ctxs.append('phaseRSumRecip')
def phaseRSumRecip():
    x0 = False
    x1 = 1
    x2 = 12
    x3 = 832
    x4 = 32
    x5 = True
    x6 = 768
    x7 = 0
    x8 = 64
    ndaddrs = []
    for x9 in range(x7,x2,x1):
        x10 = True
        print("pmufid: {} ".format(x7), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x7),qaddr(x7),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['phaseRSumRecip'] = phaseRSumRecip

############
# End ctxs #
############


def ndaddr(ctx):
    return ndaddr_funcs[ctx]()


def qaddr(addr):
    if opts.format == 'dec/hex':
        return str(addr) + '/' + hex(addr)
    elif opts.format == 'dec':
        return str(addr)
    elif opts.format == 'hex':
        return hex(addr)
    else:
        assert False, 'Unsupported format! ' + opts.format


def main():
    parser = argparse.ArgumentParser(description='Physical Address Simulation.')
    parser.add_argument('--ctx', type=str, help='Specify context to print')
    parser.add_argument('--list', action='store_true', default=False, help='List available contexts')
    parser.add_argument('-f', '--format', default='dec/hex', help='Address format. Options: [dec, hex, dec/hex]')
    global opts, args
    opts, args = parser.parse_known_args()
    if opts.list:
        for ctx in ctxs:
            print(ctx)
        exit()


    if opts.ctx is not None:
        for line in ndaddr_funcs[opts.ctx]():print(line)



if __name__ == '__main__':
    main()

