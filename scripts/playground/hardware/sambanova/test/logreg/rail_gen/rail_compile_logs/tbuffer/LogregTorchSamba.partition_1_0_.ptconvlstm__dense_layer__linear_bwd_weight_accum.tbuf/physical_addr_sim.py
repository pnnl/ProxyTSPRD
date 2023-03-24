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

ctxs.append('D_0_0_0_min_0_max_65536_w_loop_0_0_0_0_0__dup0_W')
def D_0_0_0_min_0_max_65536_w_loop_0_0_0_0_0__dup0_W():
    ndaddrs = []
    x0 = 64
    x1 = 65536
    x2 = 0
    x3 = 2
    for x4 in range(x2,x1,x0):
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x4),qaddr(x4//2),qaddr(x4//64),qaddr(x2),bin(x3)[2::],x3 % 2 >> 0 ,x3 % 4 >> 1 ,x3 % 8 >> 2 ,x4 >= 0 and x4 < 65536,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_min_0_max_65536_w_loop_0_0_0_0_0__dup0_W'] = D_0_0_0_min_0_max_65536_w_loop_0_0_0_0_0__dup0_W
ctxs.append('D_0_0_0_min_0_max_65536_kBackReadCtx_0_0__dup0_R')
def D_0_0_0_min_0_max_65536_kBackReadCtx_0_0__dup0_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 0 and x6 < 65536,))
    return ndaddrs

ndaddr_funcs['D_0_0_0_min_0_max_65536_kBackReadCtx_0_0__dup0_R'] = D_0_0_0_min_0_max_65536_kBackReadCtx_0_0__dup0_R
ctxs.append('D_1_0_0_min_65536_max_131072_w_loop_1_0_0_0_0__dup1_W')
def D_1_0_0_min_65536_max_131072_w_loop_1_0_0_0_0__dup1_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    for x4 in range(x2,x3,x0):
        x5 = x4 + x3
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x5),qaddr(x5//2),qaddr(x5//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x5 >= 65536 and x5 < 131072,))
    return ndaddrs

ndaddr_funcs['D_1_0_0_min_65536_max_131072_w_loop_1_0_0_0_0__dup1_W'] = D_1_0_0_min_65536_max_131072_w_loop_1_0_0_0_0__dup1_W
ctxs.append('D_1_0_0_min_65536_max_131072_kBackReadCtx_0_0__dup1_R')
def D_1_0_0_min_65536_max_131072_kBackReadCtx_0_0__dup1_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 65536 and x6 < 131072,))
    return ndaddrs

ndaddr_funcs['D_1_0_0_min_65536_max_131072_kBackReadCtx_0_0__dup1_R'] = D_1_0_0_min_65536_max_131072_kBackReadCtx_0_0__dup1_R
ctxs.append('D_2_0_0_min_131072_max_196608_w_loop_2_0_0_0_0__dup2_W')
def D_2_0_0_min_131072_max_196608_w_loop_2_0_0_0_0__dup2_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 131072
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 131072 and x6 < 196608,))
    return ndaddrs

ndaddr_funcs['D_2_0_0_min_131072_max_196608_w_loop_2_0_0_0_0__dup2_W'] = D_2_0_0_min_131072_max_196608_w_loop_2_0_0_0_0__dup2_W
ctxs.append('D_2_0_0_min_131072_max_196608_kBackReadCtx_0_0__dup2_R')
def D_2_0_0_min_131072_max_196608_kBackReadCtx_0_0__dup2_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 131072 and x6 < 196608,))
    return ndaddrs

ndaddr_funcs['D_2_0_0_min_131072_max_196608_kBackReadCtx_0_0__dup2_R'] = D_2_0_0_min_131072_max_196608_kBackReadCtx_0_0__dup2_R
ctxs.append('D_3_0_0_min_196608_max_262144_w_loop_3_0_0_0_0__dup3_W')
def D_3_0_0_min_196608_max_262144_w_loop_3_0_0_0_0__dup3_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 196608
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 196608 and x6 < 262144,))
    return ndaddrs

ndaddr_funcs['D_3_0_0_min_196608_max_262144_w_loop_3_0_0_0_0__dup3_W'] = D_3_0_0_min_196608_max_262144_w_loop_3_0_0_0_0__dup3_W
ctxs.append('D_3_0_0_min_196608_max_262144_kBackReadCtx_0_0__dup3_R')
def D_3_0_0_min_196608_max_262144_kBackReadCtx_0_0__dup3_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 196608 and x6 < 262144,))
    return ndaddrs

