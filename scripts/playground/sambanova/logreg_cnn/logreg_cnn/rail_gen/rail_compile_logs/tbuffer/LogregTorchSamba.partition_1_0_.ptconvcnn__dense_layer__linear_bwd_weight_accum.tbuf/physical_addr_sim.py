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
    x3 = 0
    x4 = 1
    x5 = 8192
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x3,x0,x2):
        x9 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x3),qaddr(x3),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,x8 >= 0 and x8 < 65536,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_min_0_max_65536_w_loop_0_0'] = D_0_0_0_min_0_max_65536_w_loop_0_0
ctxs.append('D_0_0_0_min_0_max_65536_kBackReadCtx')
def D_0_0_0_min_0_max_65536_kBackReadCtx():
    x0 = 65536
    x1 = 2097152
    x2 = 64
    x3 = 0
    x4 = 1
    x5 = 8192
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x8 in range(x3,x1,x2):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x3),qaddr(x3),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,x8 >= 0 and x8 < 65536,))
        x14 = True
        x15 = x14 | x9
    return ndaddrs

ndaddr_funcs['D_0_0_0_min_0_max_65536_kBackReadCtx'] = D_0_0_0_min_0_max_65536_kBackReadCtx
ctxs.append('D_1_0_0_min_65536_max_131072_w_loop_1_0')
def D_1_0_0_min_65536_max_131072_w_loop_1_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    ndaddrs = []
    for x8 in range(x6,x7,x1):
        x9 = x8 + x7
        x10 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x9 >= 65536 and x9 < 131072,))
    return ndaddrs

ndaddr_funcs['D_1_0_0_min_65536_max_131072_w_loop_1_0'] = D_1_0_0_min_65536_max_131072_w_loop_1_0
ctxs.append('D_1_0_0_min_65536_max_131072_kBackReadCtx')
def D_1_0_0_min_65536_max_131072_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    ndaddrs = []
    for x8 in range(x6,x0,x1):
        x9 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x8 >= 65536 and x8 < 131072,))
        x14 = True
        x15 = x14 | x9
    return ndaddrs

ndaddr_funcs['D_1_0_0_min_65536_max_131072_kBackReadCtx'] = D_1_0_0_min_65536_max_131072_kBackReadCtx
ctxs.append('D_2_0_0_min_131072_max_196608_w_loop_2_0')
def D_2_0_0_min_131072_max_196608_w_loop_2_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 131072
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 131072 and x10 < 196608,))
    return ndaddrs

ndaddr_funcs['D_2_0_0_min_131072_max_196608_w_loop_2_0'] = D_2_0_0_min_131072_max_196608_w_loop_2_0
ctxs.append('D_2_0_0_min_131072_max_196608_kBackReadCtx')
def D_2_0_0_min_131072_max_196608_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 131072
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 131072 and x9 < 196608,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_2_0_0_min_131072_max_196608_kBackReadCtx'] = D_2_0_0_min_131072_max_196608_kBackReadCtx
ctxs.append('D_3_0_0_min_196608_max_262144_w_loop_3_0')
def D_3_0_0_min_196608_max_262144_w_loop_3_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 196608
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 196608 and x10 < 262144,))
    return ndaddrs

ndaddr_funcs['D_3_0_0_min_196608_max_262144_w_loop_3_0'] = D_3_0_0_min_196608_max_262144_w_loop_3_0
ctxs.append('D_3_0_0_min_196608_max_262144_kBackReadCtx')
def D_3_0_0_min_196608_max_262144_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 196608
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 196608 and x9 < 262144,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_3_0_0_min_196608_max_262144_kBackReadCtx'] = D_3_0_0_min_196608_max_262144_kBackReadCtx
ctxs.append('D_4_0_0_min_262144_max_327680_w_loop_4_0')
def D_4_0_0_min_262144_max_327680_w_loop_4_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 262144
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 262144 and x10 < 327680,))
    return ndaddrs

ndaddr_funcs['D_4_0_0_min_262144_max_327680_w_loop_4_0'] = D_4_0_0_min_262144_max_327680_w_loop_4_0
ctxs.append('D_4_0_0_min_262144_max_327680_kBackReadCtx')
def D_4_0_0_min_262144_max_327680_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 262144
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 262144 and x9 < 327680,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_4_0_0_min_262144_max_327680_kBackReadCtx'] = D_4_0_0_min_262144_max_327680_kBackReadCtx
ctxs.append('D_5_0_0_min_327680_max_393216_w_loop_5_0')
def D_5_0_0_min_327680_max_393216_w_loop_5_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 327680
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 327680 and x10 < 393216,))
    return ndaddrs

