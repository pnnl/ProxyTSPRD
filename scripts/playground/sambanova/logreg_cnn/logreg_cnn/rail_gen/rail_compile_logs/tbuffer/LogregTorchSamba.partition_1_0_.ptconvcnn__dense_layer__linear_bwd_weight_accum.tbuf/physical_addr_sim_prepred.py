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

ctxs.append('D_0_0_0_min_0_max_65536_w_loop_0_0')
def D_0_0_0_min_0_max_65536_w_loop_0_0():
    x0 = 65536
    x1 = 2097152
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    x6 = 8192
    ndaddrs = []
    for x7 in range(x4,x0,x2):
        x8 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),x3,x3,x7 >= 0 and x7 < 65536,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_min_0_max_65536_w_loop_0_0'] = D_0_0_0_min_0_max_65536_w_loop_0_0
ctxs.append('D_0_0_0_min_0_max_65536_kBackReadCtx')
def D_0_0_0_min_0_max_65536_kBackReadCtx():
    x0 = 65536
    x1 = 2097152
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    x6 = 8192
    ndaddrs = []
    for x7 in range(x4,x1,x2):
        x8 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),x3,x3,x7 >= 0 and x7 < 65536,))
        x13 = True
        x14 = True
        x15 = x13 | x14
    return ndaddrs

ndaddr_funcs['D_0_0_0_min_0_max_65536_kBackReadCtx'] = D_0_0_0_min_0_max_65536_kBackReadCtx
ctxs.append('D_1_0_0_min_65536_max_131072_w_loop_1_0')
def D_1_0_0_min_65536_max_131072_w_loop_1_0():
    x0 = 65536
    x1 = 131072
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 65536 and x8 < 131072,))
    return ndaddrs

ndaddr_funcs['D_1_0_0_min_65536_max_131072_w_loop_1_0'] = D_1_0_0_min_65536_max_131072_w_loop_1_0
ctxs.append('D_1_0_0_min_65536_max_131072_kBackReadCtx')
def D_1_0_0_min_65536_max_131072_kBackReadCtx():
    x0 = 65536
    x1 = 131072
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 65536 and x8 < 131072,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_1_0_0_min_65536_max_131072_kBackReadCtx'] = D_1_0_0_min_65536_max_131072_kBackReadCtx
ctxs.append('D_2_0_0_min_131072_max_196608_w_loop_2_0')
def D_2_0_0_min_131072_max_196608_w_loop_2_0():
    x0 = 131072
    x1 = 196608
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 131072 and x8 < 196608,))
    return ndaddrs

ndaddr_funcs['D_2_0_0_min_131072_max_196608_w_loop_2_0'] = D_2_0_0_min_131072_max_196608_w_loop_2_0
ctxs.append('D_2_0_0_min_131072_max_196608_kBackReadCtx')
def D_2_0_0_min_131072_max_196608_kBackReadCtx():
    x0 = 131072
    x1 = 196608
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 131072 and x8 < 196608,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_2_0_0_min_131072_max_196608_kBackReadCtx'] = D_2_0_0_min_131072_max_196608_kBackReadCtx
ctxs.append('D_3_0_0_min_196608_max_262144_w_loop_3_0')
def D_3_0_0_min_196608_max_262144_w_loop_3_0():
    x0 = 196608
    x1 = 262144
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 196608 and x8 < 262144,))
    return ndaddrs

ndaddr_funcs['D_3_0_0_min_196608_max_262144_w_loop_3_0'] = D_3_0_0_min_196608_max_262144_w_loop_3_0
ctxs.append('D_3_0_0_min_196608_max_262144_kBackReadCtx')
def D_3_0_0_min_196608_max_262144_kBackReadCtx():
    x0 = 196608
    x1 = 262144
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 196608 and x8 < 262144,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_3_0_0_min_196608_max_262144_kBackReadCtx'] = D_3_0_0_min_196608_max_262144_kBackReadCtx
ctxs.append('D_4_0_0_min_262144_max_327680_w_loop_4_0')
def D_4_0_0_min_262144_max_327680_w_loop_4_0():
    x0 = 262144
    x1 = 327680
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 262144 and x8 < 327680,))
    return ndaddrs

