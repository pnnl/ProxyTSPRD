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
    x0 = 64
    x1 = 10240
    x2 = 1
    x3 = True
    x4 = 2
    x5 = 5120
    x6 = 0
    x7 = 32
    x8 = 384
    x9 = 320
    ndaddrs = []
    for x10 in range(x6,x1,x0):
        x11 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmuid: [" + str(x6) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0')
def LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kInputX0():
    x0 = 64
    x1 = 10240
    x2 = 1
    x3 = True
    x4 = 2
    x5 = 5120
    x6 = 0
    x7 = 32
    x8 = 384
    x9 = 320
    ndaddrs = []
    for x10 in range(x6,x4,x2):
        for x11 in range(x6,x5,x9):
            for x12 in range(x6,x8,x7):
                x13 = True
                x16 = x12 < x9
                x18 = x11 + x12
                x19 = x18 * x4
                print("pmuid: [" + str(x6) +"," + "] ", end='')
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x6),qaddr(x6),x16,x3,True,))
                x20 = True
                x23 = x21 | x22
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

