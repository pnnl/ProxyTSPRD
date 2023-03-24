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
    x0 = 2
    x1 = 32
    x2 = 500
    x3 = 1
    x4 = 12
    x5 = True
    x6 = 0
    x7 = 10
    ndaddrs = []
    for x9 in range(x6,x2,x1):
        for x8 in range(x6,x7,x3):
            x10 = True
            ndaddr = [x8, x9, ]
            en_drop = True
            en_zero = x5
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0')
def LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0():
    x0 = 2
    x1 = 32
    x2 = 500
    x3 = 1
    x4 = 12
    x5 = True
    x6 = 0
    x7 = 10
    ndaddrs = []
    for x8 in range(x6,x0,x3):
        for x9 in range(x6,x2,x1):
            for x10 in range(x6,x4,x3):
                x11 = True
                x13 = True
                x15 = x10 < x7
                ndaddr = [x10, x9, ]
                en_drop = x5
                en_zero = x15
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
                x18 = True
                x21 = x19 | x20
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0'] = LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0

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