ndaddr_funcs['D_3_0_0_min_196608_max_262144_kBackReadCtx_0_0__dup3_R'] = D_3_0_0_min_196608_max_262144_kBackReadCtx_0_0__dup3_R
ctxs.append('D_4_0_0_min_262144_max_327680_w_loop_4_0_0_0_0__dup4_W')
def D_4_0_0_min_262144_max_327680_w_loop_4_0_0_0_0__dup4_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 262144
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 262144 and x6 < 327680,))
    return ndaddrs

ndaddr_funcs['D_4_0_0_min_262144_max_327680_w_loop_4_0_0_0_0__dup4_W'] = D_4_0_0_min_262144_max_327680_w_loop_4_0_0_0_0__dup4_W
ctxs.append('D_4_0_0_min_262144_max_327680_kBackReadCtx_0_0__dup4_R')
def D_4_0_0_min_262144_max_327680_kBackReadCtx_0_0__dup4_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 262144 and x6 < 327680,))
    return ndaddrs

ndaddr_funcs['D_4_0_0_min_262144_max_327680_kBackReadCtx_0_0__dup4_R'] = D_4_0_0_min_262144_max_327680_kBackReadCtx_0_0__dup4_R
ctxs.append('D_5_0_0_min_327680_max_393216_w_loop_5_0_0_0_0__dup5_W')
def D_5_0_0_min_327680_max_393216_w_loop_5_0_0_0_0__dup5_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 327680
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 327680 and x6 < 393216,))
    return ndaddrs

ndaddr_funcs['D_5_0_0_min_327680_max_393216_w_loop_5_0_0_0_0__dup5_W'] = D_5_0_0_min_327680_max_393216_w_loop_5_0_0_0_0__dup5_W
ctxs.append('D_5_0_0_min_327680_max_393216_kBackReadCtx_0_0__dup5_R')
def D_5_0_0_min_327680_max_393216_kBackReadCtx_0_0__dup5_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 327680 and x6 < 393216,))
    return ndaddrs

ndaddr_funcs['D_5_0_0_min_327680_max_393216_kBackReadCtx_0_0__dup5_R'] = D_5_0_0_min_327680_max_393216_kBackReadCtx_0_0__dup5_R
ctxs.append('D_6_0_0_min_393216_max_458752_w_loop_6_0_0_0_0__dup6_W')
def D_6_0_0_min_393216_max_458752_w_loop_6_0_0_0_0__dup6_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 393216
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 393216 and x6 < 458752,))
    return ndaddrs

ndaddr_funcs['D_6_0_0_min_393216_max_458752_w_loop_6_0_0_0_0__dup6_W'] = D_6_0_0_min_393216_max_458752_w_loop_6_0_0_0_0__dup6_W
ctxs.append('D_6_0_0_min_393216_max_458752_kBackReadCtx_0_0__dup6_R')
def D_6_0_0_min_393216_max_458752_kBackReadCtx_0_0__dup6_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 393216 and x6 < 458752,))
    return ndaddrs

ndaddr_funcs['D_6_0_0_min_393216_max_458752_kBackReadCtx_0_0__dup6_R'] = D_6_0_0_min_393216_max_458752_kBackReadCtx_0_0__dup6_R
ctxs.append('D_7_0_0_min_458752_max_524288_w_loop_7_0_0_0_0__dup7_W')
def D_7_0_0_min_458752_max_524288_w_loop_7_0_0_0_0__dup7_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 458752
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 458752 and x6 < 524288,))
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_w_loop_7_0_0_0_0__dup7_W'] = D_7_0_0_min_458752_max_524288_w_loop_7_0_0_0_0__dup7_W
ctxs.append('D_7_0_0_min_458752_max_524288_kBackReadCtx_0_0__dup7_R')
def D_7_0_0_min_458752_max_524288_kBackReadCtx_0_0__dup7_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 458752 and x6 < 524288,))
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_kBackReadCtx_0_0__dup7_R'] = D_7_0_0_min_458752_max_524288_kBackReadCtx_0_0__dup7_R
ctxs.append('D_8_0_0_min_524288_max_589824_w_loop_8_0_0_0_0__dup8_W')
def D_8_0_0_min_524288_max_589824_w_loop_8_0_0_0_0__dup8_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 524288
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 524288 and x6 < 589824,))
    return ndaddrs