ndaddr_funcs['D_5_0_0_min_327680_max_393216_w_loop_5_0'] = D_5_0_0_min_327680_max_393216_w_loop_5_0
ctxs.append('D_5_0_0_min_327680_max_393216_kBackReadCtx')
def D_5_0_0_min_327680_max_393216_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 327680
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 327680 and x9 < 393216,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_5_0_0_min_327680_max_393216_kBackReadCtx'] = D_5_0_0_min_327680_max_393216_kBackReadCtx
ctxs.append('D_6_0_0_min_393216_max_458752_w_loop_6_0')
def D_6_0_0_min_393216_max_458752_w_loop_6_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 393216
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 393216 and x10 < 458752,))
    return ndaddrs

ndaddr_funcs['D_6_0_0_min_393216_max_458752_w_loop_6_0'] = D_6_0_0_min_393216_max_458752_w_loop_6_0
ctxs.append('D_6_0_0_min_393216_max_458752_kBackReadCtx')
def D_6_0_0_min_393216_max_458752_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 393216
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 393216 and x9 < 458752,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_6_0_0_min_393216_max_458752_kBackReadCtx'] = D_6_0_0_min_393216_max_458752_kBackReadCtx
ctxs.append('D_7_0_0_min_458752_max_524288_w_loop_7_0')
def D_7_0_0_min_458752_max_524288_w_loop_7_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 458752
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 458752 and x10 < 524288,))
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_w_loop_7_0'] = D_7_0_0_min_458752_max_524288_w_loop_7_0
ctxs.append('D_7_0_0_min_458752_max_524288_kBackReadCtx')
def D_7_0_0_min_458752_max_524288_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 458752
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 458752 and x9 < 524288,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_kBackReadCtx'] = D_7_0_0_min_458752_max_524288_kBackReadCtx
ctxs.append('D_8_0_0_min_524288_max_589824_w_loop_8_0')
def D_8_0_0_min_524288_max_589824_w_loop_8_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 524288
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 524288 and x10 < 589824,))
    return ndaddrs

ndaddr_funcs['D_8_0_0_min_524288_max_589824_w_loop_8_0'] = D_8_0_0_min_524288_max_589824_w_loop_8_0
ctxs.append('D_8_0_0_min_524288_max_589824_kBackReadCtx')
def D_8_0_0_min_524288_max_589824_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 524288
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 524288 and x9 < 589824,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_8_0_0_min_524288_max_589824_kBackReadCtx'] = D_8_0_0_min_524288_max_589824_kBackReadCtx
ctxs.append('D_9_0_0_min_589824_max_655360_w_loop_9_0')
def D_9_0_0_min_589824_max_655360_w_loop_9_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 589824
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 589824 and x10 < 655360,))
    return ndaddrs

ndaddr_funcs['D_9_0_0_min_589824_max_655360_w_loop_9_0'] = D_9_0_0_min_589824_max_655360_w_loop_9_0
ctxs.append('D_9_0_0_min_589824_max_655360_kBackReadCtx')
def D_9_0_0_min_589824_max_655360_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 589824
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 589824 and x9 < 655360,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_9_0_0_min_589824_max_655360_kBackReadCtx'] = D_9_0_0_min_589824_max_655360_kBackReadCtx
ctxs.append('D_10_0_0_min_655360_max_720896_w_loop_10_0')
def D_10_0_0_min_655360_max_720896_w_loop_10_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 655360
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 655360 and x10 < 720896,))
    return ndaddrs

ndaddr_funcs['D_10_0_0_min_655360_max_720896_w_loop_10_0'] = D_10_0_0_min_655360_max_720896_w_loop_10_0
ctxs.append('D_10_0_0_min_655360_max_720896_kBackReadCtx')
def D_10_0_0_min_655360_max_720896_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 655360
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 655360 and x9 < 720896,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_10_0_0_min_655360_max_720896_kBackReadCtx'] = D_10_0_0_min_655360_max_720896_kBackReadCtx
ctxs.append('D_11_0_0_min_720896_max_786432_w_loop_11_0')
def D_11_0_0_min_720896_max_786432_w_loop_11_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 720896
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 720896 and x10 < 786432,))
    return ndaddrs

