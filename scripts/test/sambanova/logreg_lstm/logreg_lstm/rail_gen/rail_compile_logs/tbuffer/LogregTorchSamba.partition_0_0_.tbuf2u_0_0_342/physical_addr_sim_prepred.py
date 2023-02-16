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

ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr')
def D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr():
    x0 = 1
    x1 = 64
    x2 = 128
    x3 = True
    x4 = 0
    ndaddrs = []
    for x5 in range(x4,x2,x1):
        x6 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr'] = D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__indexselect_kOutWr
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB')
def D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB():
    x0 = 1
    x1 = 64
    x2 = 128
    x3 = True
    x4 = 0
    ndaddrs = []
    for x5 in range(x4,x2,x0):
        for x6 in range(x4,x2,x1):
            x7 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x4),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB'] = D_0_0_LogregTorchSamba_partition_0_0__ptconvlstm__dense_layer__linear_kFwdPropB

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