ndaddr_funcs['D_8_0_0_min_524288_max_589824_w_loop_8_0_0_0_0__dup8_W'] = D_8_0_0_min_524288_max_589824_w_loop_8_0_0_0_0__dup8_W
ctxs.append('D_8_0_0_min_524288_max_589824_kBackReadCtx_0_0__dup8_R')
def D_8_0_0_min_524288_max_589824_kBackReadCtx_0_0__dup8_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 524288 and x6 < 589824,))
    return ndaddrs

ndaddr_funcs['D_8_0_0_min_524288_max_589824_kBackReadCtx_0_0__dup8_R'] = D_8_0_0_min_524288_max_589824_kBackReadCtx_0_0__dup8_R
ctxs.append('D_9_0_0_min_589824_max_655360_w_loop_9_0_0_0_0__dup9_W')
def D_9_0_0_min_589824_max_655360_w_loop_9_0_0_0_0__dup9_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 589824
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 589824 and x6 < 655360,))
    return ndaddrs

ndaddr_funcs['D_9_0_0_min_589824_max_655360_w_loop_9_0_0_0_0__dup9_W'] = D_9_0_0_min_589824_max_655360_w_loop_9_0_0_0_0__dup9_W
ctxs.append('D_9_0_0_min_589824_max_655360_kBackReadCtx_0_0__dup9_R')
def D_9_0_0_min_589824_max_655360_kBackReadCtx_0_0__dup9_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 589824 and x6 < 655360,))
    return ndaddrs

ndaddr_funcs['D_9_0_0_min_589824_max_655360_kBackReadCtx_0_0__dup9_R'] = D_9_0_0_min_589824_max_655360_kBackReadCtx_0_0__dup9_R
ctxs.append('D_10_0_0_min_655360_max_720896_w_loop_10_0_0_0_0__dup10_W')
def D_10_0_0_min_655360_max_720896_w_loop_10_0_0_0_0__dup10_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 655360
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 655360 and x6 < 720896,))
    return ndaddrs

ndaddr_funcs['D_10_0_0_min_655360_max_720896_w_loop_10_0_0_0_0__dup10_W'] = D_10_0_0_min_655360_max_720896_w_loop_10_0_0_0_0__dup10_W
ctxs.append('D_10_0_0_min_655360_max_720896_kBackReadCtx_0_0__dup10_R')
def D_10_0_0_min_655360_max_720896_kBackReadCtx_0_0__dup10_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 655360 and x6 < 720896,))
    return ndaddrs

ndaddr_funcs['D_10_0_0_min_655360_max_720896_kBackReadCtx_0_0__dup10_R'] = D_10_0_0_min_655360_max_720896_kBackReadCtx_0_0__dup10_R
ctxs.append('D_11_0_0_min_720896_max_786432_w_loop_11_0_0_0_0__dup11_W')
def D_11_0_0_min_720896_max_786432_w_loop_11_0_0_0_0__dup11_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 720896
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 720896 and x6 < 786432,))
    return ndaddrs

ndaddr_funcs['D_11_0_0_min_720896_max_786432_w_loop_11_0_0_0_0__dup11_W'] = D_11_0_0_min_720896_max_786432_w_loop_11_0_0_0_0__dup11_W
ctxs.append('D_11_0_0_min_720896_max_786432_kBackReadCtx_0_0__dup11_R')
def D_11_0_0_min_720896_max_786432_kBackReadCtx_0_0__dup11_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 720896 and x6 < 786432,))
    return ndaddrs

ndaddr_funcs['D_11_0_0_min_720896_max_786432_kBackReadCtx_0_0__dup11_R'] = D_11_0_0_min_720896_max_786432_kBackReadCtx_0_0__dup11_R
ctxs.append('D_12_0_0_min_786432_max_851968_w_loop_12_0_0_0_0__dup12_W')
def D_12_0_0_min_786432_max_851968_w_loop_12_0_0_0_0__dup12_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 786432
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 786432 and x6 < 851968,))
    return ndaddrs

ndaddr_funcs['D_12_0_0_min_786432_max_851968_w_loop_12_0_0_0_0__dup12_W'] = D_12_0_0_min_786432_max_851968_w_loop_12_0_0_0_0__dup12_W
ctxs.append('D_12_0_0_min_786432_max_851968_kBackReadCtx_0_0__dup12_R')
def D_12_0_0_min_786432_max_851968_kBackReadCtx_0_0__dup12_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 786432 and x6 < 851968,))
    return ndaddrs