ndaddr_funcs['D_11_0_0_min_720896_max_786432_w_loop_11_0'] = D_11_0_0_min_720896_max_786432_w_loop_11_0
ctxs.append('D_11_0_0_min_720896_max_786432_kBackReadCtx')
def D_11_0_0_min_720896_max_786432_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 720896
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 720896 and x9 < 786432,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_11_0_0_min_720896_max_786432_kBackReadCtx'] = D_11_0_0_min_720896_max_786432_kBackReadCtx
ctxs.append('D_12_0_0_min_786432_max_851968_w_loop_12_0')
def D_12_0_0_min_786432_max_851968_w_loop_12_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 786432
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 786432 and x10 < 851968,))
    return ndaddrs

ndaddr_funcs['D_12_0_0_min_786432_max_851968_w_loop_12_0'] = D_12_0_0_min_786432_max_851968_w_loop_12_0
ctxs.append('D_12_0_0_min_786432_max_851968_kBackReadCtx')
def D_12_0_0_min_786432_max_851968_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 786432
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 786432 and x9 < 851968,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_12_0_0_min_786432_max_851968_kBackReadCtx'] = D_12_0_0_min_786432_max_851968_kBackReadCtx
ctxs.append('D_13_0_0_min_851968_max_917504_w_loop_13_0')
def D_13_0_0_min_851968_max_917504_w_loop_13_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 851968
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 851968 and x10 < 917504,))
    return ndaddrs

ndaddr_funcs['D_13_0_0_min_851968_max_917504_w_loop_13_0'] = D_13_0_0_min_851968_max_917504_w_loop_13_0
ctxs.append('D_13_0_0_min_851968_max_917504_kBackReadCtx')
def D_13_0_0_min_851968_max_917504_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 851968
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 851968 and x9 < 917504,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_13_0_0_min_851968_max_917504_kBackReadCtx'] = D_13_0_0_min_851968_max_917504_kBackReadCtx
ctxs.append('D_14_0_0_min_917504_max_983040_w_loop_14_0')
def D_14_0_0_min_917504_max_983040_w_loop_14_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 917504
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 917504 and x10 < 983040,))
    return ndaddrs

ndaddr_funcs['D_14_0_0_min_917504_max_983040_w_loop_14_0'] = D_14_0_0_min_917504_max_983040_w_loop_14_0
ctxs.append('D_14_0_0_min_917504_max_983040_kBackReadCtx')
def D_14_0_0_min_917504_max_983040_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 917504
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 917504 and x9 < 983040,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_14_0_0_min_917504_max_983040_kBackReadCtx'] = D_14_0_0_min_917504_max_983040_kBackReadCtx
ctxs.append('D_15_0_0_min_983040_max_1048576_w_loop_15_0')
def D_15_0_0_min_983040_max_1048576_w_loop_15_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 983040
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 983040 and x10 < 1048576,))
    return ndaddrs

ndaddr_funcs['D_15_0_0_min_983040_max_1048576_w_loop_15_0'] = D_15_0_0_min_983040_max_1048576_w_loop_15_0
ctxs.append('D_15_0_0_min_983040_max_1048576_kBackReadCtx')
def D_15_0_0_min_983040_max_1048576_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 983040
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 983040 and x9 < 1048576,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_15_0_0_min_983040_max_1048576_kBackReadCtx'] = D_15_0_0_min_983040_max_1048576_kBackReadCtx
ctxs.append('D_16_0_0_min_1048576_max_1114112_w_loop_16_0')
def D_16_0_0_min_1048576_max_1114112_w_loop_16_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1048576
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1048576 and x10 < 1114112,))
    return ndaddrs

ndaddr_funcs['D_16_0_0_min_1048576_max_1114112_w_loop_16_0'] = D_16_0_0_min_1048576_max_1114112_w_loop_16_0
ctxs.append('D_16_0_0_min_1048576_max_1114112_kBackReadCtx')
def D_16_0_0_min_1048576_max_1114112_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1048576
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1048576 and x9 < 1114112,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_16_0_0_min_1048576_max_1114112_kBackReadCtx'] = D_16_0_0_min_1048576_max_1114112_kBackReadCtx
ctxs.append('D_17_0_0_min_1114112_max_1179648_w_loop_17_0')
def D_17_0_0_min_1114112_max_1179648_w_loop_17_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1114112
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1114112 and x10 < 1179648,))
    return ndaddrs

