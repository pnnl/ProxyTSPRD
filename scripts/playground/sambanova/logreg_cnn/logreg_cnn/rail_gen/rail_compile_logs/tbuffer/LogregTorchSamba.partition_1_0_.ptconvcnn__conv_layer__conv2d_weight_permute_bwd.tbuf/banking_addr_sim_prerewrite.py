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

ctxs.append('W')
def W():
    x0 = 136
    x1 = 1
    x2 = True
    x3 = 163840
    x4 = 96
    x5 = 2
    x6 = 0
    x7 = 128
    x8 = 32768
    x9 = 64
    x10 = 2048
    x11 = 32
    x12 = 1024
    ndaddrs = []
    for x13 in range(x6,x4,x11):
        for x14 in range(x6,x3,x7):
            x15 = True
            print("trim_pred: {} ".format(x2), end='')
            x18 = x13 * x5
            x19 = x14 + x13
            x20 = x19 * x5
            print("pmuid: [" + str(x6) +"," + str(x6) +"," + str(x6) +"," + str(x6) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x18),qaddr(x6),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['W'] = W
ctxs.append('R')
def R():
    x0 = 136
    x1 = 1
    x2 = True
    x3 = 163840
    x4 = 96
    x5 = 2
    x6 = 0
    x7 = 128
    x8 = 32768
    x9 = 64
    x10 = 2048
    x11 = 32
    x12 = 1024
    ndaddrs = []
    for x13 in range(x6,x8,x7):
        for x14 in range(x6,x0,x1):
            x15 = True
            x18 = x14 // x11
            x19 = x18 * x8
            x20 = x19 + x13
            x21 = x14 * x9
            x22 = x21 % x10
            x23 = x14 * x11
            x24 = x23 % x12
            x25 = x20 + x24
            x26 = x25 * x5
            print("pmuid: [" + str(x6) +"," + str(x6) +"," + str(x6) +"," + str(x6) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x26),qaddr(x26//2),qaddr(x26//64),qaddr(x22),qaddr(x6),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['R'] = R

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

