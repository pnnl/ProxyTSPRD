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

ctxs.append('LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr_0_0__dup0_W')
def LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr_0_0__dup0_W():
    ndaddrs = []
    x0 = 64
    x1 = 960
    x2 = True
    x3 = 0
    for x4 in range(x3,x1,x0):
        x5 = True
        print("trim_pred: {} ".format(x2), end='')
        print("pmuid: [" + str(x3) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x3),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr_0_0__dup0_W'] = LogregTorchSamba_partition_0_0__ptconvlstm__lambda_layer__indexselect_kOutWr_0_0__dup0_W
ctxs.append('kDefaultRead1_0_0__dup0_R')
def kDefaultRead1_0_0__dup0_R():
    ndaddrs = []
    x0 = 64
    x1 = 960
    x2 = True
    x3 = 0
    for x4 in range(x3,x1,x0):
        x5 = True
        print("pmuid: [" + str(x3) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x3),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['kDefaultRead1_0_0__dup0_R'] = kDefaultRead1_0_0__dup0_R

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

