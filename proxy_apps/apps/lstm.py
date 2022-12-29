import torch
from torch.autograd import Variable

import tensorflow as tf
# from tensorflow.keras.utils import Progbar
# from tensorflow.python.keras import callbacks as callbacks_module
# import nvtx.plugins.tf as nvtx_tf

logger = tf.get_logger()

from .main import ProxyApp, get_indexer

class LSTMProxyAppPT(ProxyApp):
    def __init__(self, platform) -> None:
        super().__init__(platform, "PT")

    def get_datagen(
        self,
        datagen
    ):
        # call ProxyApp super call
        super().get_datagen()
        
        # split and process data
        x_indexer = get_indexer(
            n_rows=datagen.n_rows,
            window_size=datagen.iw_params["window_size"],
            shift_size=datagen.iw_params["shift_size"],
            start_point=datagen.iw_params["start_at"],
            leave_last=datagen.iw_params["leave_last"]
        )
        y_indexer = get_indexer(
            n_rows=datagen.n_rows,
            window_size=datagen.ow_params["window_size"],
            shift_size=datagen.ow_params["shift_size"],
            start_point=datagen.ow_params["start_at"],
            leave_last=datagen.ow_params["leave_last"]
        )
        datagen.get_data(x_indexer, y_indexer)
        
        # return data generator
        return datagen
        
    def get_criterion(
        self,
        criterion_params=None
    ):
        return torch.nn.MSELoss()

    def get_model(
        self,
        model_name,
        data_params,
        device=None
    ):
        super().get_model()
        # get model
        if self._PLATFORM in ["cpu", "gpu"]:
            model = LSTMSingleLayerPT(
                        model_name, 
                        data_params, 
                        device
                    )
        elif self._PLATFORM == "rdu":
            criterion = self.get_criterion()
            model = PTLSTM_SN(
                        model_name, 
                        data_params, 
                        criterion, 
                        device
                    )
        else:
            print("[ERROR] Invalid platform: %s" %(self._PLATFORM))
            model = None
        
        return model

    def get_opt(
        self,
        model_params,
        opt_params
    ):
        return torch.optim.Adagrad(
                model_params, 
                lr=opt_params["learning_rate"]
            )

class LSTMSingleLayerPT(torch.nn.Module):
    def __init__(self, model_name, model_parameters, device=None):
        super(LSTMSingleLayerPT, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        self.device = device
        
        self.hidden_units = 64
        self.lstm_layer   = torch.nn.LSTM(
                                hidden_size=self.hidden_units, 
                                input_size=self.n_features, 
                                batch_first=True
                            )
        self.dense_layer   = torch.nn.Linear(
                                in_features=self.hidden_units, 
                                out_features=self.fw_size * self.n_features
                            )
        
    def forward(self,x):
        # hidden layers
        h = Variable(torch.zeros(1, x.size(0), self.hidden_units)).to(self.device)
        c = Variable(torch.zeros(1, x.size(0), self.hidden_units)).to(self.device)
        h, c = self.lstm_layer(x, (h, c)) #Final Output
        
        # prediction
        out = self.dense_layer(h[:, -1, :])
        
        # return output
        return out.view((out.shape[0], self.fw_size, self.n_features))

class LSTMMultipleLayersPT(torch.nn.Module):
    def __init__(self, model_name, model_parameters, device=None):
        super(LSTMMultipleLayersPT, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        self.device = device
        
        self.hidden_size1 = 512
        self.lstm1_layer   = torch.nn.LSTM(hidden_size=self.hidden_size1, input_size=self.n_features, batch_first=True)
        self.hidden_size2 = 256
        self.lstm2_layer   = torch.nn.LSTM(hidden_size=self.hidden_size2, input_size=self.hidden_size1, batch_first=True)
        self.hidden_size3 = 128
        self.lstm3_layer   = torch.nn.LSTM(hidden_size=self.hidden_size3, input_size=self.hidden_size2, batch_first=True)
        self.hidden_size4 = 64
        self.lstm4_layer   = torch.nn.LSTM(hidden_size=self.hidden_size4, input_size=self.hidden_size3, batch_first=True)
        self.dense_layer   = torch.nn.Linear(in_features=self.hidden_size4, out_features=self.fw_size * self.n_features)
        
    def forward(self,x):
        # print(x.shape)
        h_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1))
        if self.device is not None:
            h_1 = h_1.to(self.device) #hidden state
        c_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1))
        if self.device is not None:
            c_1 = c_1.to(self.device) #internal state
        h_1, c_1 = self.lstm1_layer(x, (h_1, c_1))
        #print(h_1.shape)
        
        h_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2))
        if self.device is not None:
            h_2 = h_2.to(self.device) #hidden state
        c_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2))
        if self.device is not None:
            c_2 = c_2.to(self.device) #internal state
        h_2, c_2 = self.lstm2_layer(h_1, (h_2, c_2)) #first Dense
        #print(h_2.shape)
        
        h_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3))
        if self.device is not None:
            h_3 = h_3.to(self.device) #hidden state
        c_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3))
        if self.device is not None:
            c_3 = c_3.to(self.device) #internal state
        h_3, c_3 = self.lstm3_layer(h_2, (h_3, c_3)) #relu
        #print(h_3.shape)
        
        h_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4))
        if self.device is not None:
            h_4 = h_4.to(self.device) #hidden state
        c_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4))
        if self.device is not None:
            c_4 = c_4.to(self.device) #internal state
        h_4, c_4 = self.lstm4_layer(h_3, (h_4, c_4)) #Final 
        
        # Output
        #print(h_4[:, -1, :].shape)
        
        out = self.dense_layer(h_4[:, -1, :])
        #print(out.shape)
        
        return out.view((out.shape[0], self.fw_size, self.n_features))

