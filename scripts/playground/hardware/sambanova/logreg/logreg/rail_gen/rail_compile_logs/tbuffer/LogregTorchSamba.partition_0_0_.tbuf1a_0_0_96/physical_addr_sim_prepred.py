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
    x1 = 10240
    x2 = 64
    x3 = 768
    x4 = 1
    x5 = 500
    x6 = 10
    x7 = 32
    x8 = 2
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x1,x2):
        x12 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x10),qaddr(x10),x9,x9,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kDefaultWrite'] = D_0_0_kDefaultWrite
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 640
    x1 = 10240
    x2 = 64
    x3 = 768
    x4 = 1
    x5 = 500
    x6 = 10
    x7 = 32
    x8 = 2
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x8,x4):
        for x12 in range(x10,x1,x0):
            for x13 in range(x10,x3,x2):
                x14 = True
                x18 = x12 + x13
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x10),qaddr(x10),x9,x9,True,))
                x19 = True
                x24 = x22 | x23
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 640
    x1 = 10240
    x2 = 64
    x3 = 768
    x4 = 1
    x5 = 500
    x6 = 10
    x7 = 32
    x8 = 2
    x9 = True
    x10 = 0
    ndaddrs = []
    for x11 in range(x10,x5,x4):
        x12 = True
        x16 = x15 < x6
        x17 = x15 if x16 else x10
        x19 = x11 // x7
        x20 = x11 % x7
        x21 = x19 * x6
        x22 = x21 + x17
        x23 = x22 * x7
        x24 = x23 + x20
        x25 = x24 * x8
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x10),qaddr(x10),x9,x9,True,))
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