ndaddr_funcs['D_4_0_0_min_262144_max_327680_w_loop_4_0'] = D_4_0_0_min_262144_max_327680_w_loop_4_0
ctxs.append('D_4_0_0_min_262144_max_327680_kBackReadCtx')
def D_4_0_0_min_262144_max_327680_kBackReadCtx():
    x0 = 262144
    x1 = 327680
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 262144 and x8 < 327680,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_4_0_0_min_262144_max_327680_kBackReadCtx'] = D_4_0_0_min_262144_max_327680_kBackReadCtx
ctxs.append('D_5_0_0_min_327680_max_393216_w_loop_5_0')
def D_5_0_0_min_327680_max_393216_w_loop_5_0():
    x0 = 327680
    x1 = 393216
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 327680 and x8 < 393216,))
    return ndaddrs

ndaddr_funcs['D_5_0_0_min_327680_max_393216_w_loop_5_0'] = D_5_0_0_min_327680_max_393216_w_loop_5_0
ctxs.append('D_5_0_0_min_327680_max_393216_kBackReadCtx')
def D_5_0_0_min_327680_max_393216_kBackReadCtx():
    x0 = 327680
    x1 = 393216
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 327680 and x8 < 393216,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_5_0_0_min_327680_max_393216_kBackReadCtx'] = D_5_0_0_min_327680_max_393216_kBackReadCtx
ctxs.append('D_6_0_0_min_393216_max_458752_w_loop_6_0')
def D_6_0_0_min_393216_max_458752_w_loop_6_0():
    x0 = 393216
    x1 = 458752
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 393216 and x8 < 458752,))
    return ndaddrs

ndaddr_funcs['D_6_0_0_min_393216_max_458752_w_loop_6_0'] = D_6_0_0_min_393216_max_458752_w_loop_6_0
ctxs.append('D_6_0_0_min_393216_max_458752_kBackReadCtx')
def D_6_0_0_min_393216_max_458752_kBackReadCtx():
    x0 = 393216
    x1 = 458752
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 393216 and x8 < 458752,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_6_0_0_min_393216_max_458752_kBackReadCtx'] = D_6_0_0_min_393216_max_458752_kBackReadCtx
ctxs.append('D_7_0_0_min_458752_max_524288_w_loop_7_0')
def D_7_0_0_min_458752_max_524288_w_loop_7_0():
    x0 = 458752
    x1 = 524288
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 458752 and x8 < 524288,))
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_w_loop_7_0'] = D_7_0_0_min_458752_max_524288_w_loop_7_0
ctxs.append('D_7_0_0_min_458752_max_524288_kBackReadCtx')
def D_7_0_0_min_458752_max_524288_kBackReadCtx():
    x0 = 458752
    x1 = 524288
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 458752 and x8 < 524288,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_kBackReadCtx'] = D_7_0_0_min_458752_max_524288_kBackReadCtx
ctxs.append('D_8_0_0_min_524288_max_589824_w_loop_8_0')
def D_8_0_0_min_524288_max_589824_w_loop_8_0():
    x0 = 524288
    x1 = 589824
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 524288 and x8 < 589824,))
    return ndaddrs

ndaddr_funcs['D_8_0_0_min_524288_max_589824_w_loop_8_0'] = D_8_0_0_min_524288_max_589824_w_loop_8_0
ctxs.append('D_8_0_0_min_524288_max_589824_kBackReadCtx')
def D_8_0_0_min_524288_max_589824_kBackReadCtx():
    x0 = 524288
    x1 = 589824
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 524288 and x8 < 589824,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_8_0_0_min_524288_max_589824_kBackReadCtx'] = D_8_0_0_min_524288_max_589824_kBackReadCtx
ctxs.append('D_9_0_0_min_589824_max_655360_w_loop_9_0')
def D_9_0_0_min_589824_max_655360_w_loop_9_0():
    x0 = 589824
    x1 = 655360
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 589824 and x8 < 655360,))
    return ndaddrs

