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

ctxs.append('D_0_0_0_0_0_W')
def D_0_0_0_0_0_W():
    x0 = 64
    x1 = 192
    x2 = 327680
    x3 = 256
    x4 = 32
    x5 = 4352
    x6 = 2048
    x7 = 1024
    x8 = 65536
    x9 = 2
    x10 = True
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x1,x0):
        for x13 in range(x11,x2,x3):
            x14 = True
            x17 = x13 + x12
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x12),qaddr(x11),x10,x10,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_W'] = D_0_0_0_0_0_W
ctxs.append('D_0_0_0_0_0_R')
def D_0_0_0_0_0_R():
    x0 = 64
    x1 = 192
    x2 = 327680
    x3 = 256
    x4 = 32
    x5 = 4352
    x6 = 2048
    x7 = 1024
    x8 = 65536
    x9 = 2
    x10 = True
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x8,x3):
        for x13 in range(x11,x5,x4):
            x14 = True
            x17 = x13 // x7
            x18 = x13 * x9
            x19 = x18 % x6
            x20 = x13 % x7
            x21 = x17 * x8
            x22 = x21 + x12
            x23 = x20 * x9
            x24 = x22 + x23
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x24),qaddr(x24//2),qaddr(x24//64),qaddr(x19),qaddr(x11),x10,x10,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_R'] = D_0_0_0_0_0_R

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

