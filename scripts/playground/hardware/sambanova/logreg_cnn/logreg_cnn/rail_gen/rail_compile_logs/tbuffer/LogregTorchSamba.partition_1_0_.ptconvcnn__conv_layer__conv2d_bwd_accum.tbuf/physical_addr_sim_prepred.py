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
    x0 = 64
    x1 = 245760
    x2 = True
    x3 = 0
    ndaddrs = []
    for x4 in range(x3,x1,x0):
        x5 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x3),qaddr(x3),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_w_loop_0_0'] = D_0_0_0_w_loop_0_0
ctxs.append('D_0_0_0_kBackReadCtx')
def D_0_0_0_kBackReadCtx():
    x0 = 64
    x1 = 245760
    x2 = True
    x3 = 0
    ndaddrs = []
    for x4 in range(x3,x1,x0):
        x5 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x3),qaddr(x3),x2,x2,True,))
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
