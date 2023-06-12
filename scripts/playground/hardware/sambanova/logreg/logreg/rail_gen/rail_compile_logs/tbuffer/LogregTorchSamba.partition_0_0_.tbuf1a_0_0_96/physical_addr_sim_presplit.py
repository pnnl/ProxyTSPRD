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
    x0 = 10240
    x1 = 768
    x2 = 1
    x3 = 500
    x4 = 0
    x5 = 0
    x6 = 64
    x7 = 640
    x8 = 10
    x9 = 32
    x10 = 2
    x11 = 5
    x12 = 31
    ndaddrs = []
    for x13 in range(x4,x0,x6):
        x14 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x4),qaddr(x4),bin(x10)[2::],x10 % 2 >> 0 ,x10 % 4 >> 1 ,x10 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_kDefaultWrite'] = D_0_0_kDefaultWrite
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0')
def D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0():
    x0 = 10240
    x1 = 768
    x2 = 1
    x3 = 500
    x4 = 0
    x5 = 0
    x6 = 64
    x7 = 640
    x8 = 10
    x9 = 32
    x10 = 2
    x11 = 5
    x12 = 31
    ndaddrs = []
    for x13 in range(x4,x10,x2):
        for x14 in range(x4,x0,x7):
            for x15 in range(x4,x1,x6):
                x16 = True
                x20 = x14 + x15
                print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x4),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
                x21 = True
                x26 = x24 | x25
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0'] = D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXVec_0
ctxs.append('D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar')
def D_0_0_LogregTorchSamba_partition_0_0__logreg__criterion__crossentropyloss_kInputXScalar():
    x0 = 10240
    x1 = 768
    x2 = 1
    x3 = 500
    x4 = 0
    x5 = 0
    x6 = 64
    x7 = 640
    x8 = 10
    x9 = 32
    x10 = 2
    x11 = 5
    x12 = 31
    ndaddrs = []
    for x13 in range(x4,x3,x2):
        x14 = True
        x18 = x17 < x8
        x19 = x17 if x18 else x4
        x21 = x13 >> x11
        x22 = x13 & x12
        x23 = x21 * x8 + x19
        x24 = x23 * x9 + x22
        x25 = x24 * x10
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x25),qaddr(x25//2),qaddr(x25//64),qaddr(x4),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
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

