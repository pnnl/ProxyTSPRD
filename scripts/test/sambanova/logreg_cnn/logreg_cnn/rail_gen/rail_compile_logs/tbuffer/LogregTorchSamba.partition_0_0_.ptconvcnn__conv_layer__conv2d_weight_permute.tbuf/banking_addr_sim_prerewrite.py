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
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 32
    x4 = 2
    x5 = 3342336
    x6 = 1114112
    x7 = 0
    x8 = 1024
    x9 = 139264
    ndaddrs = []
    for x10 in range(x7,x6,x9):
        for x11 in range(x7,x8,x3):
            for x12 in range(x7,x9,x8):
                for x13 in range(x7,x5,x6):
                    x14 = True
                    print("trim_pred: {} ".format(x2), end='')
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x11 * x4
                    x20 = x18 + x11
                    x21 = x20 * x4
                    print("pmuid: [" + str(x7) +"," + str(x7) +"," + str(x7) +"," + str(x7) +"," + "] ", end='')
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x21),qaddr(x21//2),qaddr(x21//64),qaddr(x19),qaddr(x7),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['W'] = W
ctxs.append('R')
def R():
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 32
    x4 = 2
    x5 = 3342336
    x6 = 1114112
    x7 = 0
    x8 = 1024
    x9 = 139264
    ndaddrs = []
    for x10 in range(x7,x1,x0):
        x11 = True
        print("pmuid: [" + str(x7) +"," + str(x7) +"," + str(x7) +"," + str(x7) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x7),qaddr(x7),x2,x2,True,))
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

