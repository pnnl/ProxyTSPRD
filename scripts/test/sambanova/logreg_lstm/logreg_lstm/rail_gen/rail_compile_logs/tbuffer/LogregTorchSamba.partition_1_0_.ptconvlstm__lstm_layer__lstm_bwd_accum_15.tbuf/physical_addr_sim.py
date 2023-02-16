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
    x4 = 128
    x5 = 0
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x5,x0,x1):
        for x9 in range(x5,x4,x3):
            x10 = True
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x5),qaddr(x5),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
            x14 = True
    return ndaddrs

ndaddr_funcs['D_0_0_0_w_loop_0_0'] = D_0_0_0_w_loop_0_0
ctxs.append('D_0_0_0_r_loop_0_0')
def D_0_0_0_r_loop_0_0():
    x0 = 100
    x1 = 1
    x2 = 99
    x3 = 64
    x4 = 128
    x5 = 0
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x5,x2,x1):
        for x9 in range(x5,x4,x3):
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x5),qaddr(x5),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
            x11 = True
            x14 = x11 | x13
            x16 = True
    return ndaddrs

ndaddr_funcs['D_0_0_0_r_loop_0_0'] = D_0_0_0_r_loop_0_0
ctxs.append('D_0_0_0_kBackReadCtx')
def D_0_0_0_kBackReadCtx():
    x0 = 100
    x1 = 1
    x2 = 99
    x3 = 64
    x4 = 128
    x5 = 0
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x5,x4,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
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

