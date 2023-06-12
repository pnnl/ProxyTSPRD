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
    x3 = 500
    x4 = 1
    x5 = 10
    x6 = True
    x7 = 0
    ndaddrs = []
    for x9 in range(x7,x3,x1):
        for x8 in range(x7,x5,x4):
            x10 = True
            ndaddr = [x8, x9, ]
            en_drop = True
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 2
    x1 = 32
    x2 = 12
    x3 = 500
    x4 = 1
    x5 = 10
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x0,x4):
        for x9 in range(x7,x3,x1):
            for x10 in range(x7,x2,x4):
                x11 = True
                x13 = True
                ndaddr = [x10, x9, ]
                en_drop = x6
                en_zero = x6
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x16 = True
                x17 = True
                x18 = True
                x23 = x21 | x22
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 2
    x1 = 32
    x2 = 12
    x3 = 500
    x4 = 1
    x5 = 10
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x3,x4):
        for x11 in range(x7,x4,x4):
            x9 = True
            x12 = True
            x15 = x14 < x5
            x16 = x14 if x15 else x7
            x17 = x8 + x11
            ndaddr = [x16, x17, ]
            en_drop = x6
            en_zero = x6
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x19 = True
            x24 = True
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

