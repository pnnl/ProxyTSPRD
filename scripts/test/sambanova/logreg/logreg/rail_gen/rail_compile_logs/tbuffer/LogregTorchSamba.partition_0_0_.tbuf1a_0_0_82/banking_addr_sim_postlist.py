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
    x0 = 640
    x1 = 768
    x2 = 10
    x3 = True
    x4 = 1
    x5 = 2
    x6 = 0
    x7 = 64
    ndaddrs = []
    for x8 in range(x6,x0,x7):
        x9 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x6), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kDefaultWrite'] = kDefaultWrite
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 640
    x1 = 768
    x2 = 10
    x3 = True
    x4 = 1
    x5 = 2
    x6 = 0
    x7 = 64
    ndaddrs = []
    for x8 in range(x6,x5,x4):
        for x9 in range(x6,x1,x7):
            x10 = True
            print("pmufid: {} ".format(x6), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),x3,x3,True,))
            x14 = True
            x19 = x17 | x18
    return ndaddrs

ndaddr_funcs['LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 640
    x1 = 768
    x2 = 10
    x3 = True
    x4 = 1
    x5 = 2
    x6 = 0
    x7 = 64
    ndaddrs = []
    for x8 in range(x6,x4,x4):
        x9 = True
        x13 = x12 < x2
        x14 = x12 if x13 else x6
        x16 = x14 * x7
        print("pmufid: {} ".format(x6), end='')
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x6),qaddr(x6),x3,x3,True,))
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

