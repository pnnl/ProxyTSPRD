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
    x0 = 1
    x1 = 136
    x2 = True
    x3 = 1024
    x4 = 2
    x5 = 122880
    x6 = 0
    x7 = 5120
    x8 = 15360
    x9 = 64
    x10 = 2048
    x11 = 32
    ndaddrs = []
    for x12 in range(x6,x5,x8):
        for x13 in range(x6,x3,x11):
            for x14 in range(x6,x8,x3):
                x15 = True
                print("trim_pred: {} ".format(x2), end='')
                x18 = x13 * x4
                x19 = x14 + x12
                x20 = x19 + x13
                x21 = x20 * x4
                print("pmuid: [" + str(x6) +"," + str(x6) +"," + str(x6) +"," + str(x6) +"," + "] ", end='')
                print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x18),qaddr(x6),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['W'] = W
ctxs.append('R')
def R():
    x0 = 1
    x1 = 136
    x2 = True
    x3 = 1024
    x4 = 2
    x5 = 122880
    x6 = 0
    x7 = 5120
    x8 = 15360
    x9 = 64
    x10 = 2048
    x11 = 32
    ndaddrs = []
    for x12 in range(x6,x8,x7):
        for x13 in range(x6,x5,x8):
            for x14 in range(x6,x1,x0):
                x15 = True
                x18 = x13 + x12
                x19 = x14 * x9
                x20 = x19 % x10
                x21 = x14 * x11
                x22 = x18 + x21
                x23 = x22 * x4
                print("pmuid: [" + str(x6) +"," + str(x6) +"," + str(x6) +"," + str(x6) +"," + "] ", end='')
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x23),qaddr(x23//2),qaddr(x23//64),qaddr(x20),qaddr(x6),x2,x2,True,))
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

