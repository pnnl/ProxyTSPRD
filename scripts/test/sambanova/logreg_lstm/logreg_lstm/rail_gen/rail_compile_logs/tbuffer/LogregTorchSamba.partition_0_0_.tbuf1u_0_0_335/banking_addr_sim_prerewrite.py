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
    x0 = 16
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = True
    x5 = 0
    ndaddrs = []
    for x6 in range(x5,x1,x0):
        x7 = True
        print("trim_pred: {} ".format(x4), end='')
        print("pmuid: [" + str(x5) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//4),qaddr(x5//64),qaddr(x5),qaddr(x5),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['kFrontDynamicWriteCtx'] = kFrontDynamicWriteCtx
ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd')
def LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd():
    x0 = 16
    x1 = 1
    x2 = 32
    x3 = 64
    x4 = True
    x5 = 0
    ndaddrs = []
    for x6 in range(x5,x3,x2):
        x7 = True
        print("pmuid: [" + str(x5) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//4),qaddr(x5//64),qaddr(x5),qaddr(x5),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd'] = LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kIndexRd

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

