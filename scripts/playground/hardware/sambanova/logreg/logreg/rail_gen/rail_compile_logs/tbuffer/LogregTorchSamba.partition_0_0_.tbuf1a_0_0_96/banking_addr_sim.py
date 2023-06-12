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
    x0 = 500
    x1 = True
    x2 = 1
    x3 = 10240
    x4 = 768
    x5 = 0
    x6 = 640
    x7 = 64
    x8 = 10
    x9 = 32
    x10 = 2
    ndaddrs = []
    for x11 in range(x5,x3,x7):
        x12 = True
        print("trim_pred: {} ".format(x1), end='')
        print("pmufid: {} ".format(x5), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x5),qaddr(x5),x1,x1,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 500
    x1 = True
    x2 = 1
    x3 = 10240
    x4 = 768
    x5 = 0
    x6 = 640
    x7 = 64
    x8 = 10
    x9 = 32
    x10 = 2
    ndaddrs = []
    for x11 in range(x5,x10,x2):
        for x12 in range(x5,x3,x6):
            for x13 in range(x5,x4,x7):
                x14 = True
                x18 = x12 + x13
                print("pmufid: {} ".format(x5), end='')
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x5),qaddr(x5),x1,x1,True,))
                x19 = True
                x24 = x22 | x23
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 500
    x1 = True
    x2 = 1
    x3 = 10240
    x4 = 768
    x5 = 0
    x6 = 640
    x7 = 64
    x8 = 10
    x9 = 32
    x10 = 2
    ndaddrs = []
    for x11 in range(x5,x0,x2):
        x12 = True
        x16 = x15 < x8
        x17 = x15 if x16 else x5
        x19 = x11 // x9
        x20 = x11 % x9
        x21 = x19 * x8
        x22 = x21 + x17
        x23 = x22 * x9
        x24 = x23 + x20
        x25 = x24 * x10
        print("pmufid: {} ".format(x5), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x5),qaddr(x5),x1,x1,True,))
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

