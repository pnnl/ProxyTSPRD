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
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x35,x0,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x35
                x42 = x37 < x0
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('w_loop_1_0')
def w_loop_1_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x0,x33,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x0
                x42 = x37 < x33
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_1_0'] = w_loop_1_0
ctxs.append('w_loop_2_0')
def w_loop_2_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x33,x1,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x33
                x42 = x37 < x1
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_2_0'] = w_loop_2_0
ctxs.append('w_loop_3_0')
def w_loop_3_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x1,x2,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x1
                x42 = x37 < x2
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_3_0'] = w_loop_3_0
ctxs.append('w_loop_4_0')
def w_loop_4_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x2,x3,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x2
                x42 = x37 < x3
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_4_0'] = w_loop_4_0
ctxs.append('w_loop_5_0')
def w_loop_5_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x3,x4,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x3
                x42 = x37 < x4
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_5_0'] = w_loop_5_0
ctxs.append('w_loop_6_0')
def w_loop_6_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x4,x5,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x4
                x42 = x37 < x5
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_6_0'] = w_loop_6_0
ctxs.append('w_loop_7_0')
def w_loop_7_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x5,x6,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x5
                x42 = x37 < x6
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_7_0'] = w_loop_7_0
ctxs.append('w_loop_8_0')
def w_loop_8_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x6,x7,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x6
                x42 = x37 < x7
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_8_0'] = w_loop_8_0
ctxs.append('w_loop_9_0')
def w_loop_9_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x7,x8,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x7
                x42 = x37 < x8
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_9_0'] = w_loop_9_0
ctxs.append('w_loop_10_0')
def w_loop_10_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x8,x9,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x8
                x42 = x37 < x9
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_10_0'] = w_loop_10_0
ctxs.append('w_loop_11_0')
def w_loop_11_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x9,x10,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x9
                x42 = x37 < x10
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_11_0'] = w_loop_11_0
ctxs.append('w_loop_12_0')
def w_loop_12_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x10,x11,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x10
                x42 = x37 < x11
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_12_0'] = w_loop_12_0
ctxs.append('w_loop_13_0')
def w_loop_13_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x11,x12,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x11
                x42 = x37 < x12
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_13_0'] = w_loop_13_0
ctxs.append('w_loop_14_0')
def w_loop_14_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x12,x13,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x12
                x42 = x37 < x13
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_14_0'] = w_loop_14_0
ctxs.append('w_loop_15_0')
def w_loop_15_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x13,x14,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x13
                x42 = x37 < x14
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_15_0'] = w_loop_15_0
ctxs.append('w_loop_16_0')
def w_loop_16_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x14,x15,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x14
                x42 = x37 < x15
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_16_0'] = w_loop_16_0
ctxs.append('w_loop_17_0')
def w_loop_17_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x15,x16,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x15
                x42 = x37 < x16
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_17_0'] = w_loop_17_0
ctxs.append('w_loop_18_0')
def w_loop_18_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x16,x17,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x16
                x42 = x37 < x17
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_18_0'] = w_loop_18_0
ctxs.append('w_loop_19_0')
def w_loop_19_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x17,x18,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x17
                x42 = x37 < x18
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_19_0'] = w_loop_19_0
ctxs.append('w_loop_20_0')
def w_loop_20_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x18,x19,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x18
                x42 = x37 < x19
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_20_0'] = w_loop_20_0
ctxs.append('w_loop_21_0')
def w_loop_21_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x19,x20,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x19
                x42 = x37 < x20
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_21_0'] = w_loop_21_0
ctxs.append('w_loop_22_0')
def w_loop_22_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x20,x21,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x20
                x42 = x37 < x21
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_22_0'] = w_loop_22_0
ctxs.append('w_loop_23_0')
def w_loop_23_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x21,x22,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x21
                x42 = x37 < x22
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_23_0'] = w_loop_23_0
ctxs.append('w_loop_24_0')
def w_loop_24_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x22,x23,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x22
                x42 = x37 < x23
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_24_0'] = w_loop_24_0
ctxs.append('w_loop_25_0')
def w_loop_25_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x23,x24,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x23
                x42 = x37 < x24
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_25_0'] = w_loop_25_0
ctxs.append('w_loop_26_0')
def w_loop_26_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x24,x25,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x24
                x42 = x37 < x25
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_26_0'] = w_loop_26_0
ctxs.append('w_loop_27_0')
def w_loop_27_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x25,x26,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x25
                x42 = x37 < x26
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_27_0'] = w_loop_27_0
ctxs.append('w_loop_28_0')
def w_loop_28_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x26,x27,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x26
                x42 = x37 < x27
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_28_0'] = w_loop_28_0
ctxs.append('w_loop_29_0')
def w_loop_29_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x27,x28,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x27
                x42 = x37 < x28
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_29_0'] = w_loop_29_0
ctxs.append('w_loop_30_0')
def w_loop_30_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x28,x29,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x28
                x42 = x37 < x29
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_30_0'] = w_loop_30_0
ctxs.append('w_loop_31_0')
def w_loop_31_0():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x32,x32):
        for x37 in range(x29,x31,x30):
            for x38 in range(x35,x33,x32):
                x39 = True
                x41 = x37 >= x29
                x42 = x37 < x31
                x43 = x41 & x42
                ndaddr = [x37, x38, ]
                en_drop = True
                en_zero = x34
                ND = NDAddr(ndaddr, en_zero and en_drop)
                ndaddrs.append(ND)
                x46 = True
    return ndaddrs

ndaddr_funcs['w_loop_31_0'] = w_loop_31_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 128
    x1 = 384
    x2 = 512
    x3 = 640
    x4 = 768
    x5 = 896
    x6 = 1024
    x7 = 1152
    x8 = 1280
    x9 = 1408
    x10 = 1536
    x11 = 1664
    x12 = 1792
    x13 = 1920
    x14 = 2048
    x15 = 2176
    x16 = 2304
    x17 = 2432
    x18 = 2560
    x19 = 2688
    x20 = 2816
    x21 = 2944
    x22 = 3072
    x23 = 3200
    x24 = 3328
    x25 = 3456
    x26 = 3584
    x27 = 3712
    x28 = 3840
    x29 = 3968
    x30 = 32
    x31 = 4080
    x32 = 1
    x33 = 256
    x34 = True
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x30):
        for x39 in range(x35,x33,x32):
            x37 = True
            ndaddr = [x36, x39, ]
            en_drop = x34
            en_zero = x34
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