ndaddr_funcs['D_12_0_0_min_786432_max_851968_kBackReadCtx_0_0__dup12_R'] = D_12_0_0_min_786432_max_851968_kBackReadCtx_0_0__dup12_R
ctxs.append('D_13_0_0_min_851968_max_917504_w_loop_13_0_0_0_0__dup13_W')
def D_13_0_0_min_851968_max_917504_w_loop_13_0_0_0_0__dup13_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 851968
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 851968 and x6 < 917504,))
    return ndaddrs

ndaddr_funcs['D_13_0_0_min_851968_max_917504_w_loop_13_0_0_0_0__dup13_W'] = D_13_0_0_min_851968_max_917504_w_loop_13_0_0_0_0__dup13_W
ctxs.append('D_13_0_0_min_851968_max_917504_kBackReadCtx_0_0__dup13_R')
def D_13_0_0_min_851968_max_917504_kBackReadCtx_0_0__dup13_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 851968 and x6 < 917504,))
    return ndaddrs

ndaddr_funcs['D_13_0_0_min_851968_max_917504_kBackReadCtx_0_0__dup13_R'] = D_13_0_0_min_851968_max_917504_kBackReadCtx_0_0__dup13_R
ctxs.append('D_14_0_0_min_917504_max_983040_w_loop_14_0_0_0_0__dup14_W')
def D_14_0_0_min_917504_max_983040_w_loop_14_0_0_0_0__dup14_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 917504
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 917504 and x6 < 983040,))
    return ndaddrs

ndaddr_funcs['D_14_0_0_min_917504_max_983040_w_loop_14_0_0_0_0__dup14_W'] = D_14_0_0_min_917504_max_983040_w_loop_14_0_0_0_0__dup14_W
ctxs.append('D_14_0_0_min_917504_max_983040_kBackReadCtx_0_0__dup14_R')
def D_14_0_0_min_917504_max_983040_kBackReadCtx_0_0__dup14_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 917504 and x6 < 983040,))
    return ndaddrs

ndaddr_funcs['D_14_0_0_min_917504_max_983040_kBackReadCtx_0_0__dup14_R'] = D_14_0_0_min_917504_max_983040_kBackReadCtx_0_0__dup14_R
ctxs.append('D_15_0_0_min_983040_max_1048576_w_loop_15_0_0_0_0__dup15_W')
def D_15_0_0_min_983040_max_1048576_w_loop_15_0_0_0_0__dup15_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 983040
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 983040 and x6 < 1048576,))
    return ndaddrs

ndaddr_funcs['D_15_0_0_min_983040_max_1048576_w_loop_15_0_0_0_0__dup15_W'] = D_15_0_0_min_983040_max_1048576_w_loop_15_0_0_0_0__dup15_W
ctxs.append('D_15_0_0_min_983040_max_1048576_kBackReadCtx_0_0__dup15_R')
def D_15_0_0_min_983040_max_1048576_kBackReadCtx_0_0__dup15_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 983040 and x6 < 1048576,))
    return ndaddrs

ndaddr_funcs['D_15_0_0_min_983040_max_1048576_kBackReadCtx_0_0__dup15_R'] = D_15_0_0_min_983040_max_1048576_kBackReadCtx_0_0__dup15_R
ctxs.append('D_16_0_0_min_1048576_max_1114112_w_loop_16_0_0_0_0__dup16_W')
def D_16_0_0_min_1048576_max_1114112_w_loop_16_0_0_0_0__dup16_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1048576
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1048576 and x6 < 1114112,))
    return ndaddrs

ndaddr_funcs['D_16_0_0_min_1048576_max_1114112_w_loop_16_0_0_0_0__dup16_W'] = D_16_0_0_min_1048576_max_1114112_w_loop_16_0_0_0_0__dup16_W
ctxs.append('D_16_0_0_min_1048576_max_1114112_kBackReadCtx_0_0__dup16_R')
def D_16_0_0_min_1048576_max_1114112_kBackReadCtx_0_0__dup16_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1048576 and x6 < 1114112,))
    return ndaddrs

