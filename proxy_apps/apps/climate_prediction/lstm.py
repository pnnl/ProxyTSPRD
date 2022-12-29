import torch
from torch.autograd import Variable

import tensorflow as tf
# from tensorflow.keras.utils import Progbar
# from tensorflow.python.keras import callbacks as callbacks_module
# import nvtx.plugins.tf as nvtx_tf

logger = tf.get_logger()

from ..main import ProxyApp
from .data_readers import ClimateDataGenerator_PT, get_indexer

class LSTMProxyAppPT(ProxyApp):
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
        self.datagen = ClimateDataGenerator_PT(
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
            model = LSTMSingleLayerPT(
                        model_name, 
                        data_params, 
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
