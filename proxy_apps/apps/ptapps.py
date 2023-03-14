import torch
from torch.autograd import Variable
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
            model = LSTMSingleLayerPTSamba(
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
        if self._PLATFORM in ["cpu", "gpu"]:
            return torch.optim.Adagrad(
                    model_params, 
                    lr=opt_params["learning_rate"]
                )
        elif self._PLATFORM == "rdu":
            from sambaflow import samba
            return samba.optim.SGD(
                    model_params, 
                    lr=opt_params["learning_rate"],
                    momentum=opt_params["momentum"],
                    weight_decay=opt_params["weight_decay"]
                )
        else:
            print("[ERROR] Invalid platform: %s" %(self._PLATFORM))
            return None
    
    def get_ait_model(
        self,
        data_params,
        device=None
    ):
        super().get_model()
        pass
    
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

class LSTMSingleLayerPTSamba(torch.nn.Module):
    def __init__(self, model_name, model_parameters, criterion, device=None):
        super(LSTMSingleLayerPTSamba, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        self.device = device
        
        self.criterion = criterion
        self.hidden_units = 64
        self.lstm_layer   = torch.nn.LSTM(
                                hidden_size=self.hidden_units, 
                                input_size=self.n_features, 
                                # batch_first=True
                            )
        self.dense_layer   = torch.nn.Linear(
                                in_features=self.hidden_units, 
                                out_features=self.fw_size * self.n_features
                            )
        
    def forward(self, x, targets):
        # hidden layers
        h = Variable(torch.zeros(1, x.shape[1], self.hidden_units))#.to(self.device)
        c = Variable(torch.zeros(1, x.shape[1], self.hidden_units))#.to(self.device)
        h_out, c_out = self.lstm_layer(x, (h, c)) #Final Output
        
        # prediction
        out = self.dense_layer(h_out[:, -1, :])

        loss = self.criterion(
            out.reshape(-1, self.fw_size*self.n_features), 
            targets.reshape(-1, self.fw_size*self.n_features))
        
        # return output
        return loss, out.view((out.shape[0], self.fw_size, self.n_features))

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
    
class CNNProxyAppPT(ProxyApp):
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
            model = PTCNN(
                        model_name, 
                        data_params
                    )
        elif self._PLATFORM == "rdu":
            criterion = self.get_criterion()
            model = PTCNN_SN(
                            model_name, 
                            data_params, 
                            criterion
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
        if self._PLATFORM in ["cpu", "gpu"]:
            return torch.optim.Adagrad(
                    model_params, 
                    lr=opt_params["learning_rate"]
                )
        elif self._PLATFORM == "rdu":
            from sambaflow import samba
            return samba.optim.SGD(
                    model_params, 
                    lr=opt_params["learning_rate"],
                    momentum=opt_params["momentum"],
                    weight_decay=opt_params["weight_decay"]
                )
        else:
            print("[ERROR] Invalid platform: %s" %(self._PLATFORM))
            return None
    
class Lambda(torch.nn.Module):
    def __init__(self):
        super(Lambda, self).__init__()
        
    def forward(self, x): 
        return x[:, -3:, :]

class PTCNN(torch.nn.Module):
    def __init__(self, model_name, model_parameters):
        super(PTCNN, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        
        # self.criterion = criterion
        # self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=self.n_features, out_channels=256, kernel_size=(3))
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=self.fw_size * self.n_features)
        
    def forward(self, inputs):
        # print(x.shape)
        # Run through Conv1d and Pool1d layers
        # print("Input:", inputs.shape)
        # l = self.lambda_layer(inputs)
        l = inputs[:, -3:, :]
        # print("Lambda:", l.shape)
        c = self.conv_layer(l.permute(0, 2, 1))
        # print("Conv:", c.shape)
        out = self.dense_layer(c.permute(0, 2, 1))
        # out = out.view((out.shape[0], self.fw_size, self.n_features))
        # print(out.shape, targets.shape)
        # loss = self.criterion(out, targets)
        # loss = self.criterion(
        #     out.reshape(-1, self.fw_size*self.n_features), 
        #     targets.reshape(-1, self.fw_size*self.n_features))
        # # print("Dense:", out.shape)
        # return out.view((out.shape[0], self.fw_size, self.n_features)), loss
        # return out
        return out.view((out.shape[0], self.fw_size, self.n_features))

class PTCNN_SN(torch.nn.Module):
    def __init__(self, model_name, model_parameters, criterion, device=None):
        super(PTCNN_SN, self).__init__()
        self.device = device
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        
        self.criterion = criterion
        # self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=self.n_features, out_channels=256, kernel_size=(3))
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=self.fw_size * self.n_features)
        
    def forward(self, inputs, targets):
        # print(x.shape)
        # Run through Conv1d and Pool1d layers
        # print("Input:", inputs)
        # l = self.lambda_layer(inputs)
        l = inputs[:, -3:, :]
        # print("Lambda:", l.shape)
        c = self.conv_layer(l.permute(0, 2, 1))
        # print("Conv:", c.shape)
        out = self.dense_layer(c.permute(0, 2, 1))
        # out = out.view((out.shape[0], self.fw_size, self.n_features))
        # print(out.shape, targets.shape)
        # loss = self.criterion(out, targets)
        loss = self.criterion(
            out.reshape(-1, self.fw_size*self.n_features), 
            targets.reshape(-1, self.fw_size*self.n_features))
        # print("Dense:", out.shape)
        # print("Dense (Reshaped):", out.view((out.shape[0], self.fw_size, self.n_features)).shape)
        return loss, out.view((out.shape[0], self.fw_size, self.n_features))                  

class CNNProxyAppPTATT(ProxyApp):
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
        model = PTCNN2D(
                    model_name, 
                    data_params
                )
        
        return model

    def get_opt(
        self,
        model_params,
        opt_params
    ):
        return torch.optim.Adam(
                model_params, 
                lr=opt_params["learning_rate"]
            )

    def get_ait_model(
        self,
        data_params,
        device=None
    ):
        super().get_model()

        from aitemplate.frontend import nn
        class AIT_PTCNN2D(nn.Module):
            def __init__(self, model_name, model_parameters):
                super(AIT_PTCNN2D, self).__init__()
                self.bw_size = model_parameters["bw_size"] # size of the backward window
                self.fw_size = model_parameters["fw_size"] # size of the backward window
                self.n_features = model_parameters["n_features"] # size of the backward window
                self.n_channels = model_parameters["n_channels"] # number of channels
                
                self.conv_layer    = nn.Conv2dBiasFewChannels(in_channels=self.n_channels, out_channels=1, kernel_size=self.bw_size, stride=1)
                self.flat_layer = nn.Flatten(start_dim=2, end_dim=-1)
                self.dense_layer   = nn.Linear(in_channels=self.n_features-self.bw_size+1, out_channels=self.fw_size * self.n_features)
                self.view = nn.View()
                
            def forward(self, inputs):
                # print("Inputs---------------", inputs.shape())
                c = self.conv_layer(inputs)
                # print("Conv---------------", c.shape())
                f_out = self.flat_layer(c)
                # print("Flatten---------------", f_out.shape())
                d_out = self.dense_layer(f_out)
                # print("Dense---------------", d_out.shape())
                out = self.view(d_out, (-1, self.fw_size, self.n_features))
                # print("Out---------------", out.shape())
                
                return out
        
        # get model
        ait_model = AIT_PTCNN2D("PTCNN2D", data_params)
        
        return ait_model

class PTCNN2D(torch.nn.Module):
  def __init__(self, model_name, model_parameters):
    super(PTCNN2D, self).__init__()
    self.bw_size = model_parameters["bw_size"] # size of the backward window
    self.fw_size = model_parameters["fw_size"] # size of the backward window
    self.n_features = model_parameters["n_features"] # size of the backward window
    self.n_channels = model_parameters["n_channels"]
    
    # self.criterion = criterion
    self.conv_layer    = torch.nn.Conv2d(in_channels=self.n_channels, out_channels=1, kernel_size=(self.bw_size, self.bw_size))
    self.dense_layer   = torch.nn.Linear(in_features=self.n_features-self.bw_size+1, out_features=self.fw_size * self.n_features)
      
  def forward(self, inputs):
    # print("Input:", inputs.shape)
    c = self.conv_layer(inputs)
    # print("Conv:", c.shape)
    d_out = self.dense_layer(torch.flatten(c, start_dim=1, end_dim=2))
    # print("Dense:", d_out.shape)
    out = d_out.view((d_out.shape[0], self.fw_size, self.n_features))
    # print("Out:", out.shape)
    return out