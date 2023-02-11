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

ctxs.append('D_0_0_kDefaultWrite')
def D_0_0_kDefaultWrite():
    x0 = 640
    x1 = 2
    x2 = 768
    x3 = 1
    x4 = 10
    x5 = 64
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x0,x5):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x7),qaddr(x7),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kDefaultWrite'] = D_0_0_kDefaultWrite
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 640
    x1 = 2
    x2 = 768
    x3 = 1
    x4 = 10
    x5 = 64
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x1,x3):
        for x9 in range(x7,x2,x5):
            x10 = True
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x7),qaddr(x7),x6,x6,True,))
            x14 = True
            x19 = x17 | x18
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 640
    x1 = 2
    x2 = 768
    x3 = 1
    x4 = 10
    x5 = 64
    x6 = True
    x7 = 0
    ndaddrs = []
    for x8 in range(x7,x3,x3):
        x9 = True
        x13 = x12 < x4
        x14 = x12 if x13 else x7
        x16 = x14 * x5
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x7),qaddr(x7),x6,x6,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar'] = D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar

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

