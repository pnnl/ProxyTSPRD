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
    x0 = True
    x1 = 245760
    x2 = 10240
    x3 = 30720
    x4 = 2048
    x5 = 0
    x6 = 64
    x7 = 8704
    ndaddrs = []
    for x8 in range(x5,x1,x3):
        for x9 in range(x5,x4,x6):
            for x10 in range(x5,x3,x4):
                x11 = True
                print("trim_pred: {} ".format(x0), end='')
                x14 = x10 + x8
                x15 = x14 + x9
                print("pmufid: {} ".format(x5), end='')
                print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x15),qaddr(x15//2),qaddr(x15//64),qaddr(x9),qaddr(x5),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['W'] = W
ctxs.append('R')
def R():
    x0 = True
    x1 = 245760
    x2 = 10240
    x3 = 30720
    x4 = 2048
    x5 = 0
    x6 = 64
    x7 = 8704
    ndaddrs = []
    for x8 in range(x5,x3,x2):
        for x9 in range(x5,x1,x3):
            for x10 in range(x5,x7,x6):
                x11 = True
                x14 = x10 % x4
                x15 = x9 + x8
                x16 = x15 + x10
                print("pmufid: {} ".format(x5), end='')
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x14),qaddr(x5),x0,x0,True,))
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