ndaddr_funcs['D_9_0_0_min_589824_max_655360_w_loop_9_0'] = D_9_0_0_min_589824_max_655360_w_loop_9_0
ctxs.append('D_9_0_0_min_589824_max_655360_kBackReadCtx')
def D_9_0_0_min_589824_max_655360_kBackReadCtx():
    x0 = 589824
    x1 = 655360
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 589824 and x8 < 655360,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_9_0_0_min_589824_max_655360_kBackReadCtx'] = D_9_0_0_min_589824_max_655360_kBackReadCtx
ctxs.append('D_10_0_0_min_655360_max_720896_w_loop_10_0')
def D_10_0_0_min_655360_max_720896_w_loop_10_0():
    x0 = 655360
    x1 = 720896
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 655360 and x8 < 720896,))
    return ndaddrs

ndaddr_funcs['D_10_0_0_min_655360_max_720896_w_loop_10_0'] = D_10_0_0_min_655360_max_720896_w_loop_10_0
ctxs.append('D_10_0_0_min_655360_max_720896_kBackReadCtx')
def D_10_0_0_min_655360_max_720896_kBackReadCtx():
    x0 = 655360
    x1 = 720896
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 655360 and x8 < 720896,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_10_0_0_min_655360_max_720896_kBackReadCtx'] = D_10_0_0_min_655360_max_720896_kBackReadCtx
ctxs.append('D_11_0_0_min_720896_max_786432_w_loop_11_0')
def D_11_0_0_min_720896_max_786432_w_loop_11_0():
    x0 = 720896
    x1 = 786432
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 720896 and x8 < 786432,))
    return ndaddrs

ndaddr_funcs['D_11_0_0_min_720896_max_786432_w_loop_11_0'] = D_11_0_0_min_720896_max_786432_w_loop_11_0
ctxs.append('D_11_0_0_min_720896_max_786432_kBackReadCtx')
def D_11_0_0_min_720896_max_786432_kBackReadCtx():
    x0 = 720896
    x1 = 786432
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 720896 and x8 < 786432,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_11_0_0_min_720896_max_786432_kBackReadCtx'] = D_11_0_0_min_720896_max_786432_kBackReadCtx
ctxs.append('D_12_0_0_min_786432_max_851968_w_loop_12_0')
def D_12_0_0_min_786432_max_851968_w_loop_12_0():
    x0 = 786432
    x1 = 851968
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 786432 and x8 < 851968,))
    return ndaddrs

ndaddr_funcs['D_12_0_0_min_786432_max_851968_w_loop_12_0'] = D_12_0_0_min_786432_max_851968_w_loop_12_0
ctxs.append('D_12_0_0_min_786432_max_851968_kBackReadCtx')
def D_12_0_0_min_786432_max_851968_kBackReadCtx():
    x0 = 786432
    x1 = 851968
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 786432 and x8 < 851968,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_12_0_0_min_786432_max_851968_kBackReadCtx'] = D_12_0_0_min_786432_max_851968_kBackReadCtx
ctxs.append('D_13_0_0_min_851968_max_917504_w_loop_13_0')
def D_13_0_0_min_851968_max_917504_w_loop_13_0():
    x0 = 851968
    x1 = 917504
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 851968 and x8 < 917504,))
    return ndaddrs

ndaddr_funcs['D_13_0_0_min_851968_max_917504_w_loop_13_0'] = D_13_0_0_min_851968_max_917504_w_loop_13_0
ctxs.append('D_13_0_0_min_851968_max_917504_kBackReadCtx')
def D_13_0_0_min_851968_max_917504_kBackReadCtx():
    x0 = 851968
    x1 = 917504
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 851968 and x8 < 917504,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_13_0_0_min_851968_max_917504_kBackReadCtx'] = D_13_0_0_min_851968_max_917504_kBackReadCtx
ctxs.append('D_14_0_0_min_917504_max_983040_w_loop_14_0')
def D_14_0_0_min_917504_max_983040_w_loop_14_0():
    x0 = 917504
    x1 = 983040
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 917504 and x8 < 983040,))
    return ndaddrs

ndaddr_funcs['D_14_0_0_min_917504_max_983040_w_loop_14_0'] = D_14_0_0_min_917504_max_983040_w_loop_14_0
ctxs.append('D_14_0_0_min_917504_max_983040_kBackReadCtx')
def D_14_0_0_min_917504_max_983040_kBackReadCtx():
    x0 = 917504
    x1 = 983040
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 917504 and x8 < 983040,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_14_0_0_min_917504_max_983040_kBackReadCtx'] = D_14_0_0_min_917504_max_983040_kBackReadCtx
ctxs.append('D_15_0_0_min_983040_max_1048576_w_loop_15_0')
def D_15_0_0_min_983040_max_1048576_w_loop_15_0():
    x0 = 983040
    x1 = 1048576
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 983040 and x8 < 1048576,))
    return ndaddrs

