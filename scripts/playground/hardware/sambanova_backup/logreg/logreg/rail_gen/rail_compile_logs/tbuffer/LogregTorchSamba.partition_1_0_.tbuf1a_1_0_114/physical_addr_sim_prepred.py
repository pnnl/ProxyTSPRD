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

ctxs.append('D_0_0_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0')
def D_0_0_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0():
    x0 = 768
    x1 = 640
    x2 = 64
    x3 = 10240
    x4 = True
    x5 = 0
    ndaddrs = []
    for x7 in range(x5,x3,x1):
        for x6 in range(x5,x0,x2):
            x8 = True
            x11 = x6 < x1
            x13 = x7 + x6
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x5),qaddr(x5),x4,x11,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0'] = D_0_0_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0
ctxs.append('D_0_0_kDefaultRead1')
def D_0_0_kDefaultRead1():
    x0 = 768
    x1 = 640
    x2 = 64
    x3 = 10240
    x4 = True
    x5 = 0
    ndaddrs = []
    for x6 in range(x5,x3,x2):
        x7 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x5),qaddr(x5),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kDefaultRead1'] = D_0_0_kDefaultRead1

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

