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
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x2,x1):
        for x9 in range(x7,x5,x3):
            for x10 in range(x7,x1,x5):
                x11 = True
                x14 = x10 + x8
                x15 = x14 + x9
                print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x15),qaddr(x15//2),qaddr(x15//64),qaddr(x9),qaddr(x7),x6,x6,True,))
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
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x2,x1):
            for x10 in range(x7,x4,x3):
                x11 = True
                x14 = x10 % x5
                x15 = x9 + x8
                x16 = x15 + x10
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x14),qaddr(x7),x6,x6,True,))
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