ndaddr_funcs['D_16_0_0_min_1048576_max_1114112_kBackReadCtx_0_0__dup16_R'] = D_16_0_0_min_1048576_max_1114112_kBackReadCtx_0_0__dup16_R
ctxs.append('D_17_0_0_min_1114112_max_1179648_w_loop_17_0_0_0_0__dup17_W')
def D_17_0_0_min_1114112_max_1179648_w_loop_17_0_0_0_0__dup17_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1114112
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1114112 and x6 < 1179648,))
    return ndaddrs

ndaddr_funcs['D_17_0_0_min_1114112_max_1179648_w_loop_17_0_0_0_0__dup17_W'] = D_17_0_0_min_1114112_max_1179648_w_loop_17_0_0_0_0__dup17_W
ctxs.append('D_17_0_0_min_1114112_max_1179648_kBackReadCtx_0_0__dup17_R')
def D_17_0_0_min_1114112_max_1179648_kBackReadCtx_0_0__dup17_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1114112 and x6 < 1179648,))
    return ndaddrs

ndaddr_funcs['D_17_0_0_min_1114112_max_1179648_kBackReadCtx_0_0__dup17_R'] = D_17_0_0_min_1114112_max_1179648_kBackReadCtx_0_0__dup17_R
ctxs.append('D_18_0_0_min_1179648_max_1245184_w_loop_18_0_0_0_0__dup18_W')
def D_18_0_0_min_1179648_max_1245184_w_loop_18_0_0_0_0__dup18_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1179648
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1179648 and x6 < 1245184,))
    return ndaddrs

ndaddr_funcs['D_18_0_0_min_1179648_max_1245184_w_loop_18_0_0_0_0__dup18_W'] = D_18_0_0_min_1179648_max_1245184_w_loop_18_0_0_0_0__dup18_W
ctxs.append('D_18_0_0_min_1179648_max_1245184_kBackReadCtx_0_0__dup18_R')
def D_18_0_0_min_1179648_max_1245184_kBackReadCtx_0_0__dup18_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1179648 and x6 < 1245184,))
    return ndaddrs

ndaddr_funcs['D_18_0_0_min_1179648_max_1245184_kBackReadCtx_0_0__dup18_R'] = D_18_0_0_min_1179648_max_1245184_kBackReadCtx_0_0__dup18_R
ctxs.append('D_19_0_0_min_1245184_max_1310720_w_loop_19_0_0_0_0__dup19_W')
def D_19_0_0_min_1245184_max_1310720_w_loop_19_0_0_0_0__dup19_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1245184
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1245184 and x6 < 1310720,))
    return ndaddrs

ndaddr_funcs['D_19_0_0_min_1245184_max_1310720_w_loop_19_0_0_0_0__dup19_W'] = D_19_0_0_min_1245184_max_1310720_w_loop_19_0_0_0_0__dup19_W
ctxs.append('D_19_0_0_min_1245184_max_1310720_kBackReadCtx_0_0__dup19_R')
def D_19_0_0_min_1245184_max_1310720_kBackReadCtx_0_0__dup19_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1245184 and x6 < 1310720,))
    return ndaddrs

ndaddr_funcs['D_19_0_0_min_1245184_max_1310720_kBackReadCtx_0_0__dup19_R'] = D_19_0_0_min_1245184_max_1310720_kBackReadCtx_0_0__dup19_R
ctxs.append('D_20_0_0_min_1310720_max_1376256_w_loop_20_0_0_0_0__dup20_W')
def D_20_0_0_min_1310720_max_1376256_w_loop_20_0_0_0_0__dup20_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1310720
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1310720 and x6 < 1376256,))
    return ndaddrs

ndaddr_funcs['D_20_0_0_min_1310720_max_1376256_w_loop_20_0_0_0_0__dup20_W'] = D_20_0_0_min_1310720_max_1376256_w_loop_20_0_0_0_0__dup20_W
ctxs.append('D_20_0_0_min_1310720_max_1376256_kBackReadCtx_0_0__dup20_R')
def D_20_0_0_min_1310720_max_1376256_kBackReadCtx_0_0__dup20_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1310720 and x6 < 1376256,))
    return ndaddrs

ndaddr_funcs['D_20_0_0_min_1310720_max_1376256_kBackReadCtx_0_0__dup20_R'] = D_20_0_0_min_1310720_max_1376256_kBackReadCtx_0_0__dup20_R
ctxs.append('D_21_0_0_min_1376256_max_1441792_w_loop_21_0_0_0_0__dup21_W')
def D_21_0_0_min_1376256_max_1441792_w_loop_21_0_0_0_0__dup21_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1376256
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1376256 and x6 < 1441792,))
    return ndaddrs

