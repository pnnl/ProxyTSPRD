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
    x1 = 128
    x2 = 163840
    x3 = 32
    x4 = 96
    x5 = 0
    x6 = 2
    for x7 in range(x5,x4,x3):
        for x8 in range(x5,x2,x1):
            x9 = True
            print("trim_pred: {} ".format(x0), end='')
            x12 = x7 * x6
            x13 = x8 + x7
            x14 = x13 * x6
            print("pmuid: [" + str(x5) +"," + str(x5) +"," + str(x5) +"," + str(x5) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x14),qaddr(x14//2),qaddr(x14//64),qaddr(x12),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['W_0_0_0_0__dup0_W'] = W_0_0_0_0__dup0_W
ctxs.append('R_0_0_0_0__dup0_R')
def R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 136
    x1 = 1
    x2 = True
    x3 = 2
    x4 = 0
    x5 = 128
    x6 = 32768
    x7 = 64
    x8 = 2048
    x9 = 32
    x10 = 1024
    for x11 in range(x4,x6,x5):
        for x12 in range(x4,x0,x1):
            x13 = True
            x16 = x12 // x9
            x17 = x16 * x6
            x18 = x17 + x11
            x19 = x12 * x7
            x20 = x19 % x8
            x21 = x12 * x9
            x22 = x21 % x10
            x23 = x18 + x22
            x24 = x23 * x3
            print("pmuid: [" + str(x4) +"," + str(x4) +"," + str(x4) +"," + str(x4) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x24),qaddr(x24//2),qaddr(x24//64),qaddr(x20),x2,x2,True,))
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

