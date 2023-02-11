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
    x1 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 524288
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
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    x6 = 8192
    ndaddrs = []
    for x7 in range(x0,x1,x2):
        x8 = True
        print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),x3,x3,x7 >= 458752 and x7 < 524288,))
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_w_loop_7_0'] = D_7_0_0_min_458752_max_524288_w_loop_7_0
ctxs.append('D_7_0_0_min_458752_max_524288_kBackReadCtx')
def D_7_0_0_min_458752_max_524288_kBackReadCtx():
    x0 = 458752
    x1 = 524288
    x2 = 64
    x3 = True
    x4 = 0
    x5 = 1
    x6 = 8192
    ndaddrs = []
    for x7 in range(x4,x1,x2):
        x8 = True
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x7),qaddr(x7//2),qaddr(x7//64),qaddr(x4),qaddr(x4),x3,x3,x7 >= 458752 and x7 < 524288,))
        x13 = True
        x14 = True
        x15 = x13 | x14
    return ndaddrs

ndaddr_funcs['D_7_0_0_min_458752_max_524288_kBackReadCtx'] = D_7_0_0_min_458752_max_524288_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 4096
    x1 = True
    x2 = 64
    x3 = 524288
    x4 = 0
    ndaddrs = []
    seqid_ptr = 0
    seqid_list = np.arange(0,1,1)
    for x5 in range(x4,x3,x0):
        for x6 in range(x4,x0,x2):
            x8 = True
            x9 = True
            x10 = x8 | x9
            seqid = seqid_list[seqid_ptr]
            x13 = seqid
            print("seqid = {} ".format(seqid), end='')
            seqid_ptr += 1
            if seqid_ptr >= seqid_list.shape[0]: seqid_ptr = 0
            print("wt byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x13),qaddr(x13//2),qaddr(x13//64),qaddr(x4),qaddr(x4),x1,x1,True,))
    return ndaddrs

ndaddr_funcs['ROB_kBackReadCtx_0_0_kBackReadCtx'] = ROB_kBackReadCtx_0_0_kBackReadCtx
ctxs.append('ROB_kBackReadCtx_0_0_kBackReadCtx')
def ROB_kBackReadCtx_0_0_kBackReadCtx():
    x0 = 4096
    x1 = True
    x2 = 64
    x3 = 524288
    x4 = 0
    ndaddrs = []
    for x9 in range(x4,x3,x2):
        x7 = True
        x10 = True
        x11 = True
        x12 = x10 | x11
        print("rd byte:{} word:{} vec:{} rotate:{} metadata:{} en_zero:{} en_pred:{} min_max:{}".format(qaddr(x9),qaddr(x9//2),qaddr(x9//64),qaddr(x4),qaddr(x4),x1,x1,True,))
        x15 = True
        x16 = True
        x17 = x15 | x16
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