ndaddr_funcs['D_15_0_0_min_983040_max_1048576_w_loop_15_0'] = D_15_0_0_min_983040_max_1048576_w_loop_15_0
ctxs.append('D_15_0_0_min_983040_max_1048576_kBackReadCtx')
def D_15_0_0_min_983040_max_1048576_kBackReadCtx():
    x0 = 983040
    x1 = 1048576
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 983040 and x8 < 1048576,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_15_0_0_min_983040_max_1048576_kBackReadCtx'] = D_15_0_0_min_983040_max_1048576_kBackReadCtx
ctxs.append('D_16_0_0_min_1048576_max_1114112_w_loop_16_0')
def D_16_0_0_min_1048576_max_1114112_w_loop_16_0():
    x0 = 1048576
    x1 = 1114112
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1048576 and x8 < 1114112,))
    return ndaddrs

ndaddr_funcs['D_16_0_0_min_1048576_max_1114112_w_loop_16_0'] = D_16_0_0_min_1048576_max_1114112_w_loop_16_0
ctxs.append('D_16_0_0_min_1048576_max_1114112_kBackReadCtx')
def D_16_0_0_min_1048576_max_1114112_kBackReadCtx():
    x0 = 1048576
    x1 = 1114112
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1048576 and x8 < 1114112,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_16_0_0_min_1048576_max_1114112_kBackReadCtx'] = D_16_0_0_min_1048576_max_1114112_kBackReadCtx
ctxs.append('D_17_0_0_min_1114112_max_1179648_w_loop_17_0')
def D_17_0_0_min_1114112_max_1179648_w_loop_17_0():
    x0 = 1114112
    x1 = 1179648
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1114112 and x8 < 1179648,))
    return ndaddrs

ndaddr_funcs['D_17_0_0_min_1114112_max_1179648_w_loop_17_0'] = D_17_0_0_min_1114112_max_1179648_w_loop_17_0
ctxs.append('D_17_0_0_min_1114112_max_1179648_kBackReadCtx')
def D_17_0_0_min_1114112_max_1179648_kBackReadCtx():
    x0 = 1114112
    x1 = 1179648
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1114112 and x8 < 1179648,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_17_0_0_min_1114112_max_1179648_kBackReadCtx'] = D_17_0_0_min_1114112_max_1179648_kBackReadCtx
ctxs.append('D_18_0_0_min_1179648_max_1245184_w_loop_18_0')
def D_18_0_0_min_1179648_max_1245184_w_loop_18_0():
    x0 = 1179648
    x1 = 1245184
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1179648 and x8 < 1245184,))
    return ndaddrs

ndaddr_funcs['D_18_0_0_min_1179648_max_1245184_w_loop_18_0'] = D_18_0_0_min_1179648_max_1245184_w_loop_18_0
ctxs.append('D_18_0_0_min_1179648_max_1245184_kBackReadCtx')
def D_18_0_0_min_1179648_max_1245184_kBackReadCtx():
    x0 = 1179648
    x1 = 1245184
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1179648 and x8 < 1245184,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_18_0_0_min_1179648_max_1245184_kBackReadCtx'] = D_18_0_0_min_1179648_max_1245184_kBackReadCtx
ctxs.append('D_19_0_0_min_1245184_max_1310720_w_loop_19_0')
def D_19_0_0_min_1245184_max_1310720_w_loop_19_0():
    x0 = 1245184
    x1 = 1310720
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1245184 and x8 < 1310720,))
    return ndaddrs

ndaddr_funcs['D_19_0_0_min_1245184_max_1310720_w_loop_19_0'] = D_19_0_0_min_1245184_max_1310720_w_loop_19_0
ctxs.append('D_19_0_0_min_1245184_max_1310720_kBackReadCtx')
def D_19_0_0_min_1245184_max_1310720_kBackReadCtx():
    x0 = 1245184
    x1 = 1310720
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1245184 and x8 < 1310720,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_19_0_0_min_1245184_max_1310720_kBackReadCtx'] = D_19_0_0_min_1245184_max_1310720_kBackReadCtx
ctxs.append('D_20_0_0_min_1310720_max_1376256_w_loop_20_0')
def D_20_0_0_min_1310720_max_1376256_w_loop_20_0():
    x0 = 1310720
    x1 = 1376256
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1310720 and x8 < 1376256,))
    return ndaddrs

