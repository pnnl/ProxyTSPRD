import time
import logging
import tensorflow as tf
# from tensorflow.keras.utils import Progbar
# from tensorflow.python.keras import callbacks as callbacks_module
# import nvtx.plugins.tf as nvtx_tf

logger = tf.get_logger()

# Neural Network
class RNNModel(): 
    def __init__(self, hp, model, mixed_precision=False):
        self.encoder = model

        # other parameters
        self.rf = hp.rf 
        self.d_type = hp.d_type
        self.model_name = hp.model_name
        self.mixed_precision = mixed_precision
        
class TFLSTM(tf.keras.Model):
    def __init__(self, bw_size, fw_size, n_features):
        super(TFLSTM, self).__init__(name = 'TFLSTM')
        self.lstm1_layer   = tf.keras.layers.LSTM(1024, input_shape=(bw_size, n_features), return_sequences=True)
        self.lstm2_layer   = tf.keras.layers.LSTM(512, return_sequences=True)
        self.lstm2_layer   = tf.keras.layers.LSTM(256, return_sequences=True)
        self.lstm3_layer   = tf.keras.layers.LSTM(128, return_sequences=True)
        self.lstm4_layer   = tf.keras.layers.LSTM(64)
        self.dense_layer   = tf.keras.layers.Dense(fw_size * n_features)
        self.output_layer  = tf.keras.layers.Reshape((fw_size, n_features))
        
    def call(self, input_data, training):
        print(input_data)
        fx = self.lstm1_layer(input_data)        
        fx = self.lstm2_layer(fx)        
        fx = self.lstm3_layer(fx)        
        fx = self.lstm4_layer(fx)        
        fx = self.dense_layer(fx)        
        return self.output_layer(fx)

# TFLSTM = Sequential()
# TFLSTM.add(LSTM(50, activation='relu', input_shape=(n_steps, n_features)))
# TFLSTM.add(Dense(1))
# TFLSTM.compile(optimizer='adam', loss='mse')