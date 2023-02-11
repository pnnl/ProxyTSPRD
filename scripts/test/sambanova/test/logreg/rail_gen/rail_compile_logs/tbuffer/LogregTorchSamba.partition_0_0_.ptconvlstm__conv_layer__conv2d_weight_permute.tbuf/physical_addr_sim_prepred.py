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

ctxs.append('D_0_0_0_0_0_min_0_max_417792_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_0_max_417792_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 0 and x16 < 417792,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_0_max_417792_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_0_max_417792_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_0_max_417792_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_0_max_417792_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 0 and x16 < 417792,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_0_max_417792_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_0_max_417792_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_417792_max_835584_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_417792_max_835584_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 417792 and x16 < 835584,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_417792_max_835584_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_417792_max_835584_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_417792_max_835584_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_417792_max_835584_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 417792 and x16 < 835584,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_417792_max_835584_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_417792_max_835584_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_835584_max_1253376_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_835584_max_1253376_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 835584 and x16 < 1253376,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_835584_max_1253376_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_835584_max_1253376_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_835584_max_1253376_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_835584_max_1253376_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 835584 and x16 < 1253376,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_835584_max_1253376_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_835584_max_1253376_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_1253376_max_1671168_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_1253376_max_1671168_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 1253376 and x16 < 1671168,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1253376_max_1671168_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_1253376_max_1671168_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_1253376_max_1671168_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_1253376_max_1671168_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 1253376 and x16 < 1671168,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1253376_max_1671168_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_1253376_max_1671168_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_1671168_max_2088960_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_1671168_max_2088960_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 1671168 and x16 < 2088960,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1671168_max_2088960_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_1671168_max_2088960_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_1671168_max_2088960_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_1671168_max_2088960_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 1671168 and x16 < 2088960,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1671168_max_2088960_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_1671168_max_2088960_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_2088960_max_2506752_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_2088960_max_2506752_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 2088960 and x16 < 2506752,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2088960_max_2506752_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_2088960_max_2506752_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_2088960_max_2506752_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_2088960_max_2506752_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 2088960 and x16 < 2506752,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2088960_max_2506752_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_2088960_max_2506752_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_2506752_max_2924544_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_2506752_max_2924544_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 2506752 and x16 < 2924544,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2506752_max_2924544_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_2506752_max_2924544_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_2506752_max_2924544_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_2506752_max_2924544_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 2506752 and x16 < 2924544,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2506752_max_2924544_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_2506752_max_2924544_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_2924544_max_3342336_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_2924544_max_3342336_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 2924544 and x16 < 3342336,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2924544_max_3342336_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_2924544_max_3342336_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_2924544_max_3342336_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_2924544_max_3342336_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 2924544 and x16 < 3342336,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2924544_max_3342336_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_2924544_max_3342336_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_3342336_max_3760128_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_3342336_max_3760128_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 3342336 and x16 < 3760128,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3342336_max_3760128_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_3342336_max_3760128_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_3342336_max_3760128_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_3342336_max_3760128_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 3342336 and x16 < 3760128,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3342336_max_3760128_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_3342336_max_3760128_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_3760128_max_4177920_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_3760128_max_4177920_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 3760128 and x16 < 4177920,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3760128_max_4177920_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_3760128_max_4177920_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_3760128_max_4177920_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_3760128_max_4177920_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 3760128 and x16 < 4177920,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3760128_max_4177920_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_3760128_max_4177920_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_4177920_max_4595712_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_4177920_max_4595712_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 4177920 and x16 < 4595712,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4177920_max_4595712_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_4177920_max_4595712_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_4177920_max_4595712_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_4177920_max_4595712_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 4177920 and x16 < 4595712,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4177920_max_4595712_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_4177920_max_4595712_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_4595712_max_5013504_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_4595712_max_5013504_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 4595712 and x16 < 5013504,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4595712_max_5013504_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_4595712_max_5013504_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_4595712_max_5013504_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_4595712_max_5013504_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 4595712 and x16 < 5013504,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4595712_max_5013504_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_4595712_max_5013504_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_5013504_max_5431296_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_5013504_max_5431296_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 5013504 and x16 < 5431296,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5013504_max_5431296_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_5013504_max_5431296_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_5013504_max_5431296_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_5013504_max_5431296_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 5013504 and x16 < 5431296,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5013504_max_5431296_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_5013504_max_5431296_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_5431296_max_5849088_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_5431296_max_5849088_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 5431296 and x16 < 5849088,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5431296_max_5849088_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_5431296_max_5849088_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_5431296_max_5849088_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_5431296_max_5849088_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 5431296 and x16 < 5849088,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5431296_max_5849088_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_5431296_max_5849088_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_5849088_max_6266880_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_5849088_max_6266880_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 5849088 and x16 < 6266880,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5849088_max_6266880_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_5849088_max_6266880_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_5849088_max_6266880_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_5849088_max_6266880_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 5849088 and x16 < 6266880,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5849088_max_6266880_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_5849088_max_6266880_R_0_0_0_0__dup0_R
ctxs.append('D_0_0_0_0_0_min_6266880_max_6684672_W_0_0_0_0__dup0_W')
def D_0_0_0_0_0_min_6266880_max_6684672_W_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 6684672
    x1 = 2228224
    x2 = 278528
    x3 = 0
    x4 = 64
    x5 = 2048
    x6 = True
    for x7 in range(x3,x1,x2):
        for x8 in range(x3,x5,x4):
            for x9 in range(x3,x2,x5):
                for x10 in range(x3,x0,x1):
                    x11 = True
                    x14 = x10 + x7
                    x15 = x14 + x9
                    x16 = x15 + x8
                    print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x8),x6,x6,x16 >= 6266880 and x16 < 6684672,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_6266880_max_6684672_W_0_0_0_0__dup0_W'] = D_0_0_0_0_0_min_6266880_max_6684672_W_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_0_0_min_6266880_max_6684672_R_0_0_0_0__dup0_R')
def D_0_0_0_0_0_min_6266880_max_6684672_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 1
    x4 = 204
    x5 = 64
    x6 = 256
    x7 = 0
    for x8 in range(x7,x1,x0):
        for x9 in range(x7,x6,x5):
            x10 = True
            x16 = x8 + x9
            x17 = x9 == x7
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x9),x2,x17,x16 >= 6266880 and x16 < 6684672,))
            x18 = True
            x19 = True
            x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_6266880_max_6684672_R_0_0_0_0__dup0_R'] = D_0_0_0_0_0_min_6266880_max_6684672_R_0_0_0_0__dup0_R
ctxs.append('ROB_R_0_0_0_0_R_0_0_0_0__dup0_W')
def ROB_R_0_0_0_0_R_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = 64
    x3 = 13056
    x4 = 0
    x5 = True
    for x8 in range(x4,x3,x2):
        x9 = True
        x10 = True
        x11 = x9 | x10
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x4),x5,x5,True,))
    return ndaddrs

ndaddr_funcs['ROB_R_0_0_0_0_R_0_0_0_0__dup0_W'] = ROB_R_0_0_0_0_R_0_0_0_0__dup0_W
ctxs.append('ROB_R_0_0_0_0_R_0_0_0_0__dup0_R')
def ROB_R_0_0_0_0_R_0_0_0_0__dup0_R():
    ndaddrs = []
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 64
    x4 = 13056
    x5 = 0
    for x9 in range(x5,x4,x3):
        x7 = True
        x10 = True
        x11 = True
        x12 = x10 | x11
        print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x5),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['ROB_R_0_0_0_0_R_0_0_0_0__dup0_R'] = ROB_R_0_0_0_0_R_0_0_0_0__dup0_R

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