ndaddr_funcs['D_21_0_0_min_1376256_max_1441792_w_loop_21_0_0_0_0__dup21_W'] = D_21_0_0_min_1376256_max_1441792_w_loop_21_0_0_0_0__dup21_W
ctxs.append('D_21_0_0_min_1376256_max_1441792_kBackReadCtx_0_0__dup21_R')
def D_21_0_0_min_1376256_max_1441792_kBackReadCtx_0_0__dup21_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1376256 and x6 < 1441792,))
    return ndaddrs

ndaddr_funcs['D_21_0_0_min_1376256_max_1441792_kBackReadCtx_0_0__dup21_R'] = D_21_0_0_min_1376256_max_1441792_kBackReadCtx_0_0__dup21_R
ctxs.append('D_22_0_0_min_1441792_max_1507328_w_loop_22_0_0_0_0__dup22_W')
def D_22_0_0_min_1441792_max_1507328_w_loop_22_0_0_0_0__dup22_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1441792
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1441792 and x6 < 1507328,))
    return ndaddrs

ndaddr_funcs['D_22_0_0_min_1441792_max_1507328_w_loop_22_0_0_0_0__dup22_W'] = D_22_0_0_min_1441792_max_1507328_w_loop_22_0_0_0_0__dup22_W
ctxs.append('D_22_0_0_min_1441792_max_1507328_kBackReadCtx_0_0__dup22_R')
def D_22_0_0_min_1441792_max_1507328_kBackReadCtx_0_0__dup22_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1441792 and x6 < 1507328,))
    return ndaddrs

ndaddr_funcs['D_22_0_0_min_1441792_max_1507328_kBackReadCtx_0_0__dup22_R'] = D_22_0_0_min_1441792_max_1507328_kBackReadCtx_0_0__dup22_R
ctxs.append('D_23_0_0_min_1507328_max_1572864_w_loop_23_0_0_0_0__dup23_W')
def D_23_0_0_min_1507328_max_1572864_w_loop_23_0_0_0_0__dup23_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1507328
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1507328 and x6 < 1572864,))
    return ndaddrs

ndaddr_funcs['D_23_0_0_min_1507328_max_1572864_w_loop_23_0_0_0_0__dup23_W'] = D_23_0_0_min_1507328_max_1572864_w_loop_23_0_0_0_0__dup23_W
ctxs.append('D_23_0_0_min_1507328_max_1572864_kBackReadCtx_0_0__dup23_R')
def D_23_0_0_min_1507328_max_1572864_kBackReadCtx_0_0__dup23_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1507328 and x6 < 1572864,))
    return ndaddrs

ndaddr_funcs['D_23_0_0_min_1507328_max_1572864_kBackReadCtx_0_0__dup23_R'] = D_23_0_0_min_1507328_max_1572864_kBackReadCtx_0_0__dup23_R
ctxs.append('D_24_0_0_min_1572864_max_1638400_w_loop_24_0_0_0_0__dup24_W')
def D_24_0_0_min_1572864_max_1638400_w_loop_24_0_0_0_0__dup24_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1572864
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1572864 and x6 < 1638400,))
    return ndaddrs

ndaddr_funcs['D_24_0_0_min_1572864_max_1638400_w_loop_24_0_0_0_0__dup24_W'] = D_24_0_0_min_1572864_max_1638400_w_loop_24_0_0_0_0__dup24_W
ctxs.append('D_24_0_0_min_1572864_max_1638400_kBackReadCtx_0_0__dup24_R')
def D_24_0_0_min_1572864_max_1638400_kBackReadCtx_0_0__dup24_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1572864 and x6 < 1638400,))
    return ndaddrs

ndaddr_funcs['D_24_0_0_min_1572864_max_1638400_kBackReadCtx_0_0__dup24_R'] = D_24_0_0_min_1572864_max_1638400_kBackReadCtx_0_0__dup24_R
ctxs.append('D_25_0_0_min_1638400_max_1703936_w_loop_25_0_0_0_0__dup25_W')
def D_25_0_0_min_1638400_max_1703936_w_loop_25_0_0_0_0__dup25_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1638400
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1638400 and x6 < 1703936,))
    return ndaddrs