ndaddr_funcs['D_20_0_0_min_1310720_max_1376256_w_loop_20_0'] = D_20_0_0_min_1310720_max_1376256_w_loop_20_0
ctxs.append('D_20_0_0_min_1310720_max_1376256_kBackReadCtx')
def D_20_0_0_min_1310720_max_1376256_kBackReadCtx():
    x0 = 1310720
    x1 = 1376256
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1310720 and x8 < 1376256,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_20_0_0_min_1310720_max_1376256_kBackReadCtx'] = D_20_0_0_min_1310720_max_1376256_kBackReadCtx
ctxs.append('D_21_0_0_min_1376256_max_1441792_w_loop_21_0')
def D_21_0_0_min_1376256_max_1441792_w_loop_21_0():
    x0 = 1376256
    x1 = 1441792
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1376256 and x8 < 1441792,))
    return ndaddrs

ndaddr_funcs['D_21_0_0_min_1376256_max_1441792_w_loop_21_0'] = D_21_0_0_min_1376256_max_1441792_w_loop_21_0
ctxs.append('D_21_0_0_min_1376256_max_1441792_kBackReadCtx')
def D_21_0_0_min_1376256_max_1441792_kBackReadCtx():
    x0 = 1376256
    x1 = 1441792
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1376256 and x8 < 1441792,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_21_0_0_min_1376256_max_1441792_kBackReadCtx'] = D_21_0_0_min_1376256_max_1441792_kBackReadCtx
ctxs.append('D_22_0_0_min_1441792_max_1507328_w_loop_22_0')
def D_22_0_0_min_1441792_max_1507328_w_loop_22_0():
    x0 = 1441792
    x1 = 1507328
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1441792 and x8 < 1507328,))
    return ndaddrs

ndaddr_funcs['D_22_0_0_min_1441792_max_1507328_w_loop_22_0'] = D_22_0_0_min_1441792_max_1507328_w_loop_22_0
ctxs.append('D_22_0_0_min_1441792_max_1507328_kBackReadCtx')
def D_22_0_0_min_1441792_max_1507328_kBackReadCtx():
    x0 = 1441792
    x1 = 1507328
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1441792 and x8 < 1507328,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_22_0_0_min_1441792_max_1507328_kBackReadCtx'] = D_22_0_0_min_1441792_max_1507328_kBackReadCtx
ctxs.append('D_23_0_0_min_1507328_max_1572864_w_loop_23_0')
def D_23_0_0_min_1507328_max_1572864_w_loop_23_0():
    x0 = 1507328
    x1 = 1572864
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1507328 and x8 < 1572864,))
    return ndaddrs

ndaddr_funcs['D_23_0_0_min_1507328_max_1572864_w_loop_23_0'] = D_23_0_0_min_1507328_max_1572864_w_loop_23_0
ctxs.append('D_23_0_0_min_1507328_max_1572864_kBackReadCtx')
def D_23_0_0_min_1507328_max_1572864_kBackReadCtx():
    x0 = 1507328
    x1 = 1572864
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1507328 and x8 < 1572864,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_23_0_0_min_1507328_max_1572864_kBackReadCtx'] = D_23_0_0_min_1507328_max_1572864_kBackReadCtx
ctxs.append('D_24_0_0_min_1572864_max_1638400_w_loop_24_0')
def D_24_0_0_min_1572864_max_1638400_w_loop_24_0():
    x0 = 1572864
    x1 = 1638400
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1572864 and x8 < 1638400,))
    return ndaddrs

