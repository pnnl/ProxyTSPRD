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
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 0 and x20 < 417792,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_0_max_417792_W'] = D_0_0_0_0_0_min_0_max_417792_W
ctxs.append('D_0_0_0_0_0_min_0_max_417792_R')
def D_0_0_0_0_0_min_0_max_417792_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 0 and x18 < 417792,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_0_max_417792_R'] = D_0_0_0_0_0_min_0_max_417792_R
ctxs.append('D_0_0_0_0_0_min_417792_max_835584_W')
def D_0_0_0_0_0_min_417792_max_835584_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 417792 and x20 < 835584,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_417792_max_835584_W'] = D_0_0_0_0_0_min_417792_max_835584_W
ctxs.append('D_0_0_0_0_0_min_417792_max_835584_R')
def D_0_0_0_0_0_min_417792_max_835584_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 417792 and x18 < 835584,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_417792_max_835584_R'] = D_0_0_0_0_0_min_417792_max_835584_R
ctxs.append('D_0_0_0_0_0_min_835584_max_1253376_W')
def D_0_0_0_0_0_min_835584_max_1253376_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 835584 and x20 < 1253376,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_835584_max_1253376_W'] = D_0_0_0_0_0_min_835584_max_1253376_W
ctxs.append('D_0_0_0_0_0_min_835584_max_1253376_R')
def D_0_0_0_0_0_min_835584_max_1253376_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 835584 and x18 < 1253376,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_835584_max_1253376_R'] = D_0_0_0_0_0_min_835584_max_1253376_R
ctxs.append('D_0_0_0_0_0_min_1253376_max_1671168_W')
def D_0_0_0_0_0_min_1253376_max_1671168_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 1253376 and x20 < 1671168,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1253376_max_1671168_W'] = D_0_0_0_0_0_min_1253376_max_1671168_W
ctxs.append('D_0_0_0_0_0_min_1253376_max_1671168_R')
def D_0_0_0_0_0_min_1253376_max_1671168_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 1253376 and x18 < 1671168,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1253376_max_1671168_R'] = D_0_0_0_0_0_min_1253376_max_1671168_R
ctxs.append('D_0_0_0_0_0_min_1671168_max_2088960_W')
def D_0_0_0_0_0_min_1671168_max_2088960_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 1671168 and x20 < 2088960,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1671168_max_2088960_W'] = D_0_0_0_0_0_min_1671168_max_2088960_W
ctxs.append('D_0_0_0_0_0_min_1671168_max_2088960_R')
def D_0_0_0_0_0_min_1671168_max_2088960_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 1671168 and x18 < 2088960,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_1671168_max_2088960_R'] = D_0_0_0_0_0_min_1671168_max_2088960_R
ctxs.append('D_0_0_0_0_0_min_2088960_max_2506752_W')
def D_0_0_0_0_0_min_2088960_max_2506752_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 2088960 and x20 < 2506752,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2088960_max_2506752_W'] = D_0_0_0_0_0_min_2088960_max_2506752_W
ctxs.append('D_0_0_0_0_0_min_2088960_max_2506752_R')
def D_0_0_0_0_0_min_2088960_max_2506752_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 2088960 and x18 < 2506752,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2088960_max_2506752_R'] = D_0_0_0_0_0_min_2088960_max_2506752_R
ctxs.append('D_0_0_0_0_0_min_2506752_max_2924544_W')
def D_0_0_0_0_0_min_2506752_max_2924544_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 2506752 and x20 < 2924544,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2506752_max_2924544_W'] = D_0_0_0_0_0_min_2506752_max_2924544_W
ctxs.append('D_0_0_0_0_0_min_2506752_max_2924544_R')
def D_0_0_0_0_0_min_2506752_max_2924544_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 2506752 and x18 < 2924544,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2506752_max_2924544_R'] = D_0_0_0_0_0_min_2506752_max_2924544_R
ctxs.append('D_0_0_0_0_0_min_2924544_max_3342336_W')
def D_0_0_0_0_0_min_2924544_max_3342336_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 2924544 and x20 < 3342336,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2924544_max_3342336_W'] = D_0_0_0_0_0_min_2924544_max_3342336_W
ctxs.append('D_0_0_0_0_0_min_2924544_max_3342336_R')
def D_0_0_0_0_0_min_2924544_max_3342336_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 2924544 and x18 < 3342336,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_2924544_max_3342336_R'] = D_0_0_0_0_0_min_2924544_max_3342336_R
ctxs.append('D_0_0_0_0_0_min_3342336_max_3760128_W')
def D_0_0_0_0_0_min_3342336_max_3760128_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 3342336 and x20 < 3760128,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3342336_max_3760128_W'] = D_0_0_0_0_0_min_3342336_max_3760128_W
ctxs.append('D_0_0_0_0_0_min_3342336_max_3760128_R')
def D_0_0_0_0_0_min_3342336_max_3760128_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 3342336 and x18 < 3760128,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3342336_max_3760128_R'] = D_0_0_0_0_0_min_3342336_max_3760128_R
ctxs.append('D_0_0_0_0_0_min_3760128_max_4177920_W')
def D_0_0_0_0_0_min_3760128_max_4177920_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 3760128 and x20 < 4177920,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3760128_max_4177920_W'] = D_0_0_0_0_0_min_3760128_max_4177920_W
ctxs.append('D_0_0_0_0_0_min_3760128_max_4177920_R')
def D_0_0_0_0_0_min_3760128_max_4177920_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 3760128 and x18 < 4177920,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_3760128_max_4177920_R'] = D_0_0_0_0_0_min_3760128_max_4177920_R
ctxs.append('D_0_0_0_0_0_min_4177920_max_4595712_W')
def D_0_0_0_0_0_min_4177920_max_4595712_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 4177920 and x20 < 4595712,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4177920_max_4595712_W'] = D_0_0_0_0_0_min_4177920_max_4595712_W
ctxs.append('D_0_0_0_0_0_min_4177920_max_4595712_R')
def D_0_0_0_0_0_min_4177920_max_4595712_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 4177920 and x18 < 4595712,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4177920_max_4595712_R'] = D_0_0_0_0_0_min_4177920_max_4595712_R
ctxs.append('D_0_0_0_0_0_min_4595712_max_5013504_W')
def D_0_0_0_0_0_min_4595712_max_5013504_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 4595712 and x20 < 5013504,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4595712_max_5013504_W'] = D_0_0_0_0_0_min_4595712_max_5013504_W
ctxs.append('D_0_0_0_0_0_min_4595712_max_5013504_R')
def D_0_0_0_0_0_min_4595712_max_5013504_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 4595712 and x18 < 5013504,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_4595712_max_5013504_R'] = D_0_0_0_0_0_min_4595712_max_5013504_R
ctxs.append('D_0_0_0_0_0_min_5013504_max_5431296_W')
def D_0_0_0_0_0_min_5013504_max_5431296_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 5013504 and x20 < 5431296,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5013504_max_5431296_W'] = D_0_0_0_0_0_min_5013504_max_5431296_W
ctxs.append('D_0_0_0_0_0_min_5013504_max_5431296_R')
def D_0_0_0_0_0_min_5013504_max_5431296_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 5013504 and x18 < 5431296,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5013504_max_5431296_R'] = D_0_0_0_0_0_min_5013504_max_5431296_R
ctxs.append('D_0_0_0_0_0_min_5431296_max_5849088_W')
def D_0_0_0_0_0_min_5431296_max_5849088_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 5431296 and x20 < 5849088,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5431296_max_5849088_W'] = D_0_0_0_0_0_min_5431296_max_5849088_W
ctxs.append('D_0_0_0_0_0_min_5431296_max_5849088_R')
def D_0_0_0_0_0_min_5431296_max_5849088_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 5431296 and x18 < 5849088,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5431296_max_5849088_R'] = D_0_0_0_0_0_min_5431296_max_5849088_R
ctxs.append('D_0_0_0_0_0_min_5849088_max_6266880_W')
def D_0_0_0_0_0_min_5849088_max_6266880_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 5849088 and x20 < 6266880,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5849088_max_6266880_W'] = D_0_0_0_0_0_min_5849088_max_6266880_W
ctxs.append('D_0_0_0_0_0_min_5849088_max_6266880_R')
def D_0_0_0_0_0_min_5849088_max_6266880_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 5849088 and x18 < 6266880,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_5849088_max_6266880_R'] = D_0_0_0_0_0_min_5849088_max_6266880_R
ctxs.append('D_0_0_0_0_0_min_6266880_max_6684672_W')
def D_0_0_0_0_0_min_6266880_max_6684672_W():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x3,x2):
        for x12 in range(x8,x4,x6):
            for x13 in range(x8,x2,x4):
                for x14 in range(x8,x5,x3):
                    x15 = True
                    x18 = x14 + x11
                    x19 = x18 + x13
                    x20 = x19 + x12
                    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x20),qaddr(x20//2),qaddr(x20//64),qaddr(x12),qaddr(x8),bin(x9)[2::],x9 % 2 >> 0 ,x9 % 4 >> 1 ,x9 % 8 >> 2 ,x20 >= 6266880 and x20 < 6684672,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_6266880_max_6684672_W'] = D_0_0_0_0_0_min_6266880_max_6684672_W
ctxs.append('D_0_0_0_0_0_min_6266880_max_6684672_R')
def D_0_0_0_0_0_min_6266880_max_6684672_R():
    x0 = 1
    x1 = 816
    x2 = 278528
    x3 = 2228224
    x4 = 2048
    x5 = 6684672
    x6 = 64
    x7 = 256
    x8 = 0
    x9 = 2
    x10 = 4
    ndaddrs = []
    for x11 in range(x8,x5,x4):
        for x12 in range(x8,x7,x6):
            x13 = True
            x18 = x11 + x12
            x19 = x12!=x8
            x20 =  1 if x19 else 0
            x21 = x20 * x10
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x18),qaddr(x18//2),qaddr(x18//64),qaddr(x12),qaddr(x8),bin(x21)[2::],x21 % 2 >> 0 ,x21 % 4 >> 1 ,x21 % 8 >> 2 ,x18 >= 6266880 and x18 < 6684672,))
            x22 = True
            x23 = x22 | x13
    return ndaddrs

ndaddr_funcs['D_0_0_0_0_0_min_6266880_max_6684672_R'] = D_0_0_0_0_0_min_6266880_max_6684672_R
ctxs.append('ROB_R_0_0_0_0_R')
def ROB_R_0_0_0_0_R():
    x0 = 2048
    x1 = 6684672
    x2 = 64
    x3 = 13056
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    for x9 in range(x4,x3,x2):
        x10 = True
        x11 = True
        x12 = x10 | x11
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x4),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['ROB_R_0_0_0_0_R'] = ROB_R_0_0_0_0_R
ctxs.append('ROB_R_0_0_0_0_R')
def ROB_R_0_0_0_0_R():
    x0 = 2048
    x1 = 6684672
    x2 = 64
    x3 = 13056
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    for x10 in range(x4,x3,x2):
        x8 = True
        x11 = True
        x12 = x11 | x8
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),qaddr(x4),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
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

