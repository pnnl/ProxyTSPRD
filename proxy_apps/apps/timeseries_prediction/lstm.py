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
        
class TFModel(tf.keras.Model):
    def __init__(self, hps):
        super(TFLSTM, self).__init__(name = 'TFLSTM')
        self.input_layer   = tf.keras.layers.LSTM(32, return_sequences=True)
        self.output_layer  = tf.keras.layers.Dense(units=1)
        
    def call(self, input_data, training):
        fx = self.input_layer(input_data)        
        return self.output_layer(fx)