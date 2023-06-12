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

ctxs.append('D_0_0_0_w_loop_0_0')
def D_0_0_0_w_loop_0_0():
    x0 = 100
    x1 = 1
    x2 = 99
    x3 = 64
    x4 = 524288
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x0,x1):
        for x8 in range(x6,x4,x3):
            x9 = True
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),x5,x5,True,))
            x13 = True
    return ndaddrs

ndaddr_funcs['D_0_0_0_w_loop_0_0'] = D_0_0_0_w_loop_0_0
ctxs.append('D_0_0_0_r_loop_0_0')
def D_0_0_0_r_loop_0_0():
    x0 = 100
    x1 = 1
    x2 = 99
    x3 = 64
    x4 = 524288
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x2,x1):
        for x8 in range(x6,x4,x3):
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),x5,x5,True,))
            x10 = True
            x13 = x10 | x12
            x15 = True
    return ndaddrs

ndaddr_funcs['D_0_0_0_r_loop_0_0'] = D_0_0_0_r_loop_0_0
ctxs.append('D_0_0_0_kBackReadCtx')
def D_0_0_0_kBackReadCtx():
    x0 = 100
    x1 = 1
    x2 = 99
    x3 = 64
    x4 = 524288
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x4,x3):
        x8 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x6),qaddr(x6),x5,x5,True,))
        x13 = True
        x14 = True
        x15 = x13 | x14
    return ndaddrs

ndaddr_funcs['D_0_0_0_kBackReadCtx'] = D_0_0_0_kBackReadCtx

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

