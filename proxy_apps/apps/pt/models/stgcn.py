import math

from .. import torch
from dgl.nn.pytorch import GraphConv
from dgl.nn.pytorch.conv import ChebConv


class TemporalConvLayer(torch.nn.Module):
    """Temporal convolution layer.
    arguments
    ---------
    c_in : int
        The number of input channels (features)
    c_out : int
        The number of output channels (features)
    dia : int
        The dilation size
    """

    def __init__(self, c_in, c_out, dia=1):
        super(TemporalConvLayer, self).__init__()
        self.c_out = c_out
        self.c_in = c_in
        self.conv = torch.nn.Conv2d(
            c_in, c_out, (2, 1), 1, dilation=dia, padding=(0, 0)
        )

    def forward(self, x):
        # print("Temporal (inp):", x.shape)
        conv_out = self.conv(x)
        # print("Temporal (conv):", conv_out.shape)
        relu_out = torch.relu(conv_out) 
        # print("Temporal (relu):", relu_out.shape)
        return relu_out


class SpatioConvLayer(torch.nn.Module):
    def __init__(self, c):  # c : hidden dimension Lk: graph matrix
        # print("c:", c)
        super(SpatioConvLayer, self).__init__()
        self.gc = GraphConv(c, c, activation=torch.nn.functional.relu)
        # self.gc = ChebConv(c, c, 3)

    def init(self):
        stdv = 1.0 / math.sqrt(self.W.weight.size(1))
        self.W.weight.data.uniform_(-stdv, stdv)

    def forward(self, x, g):
        x = x.transpose(0, 3)
        x = x.transpose(1, 3)
        # h_dst = x[: g[0].num_dst_nodes()]
        # output = self.gc(g, (x, h_dst))
        output = self.gc(g, x)
        output = output.transpose(1, 3)
        output = output.transpose(0, 3)
        
        return torch.relu(output)

class GCN(torch.nn.Module):
    def __init__(self, h_feats) -> None:
        super(GCN, self).__init__()
        self.conv1 = GraphConv(h_feats, h_feats)

    def forward(self, in_feat, mfgs):
        # print("GCN(1):", in_feat.shape)
        x = in_feat.transpose(0, 3)
        x = x.transpose(1, 3)
        # print("GCN(2):", x.shape)
        # layer-1
        h_dst = x[: mfgs[0].num_dst_nodes()]
        h = self.conv1(mfgs[0], (x, h_dst))
        h = torch.nn.functional.relu(h)
        # print("GCN(3):", h.shape)
        # layer-2
        h_dst = h[: mfgs[1].num_dst_nodes()]
        h = self.conv1(mfgs[1], (h, h_dst))
        h = torch.nn.functional.relu(h)
        # print("GCN(4):", h.shape)
        # output
        output = h.transpose(1, 3)
        output = output.transpose(0, 3)
        # print("GCN(5):", output.shape)
        
        return torch.relu(output)

class FullyConvLayer(torch.nn.Module):
    def __init__(self, c):
        super(FullyConvLayer, self).__init__()
        self.conv = torch.nn.Conv2d(c, 1, 1)

    def forward(self, x):
        return self.conv(x)


class OutputLayer(torch.nn.Module):
    def __init__(self, c, T):
        super(OutputLayer, self).__init__()
        out = 2
        self.tconv1 = torch.nn.Conv2d(c, c, (T, 1), 1, dilation=1, padding=(0, 0))
        self.ln = torch.nn.LayerNorm([c])
        self.tconv2 = torch.nn.Conv2d(c, out, (1, 1), 1, dilation=1, padding=(0, 0))
        # self.fc = FullyConvLayer(out)

    def forward(self, x):
        # print("X (inp):", x.shape)
        x_t1 = self.tconv1(x)
        # print(x_t1.permute(0, 2, 3, 1).shape)
        # print("X_T1:", x_t1.shape)
        x_ln = self.ln(x_t1.permute(0, 2, 3, 1)).permute(0, 3, 1, 2)
        # print("X_LN:", x_ln.shape)
        x_t2 = self.tconv2(x_ln)
        # print("X_T2:", x_t2.shape)
        # sys.exit(1)
        return x_t2
        # return self.fc(x_t2)


