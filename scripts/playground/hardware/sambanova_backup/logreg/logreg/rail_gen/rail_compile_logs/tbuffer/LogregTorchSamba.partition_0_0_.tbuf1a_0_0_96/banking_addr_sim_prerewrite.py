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
    x2 = 500
    x3 = 10
    x4 = True
    x5 = 1
    x6 = 2
    x7 = 320
    x8 = 5120
    x9 = 0
    x10 = 32
    x11 = 384
    ndaddrs = []
    for x12 in range(x9,x1,x0):
        x13 = True
        print("trim_pred: {} ".format(x4), end='')
        print("pmuid: [" + str(x9) +"," + "] ", end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x9),qaddr(x9),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 64
    x1 = 10240
    x2 = 500
    x3 = 10
    x4 = True
    x5 = 1
    x6 = 2
    x7 = 320
    x8 = 5120
    x9 = 0
    x10 = 32
    x11 = 384
    ndaddrs = []
    for x12 in range(x9,x6,x5):
        for x13 in range(x9,x8,x7):
            for x14 in range(x9,x11,x10):
                x15 = True
                x19 = x13 + x14
                x20 = x19 * x6
                print("pmuid: [" + str(x9) +"," + "] ", end='')
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x9),qaddr(x9),x4,x4,True,))
                x21 = True
                x26 = x24 | x25
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 64
    x1 = 10240
    x2 = 500
    x3 = 10
    x4 = True
    x5 = 1
    x6 = 2
    x7 = 320
    x8 = 5120
    x9 = 0
    x10 = 32
    x11 = 384
    ndaddrs = []
    for x12 in range(x9,x2,x5):
        x13 = True
        x17 = x16 < x3
        x18 = x16 if x17 else x9
        x20 = x12 // x10
        x21 = x20 * x7
        x22 = x18 * x10
        x23 = x21 + x22
        x24 = x12 % x10
        x25 = x23 + x24
        x26 = x25 * x6
        print("pmuid: [" + str(x9) +"," + "] ", end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x26),qaddr(x26//2),qaddr(x26//64),qaddr(x9),qaddr(x9),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar

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

