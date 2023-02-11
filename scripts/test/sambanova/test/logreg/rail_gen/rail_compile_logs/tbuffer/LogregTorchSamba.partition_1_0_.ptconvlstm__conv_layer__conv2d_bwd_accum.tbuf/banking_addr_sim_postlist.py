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

ctxs.append('w_loop_0_0_0_0_0__dup0_W')
def w_loop_0_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = True
    x1 = 0
    x2 = 64
    x3 = 245760
    for x4 in range(x1,x3,x2):
        x5 = True
        print("trim_pred: {} ".format(x0), end='')
        print("pmufid: {} ".format(x1), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x1),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['w_loop_0_0_0_0_0__dup0_W'] = w_loop_0_0_0_0_0__dup0_W
ctxs.append('kBackReadCtx_0_0__dup0_R')
def kBackReadCtx_0_0__dup0_R():
    ndaddrs = []
    x0 = True
    x1 = 0
    x2 = 64
    x3 = 245760
    for x4 in range(x1,x3,x2):
        x5 = True
        print("pmufid: {} ".format(x1), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x1),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup0_R'] = kBackReadCtx_0_0__dup0_R

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

