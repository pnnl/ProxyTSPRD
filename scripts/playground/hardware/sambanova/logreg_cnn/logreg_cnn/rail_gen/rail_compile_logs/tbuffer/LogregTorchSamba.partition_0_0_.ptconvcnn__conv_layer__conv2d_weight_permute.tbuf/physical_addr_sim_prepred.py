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

ctxs.append('D_0_0_0_0_0_min_0_max_417792_W')
def D_0_0_0_0_0_min_0_max_417792_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 0 and x19 < 417792,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_0_max_417792_W'] = D_0_0_0_0_0_min_0_max_417792_W
ctxs.append('D_0_0_0_0_0_min_0_max_417792_R')
def D_0_0_0_0_0_min_0_max_417792_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 0 and x18 < 417792,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_0_max_417792_R'] = D_0_0_0_0_0_min_0_max_417792_R
ctxs.append('D_0_0_0_0_0_min_417792_max_835584_W')
def D_0_0_0_0_0_min_417792_max_835584_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 417792 and x19 < 835584,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_417792_max_835584_W'] = D_0_0_0_0_0_min_417792_max_835584_W
ctxs.append('D_0_0_0_0_0_min_417792_max_835584_R')
def D_0_0_0_0_0_min_417792_max_835584_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 417792 and x18 < 835584,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_417792_max_835584_R'] = D_0_0_0_0_0_min_417792_max_835584_R
ctxs.append('D_0_0_0_0_0_min_835584_max_1253376_W')
def D_0_0_0_0_0_min_835584_max_1253376_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 835584 and x19 < 1253376,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_835584_max_1253376_W'] = D_0_0_0_0_0_min_835584_max_1253376_W
ctxs.append('D_0_0_0_0_0_min_835584_max_1253376_R')
def D_0_0_0_0_0_min_835584_max_1253376_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 835584 and x18 < 1253376,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_835584_max_1253376_R'] = D_0_0_0_0_0_min_835584_max_1253376_R
ctxs.append('D_0_0_0_0_0_min_1253376_max_1671168_W')
def D_0_0_0_0_0_min_1253376_max_1671168_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 1253376 and x19 < 1671168,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1253376_max_1671168_W'] = D_0_0_0_0_0_min_1253376_max_1671168_W
ctxs.append('D_0_0_0_0_0_min_1253376_max_1671168_R')
def D_0_0_0_0_0_min_1253376_max_1671168_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 1253376 and x18 < 1671168,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1253376_max_1671168_R'] = D_0_0_0_0_0_min_1253376_max_1671168_R
ctxs.append('D_0_0_0_0_0_min_1671168_max_2088960_W')
def D_0_0_0_0_0_min_1671168_max_2088960_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 1671168 and x19 < 2088960,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1671168_max_2088960_W'] = D_0_0_0_0_0_min_1671168_max_2088960_W
ctxs.append('D_0_0_0_0_0_min_1671168_max_2088960_R')
def D_0_0_0_0_0_min_1671168_max_2088960_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 1671168 and x18 < 2088960,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1671168_max_2088960_R'] = D_0_0_0_0_0_min_1671168_max_2088960_R
ctxs.append('D_0_0_0_0_0_min_2088960_max_2506752_W')
def D_0_0_0_0_0_min_2088960_max_2506752_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 2088960 and x19 < 2506752,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2088960_max_2506752_W'] = D_0_0_0_0_0_min_2088960_max_2506752_W
ctxs.append('D_0_0_0_0_0_min_2088960_max_2506752_R')
def D_0_0_0_0_0_min_2088960_max_2506752_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 2088960 and x18 < 2506752,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2088960_max_2506752_R'] = D_0_0_0_0_0_min_2088960_max_2506752_R
ctxs.append('D_0_0_0_0_0_min_2506752_max_2924544_W')
def D_0_0_0_0_0_min_2506752_max_2924544_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 2506752 and x19 < 2924544,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2506752_max_2924544_W'] = D_0_0_0_0_0_min_2506752_max_2924544_W
ctxs.append('D_0_0_0_0_0_min_2506752_max_2924544_R')
def D_0_0_0_0_0_min_2506752_max_2924544_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 2506752 and x18 < 2924544,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2506752_max_2924544_R'] = D_0_0_0_0_0_min_2506752_max_2924544_R
ctxs.append('D_0_0_0_0_0_min_2924544_max_3342336_W')
def D_0_0_0_0_0_min_2924544_max_3342336_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 2924544 and x19 < 3342336,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2924544_max_3342336_W'] = D_0_0_0_0_0_min_2924544_max_3342336_W
ctxs.append('D_0_0_0_0_0_min_2924544_max_3342336_R')
def D_0_0_0_0_0_min_2924544_max_3342336_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 2924544 and x18 < 3342336,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2924544_max_3342336_R'] = D_0_0_0_0_0_min_2924544_max_3342336_R
ctxs.append('D_0_0_0_0_0_min_3342336_max_3760128_W')
def D_0_0_0_0_0_min_3342336_max_3760128_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 3342336 and x19 < 3760128,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3342336_max_3760128_W'] = D_0_0_0_0_0_min_3342336_max_3760128_W
ctxs.append('D_0_0_0_0_0_min_3342336_max_3760128_R')
def D_0_0_0_0_0_min_3342336_max_3760128_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 3342336 and x18 < 3760128,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3342336_max_3760128_R'] = D_0_0_0_0_0_min_3342336_max_3760128_R
ctxs.append('D_0_0_0_0_0_min_3760128_max_4177920_W')
def D_0_0_0_0_0_min_3760128_max_4177920_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 3760128 and x19 < 4177920,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3760128_max_4177920_W'] = D_0_0_0_0_0_min_3760128_max_4177920_W
ctxs.append('D_0_0_0_0_0_min_3760128_max_4177920_R')
def D_0_0_0_0_0_min_3760128_max_4177920_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 3760128 and x18 < 4177920,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3760128_max_4177920_R'] = D_0_0_0_0_0_min_3760128_max_4177920_R
ctxs.append('D_0_0_0_0_0_min_4177920_max_4595712_W')
def D_0_0_0_0_0_min_4177920_max_4595712_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 4177920 and x19 < 4595712,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4177920_max_4595712_W'] = D_0_0_0_0_0_min_4177920_max_4595712_W
ctxs.append('D_0_0_0_0_0_min_4177920_max_4595712_R')
def D_0_0_0_0_0_min_4177920_max_4595712_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 4177920 and x18 < 4595712,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4177920_max_4595712_R'] = D_0_0_0_0_0_min_4177920_max_4595712_R
ctxs.append('D_0_0_0_0_0_min_4595712_max_5013504_W')
def D_0_0_0_0_0_min_4595712_max_5013504_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 4595712 and x19 < 5013504,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4595712_max_5013504_W'] = D_0_0_0_0_0_min_4595712_max_5013504_W
ctxs.append('D_0_0_0_0_0_min_4595712_max_5013504_R')
def D_0_0_0_0_0_min_4595712_max_5013504_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 4595712 and x18 < 5013504,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4595712_max_5013504_R'] = D_0_0_0_0_0_min_4595712_max_5013504_R
ctxs.append('D_0_0_0_0_0_min_5013504_max_5431296_W')
def D_0_0_0_0_0_min_5013504_max_5431296_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 5013504 and x19 < 5431296,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5013504_max_5431296_W'] = D_0_0_0_0_0_min_5013504_max_5431296_W
ctxs.append('D_0_0_0_0_0_min_5013504_max_5431296_R')
def D_0_0_0_0_0_min_5013504_max_5431296_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 5013504 and x18 < 5431296,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5013504_max_5431296_R'] = D_0_0_0_0_0_min_5013504_max_5431296_R
ctxs.append('D_0_0_0_0_0_min_5431296_max_5849088_W')
def D_0_0_0_0_0_min_5431296_max_5849088_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 5431296 and x19 < 5849088,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5431296_max_5849088_W'] = D_0_0_0_0_0_min_5431296_max_5849088_W
ctxs.append('D_0_0_0_0_0_min_5431296_max_5849088_R')
def D_0_0_0_0_0_min_5431296_max_5849088_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 5431296 and x18 < 5849088,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5431296_max_5849088_R'] = D_0_0_0_0_0_min_5431296_max_5849088_R
ctxs.append('D_0_0_0_0_0_min_5849088_max_6266880_W')
def D_0_0_0_0_0_min_5849088_max_6266880_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 5849088 and x19 < 6266880,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5849088_max_6266880_W'] = D_0_0_0_0_0_min_5849088_max_6266880_W
ctxs.append('D_0_0_0_0_0_min_5849088_max_6266880_R')
def D_0_0_0_0_0_min_5849088_max_6266880_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 5849088 and x18 < 6266880,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5849088_max_6266880_R'] = D_0_0_0_0_0_min_5849088_max_6266880_R
ctxs.append('D_0_0_0_0_0_min_6266880_max_6684672_W')
def D_0_0_0_0_0_min_6266880_max_6684672_W():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x1,x0):
        for x11 in range(x9,x2,x7):
            for x12 in range(x9,x0,x2):
                for x13 in range(x9,x3,x1):
                    x14 = True
                    x17 = x13 + x10
                    x18 = x17 + x12
                    x19 = x18 + x11
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x19),qaddr(x19//2),qaddr(x19//64),qaddr(x11),qaddr(x9),x4,x4,x19 >= 6266880 and x19 < 6684672,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_6266880_max_6684672_W'] = D_0_0_0_0_0_min_6266880_max_6684672_W
ctxs.append('D_0_0_0_0_0_min_6266880_max_6684672_R')
def D_0_0_0_0_0_min_6266880_max_6684672_R():
    x0 = 278528
    x1 = 2228224
    x2 = 2048
    x3 = 6684672
    x4 = True
    x5 = 1
    x6 = 204
    x7 = 64
    x8 = 256
    x9 = 0
    ndaddrs = []
    for x10 in range(x9,x3,x2):
        for x11 in range(x9,x8,x7):
            x12 = True
            x18 = x10 + x11
            x19 = x11 == x9
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x11),qaddr(x9),x4,x19,x18 >= 6266880 and x18 < 6684672,))
            x20 = True
            x21 = True
            x22 = x20 | x21
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_6266880_max_6684672_R'] = D_0_0_0_0_0_min_6266880_max_6684672_R
ctxs.append('ROB_R_0_0_0_0_R')
def ROB_R_0_0_0_0_R():
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 64
    x4 = 13056
    x5 = 0
    ndaddrs = []
    for x8 in range(x5,x4,x3):
        x9 = True
        x10 = True
        x11 = x9 | x10
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['ROB_R_0_0_0_0_R'] = ROB_R_0_0_0_0_R
ctxs.append('ROB_R_0_0_0_0_R')
def ROB_R_0_0_0_0_R():
    x0 = 2048
    x1 = 6684672
    x2 = True
    x3 = 64
    x4 = 13056
    x5 = 0
    ndaddrs = []
    for x9 in range(x5,x4,x3):
        x7 = True
        x10 = True
        x11 = True
        x12 = x10 | x11
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x5),qaddr(x5),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['ROB_R_0_0_0_0_R'] = ROB_R_0_0_0_0_R

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

