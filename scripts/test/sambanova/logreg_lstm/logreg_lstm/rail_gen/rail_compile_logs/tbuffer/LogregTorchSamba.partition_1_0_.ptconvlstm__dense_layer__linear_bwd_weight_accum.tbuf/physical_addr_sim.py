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
    x1 = 524288
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
    x1 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
    x0 = 524288
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
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 1
    x1 = 8192
    x2 = 64
    x3 = 524288
    x4 = 0
    x5 = 2
    x6 = 0
    ndaddrs = []
    seqid_ptr = 0
    seqid_list = np.arange(0,1,1)
    for x7 in range(x4,x1,x0):
        x9 = True
        seqid = seqid_list[seqid_ptr]
        x12 = seqid
        print("seqid = {} ".format(seqid), end='')
        seqid_ptr += 1
        if seqid_ptr >= seqid_list.shape[0]: seqid_ptr = 0
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} pred_bits:{} zero:{} pred:{} invalid:{} min_max:{}".format(qaddr(x12),qaddr(x12//2),qaddr(x12//64),qaddr(x4),qaddr(x4),bin(x5)[2::],x5 % 2 >> 0 ,x5 % 4 >> 1 ,x5 % 8 >> 2 ,True,))
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx'] = ROB_kBackReadCtx_0_0_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 1
    x1 = 8192
    x2 = 64
    x3 = 524288
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

