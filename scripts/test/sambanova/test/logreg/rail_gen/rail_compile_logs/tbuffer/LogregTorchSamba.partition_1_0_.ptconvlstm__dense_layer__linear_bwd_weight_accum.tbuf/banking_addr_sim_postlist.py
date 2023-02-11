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

ctxs.append('w_loop_0_0_0_0_0__dup0_W')
def w_loop_0_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 64
    x1 = 65536
    x2 = True
    x3 = 0
    for x4 in range(x3,x1,x0):
        x5 = True
        print("trim_pred: {} ".format(x2), end='')
        print("pmufid: {} ".format(x3), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x3),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['w_loop_0_0_0_0_0__dup0_W'] = w_loop_0_0_0_0_0__dup0_W
ctxs.append('w_loop_1_0_0_0_0__dup1_W')
def w_loop_1_0_0_0_0__dup1_W():
    ndaddrs = []
    x0 = 64
    x1 = 131072
    x2 = True
    x3 = 0
    x4 = 65536
    for x5 in range(x4,x1,x0):
        x6 = True
        print("trim_pred: {} ".format(x2), end='')
        print("pmufid: {} ".format(x3), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x3),x2,x2,True,))
    return ndaddrs

ndaddr_funcs['w_loop_1_0_0_0_0__dup1_W'] = w_loop_1_0_0_0_0__dup1_W
ctxs.append('w_loop_2_0_0_0_0__dup2_W')
def w_loop_2_0_0_0_0__dup2_W():
    ndaddrs = []
    x0 = 131072
    x1 = 64
    x2 = 196608
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_2_0_0_0_0__dup2_W'] = w_loop_2_0_0_0_0__dup2_W
ctxs.append('w_loop_3_0_0_0_0__dup3_W')
def w_loop_3_0_0_0_0__dup3_W():
    ndaddrs = []
    x0 = 196608
    x1 = 64
    x2 = 262144
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_3_0_0_0_0__dup3_W'] = w_loop_3_0_0_0_0__dup3_W
ctxs.append('w_loop_4_0_0_0_0__dup4_W')
def w_loop_4_0_0_0_0__dup4_W():
    ndaddrs = []
    x0 = 262144
    x1 = 64
    x2 = 327680
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_4_0_0_0_0__dup4_W'] = w_loop_4_0_0_0_0__dup4_W
ctxs.append('w_loop_5_0_0_0_0__dup5_W')
def w_loop_5_0_0_0_0__dup5_W():
    ndaddrs = []
    x0 = 327680
    x1 = 64
    x2 = 393216
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_5_0_0_0_0__dup5_W'] = w_loop_5_0_0_0_0__dup5_W
ctxs.append('w_loop_6_0_0_0_0__dup6_W')
def w_loop_6_0_0_0_0__dup6_W():
    ndaddrs = []
    x0 = 393216
    x1 = 64
    x2 = 458752
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_6_0_0_0_0__dup6_W'] = w_loop_6_0_0_0_0__dup6_W
ctxs.append('w_loop_7_0_0_0_0__dup7_W')
def w_loop_7_0_0_0_0__dup7_W():
    ndaddrs = []
    x0 = 458752
    x1 = 64
    x2 = 524288
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_7_0_0_0_0__dup7_W'] = w_loop_7_0_0_0_0__dup7_W
ctxs.append('w_loop_8_0_0_0_0__dup8_W')
def w_loop_8_0_0_0_0__dup8_W():
    ndaddrs = []
    x0 = 524288
    x1 = 64
    x2 = 589824
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_8_0_0_0_0__dup8_W'] = w_loop_8_0_0_0_0__dup8_W
ctxs.append('w_loop_9_0_0_0_0__dup9_W')
def w_loop_9_0_0_0_0__dup9_W():
    ndaddrs = []
    x0 = 589824
    x1 = 64
    x2 = 655360
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_9_0_0_0_0__dup9_W'] = w_loop_9_0_0_0_0__dup9_W
ctxs.append('w_loop_10_0_0_0_0__dup10_W')
def w_loop_10_0_0_0_0__dup10_W():
    ndaddrs = []
    x0 = 655360
    x1 = 64
    x2 = 720896
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_10_0_0_0_0__dup10_W'] = w_loop_10_0_0_0_0__dup10_W
ctxs.append('w_loop_11_0_0_0_0__dup11_W')
def w_loop_11_0_0_0_0__dup11_W():
    ndaddrs = []
    x0 = 720896
    x1 = 64
    x2 = 786432
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_11_0_0_0_0__dup11_W'] = w_loop_11_0_0_0_0__dup11_W
ctxs.append('w_loop_12_0_0_0_0__dup12_W')
def w_loop_12_0_0_0_0__dup12_W():
    ndaddrs = []
    x0 = 786432
    x1 = 64
    x2 = 851968
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_12_0_0_0_0__dup12_W'] = w_loop_12_0_0_0_0__dup12_W
ctxs.append('w_loop_13_0_0_0_0__dup13_W')
def w_loop_13_0_0_0_0__dup13_W():
    ndaddrs = []
    x0 = 851968
    x1 = 64
    x2 = 917504
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_13_0_0_0_0__dup13_W'] = w_loop_13_0_0_0_0__dup13_W
ctxs.append('w_loop_14_0_0_0_0__dup14_W')
def w_loop_14_0_0_0_0__dup14_W():
    ndaddrs = []
    x0 = 917504
    x1 = 64
    x2 = 983040
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_14_0_0_0_0__dup14_W'] = w_loop_14_0_0_0_0__dup14_W
ctxs.append('w_loop_15_0_0_0_0__dup15_W')
def w_loop_15_0_0_0_0__dup15_W():
    ndaddrs = []
    x0 = 983040
    x1 = 64
    x2 = 1048576
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_15_0_0_0_0__dup15_W'] = w_loop_15_0_0_0_0__dup15_W
ctxs.append('w_loop_16_0_0_0_0__dup16_W')
def w_loop_16_0_0_0_0__dup16_W():
    ndaddrs = []
    x0 = 1048576
    x1 = 64
    x2 = 1114112
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_16_0_0_0_0__dup16_W'] = w_loop_16_0_0_0_0__dup16_W
ctxs.append('w_loop_17_0_0_0_0__dup17_W')
def w_loop_17_0_0_0_0__dup17_W():
    ndaddrs = []
    x0 = 1114112
    x1 = 64
    x2 = 1179648
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_17_0_0_0_0__dup17_W'] = w_loop_17_0_0_0_0__dup17_W
ctxs.append('w_loop_18_0_0_0_0__dup18_W')
def w_loop_18_0_0_0_0__dup18_W():
    ndaddrs = []
    x0 = 1179648
    x1 = 64
    x2 = 1245184
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_18_0_0_0_0__dup18_W'] = w_loop_18_0_0_0_0__dup18_W
ctxs.append('w_loop_19_0_0_0_0__dup19_W')
def w_loop_19_0_0_0_0__dup19_W():
    ndaddrs = []
    x0 = 1245184
    x1 = 64
    x2 = 1310720
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_19_0_0_0_0__dup19_W'] = w_loop_19_0_0_0_0__dup19_W
ctxs.append('w_loop_20_0_0_0_0__dup20_W')
def w_loop_20_0_0_0_0__dup20_W():
    ndaddrs = []
    x0 = 1310720
    x1 = 64
    x2 = 1376256
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_20_0_0_0_0__dup20_W'] = w_loop_20_0_0_0_0__dup20_W
ctxs.append('w_loop_21_0_0_0_0__dup21_W')
def w_loop_21_0_0_0_0__dup21_W():
    ndaddrs = []
    x0 = 1376256
    x1 = 64
    x2 = 1441792
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_21_0_0_0_0__dup21_W'] = w_loop_21_0_0_0_0__dup21_W
ctxs.append('w_loop_22_0_0_0_0__dup22_W')
def w_loop_22_0_0_0_0__dup22_W():
    ndaddrs = []
    x0 = 1441792
    x1 = 64
    x2 = 1507328
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_22_0_0_0_0__dup22_W'] = w_loop_22_0_0_0_0__dup22_W
ctxs.append('w_loop_23_0_0_0_0__dup23_W')
def w_loop_23_0_0_0_0__dup23_W():
    ndaddrs = []
    x0 = 1507328
    x1 = 64
    x2 = 1572864
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_23_0_0_0_0__dup23_W'] = w_loop_23_0_0_0_0__dup23_W
ctxs.append('w_loop_24_0_0_0_0__dup24_W')
def w_loop_24_0_0_0_0__dup24_W():
    ndaddrs = []
    x0 = 1572864
    x1 = 64
    x2 = 1638400
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_24_0_0_0_0__dup24_W'] = w_loop_24_0_0_0_0__dup24_W
ctxs.append('w_loop_25_0_0_0_0__dup25_W')
def w_loop_25_0_0_0_0__dup25_W():
    ndaddrs = []
    x0 = 1638400
    x1 = 64
    x2 = 1703936
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_25_0_0_0_0__dup25_W'] = w_loop_25_0_0_0_0__dup25_W
ctxs.append('w_loop_26_0_0_0_0__dup26_W')
def w_loop_26_0_0_0_0__dup26_W():
    ndaddrs = []
    x0 = 1703936
    x1 = 64
    x2 = 1769472
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_26_0_0_0_0__dup26_W'] = w_loop_26_0_0_0_0__dup26_W
ctxs.append('w_loop_27_0_0_0_0__dup27_W')
def w_loop_27_0_0_0_0__dup27_W():
    ndaddrs = []
    x0 = 1769472
    x1 = 64
    x2 = 1835008
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_27_0_0_0_0__dup27_W'] = w_loop_27_0_0_0_0__dup27_W
ctxs.append('w_loop_28_0_0_0_0__dup28_W')
def w_loop_28_0_0_0_0__dup28_W():
    ndaddrs = []
    x0 = 1835008
    x1 = 64
    x2 = 1900544
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_28_0_0_0_0__dup28_W'] = w_loop_28_0_0_0_0__dup28_W
ctxs.append('w_loop_29_0_0_0_0__dup29_W')
def w_loop_29_0_0_0_0__dup29_W():
    ndaddrs = []
    x0 = 1900544
    x1 = 64
    x2 = 1966080
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_29_0_0_0_0__dup29_W'] = w_loop_29_0_0_0_0__dup29_W
ctxs.append('w_loop_30_0_0_0_0__dup30_W')
def w_loop_30_0_0_0_0__dup30_W():
    ndaddrs = []
    x0 = 1966080
    x1 = 64
    x2 = 2031616
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_30_0_0_0_0__dup30_W'] = w_loop_30_0_0_0_0__dup30_W
ctxs.append('w_loop_31_0_0_0_0__dup31_W')
def w_loop_31_0_0_0_0__dup31_W():
    ndaddrs = []
    x0 = 2031616
    x1 = 64
    x2 = 2097152
    x3 = True
    x4 = 0
    for x5 in range(x0,x2,x1):
        x6 = True
        print("trim_pred: {} ".format(x3), end='')
        print("pmufid: {} ".format(x4), end='')
        print("wt byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x4),x3,x3,True,))
    return ndaddrs

ndaddr_funcs['w_loop_31_0_0_0_0__dup31_W'] = w_loop_31_0_0_0_0__dup31_W
ctxs.append('kBackReadCtx_0_0__dup0_R')
def kBackReadCtx_0_0__dup0_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup0_R'] = kBackReadCtx_0_0__dup0_R
ctxs.append('kBackReadCtx_0_0__dup1_R')
def kBackReadCtx_0_0__dup1_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup1_R'] = kBackReadCtx_0_0__dup1_R
ctxs.append('kBackReadCtx_0_0__dup2_R')
def kBackReadCtx_0_0__dup2_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup2_R'] = kBackReadCtx_0_0__dup2_R
ctxs.append('kBackReadCtx_0_0__dup3_R')
def kBackReadCtx_0_0__dup3_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup3_R'] = kBackReadCtx_0_0__dup3_R
ctxs.append('kBackReadCtx_0_0__dup4_R')
def kBackReadCtx_0_0__dup4_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup4_R'] = kBackReadCtx_0_0__dup4_R
ctxs.append('kBackReadCtx_0_0__dup5_R')
def kBackReadCtx_0_0__dup5_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup5_R'] = kBackReadCtx_0_0__dup5_R
ctxs.append('kBackReadCtx_0_0__dup6_R')
def kBackReadCtx_0_0__dup6_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup6_R'] = kBackReadCtx_0_0__dup6_R
ctxs.append('kBackReadCtx_0_0__dup7_R')
def kBackReadCtx_0_0__dup7_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup7_R'] = kBackReadCtx_0_0__dup7_R
ctxs.append('kBackReadCtx_0_0__dup8_R')
def kBackReadCtx_0_0__dup8_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup8_R'] = kBackReadCtx_0_0__dup8_R
ctxs.append('kBackReadCtx_0_0__dup9_R')
def kBackReadCtx_0_0__dup9_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup9_R'] = kBackReadCtx_0_0__dup9_R
ctxs.append('kBackReadCtx_0_0__dup10_R')
def kBackReadCtx_0_0__dup10_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup10_R'] = kBackReadCtx_0_0__dup10_R
ctxs.append('kBackReadCtx_0_0__dup11_R')
def kBackReadCtx_0_0__dup11_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup11_R'] = kBackReadCtx_0_0__dup11_R
ctxs.append('kBackReadCtx_0_0__dup12_R')
def kBackReadCtx_0_0__dup12_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup12_R'] = kBackReadCtx_0_0__dup12_R
ctxs.append('kBackReadCtx_0_0__dup13_R')
def kBackReadCtx_0_0__dup13_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup13_R'] = kBackReadCtx_0_0__dup13_R
ctxs.append('kBackReadCtx_0_0__dup14_R')
def kBackReadCtx_0_0__dup14_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup14_R'] = kBackReadCtx_0_0__dup14_R
ctxs.append('kBackReadCtx_0_0__dup15_R')
def kBackReadCtx_0_0__dup15_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup15_R'] = kBackReadCtx_0_0__dup15_R
ctxs.append('kBackReadCtx_0_0__dup16_R')
def kBackReadCtx_0_0__dup16_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup16_R'] = kBackReadCtx_0_0__dup16_R
ctxs.append('kBackReadCtx_0_0__dup17_R')
def kBackReadCtx_0_0__dup17_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup17_R'] = kBackReadCtx_0_0__dup17_R
ctxs.append('kBackReadCtx_0_0__dup18_R')
def kBackReadCtx_0_0__dup18_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup18_R'] = kBackReadCtx_0_0__dup18_R
ctxs.append('kBackReadCtx_0_0__dup19_R')
def kBackReadCtx_0_0__dup19_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup19_R'] = kBackReadCtx_0_0__dup19_R
ctxs.append('kBackReadCtx_0_0__dup20_R')
def kBackReadCtx_0_0__dup20_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup20_R'] = kBackReadCtx_0_0__dup20_R
ctxs.append('kBackReadCtx_0_0__dup21_R')
def kBackReadCtx_0_0__dup21_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup21_R'] = kBackReadCtx_0_0__dup21_R
ctxs.append('kBackReadCtx_0_0__dup22_R')
def kBackReadCtx_0_0__dup22_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup22_R'] = kBackReadCtx_0_0__dup22_R
ctxs.append('kBackReadCtx_0_0__dup23_R')
def kBackReadCtx_0_0__dup23_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup23_R'] = kBackReadCtx_0_0__dup23_R
ctxs.append('kBackReadCtx_0_0__dup24_R')
def kBackReadCtx_0_0__dup24_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup24_R'] = kBackReadCtx_0_0__dup24_R
ctxs.append('kBackReadCtx_0_0__dup25_R')
def kBackReadCtx_0_0__dup25_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup25_R'] = kBackReadCtx_0_0__dup25_R
ctxs.append('kBackReadCtx_0_0__dup26_R')
def kBackReadCtx_0_0__dup26_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup26_R'] = kBackReadCtx_0_0__dup26_R
ctxs.append('kBackReadCtx_0_0__dup27_R')
def kBackReadCtx_0_0__dup27_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup27_R'] = kBackReadCtx_0_0__dup27_R
ctxs.append('kBackReadCtx_0_0__dup28_R')
def kBackReadCtx_0_0__dup28_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup28_R'] = kBackReadCtx_0_0__dup28_R
ctxs.append('kBackReadCtx_0_0__dup29_R')
def kBackReadCtx_0_0__dup29_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup29_R'] = kBackReadCtx_0_0__dup29_R
ctxs.append('kBackReadCtx_0_0__dup30_R')
def kBackReadCtx_0_0__dup30_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup30_R'] = kBackReadCtx_0_0__dup30_R
ctxs.append('kBackReadCtx_0_0__dup31_R')
def kBackReadCtx_0_0__dup31_R():
    ndaddrs = []
    x0 = True
    x1 = 2097152
    x2 = 64
    x3 = 16384
    x4 = 0
    for x5 in range(x4,x1,x3):
        for x6 in range(x4,x3,x2):
            x7 = True
            print("trim_pred: {} ".format(x0), end='')
            x10 = x5 + x6
            print("pmufid: {} ".format(x4), end='')
            print("rd byte:{} word:{} vec:{} rotate:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x4),x0,x0,True,))
    return ndaddrs

ndaddr_funcs['kBackReadCtx_0_0__dup31_R'] = kBackReadCtx_0_0__dup31_R

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