ndaddr_funcs['D_17_0_0_min_1114112_max_1179648_w_loop_17_0'] = D_17_0_0_min_1114112_max_1179648_w_loop_17_0
ctxs.append('D_17_0_0_min_1114112_max_1179648_kBackReadCtx')
def D_17_0_0_min_1114112_max_1179648_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1114112
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1114112 and x9 < 1179648,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_17_0_0_min_1114112_max_1179648_kBackReadCtx'] = D_17_0_0_min_1114112_max_1179648_kBackReadCtx
ctxs.append('D_18_0_0_min_1179648_max_1245184_w_loop_18_0')
def D_18_0_0_min_1179648_max_1245184_w_loop_18_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1179648
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1179648 and x10 < 1245184,))
    return ndaddrs

ndaddr_funcs['D_18_0_0_min_1179648_max_1245184_w_loop_18_0'] = D_18_0_0_min_1179648_max_1245184_w_loop_18_0
ctxs.append('D_18_0_0_min_1179648_max_1245184_kBackReadCtx')
def D_18_0_0_min_1179648_max_1245184_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1179648
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1179648 and x9 < 1245184,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_18_0_0_min_1179648_max_1245184_kBackReadCtx'] = D_18_0_0_min_1179648_max_1245184_kBackReadCtx
ctxs.append('D_19_0_0_min_1245184_max_1310720_w_loop_19_0')
def D_19_0_0_min_1245184_max_1310720_w_loop_19_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1245184
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1245184 and x10 < 1310720,))
    return ndaddrs

ndaddr_funcs['D_19_0_0_min_1245184_max_1310720_w_loop_19_0'] = D_19_0_0_min_1245184_max_1310720_w_loop_19_0
ctxs.append('D_19_0_0_min_1245184_max_1310720_kBackReadCtx')
def D_19_0_0_min_1245184_max_1310720_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1245184
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1245184 and x9 < 1310720,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_19_0_0_min_1245184_max_1310720_kBackReadCtx'] = D_19_0_0_min_1245184_max_1310720_kBackReadCtx
ctxs.append('D_20_0_0_min_1310720_max_1376256_w_loop_20_0')
def D_20_0_0_min_1310720_max_1376256_w_loop_20_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1310720
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1310720 and x10 < 1376256,))
    return ndaddrs

ndaddr_funcs['D_20_0_0_min_1310720_max_1376256_w_loop_20_0'] = D_20_0_0_min_1310720_max_1376256_w_loop_20_0
ctxs.append('D_20_0_0_min_1310720_max_1376256_kBackReadCtx')
def D_20_0_0_min_1310720_max_1376256_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1310720
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1310720 and x9 < 1376256,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_20_0_0_min_1310720_max_1376256_kBackReadCtx'] = D_20_0_0_min_1310720_max_1376256_kBackReadCtx
ctxs.append('D_21_0_0_min_1376256_max_1441792_w_loop_21_0')
def D_21_0_0_min_1376256_max_1441792_w_loop_21_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1376256
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1376256 and x10 < 1441792,))
    return ndaddrs

ndaddr_funcs['D_21_0_0_min_1376256_max_1441792_w_loop_21_0'] = D_21_0_0_min_1376256_max_1441792_w_loop_21_0
ctxs.append('D_21_0_0_min_1376256_max_1441792_kBackReadCtx')
def D_21_0_0_min_1376256_max_1441792_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1376256
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1376256 and x9 < 1441792,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_21_0_0_min_1376256_max_1441792_kBackReadCtx'] = D_21_0_0_min_1376256_max_1441792_kBackReadCtx
ctxs.append('D_22_0_0_min_1441792_max_1507328_w_loop_22_0')
def D_22_0_0_min_1441792_max_1507328_w_loop_22_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1441792
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1441792 and x10 < 1507328,))
    return ndaddrs

ndaddr_funcs['D_22_0_0_min_1441792_max_1507328_w_loop_22_0'] = D_22_0_0_min_1441792_max_1507328_w_loop_22_0
ctxs.append('D_22_0_0_min_1441792_max_1507328_kBackReadCtx')
def D_22_0_0_min_1441792_max_1507328_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1441792
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1441792 and x9 < 1507328,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_22_0_0_min_1441792_max_1507328_kBackReadCtx'] = D_22_0_0_min_1441792_max_1507328_kBackReadCtx
ctxs.append('D_23_0_0_min_1507328_max_1572864_w_loop_23_0')
def D_23_0_0_min_1507328_max_1572864_w_loop_23_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1507328
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1507328 and x10 < 1572864,))
    return ndaddrs

