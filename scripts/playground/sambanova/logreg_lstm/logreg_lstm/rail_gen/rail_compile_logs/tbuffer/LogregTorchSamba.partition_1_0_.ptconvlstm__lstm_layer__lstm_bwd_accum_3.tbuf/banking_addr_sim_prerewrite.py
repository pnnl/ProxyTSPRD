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

ctxs.append('w_loop_0_0')
def w_loop_0_0():
    x0 = 100
    x1 = 99
    x2 = 1
    x3 = True
    x4 = 64
    x5 = 8192
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x0,x2):
        for x8 in range(x6,x5,x4):
            x9 = True
            print("trim_pred: {} ".format(x3), end='')
            print("pmuid: [" + str(x6) +"," + str(x6) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),x3,x3,True,))
            x13 = True
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('r_loop_0_0')
def r_loop_0_0():
    x0 = 100
    x1 = 99
    x2 = 1
    x3 = True
    x4 = 64
    x5 = 8192
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x1,x2):
        for x8 in range(x6,x5,x4):
            print("pmuid: [" + str(x6) +"," + str(x6) +"," + "] ", end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),x3,x3,True,))
            x10 = True
            x13 = x10 | x12
            x15 = True
    return ndaddrs

ndaddr_funcs['r_loop_0_0'] = r_loop_0_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 100
    x1 = 99
    x2 = 1
    x3 = True
    x4 = 64
    x5 = 8192
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x5,x4):
        x8 = True
        print("pmuid: [" + str(x6) +"," + str(x6) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x6),qaddr(x6),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx

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

