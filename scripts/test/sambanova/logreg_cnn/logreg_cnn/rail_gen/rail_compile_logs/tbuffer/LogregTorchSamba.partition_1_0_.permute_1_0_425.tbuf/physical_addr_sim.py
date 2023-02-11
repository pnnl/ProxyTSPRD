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
    x0 = 10240
    x1 = 30720
    x2 = 245760
    x3 = 64
    x4 = 8704
    x5 = 2048
    x6 = 0
    x7 = 2
    x8 = 0
    x9 = 2047
    ndaddrs = []
    for x10 in range(x6,x2,x1):
        for x11 in range(x6,x5,x3):
            for x12 in range(x6,x1,x5):
                x13 = True
                x16 = x12 + x10
                x17 = x16 + x11
                print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x6),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_W'] = D_0_0_0_0_0_W
ctxs.append('D_0_0_0_0_0_R')
def D_0_0_0_0_0_R():
    x0 = 10240
    x1 = 30720
    x2 = 245760
    x3 = 64
    x4 = 8704
    x5 = 2048
    x6 = 0
    x7 = 2
    x8 = 0
    x9 = 2047
    ndaddrs = []
    for x10 in range(x6,x1,x0):
        for x11 in range(x6,x2,x1):
            for x12 in range(x6,x4,x3):
                x13 = True
                x16 = x12 & x9
                x17 = x11 + x10
                x18 = x17 + x12
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x16),qaddr(x6),bin(x8)[2::],x8 % 2 >> 0 ,x8 % 4 >> 1 ,x8 % 8 >> 2 ,True,))
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