ndaddr_funcs['D_23_0_0_min_1507328_max_1572864_w_loop_23_0'] = D_23_0_0_min_1507328_max_1572864_w_loop_23_0
ctxs.append('D_23_0_0_min_1507328_max_1572864_kBackReadCtx')
def D_23_0_0_min_1507328_max_1572864_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1507328
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1507328 and x9 < 1572864,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_23_0_0_min_1507328_max_1572864_kBackReadCtx'] = D_23_0_0_min_1507328_max_1572864_kBackReadCtx
ctxs.append('D_24_0_0_min_1572864_max_1638400_w_loop_24_0')
def D_24_0_0_min_1572864_max_1638400_w_loop_24_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1572864
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1572864 and x10 < 1638400,))
    return ndaddrs

ndaddr_funcs['D_24_0_0_min_1572864_max_1638400_w_loop_24_0'] = D_24_0_0_min_1572864_max_1638400_w_loop_24_0
ctxs.append('D_24_0_0_min_1572864_max_1638400_kBackReadCtx')
def D_24_0_0_min_1572864_max_1638400_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1572864
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1572864 and x9 < 1638400,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_24_0_0_min_1572864_max_1638400_kBackReadCtx'] = D_24_0_0_min_1572864_max_1638400_kBackReadCtx
ctxs.append('D_25_0_0_min_1638400_max_1703936_w_loop_25_0')
def D_25_0_0_min_1638400_max_1703936_w_loop_25_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1638400
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1638400 and x10 < 1703936,))
    return ndaddrs

ndaddr_funcs['D_25_0_0_min_1638400_max_1703936_w_loop_25_0'] = D_25_0_0_min_1638400_max_1703936_w_loop_25_0
ctxs.append('D_25_0_0_min_1638400_max_1703936_kBackReadCtx')
def D_25_0_0_min_1638400_max_1703936_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1638400
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1638400 and x9 < 1703936,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_25_0_0_min_1638400_max_1703936_kBackReadCtx'] = D_25_0_0_min_1638400_max_1703936_kBackReadCtx
ctxs.append('D_26_0_0_min_1703936_max_1769472_w_loop_26_0')
def D_26_0_0_min_1703936_max_1769472_w_loop_26_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1703936
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1703936 and x10 < 1769472,))
    return ndaddrs

ndaddr_funcs['D_26_0_0_min_1703936_max_1769472_w_loop_26_0'] = D_26_0_0_min_1703936_max_1769472_w_loop_26_0
ctxs.append('D_26_0_0_min_1703936_max_1769472_kBackReadCtx')
def D_26_0_0_min_1703936_max_1769472_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1703936
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1703936 and x9 < 1769472,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_26_0_0_min_1703936_max_1769472_kBackReadCtx'] = D_26_0_0_min_1703936_max_1769472_kBackReadCtx
ctxs.append('D_27_0_0_min_1769472_max_1835008_w_loop_27_0')
def D_27_0_0_min_1769472_max_1835008_w_loop_27_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1769472
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1769472 and x10 < 1835008,))
    return ndaddrs

ndaddr_funcs['D_27_0_0_min_1769472_max_1835008_w_loop_27_0'] = D_27_0_0_min_1769472_max_1835008_w_loop_27_0
ctxs.append('D_27_0_0_min_1769472_max_1835008_kBackReadCtx')
def D_27_0_0_min_1769472_max_1835008_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1769472
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1769472 and x9 < 1835008,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_27_0_0_min_1769472_max_1835008_kBackReadCtx'] = D_27_0_0_min_1769472_max_1835008_kBackReadCtx
ctxs.append('D_28_0_0_min_1835008_max_1900544_w_loop_28_0')
def D_28_0_0_min_1835008_max_1900544_w_loop_28_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1835008
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1835008 and x10 < 1900544,))
    return ndaddrs

ndaddr_funcs['D_28_0_0_min_1835008_max_1900544_w_loop_28_0'] = D_28_0_0_min_1835008_max_1900544_w_loop_28_0
ctxs.append('D_28_0_0_min_1835008_max_1900544_kBackReadCtx')
def D_28_0_0_min_1835008_max_1900544_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1835008
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1835008 and x9 < 1900544,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_28_0_0_min_1835008_max_1900544_kBackReadCtx'] = D_28_0_0_min_1835008_max_1900544_kBackReadCtx
ctxs.append('D_29_0_0_min_1900544_max_1966080_w_loop_29_0')
def D_29_0_0_min_1900544_max_1966080_w_loop_29_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1900544
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1900544 and x10 < 1966080,))
    return ndaddrs

