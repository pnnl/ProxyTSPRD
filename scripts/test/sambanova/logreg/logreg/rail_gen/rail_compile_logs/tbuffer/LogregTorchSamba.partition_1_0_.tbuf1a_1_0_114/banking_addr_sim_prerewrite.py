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

ctxs.append('LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0')
def LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0():
    x0 = 64
    x1 = 10240
    x2 = True
    x3 = 384
    x4 = 320
    x5 = 0
    x6 = 32
    x7 = 5120
    x8 = 2
    ndaddrs = []
    for x10 in range(x5,x7,x4):
        for x9 in range(x5,x3,x6):
            x11 = True
            x14 = x9 < x4
            print("trim_pred: {} ".format(x2), end='')
            x16 = x10 + x9
            x17 = x16 * x8
            print("pmuid: [" + str(x5) +"," + "] ", end='')
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x5),qaddr(x5),x2,x14,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0'] = LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0
ctxs.append('kDefaultRead1')
def kDefaultRead1():
    x0 = 64
    x1 = 10240
    x2 = True
    x3 = 384
    x4 = 320
    x5 = 0
    x6 = 32
    x7 = 5120
    x8 = 2
    ndaddrs = []
    for x9 in range(x5,x1,x0):
        x10 = True
        print("pmuid: [" + str(x5) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x5),qaddr(x5),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['kDefaultRead1'] = kDefaultRead1

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

