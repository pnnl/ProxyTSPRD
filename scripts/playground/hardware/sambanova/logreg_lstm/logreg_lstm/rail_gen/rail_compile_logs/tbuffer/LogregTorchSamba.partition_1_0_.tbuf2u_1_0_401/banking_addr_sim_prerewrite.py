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

ctxs.append('kDefaultWrite')
def kDefaultWrite():
    x0 = 64
    x1 = 7680
    x2 = 60
    x3 = True
    x4 = 32
    x5 = 2
    x6 = 0
    x7 = 1920
    x8 = 3840
    ndaddrs = []
    for x9 in range(x6,x1,x0):
        x10 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmuid: [" + str(x6) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd')
def LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd():
    x0 = 64
    x1 = 7680
    x2 = 60
    x3 = True
    x4 = 32
    x5 = 2
    x6 = 0
    x7 = 1920
    x8 = 3840
    ndaddrs = []
    for x10 in range(x6,x8,x7):
        x11 = True
        x13 = x9 < x2
        x15 = x9 * x4
        x16 = x10 + x15
        x17 = x16 * x5
        print("pmuid: [" + str(x6) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x6),qaddr(x6),x13,x3,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd'] = LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd

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

