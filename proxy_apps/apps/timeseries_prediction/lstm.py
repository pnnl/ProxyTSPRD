import time
import logging
import torch
from torch.autograd import Variable

import tensorflow as tf
# from tensorflow.keras.utils import Progbar
# from tensorflow.python.keras import callbacks as callbacks_module
# import nvtx.plugins.tf as nvtx_tf

logger = tf.get_logger()

class Lambda(torch.nn.Module):
    def __init__(self):
        super(Lambda, self).__init__()
        
    def forward(self, x): 
        return x[:, -3:, :]

# Neural Network
class TFConvLSTM(tf.keras.Model):
    def __init__(self, bw_size, fw_size, n_features):
        super(TFConvLSTM, self).__init__(name = 'TFConvLSTM')
        # Shape [batch, time, features] => [batch, CONV_WIDTH, features]
        self.lambda_layer  = tf.keras.layers.Lambda(lambda x: x[:, -3:, :])
        # Shape => [batch, 1, conv_units]
        self.conv_layer    = tf.keras.layers.Conv1D(256, activation='relu', kernel_size=(3))
        # Shape => [batch, 1,  out_steps*features]
        self.dense_layer   = tf.keras.layers.Dense(fw_size * n_features, kernel_initializer=tf.initializers.zeros())
        # Shape => [batch, out_steps, features]
        self.output_layer  = tf.keras.layers.Reshape([fw_size, n_features])
    
    def call(self, input_data):
        # print(input_data)
        # print("Input:", input_data.shape)
        fx = self.lambda_layer(input_data)  
        # print("Lambda:", fx.shape)
        fx = self.conv_layer(fx)        
        # print("Conv:", fx.shape)
        fx = self.dense_layer(fx)        
        # print("Dense:", fx.shape)
        return self.output_layer(fx)

class PTConvLSTM(torch.nn.Module):
    def __init__(self, bw_size, fw_size, n_features, device):
        super(PTConvLSTM, self).__init__()
        self.bw_size = bw_size # size of the backward window
        self.fw_size = fw_size # size of the backward window
        self.n_features = n_features # size of the backward window
        self.device = device
        
        self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=136, out_channels=256, kernel_size=(3))
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=fw_size * n_features)
        
    def forward(self, inputs):
        # print(x.shape)
        # Run through Conv1d and Pool1d layers
        # print("Input:", inputs.shape)
        l = self.lambda_layer(inputs)
        # print("Lambda:", l.shape)
        c = self.conv_layer(l.permute(0, 2, 1))
        # print("Conv:", c.shape)
        out = self.dense_layer(c.permute(0, 2, 1))
        # print("Dense:", out.shape)
        return out.view((out.shape[0], self.fw_size, self.n_features))

class TFLSTM(tf.keras.Model):
    def __init__(self, bw_size, fw_size, n_features):
        super(TFLSTM, self).__init__(name = 'TFLSTM')
        self.lstm1_layer   = tf.keras.layers.LSTM(512, input_shape=(bw_size, n_features), return_sequences=True, 
                                                  kernel_initializer='zeros', recurrent_initializer='zeros')
        self.lstm2_layer   = tf.keras.layers.LSTM(256, return_sequences=True, 
                                                  kernel_initializer='zeros', recurrent_initializer='zeros')
        self.lstm3_layer   = tf.keras.layers.LSTM(128, return_sequences=True, 
                                                  kernel_initializer='zeros', recurrent_initializer='zeros')
        self.lstm4_layer   = tf.keras.layers.LSTM(64, 
                                                  kernel_initializer='zeros', recurrent_initializer='zeros')
        self.dense_layer   = tf.keras.layers.Dense(fw_size * n_features)
        self.output_layer  = tf.keras.layers.Reshape((fw_size, n_features))
        
    def call(self, input_data):
        # print(input_data)
        fx = self.lstm1_layer(input_data)        
        fx = self.lstm2_layer(fx)        
        fx = self.lstm3_layer(fx)        
        fx = self.lstm4_layer(fx)        
        fx = self.dense_layer(fx)        
        return self.output_layer(fx)
    
class PTLSTM(torch.nn.Module):
    def __init__(self, bw_size, fw_size, n_features, device):
        super(PTLSTM, self).__init__()
        self.bw_size = bw_size # size of the backward window
        self.fw_size = fw_size # size of the backward window
        self.n_features = n_features # size of the backward window
        self.device = device
        
        self.hidden_size1 = 512
        self.lstm1_layer   = torch.nn.LSTM(hidden_size=self.hidden_size1, input_size=self.n_features, batch_first=True)
        self.hidden_size2 = 256
        self.lstm2_layer   = torch.nn.LSTM(hidden_size=self.hidden_size2, input_size=self.hidden_size1, batch_first=True)
        self.hidden_size3 = 128
        self.lstm3_layer   = torch.nn.LSTM(hidden_size=self.hidden_size3, input_size=self.hidden_size2, batch_first=True)
        self.hidden_size4 = 64
        self.lstm4_layer   = torch.nn.LSTM(hidden_size=self.hidden_size4, input_size=self.hidden_size3, batch_first=True)
        self.dense_layer   = torch.nn.Linear(in_features=self.hidden_size4, out_features=fw_size * n_features)
        # self.output_layer  = tf.keras.layers.Reshape((fw_size, n_features))
    
    def forward(self,x):
        # print(x.shape)
        h_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1)).to(self.device) #hidden state
        c_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1)).to(self.device) #internal state
        h_1, c_1 = self.lstm1_layer(x, (h_1, c_1))
        #print(h_1.shape)
        
        h_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2)).to(self.device) #hidden state
        c_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2)).to(self.device) #internal state
        h_2, c_2 = self.lstm2_layer(h_1, (h_2, c_2)) #first Dense
        #print(h_2.shape)
        
        h_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3)).to(self.device) #hidden state
        c_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3)).to(self.device) #internal state
        h_3, c_3 = self.lstm3_layer(h_2, (h_3, c_3)) #relu
        #print(h_3.shape)
        
        h_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4)).to(self.device) #hidden state
        c_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4)).to(self.device) #internal state
        h_4, c_4 = self.lstm4_layer(h_3, (h_4, c_4)) #Final Output
        #print(h_4[:, -1, :].shape)
        
        out = self.dense_layer(h_4[:, -1, :])
        #print(out.shape)
        
        return out.view((out.shape[0], self.fw_size, self.n_features))

# TFLSTM = Sequential()
# TFLSTM.add(LSTM(50, activation='relu', input_shape=(n_steps, n_features)))
# TFLSTM.add(Dense(1))
# TFLSTM.compile(optimizer='adam', loss='mse')