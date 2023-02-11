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
    x2 = 12
    x3 = 1
    x4 = 10
    x5 = True
    x6 = 0
    ndaddrs = []
    for x8 in range(x6,x3,x1):
        for x7 in range(x6,x4,x3):
            x9 = True
            ndaddr = [x7, x8, ]
            en_drop = True
            en_zero = x5
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 2
    x1 = 32
    x2 = 12
    x3 = 1
    x4 = 10
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x0,x3):
        for x8 in range(x6,x3,x1):
            for x9 in range(x6,x2,x3):
                x10 = True
                x12 = True
                ndaddr = [x9, x8, ]
                en_drop = x5
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x15 = True
                x16 = True
                x17 = True
                x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 2
    x1 = 32
    x2 = 12
    x3 = 1
    x4 = 10
    x5 = True
    x6 = 0
    ndaddrs = []
    for x7 in range(x6,x3,x3):
        for x10 in range(x6,x3,x3):
            x8 = True
            x11 = True
            x14 = x13 < x4
            x15 = x13 if x14 else x6
            x16 = x7 + x10
            ndaddr = [x15, x16, ]
            en_drop = x5
            en_zero = x5
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x18 = True
            x23 = True
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar

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