ndaddr_funcs['D_25_0_0_min_1638400_max_1703936_w_loop_25_0_0_0_0__dup25_W'] = D_25_0_0_min_1638400_max_1703936_w_loop_25_0_0_0_0__dup25_W
ctxs.append('D_25_0_0_min_1638400_max_1703936_kBackReadCtx_0_0__dup25_R')
def D_25_0_0_min_1638400_max_1703936_kBackReadCtx_0_0__dup25_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1638400 and x6 < 1703936,))
    return ndaddrs

ndaddr_funcs['D_25_0_0_min_1638400_max_1703936_kBackReadCtx_0_0__dup25_R'] = D_25_0_0_min_1638400_max_1703936_kBackReadCtx_0_0__dup25_R
ctxs.append('D_26_0_0_min_1703936_max_1769472_w_loop_26_0_0_0_0__dup26_W')
def D_26_0_0_min_1703936_max_1769472_w_loop_26_0_0_0_0__dup26_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1703936
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1703936 and x6 < 1769472,))
    return ndaddrs

ndaddr_funcs['D_26_0_0_min_1703936_max_1769472_w_loop_26_0_0_0_0__dup26_W'] = D_26_0_0_min_1703936_max_1769472_w_loop_26_0_0_0_0__dup26_W
ctxs.append('D_26_0_0_min_1703936_max_1769472_kBackReadCtx_0_0__dup26_R')
def D_26_0_0_min_1703936_max_1769472_kBackReadCtx_0_0__dup26_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1703936 and x6 < 1769472,))
    return ndaddrs

ndaddr_funcs['D_26_0_0_min_1703936_max_1769472_kBackReadCtx_0_0__dup26_R'] = D_26_0_0_min_1703936_max_1769472_kBackReadCtx_0_0__dup26_R
ctxs.append('D_27_0_0_min_1769472_max_1835008_w_loop_27_0_0_0_0__dup27_W')
def D_27_0_0_min_1769472_max_1835008_w_loop_27_0_0_0_0__dup27_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1769472
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1769472 and x6 < 1835008,))
    return ndaddrs

ndaddr_funcs['D_27_0_0_min_1769472_max_1835008_w_loop_27_0_0_0_0__dup27_W'] = D_27_0_0_min_1769472_max_1835008_w_loop_27_0_0_0_0__dup27_W
ctxs.append('D_27_0_0_min_1769472_max_1835008_kBackReadCtx_0_0__dup27_R')
def D_27_0_0_min_1769472_max_1835008_kBackReadCtx_0_0__dup27_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1769472 and x6 < 1835008,))
    return ndaddrs

ndaddr_funcs['D_27_0_0_min_1769472_max_1835008_kBackReadCtx_0_0__dup27_R'] = D_27_0_0_min_1769472_max_1835008_kBackReadCtx_0_0__dup27_R
ctxs.append('D_28_0_0_min_1835008_max_1900544_w_loop_28_0_0_0_0__dup28_W')
def D_28_0_0_min_1835008_max_1900544_w_loop_28_0_0_0_0__dup28_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1835008
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1835008 and x6 < 1900544,))
    return ndaddrs

ndaddr_funcs['D_28_0_0_min_1835008_max_1900544_w_loop_28_0_0_0_0__dup28_W'] = D_28_0_0_min_1835008_max_1900544_w_loop_28_0_0_0_0__dup28_W
ctxs.append('D_28_0_0_min_1835008_max_1900544_kBackReadCtx_0_0__dup28_R')
def D_28_0_0_min_1835008_max_1900544_kBackReadCtx_0_0__dup28_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1835008 and x6 < 1900544,))
    return ndaddrs

ndaddr_funcs['D_28_0_0_min_1835008_max_1900544_kBackReadCtx_0_0__dup28_R'] = D_28_0_0_min_1835008_max_1900544_kBackReadCtx_0_0__dup28_R
ctxs.append('D_29_0_0_min_1900544_max_1966080_w_loop_29_0_0_0_0__dup29_W')
def D_29_0_0_min_1900544_max_1966080_w_loop_29_0_0_0_0__dup29_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1900544
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1900544 and x6 < 1966080,))
    return ndaddrs

ndaddr_funcs['D_29_0_0_min_1900544_max_1966080_w_loop_29_0_0_0_0__dup29_W'] = D_29_0_0_min_1900544_max_1966080_w_loop_29_0_0_0_0__dup29_W
ctxs.append('D_29_0_0_min_1900544_max_1966080_kBackReadCtx_0_0__dup29_R')
def D_29_0_0_min_1900544_max_1966080_kBackReadCtx_0_0__dup29_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1900544 and x6 < 1966080,))
    return ndaddrs

