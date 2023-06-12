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
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x16,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_0_0'] = w_loop_0_0
ctxs.append('w_loop_1_0')
def w_loop_1_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x16,x17,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_1_0'] = w_loop_1_0
ctxs.append('w_loop_2_0')
def w_loop_2_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x17,x18,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_2_0'] = w_loop_2_0
ctxs.append('w_loop_3_0')
def w_loop_3_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x18,x19,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_3_0'] = w_loop_3_0
ctxs.append('w_loop_4_0')
def w_loop_4_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x19,x20,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_4_0'] = w_loop_4_0
ctxs.append('w_loop_5_0')
def w_loop_5_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x20,x21,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_5_0'] = w_loop_5_0
ctxs.append('w_loop_6_0')
def w_loop_6_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x21,x22,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_6_0'] = w_loop_6_0
ctxs.append('w_loop_7_0')
def w_loop_7_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x22,x23,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_7_0'] = w_loop_7_0
ctxs.append('w_loop_8_0')
def w_loop_8_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x23,x24,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_8_0'] = w_loop_8_0
ctxs.append('w_loop_9_0')
def w_loop_9_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x24,x25,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_9_0'] = w_loop_9_0
ctxs.append('w_loop_10_0')
def w_loop_10_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x25,x26,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_10_0'] = w_loop_10_0
ctxs.append('w_loop_11_0')
def w_loop_11_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x26,x27,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_11_0'] = w_loop_11_0
ctxs.append('w_loop_12_0')
def w_loop_12_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x27,x28,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_12_0'] = w_loop_12_0
ctxs.append('w_loop_13_0')
def w_loop_13_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x28,x29,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_13_0'] = w_loop_13_0
ctxs.append('w_loop_14_0')
def w_loop_14_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x29,x30,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_14_0'] = w_loop_14_0
ctxs.append('w_loop_15_0')
def w_loop_15_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x30,x34,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_15_0'] = w_loop_15_0
ctxs.append('w_loop_16_0')
def w_loop_16_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x34,x0,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_16_0'] = w_loop_16_0
ctxs.append('w_loop_17_0')
def w_loop_17_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x0,x1,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_17_0'] = w_loop_17_0
ctxs.append('w_loop_18_0')
def w_loop_18_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x1,x2,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_18_0'] = w_loop_18_0
ctxs.append('w_loop_19_0')
def w_loop_19_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x2,x3,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_19_0'] = w_loop_19_0
ctxs.append('w_loop_20_0')
def w_loop_20_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x3,x4,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_20_0'] = w_loop_20_0
ctxs.append('w_loop_21_0')
def w_loop_21_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x4,x5,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_21_0'] = w_loop_21_0
ctxs.append('w_loop_22_0')
def w_loop_22_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x5,x6,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_22_0'] = w_loop_22_0
ctxs.append('w_loop_23_0')
def w_loop_23_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x6,x7,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_23_0'] = w_loop_23_0
ctxs.append('w_loop_24_0')
def w_loop_24_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x7,x8,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_24_0'] = w_loop_24_0
ctxs.append('w_loop_25_0')
def w_loop_25_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x8,x9,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_25_0'] = w_loop_25_0
ctxs.append('w_loop_26_0')
def w_loop_26_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x9,x10,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_26_0'] = w_loop_26_0
ctxs.append('w_loop_27_0')
def w_loop_27_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x10,x11,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_27_0'] = w_loop_27_0
ctxs.append('w_loop_28_0')
def w_loop_28_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x11,x12,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_28_0'] = w_loop_28_0
ctxs.append('w_loop_29_0')
def w_loop_29_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x12,x13,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_29_0'] = w_loop_29_0
ctxs.append('w_loop_30_0')
def w_loop_30_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x13,x14,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_30_0'] = w_loop_30_0
ctxs.append('w_loop_31_0')
def w_loop_31_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x14,x31,x32):
        x37 = True
        print("trim_pred: {} ".format(x15), end='')
        print("pmufid: {} ".format(x35), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x36),qaddr(x36//2),qaddr(x36//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['w_loop_31_0'] = w_loop_31_0
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx'] = kBackReadCtx
ctxs.append('kBackReadCtx')
def kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 1245184
    x3 = 1310720
    x4 = 1376256
    x5 = 1441792
    x6 = 1507328
    x7 = 1572864
    x8 = 1638400
    x9 = 1703936
    x10 = 1769472
    x11 = 1835008
    x12 = 1900544
    x13 = 1966080
    x14 = 2031616
    x15 = True
    x16 = 65536
    x17 = 131072
    x18 = 196608
    x19 = 262144
    x20 = 327680
    x21 = 393216
    x22 = 458752
    x23 = 524288
    x24 = 589824
    x25 = 655360
    x26 = 720896
    x27 = 786432
    x28 = 851968
    x29 = 917504
    x30 = 983040
    x31 = 2097152
    x32 = 64
    x33 = 16384
    x34 = 1048576
    x35 = 0
    ndaddrs = []
    for x36 in range(x35,x31,x33):
        for x37 in range(x35,x33,x32):
            x38 = True
            print("trim_pred: {} ".format(x15), end='')
            x41 = x36 + x37
            print("pmufid: {} ".format(x35), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x41),qaddr(x41//2),qaddr(x41//64),qaddr(x35),qaddr(x35),x15,x15,True,))
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

