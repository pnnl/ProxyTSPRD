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

ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput():
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 0
    ndaddrs = []
    for x5 in range(x3,x1,x1):
        x6 = True
        x9 = True
        ndaddr = [x5, ]
        en_drop = True
        en_zero = x2
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kOutput
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 32
    x1 = 1
    x2 = True
    x3 = 0
    ndaddrs = []
    for x4 in range(x3,x1,x0):
        x5 = True
        ndaddr = [x4, ]
        en_drop = x2
        en_zero = x2
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
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

