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
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 128
    x4 = True
    x5 = 0
    for x6 in range(x5,x1,x1):
        for x7 in range(x5,x3,x0):
            for x8 in range(x5,x2,x1):
                x9 = True
                x11 = x7 >= x5
                x12 = x7 < x3
                x13 = x11 & x12
                ndaddr = [x7, x8, ]
                en_drop = True
                en_zero = x4
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x16 = True
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('w_loop_1_0')
def w_loop_1_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 128
    x3 = 256
    x4 = True
    x5 = 0
    for x6 in range(x5,x1,x1):
        for x7 in range(x2,x3,x0):
            for x8 in range(x5,x3,x1):
                x9 = True
                x11 = x7 >= x2
                x12 = x7 < x3
                x13 = x11 & x12
                ndaddr = [x7, x8, ]
                en_drop = True
                en_zero = x4
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x16 = True
    return ndaddrs

ndaddr_funcs['w_loop_1_0'] = w_loop_1_0
ctxs.append('w_loop_2_0')
def w_loop_2_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 384
    x4 = True
    x5 = 0
    for x6 in range(x5,x1,x1):
        for x7 in range(x2,x3,x0):
            for x8 in range(x5,x2,x1):
                x9 = True
                x11 = x7 >= x2
                x12 = x7 < x3
                x13 = x11 & x12
                ndaddr = [x7, x8, ]
                en_drop = True
                en_zero = x4
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x16 = True
    return ndaddrs

ndaddr_funcs['w_loop_2_0'] = w_loop_2_0
ctxs.append('w_loop_3_0')
def w_loop_3_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 384
    x4 = 512
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_3_0'] = w_loop_3_0
ctxs.append('w_loop_4_0')
def w_loop_4_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 512
    x4 = 640
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_4_0'] = w_loop_4_0
ctxs.append('w_loop_5_0')
def w_loop_5_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 640
    x4 = 768
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_5_0'] = w_loop_5_0
ctxs.append('w_loop_6_0')
def w_loop_6_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 768
    x4 = 896
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_6_0'] = w_loop_6_0
ctxs.append('w_loop_7_0')
def w_loop_7_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 896
    x4 = 1024
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_7_0'] = w_loop_7_0
ctxs.append('w_loop_8_0')
def w_loop_8_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1024
    x4 = 1152
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_8_0'] = w_loop_8_0
ctxs.append('w_loop_9_0')
def w_loop_9_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1152
    x4 = 1280
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_9_0'] = w_loop_9_0
ctxs.append('w_loop_10_0')
def w_loop_10_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1280
    x4 = 1408
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_10_0'] = w_loop_10_0
ctxs.append('w_loop_11_0')
def w_loop_11_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1408
    x4 = 1536
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_11_0'] = w_loop_11_0
ctxs.append('w_loop_12_0')
def w_loop_12_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1536
    x4 = 1664
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_12_0'] = w_loop_12_0
ctxs.append('w_loop_13_0')
def w_loop_13_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1664
    x4 = 1792
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_13_0'] = w_loop_13_0
ctxs.append('w_loop_14_0')
def w_loop_14_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1792
    x4 = 1920
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_14_0'] = w_loop_14_0
ctxs.append('w_loop_15_0')
def w_loop_15_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 1920
    x4 = 2048
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_15_0'] = w_loop_15_0
ctxs.append('w_loop_16_0')
def w_loop_16_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2048
    x4 = 2176
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_16_0'] = w_loop_16_0
ctxs.append('w_loop_17_0')
def w_loop_17_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2176
    x4 = 2304
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_17_0'] = w_loop_17_0
ctxs.append('w_loop_18_0')
def w_loop_18_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2304
    x4 = 2432
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_18_0'] = w_loop_18_0
ctxs.append('w_loop_19_0')
def w_loop_19_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2432
    x4 = 2560
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_19_0'] = w_loop_19_0
ctxs.append('w_loop_20_0')
def w_loop_20_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2560
    x4 = 2688
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_20_0'] = w_loop_20_0
ctxs.append('w_loop_21_0')
def w_loop_21_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2688
    x4 = 2816
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_21_0'] = w_loop_21_0
ctxs.append('w_loop_22_0')
def w_loop_22_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2816
    x4 = 2944
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_22_0'] = w_loop_22_0
ctxs.append('w_loop_23_0')
def w_loop_23_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 2944
    x4 = 3072
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_23_0'] = w_loop_23_0
ctxs.append('w_loop_24_0')
def w_loop_24_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3072
    x4 = 3200
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_24_0'] = w_loop_24_0
ctxs.append('w_loop_25_0')
def w_loop_25_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3200
    x4 = 3328
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_25_0'] = w_loop_25_0
ctxs.append('w_loop_26_0')
def w_loop_26_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3328
    x4 = 3456
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_26_0'] = w_loop_26_0
ctxs.append('w_loop_27_0')
def w_loop_27_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3456
    x4 = 3584
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_27_0'] = w_loop_27_0
ctxs.append('w_loop_28_0')
def w_loop_28_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3584
    x4 = 3712
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_28_0'] = w_loop_28_0
ctxs.append('w_loop_29_0')
def w_loop_29_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3712
    x4 = 3840
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_29_0'] = w_loop_29_0
ctxs.append('w_loop_30_0')
def w_loop_30_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3840
    x4 = 3968
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_30_0'] = w_loop_30_0
ctxs.append('w_loop_31_0')
def w_loop_31_0():
    ndaddrs = []
    x0 = 32
    x1 = 1
    x2 = 256
    x3 = 3968
    x4 = 4080
    x5 = True
    x6 = 0
    for x7 in range(x6,x1,x1):
        for x8 in range(x3,x4,x0):
            for x9 in range(x6,x2,x1):
                x10 = True
                x12 = x8 >= x3
                x13 = x8 < x4
                x14 = x12 & x13
                ndaddr = [x8, x9, ]
                en_drop = True
                en_zero = x5
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x17 = True
    return ndaddrs

ndaddr_funcs['w_loop_31_0'] = w_loop_31_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    ndaddrs = []
    x0 = 32
    x1 = 4080
    x2 = 1
    x3 = 256
    x4 = True
    x5 = 0
    for x6 in range(x5,x1,x0):
        for x9 in range(x5,x3,x2):
            x7 = True
            ndaddr = [x6, x9, ]
            en_drop = x4
            en_zero = x4
            ND = NDAddr(ndaddr, en_zero and en_drop)
            ndaddrs.append(ND)
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

