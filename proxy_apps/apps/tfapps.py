import tensorflow as tf
from .main import ProxyApp, get_indexer

class LSTMProxyAppTF(ProxyApp):
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
            model = LSTMSingleLayerTF(
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
        return tf.keras.optimizers.Adagrad(
                learning_rate=opt_params["learning_rate"]
            )

    def get_ait_model(
        self,
        data_params,
        device=None
    ):
        super().get_model()
        pass

# Neural Network
class LSTMSingleLayerTF(tf.keras.Model):
    def __init__(self, model_name, model_parameters):
        super(LSTMSingleLayerTF, self).__init__(name = 'LSTMSingleLayerTF')
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        
        self.lstm_layer   = tf.keras.layers.LSTM(
            64, input_shape=(self.bw_size, self.n_features),
            kernel_initializer='zeros',
            recurrent_initializer='zeros'
        )
        self.dense_layer   = tf.keras.layers.Dense(self.fw_size * self.n_features)
        self.output_layer  = tf.keras.layers.Reshape((self.fw_size, self.n_features))
        
    def call(self, input_data):
        # print(input_data)
        fx = self.lstm_layer(input_data)        
        fx = self.dense_layer(fx)        
        return self.output_layer(fx)
    
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