ndaddr_funcs['D_29_0_0_min_1900544_max_1966080_w_loop_29_0'] = D_29_0_0_min_1900544_max_1966080_w_loop_29_0
ctxs.append('D_29_0_0_min_1900544_max_1966080_kBackReadCtx')
def D_29_0_0_min_1900544_max_1966080_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1900544
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1900544 and x9 < 1966080,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_29_0_0_min_1900544_max_1966080_kBackReadCtx'] = D_29_0_0_min_1900544_max_1966080_kBackReadCtx
ctxs.append('D_30_0_0_min_1966080_max_2031616_w_loop_30_0')
def D_30_0_0_min_1966080_max_2031616_w_loop_30_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1966080
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 1966080 and x10 < 2031616,))
    return ndaddrs

ndaddr_funcs['D_30_0_0_min_1966080_max_2031616_w_loop_30_0'] = D_30_0_0_min_1966080_max_2031616_w_loop_30_0
ctxs.append('D_30_0_0_min_1966080_max_2031616_kBackReadCtx')
def D_30_0_0_min_1966080_max_2031616_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 1966080
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 1966080 and x9 < 2031616,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_30_0_0_min_1966080_max_2031616_kBackReadCtx'] = D_30_0_0_min_1966080_max_2031616_kBackReadCtx
ctxs.append('D_31_0_0_min_2031616_max_2097152_w_loop_31_0')
def D_31_0_0_min_2031616_max_2097152_w_loop_31_0():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 2031616
    ndaddrs = []
    for x9 in range(x6,x7,x1):
        x10 = x9 + x8
        x11 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x10),qaddr(x10//2),qaddr(x10//64),qaddr(x6),qaddr(x6),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,x10 >= 2031616 and x10 < 2097152,))
    return ndaddrs

ndaddr_funcs['D_31_0_0_min_2031616_max_2097152_w_loop_31_0'] = D_31_0_0_min_2031616_max_2097152_w_loop_31_0
ctxs.append('D_31_0_0_min_2031616_max_2097152_kBackReadCtx')
def D_31_0_0_min_2031616_max_2097152_kBackReadCtx():
    x0 = 2097152
    x1 = 64
    x2 = 1
    x3 = 8192
    x4 = 2
    x5 = 0
    x6 = 0
    x7 = 65536
    x8 = 2031616
    ndaddrs = []
    for x9 in range(x6,x0,x1):
        x10 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x6),qaddr(x6),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x9 >= 2031616 and x9 < 2097152,))
        x15 = True
        x16 = x15 | x10
    return ndaddrs

ndaddr_funcs['D_31_0_0_min_2031616_max_2097152_kBackReadCtx'] = D_31_0_0_min_2031616_max_2097152_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 32768
    x1 = 1
    x2 = 8192
    x3 = 64
    x4 = 524288
    x5 = 0
    x6 = 2
    x7 = 0
    ndaddrs = []
    seqid_ptr = 0
    seqid_list = np.arange(0,1,1)
    # TODO: support multiple addr chain
    # TODO: support multiple addr chain
    x11 = True
    x12 = True
    x13 = x11 | x12
    seqid = seqid_list[seqid_ptr]
    x16 = seqid
    print("seqid = {} ".format(seqid), end='')
    seqid_ptr += 1
    if seqid_ptr >= seqid_list.shape[0]: seqid_ptr = 0
    print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x16),qaddr(x16//2),qaddr(x16//64),qaddr(x5),qaddr(x5),bin(x6)[2::],x6 % 2 >> 0 ,x6 % 4 >> 1 ,x6 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx'] = ROB_kBackReadCtx_0_0_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 32768
    x1 = 1
    x2 = 8192
    x3 = 64
    x4 = 524288
    x5 = 0
    x6 = 2
    x7 = 0
    ndaddrs = []
    for x11 in range(x5,x4,x3):
        x9 = True
        x12 = True
        x13 = x12 | x9
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x5),qaddr(x5),bin(x7)[2::],x7 % 2 >> 0 ,x7 % 4 >> 1 ,x7 % 8 >> 2 ,True,))
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

