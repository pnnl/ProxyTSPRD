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

ctxs.append('D_0_0_kDefaultWrite')
def D_0_0_kDefaultWrite():
    x0 = 3840
    x1 = 7680
    x2 = 60
    x3 = 64
    x4 = True
    x5 = 0
    ndaddrs = []
    for x6 in range(x5,x1,x3):
        x7 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x5),qaddr(x5),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kDefaultWrite'] = D_0_0_kDefaultWrite
ctxs.append('D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd')
def D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd():
    x0 = 3840
    x1 = 7680
    x2 = 60
    x3 = 64
    x4 = True
    x5 = 0
    ndaddrs = []
    for x7 in range(x5,x1,x0):
        x8 = True
        x10 = x6 < x2
        x12 = x6 * x3
        x13 = x7 + x12
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x5),qaddr(x5),x10,x4,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd'] = D_0_0_LogregTorchSamba_partition_1_0__ptconvlstm__indexselect_recompute__kLutRd

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

