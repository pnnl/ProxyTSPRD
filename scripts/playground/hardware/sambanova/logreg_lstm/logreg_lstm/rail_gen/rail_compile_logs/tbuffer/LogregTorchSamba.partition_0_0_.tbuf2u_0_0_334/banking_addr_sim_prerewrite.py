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
    x0 = 60
    x1 = True
    x2 = 2
    x3 = 32
    x4 = 0
    x5 = 1920
    x6 = 3840
    ndaddrs = []
    for x7 in range(x4,x5,x3):
        for x8 in range(x4,x6,x5):
            x9 = True
            print("trim_pred: {} ".format(x1), end='')
            x12 = x8 + x7
            x13 = x12 * x2
            print("pmuid: [" + str(x4) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x4),qaddr(x4),x1,x1,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd')
def LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd():
    x0 = 60
    x1 = True
    x2 = 2
    x3 = 32
    x4 = 0
    x5 = 1920
    x6 = 3840
    ndaddrs = []
    for x8 in range(x4,x6,x5):
        x9 = True
        x11 = x7 < x0
        x13 = x7 * x3
        x14 = x8 + x13
        x15 = x14 * x2
        print("pmuid: [" + str(x4) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x15),qaddr(x15//2),qaddr(x15//64),qaddr(x4),qaddr(x4),x11,x1,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd'] = LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd

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