class PTLSTM_SN(torch.nn.Module):
    def __init__(self, model_name, model_parameters, criterion, device=None):
        super(PTLSTM_SN, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        self.device = device
        
        self.criterion = criterion
        self.hidden_size1 = 512
        self.lstm1_layer   = torch.nn.LSTM(hidden_size=self.hidden_size1, input_size=self.n_features, batch_first=True)
        self.hidden_size2 = 256
        self.lstm2_layer   = torch.nn.LSTM(hidden_size=self.hidden_size2, input_size=self.hidden_size1, batch_first=True)
        self.hidden_size3 = 128
        self.lstm3_layer   = torch.nn.LSTM(hidden_size=self.hidden_size3, input_size=self.hidden_size2, batch_first=True)
        self.hidden_size4 = 64
        self.lstm4_layer   = torch.nn.LSTM(hidden_size=self.hidden_size4, input_size=self.hidden_size3, batch_first=True)
        self.dense_layer   = torch.nn.Linear(in_features=self.hidden_size4, out_features=self.fw_size * self.n_features)
        # self.output_layer  = tf.keras.layers.Reshape((fw_size, n_features))
    
    def forward(self, x, targets):
        # print(x.shape)
        h_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1))
        if self.device is not None:
            h_1 = h_1.to(self.device) #hidden state
        c_1 = Variable(torch.zeros(1, x.size(0), self.hidden_size1))
        if self.device is not None:
            c_1 = c_1.to(self.device) #internal state
        h_1, c_1 = self.lstm1_layer(x, (h_1, c_1))
        #print(h_1.shape)
        
        h_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2))
        if self.device is not None:
            h_2 = h_2.to(self.device) #hidden state
        c_2 = Variable(torch.zeros(1, x.size(0), self.hidden_size2))
        if self.device is not None:
            c_2 = c_2.to(self.device) #internal state
        h_2, c_2 = self.lstm2_layer(h_1, (h_2, c_2)) #first Dense
        #print(h_2.shape)
        
        h_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3))
        if self.device is not None:
            h_3 = h_3.to(self.device) #hidden state
        c_3 = Variable(torch.zeros(1, x.size(0), self.hidden_size3))
        if self.device is not None:
            c_3 = c_3.to(self.device) #internal state
        h_3, c_3 = self.lstm3_layer(h_2, (h_3, c_3)) #relu
        #print(h_3.shape)
        
        h_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4))
        if self.device is not None:
            h_4 = h_4.to(self.device) #hidden state
        c_4 = Variable(torch.zeros(1, x.size(0), self.hidden_size4))
        if self.device is not None:
            c_4 = c_4.to(self.device) #internal state
        h_4, c_4 = self.lstm4_layer(h_3, (h_4, c_4)) #Final Output
        #print(h_4[:, -1, :].shape)
        
        out = self.dense_layer(h_4[:, -1, :])
        loss = self.criterion(
            out.reshape(-1, self.fw_size*self.n_features), 
            targets.reshape(-1, self.fw_size*self.n_features))
        #print(out.shape)
        
        return loss, out.view((out.shape[0], self.fw_size, self.n_features))

# TFLSTM = Sequential()
# TFLSTM.add(LSTM(50, activation='relu', input_shape=(n_steps, n_features)))
# TFLSTM.add(Dense(1))
# TFLSTM.compile(optimizer='adam', loss='mse')

class TFLSTM(tf.keras.Model):
    def __init__(self, bw_size, fw_size, n_features):
        super(TFLSTM, self).__init__(name = 'TFLSTM')
        self.lstm1_layer   = tf.keras.layers.LSTM(
            512, input_shape=(bw_size, n_features),
            return_sequences=True, 
            kernel_initializer='zeros',
            recurrent_initializer='zeros'
        )
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
    