ndaddr_funcs['D_24_0_0_min_1572864_max_1638400_w_loop_24_0'] = D_24_0_0_min_1572864_max_1638400_w_loop_24_0
ctxs.append('D_24_0_0_min_1572864_max_1638400_kBackReadCtx')
def D_24_0_0_min_1572864_max_1638400_kBackReadCtx():
    x0 = 1572864
    x1 = 1638400
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1572864 and x8 < 1638400,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_24_0_0_min_1572864_max_1638400_kBackReadCtx'] = D_24_0_0_min_1572864_max_1638400_kBackReadCtx
ctxs.append('D_25_0_0_min_1638400_max_1703936_w_loop_25_0')
def D_25_0_0_min_1638400_max_1703936_w_loop_25_0():
    x0 = 1638400
    x1 = 1703936
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1638400 and x8 < 1703936,))
    return ndaddrs

ndaddr_funcs['D_25_0_0_min_1638400_max_1703936_w_loop_25_0'] = D_25_0_0_min_1638400_max_1703936_w_loop_25_0
ctxs.append('D_25_0_0_min_1638400_max_1703936_kBackReadCtx')
def D_25_0_0_min_1638400_max_1703936_kBackReadCtx():
    x0 = 1638400
    x1 = 1703936
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1638400 and x8 < 1703936,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_25_0_0_min_1638400_max_1703936_kBackReadCtx'] = D_25_0_0_min_1638400_max_1703936_kBackReadCtx
ctxs.append('D_26_0_0_min_1703936_max_1769472_w_loop_26_0')
def D_26_0_0_min_1703936_max_1769472_w_loop_26_0():
    x0 = 1703936
    x1 = 1769472
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1703936 and x8 < 1769472,))
    return ndaddrs

ndaddr_funcs['D_26_0_0_min_1703936_max_1769472_w_loop_26_0'] = D_26_0_0_min_1703936_max_1769472_w_loop_26_0
ctxs.append('D_26_0_0_min_1703936_max_1769472_kBackReadCtx')
def D_26_0_0_min_1703936_max_1769472_kBackReadCtx():
    x0 = 1703936
    x1 = 1769472
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1703936 and x8 < 1769472,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_26_0_0_min_1703936_max_1769472_kBackReadCtx'] = D_26_0_0_min_1703936_max_1769472_kBackReadCtx
ctxs.append('D_27_0_0_min_1769472_max_1835008_w_loop_27_0')
def D_27_0_0_min_1769472_max_1835008_w_loop_27_0():
    x0 = 1769472
    x1 = 1835008
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1769472 and x8 < 1835008,))
    return ndaddrs

ndaddr_funcs['D_27_0_0_min_1769472_max_1835008_w_loop_27_0'] = D_27_0_0_min_1769472_max_1835008_w_loop_27_0
ctxs.append('D_27_0_0_min_1769472_max_1835008_kBackReadCtx')
def D_27_0_0_min_1769472_max_1835008_kBackReadCtx():
    x0 = 1769472
    x1 = 1835008
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1769472 and x8 < 1835008,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_27_0_0_min_1769472_max_1835008_kBackReadCtx'] = D_27_0_0_min_1769472_max_1835008_kBackReadCtx
ctxs.append('D_28_0_0_min_1835008_max_1900544_w_loop_28_0')
def D_28_0_0_min_1835008_max_1900544_w_loop_28_0():
    x0 = 1835008
    x1 = 1900544
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1835008 and x8 < 1900544,))
    return ndaddrs

ndaddr_funcs['D_28_0_0_min_1835008_max_1900544_w_loop_28_0'] = D_28_0_0_min_1835008_max_1900544_w_loop_28_0
ctxs.append('D_28_0_0_min_1835008_max_1900544_kBackReadCtx')
def D_28_0_0_min_1835008_max_1900544_kBackReadCtx():
    x0 = 1835008
    x1 = 1900544
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1835008 and x8 < 1900544,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_28_0_0_min_1835008_max_1900544_kBackReadCtx'] = D_28_0_0_min_1835008_max_1900544_kBackReadCtx
ctxs.append('D_29_0_0_min_1900544_max_1966080_w_loop_29_0')
def D_29_0_0_min_1900544_max_1966080_w_loop_29_0():
    x0 = 1900544
    x1 = 1966080
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1900544 and x8 < 1966080,))
    return ndaddrs

