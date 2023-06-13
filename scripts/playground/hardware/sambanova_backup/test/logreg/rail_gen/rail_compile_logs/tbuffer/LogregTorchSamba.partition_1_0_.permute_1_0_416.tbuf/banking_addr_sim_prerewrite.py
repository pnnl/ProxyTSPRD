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

ctxs.append('W_0_0_0_0__dup0_W')
def W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = True
    x1 = 32
    x2 = 1024
    x3 = 2
    x4 = 122880
    x5 = 15360
    x6 = 0
    for x7 in range(x6,x4,x5):
        for x8 in range(x6,x2,x1):
            for x9 in range(x6,x5,x2):
                x10 = True
                print("trim_pred: {} ".format(x0), end='')
                x13 = x8 * x3
                x14 = x9 + x7
                x15 = x14 + x8
                x16 = x15 * x3
                print("pmuid: [" + str(x6) +"," + str(x6) +"," + str(x6) +"," + str(x6) +"," + "] ", end='')
                print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x13),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['W_0_0_0_0__dup0_W'] = W_0_0_0_0__dup0_W
ctxs.append('R_0_0_0_0__dup0_R')
def R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 1
    x1 = 136
    x2 = True
    x3 = 2
    x4 = 122880
    x5 = 0
    x6 = 5120
    x7 = 15360
    x8 = 64
    x9 = 2048
    x10 = 32
    for x11 in range(x5,x7,x6):
        for x12 in range(x5,x4,x7):
            for x13 in range(x5,x1,x0):
                x14 = True
                x17 = x12 + x11
                x18 = x13 * x8
                x19 = x18 % x9
                x20 = x13 * x10
                x21 = x17 + x20
                x22 = x21 * x3
                print("pmuid: [" + str(x5) +"," + str(x5) +"," + str(x5) +"," + str(x5) +"," + "] ", end='')
                print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x22),qaddr(x22//2),qaddr(x22//64),qaddr(x19),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['R_0_0_0_0__dup0_R'] = R_0_0_0_0__dup0_R

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

