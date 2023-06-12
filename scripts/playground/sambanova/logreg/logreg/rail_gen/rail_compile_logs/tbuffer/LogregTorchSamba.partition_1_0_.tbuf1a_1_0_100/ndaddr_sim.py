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

ctxs.append('kFrontDynamicWriteCtx')
def kFrontDynamicWriteCtx():
    x0 = 1
    x1 = 12
    x2 = 32
    x3 = 500
    x4 = True
    x5 = 0
    ndaddrs = []
    for x6 in range(x5,x3,x2):
        x7 = True
        ndaddr = [x6, ]
        en_drop = True
        en_zero = x4
        ND = NDAddr(ndaddr, en_zero and en_drop)
        ndaddrs.append(ND)
    return ndaddrs

ndaddr_funcs['kFrontDynamicWriteCtx'] = kFrontDynamicWriteCtx
ctxs.append('LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss')
def LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss():
    x0 = 1
    x1 = 12
    x2 = 32
    x3 = 500
    x4 = True
    x5 = 0
    ndaddrs = []
    for x7 in range(x5,x3,x2):
        for x6 in range(x5,x1,x0):
            x8 = True
            ndaddr = [x7, ]
            en_drop = x4
            en_zero = x4
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
            x11 = True
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss'] = LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputLoss

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

