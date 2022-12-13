import sys
import torch
from torch.autograd import Variable

import tensorflow as tf
from ..main import ProxyApp
from .data_readers import GridNetworkSequentialDataGenerator_PT, GridNetworkSequentialDataGenerator_TF, get_indexer

class CNNProxyAppPT(ProxyApp):
    def __init__(self, platform) -> None:
        super().__init__(platform, "PT")

    def get_datagen(
        self,
        files,
        data_params,
        dtype,
        validation_files=None
    ):
        super().get_datagen(
            files=files,
            validation_files=validation_files,
            data_params=data_params,
            dtype=dtype
        )
        self.datagen = GridNetworkSequentialDataGenerator_PT(
            dir_list=files,
            handler_params=data_params,
            dtype=dtype
        )

        x_indexer = get_indexer(
            n_rows=self.datagen.n_rows,
            window_size=self.datagen.iw_params["window_size"],
            shift_size=self.datagen.iw_params["shift_size"],
            start_point=self.datagen.iw_params["start_at"],
            leave_last=self.datagen.iw_params["leave_last"]
        )
        y_indexer = get_indexer(
            n_rows=self.datagen.n_rows,
            window_size=self.datagen.ow_params["window_size"],
            shift_size=self.datagen.ow_params["shift_size"],
            start_point=self.datagen.ow_params["start_at"],
            leave_last=self.datagen.ow_params["leave_last"]
        )

        self.datagen.get_data(
            x_indexer, 
            y_indexer
        )
        return self.datagen
        # pass

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
        return torch.optim.Adam(
                model_params, 
                lr=opt_params["learning_rate"]
            )

    
# Neural Network
class TFCNN(tf.keras.Model):
    def __init__(self, bw_size, fw_size, n_features):
        super(TFCNN, self).__init__(name = 'TFConvLSTM')
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
        self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=136, out_channels=256, kernel_size=(3))
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=self.fw_size * self.n_features)
        
    def forward(self, inputs):
        # print(x.shape)
        # Run through Conv1d and Pool1d layers
        # print("Input:", inputs.shape)
        l = self.lambda_layer(inputs)
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
        self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=136, out_channels=256, kernel_size=(3))
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
