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
    x2 = 7680
    x3 = 0
    x4 = 3840
    x5 = 64
    ndaddrs = []
    for x6 in range(x3,x4,x5):
        for x7 in range(x3,x2,x4):
            x8 = True
            print("trim_pred: {} ".format(x1), end='')
            x11 = x7 + x6
            print("pmufid: {} ".format(x3), end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x3),qaddr(x3),x1,x1,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd')
def LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kLutRd():
    x0 = 60
    x1 = True
    x2 = 7680
    x3 = 0
    x4 = 3840
    x5 = 64
    ndaddrs = []
    for x7 in range(x3,x2,x4):
        x8 = True
        x10 = x6 < x0
        x12 = x6 * x5
        x13 = x7 + x12
        print("pmufid: {} ".format(x3), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x3),qaddr(x3),x10,x1,True,))
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

