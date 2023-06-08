import math
import tensorflow as tf

from dgl.nn.tensorflow import GraphConv

class TemporalConvLayer(tf.keras.layers.Layer):
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
        self.conv = tf.keras.layers.Conv2D(
            filters=c_out, 
            kernel_size=(2, 1), 
            strides=(1, 1), 
            dilation_rate=dia, 
            padding="valid"
        )

    def call(self, x):
        # print("Temporal (inp):", x.shape)
        conv_out = self.conv(tf.transpose(x, (0, 2, 3, 1)))
        # print("Temporal (conv):", conv_out.shape)
        relu_out = tf.nn.relu(tf.transpose(conv_out, (0, 3, 1, 2))) 
        # print("Temporal (relu):", relu_out.shape)
        return relu_out
    
class SpatioConvLayer(tf.keras.layers.Layer):
    def __init__(self, c):  # c : hidden dimension Lk: graph matrix
        # print("c:", c)
        super(SpatioConvLayer, self).__init__()
        self.gc = GraphConv(c, c, activation=tf.nn.relu)
        # self.gc = ChebConv(c, c, 3)

    def init(self):
        stdv = 1.0 / math.sqrt(self.W.weight.size(1))
        self.W.weight.data.uniform_(-stdv, stdv)

    def call(self, x, g):
        x = x.transpose(0, 3)
        x = x.transpose(1, 3)
        # h_dst = x[: g[0].num_dst_nodes()]
        # output = self.gc(g, (x, h_dst))
        output = self.gc(g, x)
        output = output.transpose(1, 3)
        output = output.transpose(0, 3)
        
        return tf.nn.relu(output)

class GCN(tf.keras.layers.Layer):
    def __init__(self, h_feats) -> None:
        super(GCN, self).__init__()
        self.conv1 = GraphConv(h_feats, h_feats)

    def call(self, in_feat, g):
        # print(g.mfgs)
        # print("GCN(1):", in_feat.shape)
        x = tf.transpose(in_feat, [3, 1, 2, 0])
        x = tf.transpose(x, [0, 3, 2, 1])
        # print("GCN(2):", x.shape)
        # layer-1
        # h_dst = x[: mfgs[0].num_dst_nodes()]
        # h = self.conv1(mfgs[0], (x, h_dst))
        h = self.conv1(g, x)
        h = tf.nn.relu(h)
        # print("GCN(3):", h.shape)
        # layer-2
        # h_dst = h[: mfgs[1].num_dst_nodes()]
        # h = self.conv1(mfgs[1], (h, h_dst))
        # h = self.conv2(g, x)
        # h = tf.nn.relu(h)
        # print("GCN(4):", h.shape)
        # output
        output = tf.transpose(h, [0, 3, 2, 1])
        output = tf.transpose(output, [3, 1, 2, 0])
        # print("GCN(5):", output.shape)
        
        return tf.nn.relu(output)
    
class FullyConvLayer(tf.keras.layers.Layer):
    def __init__(self, c):
        super(FullyConvLayer, self).__init__()
        self.conv = tf.keras.layers.Conv2D(c, 1, 1)

    def call(self, x):
        return self.conv(x)

class OutputLayer(tf.keras.layers.Layer):
    def __init__(self, c, T):
        super(OutputLayer, self).__init__()
        out = 2
        self.tconv1 = tf.keras.layers.Conv2D(
            filters=c, 
            kernel_size=(T, 1), 
            strides=(1, 1), 
            dilation_rate=1, 
            padding="valid"
        )
        self.ln = tf.keras.layers.Normalization(3)
        self.tconv2 = tf.keras.layers.Conv2D(
            filters=out, 
            kernel_size=(1, 1), 
            strides=(1, 1), 
            dilation_rate=1, 
            padding="valid"
        )

    def call(self, x):
        # print("X (inp):", x.shape)
        x_t1 = self.tconv1(tf.transpose(x, (0, 2, 3, 1)))
        # print(x_t1.permute(0, 2, 3, 1).shape)
        # print("X_T1:", x_t1.shape)
        x_ln = self.ln(x_t1)
        # print("X_LN:", x_ln.shape)
        x_t2 = self.tconv2(x_ln)
        # print("X_T2:", x_t2.shape)
        return tf.transpose(x_t2, (0, 3, 1, 2))

class STGCN_WAVE(tf.keras.Model):
    def __init__(
        self, c, bw_size, fw_size, g, device, control_str="TNTGT"
    ):
        super(STGCN_WAVE, self).__init__()
        self.control_str = control_str  # model structure controller
        self.num_layers = len(control_str)
        self.custom_layers = []
        cnt = 0
        diapower = 0
        self.inp_graph = g
        for i in range(self.num_layers):
            i_layer = control_str[i]
            if i_layer == "T":  # Temporal Layer
                self.custom_layers.append(
                    TemporalConvLayer(c[cnt], c[cnt + 1], dia=2**diapower)
                )
                diapower += 1
                cnt += 1
            if i_layer == "S":  # Spatio Layer
                self.custom_layers.append(SpatioConvLayer(c[cnt]))
            if i_layer == "G":  # GCN Layer
                self.custom_layers.append(GCN(c[cnt]))
            if i_layer == "N":  # Norm Layer
                self.custom_layers.append(tf.keras.layers.Normalization(1))
        self.output_layer = OutputLayer(c[cnt], bw_size - fw_size + 2 - 2 ** (diapower))
        # for layer in self.custom_layers:
        #     layer = layer.to(device)

    def call(self, x):
        for i in range(self.num_layers):
            i_layer = self.control_str[i]
            # print("(Before) Layer-%d (%s):" %(i, i_layer), x.shape)
            if i_layer == "N":
                x = self.custom_layers[i](x)
            elif i_layer == "S":
                x = self.custom_layers[i](x, self.inp_graph)
            elif i_layer == "G":
                x = self.custom_layers[i](x, self.inp_graph)
            else:
                x = self.custom_layers[i](x)
            # print("(After) Layer-%d (%s):" %(i, i_layer), x.shape)
        
        out = self.output_layer(x)
        # print("(Output):", out.shape)
        return out