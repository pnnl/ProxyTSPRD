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
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    for x8 in range(x4,x3,x1):
        for x7 in range(x4,x0,x2):
            x9 = True
            x12 = x7 < x1
            x14 = x8 + x7
            x15 =  1 if x12 else 0
            x16 = x15 * x5
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x14),qaddr(x14//2),qaddr(x14//64),qaddr(x4),qaddr(x4),bin(x16)[2::],x16 % 2 >> 0 ,x16 % 4 >> 1 ,x16 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['D_0_0_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0'] = D_0_0_LogregTorchSamba_partition_1_0__logreg__criterion__crossentropyloss_bwd_loss_kOutput0
ctxs.append('D_0_0_kDefaultRead1')
def D_0_0_kDefaultRead1():
    x0 = 768
    x1 = 640
    x2 = 64
    x3 = 10240
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    for x7 in range(x4,x3,x2):
        x8 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
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

