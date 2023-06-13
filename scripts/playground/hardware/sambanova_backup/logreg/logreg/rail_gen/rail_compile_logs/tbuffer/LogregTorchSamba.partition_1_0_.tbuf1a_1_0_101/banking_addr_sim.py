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
    x0 = 1
    x1 = True
    x2 = 10240
    x3 = 64
    x4 = 768
    x5 = 640
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x2,x3):
        x9 = True
        print("trim_pred: {} ".format(x1), end='')
        print("pmufid: {} ".format(x7), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x7),qaddr(x7),x1,x1,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0')
def LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0():
    x0 = 1
    x1 = True
    x2 = 10240
    x3 = 64
    x4 = 768
    x5 = 640
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x6,x0):
        for x9 in range(x7,x2,x5):
            for x10 in range(x7,x4,x3):
                x11 = True
                x14 = x10 < x5
                x16 = x9 + x10
                print("pmufid: {} ".format(x7), end='')
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x7),qaddr(x7),x14,x1,True,))
                x17 = True
                x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0'] = LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0

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

