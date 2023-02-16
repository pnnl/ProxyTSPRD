import torch
import tensorflow as tf
from .main import ProxyApp, get_indexer

class CNNProxyAppTF(ProxyApp):
    def __init__(self, platform) -> None:
        super().__init__(platform, "TF")

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
        return tf.losses.MeanSquaredError()

    def get_model(
        self,
        model_name,
        data_params,
        device=None
    ):
        super().get_model()
        # get model
        if self._PLATFORM in ["cpu", "gpu"]:
            model = TFCNN(
                        model_name, 
                        data_params
                    )
        elif self._PLATFORM == "rdu":
            criterion = self.get_criterion()
            pass
        else:
            print("[ERROR] Invalid platform: %s" %(self._PLATFORM))
            model = None
        
        return model

    def get_opt(
        self,
        opt_params,
        model_params=None
    ):
        return tf.keras.optimizers.Adam(
                learning_rate=opt_params["learning_rate"]
            )

class TFCNN(tf.keras.Model):
    def __init__(self, model_name, model_parameters):
        super(TFCNN, self).__init__(name = 'TFConvLSTM')
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window

        # Shape [batch, time, features] => [batch, CONV_WIDTH, features]
        self.lambda_layer  = tf.keras.layers.Lambda(lambda x: x[:, -3:, :])
        # Shape => [batch, 1, conv_units]
        self.conv_layer    = tf.keras.layers.Conv1D(256, activation='relu', kernel_size=(3))
        # Shape => [batch, 1,  out_steps*features]
        self.dense_layer   = tf.keras.layers.Dense(self.fw_size * self.n_features, kernel_initializer=tf.initializers.zeros())
        # Shape => [batch, out_steps, features]
        self.output_layer  = tf.keras.layers.Reshape([self.fw_size, self.n_features])
    
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