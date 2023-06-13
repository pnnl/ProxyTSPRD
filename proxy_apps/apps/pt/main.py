from . import torch
from ..main import ProxyApp, get_indexer
from .models.lstm import LSTMSingleLayerPT
from .models.lstm import LSTMSingleLayerPTSamba
from .models.cnn1d import PTCNN, PTCNN_SN
from .models.cnn2d import PTCNN2D
from .models.stgcn import STGCN_WAVE

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
        model_params,
        device=None
    ):
        super().get_model()
        # get model
        if self._PLATFORM in ["cpu", "gpu"]:
            model = LSTMSingleLayerPT(
                        model_name, 
                        model_params, 
                        device
                    )
        elif self._PLATFORM == "rdu":
            criterion = self.get_criterion()
            model = LSTMSingleLayerPTSamba(
                        model_name, 
                        model_params, 
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
                    lr=opt_params["lr"],
                    momentum=opt_params["momentum"],
                    weight_decay=opt_params["weight_decay"]
                )
        else:
            print("[ERROR] Invalid platform: %s" %(self._PLATFORM))
            return None
    
    def get_ait_model(
        self,
        model_params,
        device=None
    ):
        super().get_model()
        pass
    
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
        model_params,
        device=None
    ):
        super().get_model()
        # get model
        if self._PLATFORM in ["cpu", "gpu"]:
            model = PTCNN(
                        model_name, 
                        model_params
                    )
        elif self._PLATFORM == "rdu":
            criterion = self.get_criterion()
            model = PTCNN_SN(
                            model_name, 
                            model_params, 
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
                    lr=opt_params["lr"],
                    momentum=opt_params["momentum"],
                    weight_decay=opt_params["weight_decay"]
                )
        else:
            print("[ERROR] Invalid platform: %s" %(self._PLATFORM))
            return None
    
class CNN2DProxyAppPT(ProxyApp):
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
        model_params,
        device=None
    ):
        super().get_model()
        model = PTCNN2D(
                    model_name, 
                    model_params
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
        model_params,
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
        ait_model = AIT_PTCNN2D("PTCNN2D", model_params)
        
        return ait_model

class STGCNProxyAppPT(CNNProxyAppPT):
    def __init__(self, platform) -> None:
        super().__init__(platform)

    def get_model(
        self,
        model_name,
        model_params,
        device=None
    ):
        # get model
        model = STGCN_WAVE(
                    c=model_params["other"]["channels"], 
                    bw_size=model_params["bw_size"],
                    fw_size=model_params["fw_size"],
                    control_str=model_params["other"]["control_str"],
                    device=device
                )
            
        return model