ndaddr_funcs['D_29_0_0_min_1900544_max_1966080_w_loop_29_0'] = D_29_0_0_min_1900544_max_1966080_w_loop_29_0
ctxs.append('D_29_0_0_min_1900544_max_1966080_kBackReadCtx')
def D_29_0_0_min_1900544_max_1966080_kBackReadCtx():
    x0 = 1900544
    x1 = 1966080
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1900544 and x8 < 1966080,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_29_0_0_min_1900544_max_1966080_kBackReadCtx'] = D_29_0_0_min_1900544_max_1966080_kBackReadCtx
ctxs.append('D_30_0_0_min_1966080_max_2031616_w_loop_30_0')
def D_30_0_0_min_1966080_max_2031616_w_loop_30_0():
    x0 = 1966080
    x1 = 2031616
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x0,x1,x3):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1966080 and x8 < 2031616,))
    return ndaddrs

ndaddr_funcs['D_30_0_0_min_1966080_max_2031616_w_loop_30_0'] = D_30_0_0_min_1966080_max_2031616_w_loop_30_0
ctxs.append('D_30_0_0_min_1966080_max_2031616_kBackReadCtx')
def D_30_0_0_min_1966080_max_2031616_kBackReadCtx():
    x0 = 1966080
    x1 = 2031616
    x2 = 2097152
    x3 = 64
    x4 = True
    x5 = 0
    x6 = 1
    x7 = 8192
    ndaddrs = []
    for x8 in range(x5,x2,x3):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x5),qaddr(x5),x4,x4,x8 >= 1966080 and x8 < 2031616,))
        x14 = True
        x15 = True
        x16 = x14 | x15
    return ndaddrs

ndaddr_funcs['D_30_0_0_min_1966080_max_2031616_kBackReadCtx'] = D_30_0_0_min_1966080_max_2031616_kBackReadCtx
ctxs.append('D_31_0_0_min_2031616_max_2097152_w_loop_31_0')
def D_31_0_0_min_2031616_max_2097152_w_loop_31_0():
    x0 = 2031616
    x1 = 2097152
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    x6 = 8192
    ndaddrs = []
    for x7 in range(x0,x1,x2):
        x8 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),x3,x3,x7 >= 2031616 and x7 < 2097152,))
    return ndaddrs

ndaddr_funcs['D_31_0_0_min_2031616_max_2097152_w_loop_31_0'] = D_31_0_0_min_2031616_max_2097152_w_loop_31_0
ctxs.append('D_31_0_0_min_2031616_max_2097152_kBackReadCtx')
def D_31_0_0_min_2031616_max_2097152_kBackReadCtx():
    x0 = 2031616
    x1 = 2097152
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    x6 = 8192
    ndaddrs = []
    for x7 in range(x4,x1,x2):
        x8 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),x3,x3,x7 >= 2031616 and x7 < 2097152,))
        x13 = True
        x14 = True
        x15 = x13 | x14
    return ndaddrs

ndaddr_funcs['D_31_0_0_min_2031616_max_2097152_kBackReadCtx'] = D_31_0_0_min_2031616_max_2097152_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 1
    x1 = 8192
    x2 = 2097152
    x3 = 16384
    x4 = True
    x5 = 64
    x6 = 524288
    x7 = 0
    ndaddrs = []
    seqid_ptr = 0
    seqid_list = np.arange(0,1,1)
    # TODO: support multiple addr chain
    # TODO: support multiple addr chain
    x12 = True
    x13 = True
    x14 = x12 | x13
    seqid = seqid_list[seqid_ptr]
    x17 = seqid
    print("seqid = {} ".format(seqid), end='')
    seqid_ptr += 1
    if seqid_ptr >= seqid_list.shape[0]: seqid_ptr = 0
    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x17),qaddr(x17//2),qaddr(x17//64),qaddr(x7),qaddr(x7),x4,x4,True,))
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx'] = ROB_kBackReadCtx_0_0_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 1
    x1 = 8192
    x2 = 2097152
    x3 = 16384
    x4 = True
    x5 = 64
    x6 = 524288
    x7 = 0
    ndaddrs = []
    for x12 in range(x7,x6,x5):
        x10 = True
        x13 = True
        x14 = True
        x15 = x13 | x14
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x7),qaddr(x7),x4,x4,True,))
        x18 = True
        x19 = True
        x20 = x18 | x19
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx'] = ROB_kBackReadCtx_0_0_kBackReadCtx

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