class STGCN_WAVE(torch.nn.Module):
    def __init__(
        self, c, bw_size, fw_size, device, control_str="TNTGT"
    ):
        super(STGCN_WAVE, self).__init__()
        self.control_str = control_str  # model structure controller
        self.num_layers = len(control_str)
        self.layers = torch.nn.ModuleList([])
        cnt = 0
        diapower = 0
        for i in range(self.num_layers):
            i_layer = control_str[i]
            if i_layer == "T":  # Temporal Layer
                self.layers.append(
                    TemporalConvLayer(c[cnt], c[cnt + 1], dia=2**diapower)
                )
                diapower += 1
                cnt += 1
            if i_layer == "S":  # Spatio Layer
                self.layers.append(SpatioConvLayer(c[cnt]))
            if i_layer == "G":  # GCN Layer
                self.layers.append(GCN(c[cnt]))
            if i_layer == "N":  # Norm Layer
                self.layers.append(torch.nn.LayerNorm([c[cnt]]))
        self.output = OutputLayer(c[cnt], bw_size - fw_size + 2 - 2 ** (diapower))
        for layer in self.layers:
            layer = layer.to(device)

    def forward(self, x, g):
        for i in range(self.num_layers):
            i_layer = self.control_str[i]
            # print("(Before) Layer-%d (%s):" %(i, i_layer), x.shape)
            if i_layer == "N":
                x = self.layers[i](x.permute(0, 2, 3, 1)).permute(0, 3, 1, 2)
            elif i_layer == "S":
                x = self.layers[i](x, g)
            elif i_layer == "G":
                x = self.layers[i](x, g)
            else:
                x = self.layers[i](x)
            # print("(After) Layer-%d (%s):" %(i, i_layer), x.shape)
        
        out = self.output(x)
        # print("(Output):", out.shape)
        return out
    
class STGCN_WAVE(torch.nn.Module):
    def __init__(
        self, c, bw_size, fw_size, device, control_str="TNTGT"
    ):
        super(STGCN_WAVE, self).__init__()
        self.control_str = control_str  # model structure controller
        self.num_layers = len(control_str)
        self.layers = torch.nn.ModuleList([])
        cnt = 0
        diapower = 0
        for i in range(self.num_layers):
            i_layer = control_str[i]
            if i_layer == "T":  # Temporal Layer
                self.layers.append(
                    TemporalConvLayer(c[cnt], c[cnt + 1], dia=2**diapower)
                )
                diapower += 1
                cnt += 1
            if i_layer == "S":  # Spatio Layer
                self.layers.append(SpatioConvLayer(c[cnt]))
            if i_layer == "G":  # GCN Layer
                self.layers.append(GCN(c[cnt]))
            if i_layer == "N":  # Norm Layer
                self.layers.append(torch.nn.LayerNorm([c[cnt]]))
        self.output = OutputLayer(c[cnt], bw_size - fw_size + 2 - 2 ** (diapower))
        for layer in self.layers:
            layer = layer.to(device)

    def forward(self, x, g):
        for i in range(self.num_layers):
            i_layer = self.control_str[i]
            # print("(Before) Layer-%d (%s):" %(i, i_layer), x.shape)
            if i_layer == "N":
                x = self.layers[i](x.permute(0, 2, 3, 1)).permute(0, 3, 1, 2)
            elif i_layer == "S":
                x = self.layers[i](x, g)
            elif i_layer == "G":
                x = self.layers[i](x, g)
            else:
                x = self.layers[i](x)
            # print("(After) Layer-%d (%s):" %(i, i_layer), x.shape)
        
        out = self.output(x)
        # print("(Output):", out.shape)
        return out