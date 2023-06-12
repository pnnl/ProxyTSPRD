from .. import tf

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