ndaddr_funcs['D_29_0_0_min_1900544_max_1966080_kBackReadCtx_0_0__dup29_R'] = D_29_0_0_min_1900544_max_1966080_kBackReadCtx_0_0__dup29_R
ctxs.append('D_30_0_0_min_1966080_max_2031616_w_loop_30_0_0_0_0__dup30_W')
def D_30_0_0_min_1966080_max_2031616_w_loop_30_0_0_0_0__dup30_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 1966080
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 1966080 and x6 < 2031616,))
    return ndaddrs

ndaddr_funcs['D_30_0_0_min_1966080_max_2031616_w_loop_30_0_0_0_0__dup30_W'] = D_30_0_0_min_1966080_max_2031616_w_loop_30_0_0_0_0__dup30_W
ctxs.append('D_30_0_0_min_1966080_max_2031616_kBackReadCtx_0_0__dup30_R')
def D_30_0_0_min_1966080_max_2031616_kBackReadCtx_0_0__dup30_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 1966080 and x6 < 2031616,))
    return ndaddrs

ndaddr_funcs['D_30_0_0_min_1966080_max_2031616_kBackReadCtx_0_0__dup30_R'] = D_30_0_0_min_1966080_max_2031616_kBackReadCtx_0_0__dup30_R
ctxs.append('D_31_0_0_min_2031616_max_2097152_w_loop_31_0_0_0_0__dup31_W')
def D_31_0_0_min_2031616_max_2097152_w_loop_31_0_0_0_0__dup31_W():
    ndaddrs = []
    x0 = 64
    x1 = 2
    x2 = 0
    x3 = 65536
    x4 = 2031616
    for x5 in range(x2,x3,x0):
        x6 = x5 + x4
        print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x1)[2::],x1 % 2 >> 0 ,x1 % 4 >> 1 ,x1 % 8 >> 2 ,x6 >= 2031616 and x6 < 2097152,))
    return ndaddrs

ndaddr_funcs['D_31_0_0_min_2031616_max_2097152_w_loop_31_0_0_0_0__dup31_W'] = D_31_0_0_min_2031616_max_2097152_w_loop_31_0_0_0_0__dup31_W
ctxs.append('D_31_0_0_min_2031616_max_2097152_kBackReadCtx_0_0__dup31_R')
def D_31_0_0_min_2031616_max_2097152_kBackReadCtx_0_0__dup31_R():
    ndaddrs = []
    x0 = 2097152
    x1 = 64
    x2 = 0
    x3 = 1
    x4 = 8192
    x5 = 0
    for x6 in range(x2,x0,x1):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x6),qaddr(x6//2),qaddr(x6//64),qaddr(x2),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,x6 >= 2031616 and x6 < 2097152,))
    return ndaddrs

ndaddr_funcs['D_31_0_0_min_2031616_max_2097152_kBackReadCtx_0_0__dup31_R'] = D_31_0_0_min_2031616_max_2097152_kBackReadCtx_0_0__dup31_R
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_W')
def ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_W():
    ndaddrs = []
    seqid_ptr = 0
    seqid_list = np.arange(0,1,1)
    x0 = 32768
    x1 = 1
    x2 = 8192
    x3 = 0
    x4 = 2
    # TODO: support multiple addr chain
    # TODO: support multiple addr chain
    seqid = seqid_list[seqid_ptr]
    x11 = seqid
    print("seqid = {} ".format(seqid), end='')
    seqid_ptr += 1
    if seqid_ptr >= seqid_list.shape[0]: seqid_ptr = 0
    print("wt byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x11),qaddr(x11//2),qaddr(x11//64),qaddr(x3),bin(x4)[2::],x4 % 2 >> 0 ,x4 % 4 >> 1 ,x4 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_W'] = ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_W
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_R')
def ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_R():
    ndaddrs = []
    x0 = 1
    x1 = 32768
    x2 = 64
    x3 = 524288
    x4 = 0
    x5 = 0
    for x8 in range(x4,x3,x2):
        print("rd byte:{} word:{} vec:{} rotate:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x8),qaddr(x8//2),qaddr(x8//64),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_R'] = ROB_kBackReadCtx_0_0_kBackReadCtx_0_0__dup0_R

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

