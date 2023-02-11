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

ctxs.append('w_loop_0_0')
def w_loop_0_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x4,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('w_loop_1_0')
def w_loop_1_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x4,x5,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_1_0'] = w_loop_1_0
ctxs.append('w_loop_2_0')
def w_loop_2_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x5,x6,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_2_0'] = w_loop_2_0
ctxs.append('w_loop_3_0')
def w_loop_3_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x6,x10,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_3_0'] = w_loop_3_0
ctxs.append('w_loop_4_0')
def w_loop_4_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x10,x0,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_4_0'] = w_loop_4_0
ctxs.append('w_loop_5_0')
def w_loop_5_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x0,x1,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_5_0'] = w_loop_5_0
ctxs.append('w_loop_6_0')
def w_loop_6_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x1,x2,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_6_0'] = w_loop_6_0
ctxs.append('w_loop_7_0')
def w_loop_7_0():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x2,x7,x8):
        x13 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x11), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_7_0'] = w_loop_7_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 458752
    x3 = True
    x4 = 65536
    x5 = 131072
    x6 = 196608
    x7 = 524288
    x8 = 64
    x9 = 4096
    x10 = 262144
    x11 = 0
    ndaddrs = []
    for x12 in range(x11,x7,x9):
        for x13 in range(x11,x9,x8):
            x14 = True
            print("trim_pred: {} ".format(x3), end='')
            x17 = x12 + x13
            print("pmufid: {} ".format(x11), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x11),qaddr(x11),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx

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

