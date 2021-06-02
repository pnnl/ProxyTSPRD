import tensorflow as tf

class HyperParameters():
    def __init__(self, config):
        self.od = config['original_dim']
        self.h1 = config['hl_1_dim']
        self.h2 = config['hl_2_dim']
        self.h3 = config['hl_3_dim']
        self.h4 = config['hl_4_dim']
        ## hp.h5 = config['hl_5_dim']
        self.ld = config['latent_dim']
        self.rf = config['reg_factor']
        self.dr = config['dropout_prob']
        self.wr = config['weight_regularizer']
        self.br = config['bias_regularizer']
        self.ep = config['num_epochs']
        self.lr = config['learning_rate']
        self.bs = config['batch_size']
        self.vs = config['validation_split']

# Neural Network
class NeuralNetworkModel(tf.keras.Model): 
    def __init__(self, hp):
        super(NeuralNetworkModel, self).__init__()
        
        self.encoder = Encoder(hp)        
        
        # Define and randomly initialize the Koopman operator
        self.KO = tf.Variable(tf.random.normal(shape = (hp.ld+hp.od, hp.ld+hp.od), mean=0.0, stddev=0.05, 
                                                    dtype=tf.dtypes.float64, seed=123321, name='KoopmanOperator'),
                                                    trainable=True)
        self.rf = hp.rf 
        
    def call(self, inputs):       
        X        = inputs[0]
        Y        = inputs[1]                  
        
        Psi_X    = self.encoder(X)
        Psi_Y    = self.encoder(Y)        
        
        PSI_X    = tf.concat([X, Psi_X], 1)
        PSI_Y    = tf.concat([Y, Psi_Y], 1) 
        
        # 1-time step evolution on observable space:
        K_PSI_X  = tf.matmul(PSI_X, self.KO) 
        
        # 1-step Koopman loss on observable space:        
        K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')

        # Regularization loss on Koopman operator:
        Reg_loss= tf.cast(tf.math.scalar_mul(self.rf,tf.norm(self.KO, axis = [0,1], ord = 'fro')), dtype = 'float64')        
        
        # Total loss:
        loss = K_loss + Reg_loss 
        self.add_loss(loss)
        return Psi_X, PSI_X, Psi_Y, PSI_Y, K_loss

class Encoder(tf.keras.layers.Layer):
    def __init__(self, hps):
        super(Encoder, self).__init__(dtype = 'float64', name = 'Encoder')
        self.input_layer   = DenseLayer(hps.h1, hps.od, 0.0, 0.0)
        self.hidden_layer1 = DenseLayer(hps.h2, hps.h1, hps.wr, hps.br)
        self.dropout_laye1 = tf.keras.layers.Dropout(hps.dr)
        self.hidden_layer2 = DenseLayer(hps.h3, hps.h2, hps.wr, hps.br)        
        self.dropout_laye2 = tf.keras.layers.Dropout(hps.dr)
        self.hidden_layer3 = DenseLayer(hps.h4, hps.h3, hps.wr, hps.br)
        self.dropout_laye3 = tf.keras.layers.Dropout(hps.dr)           
#         self.hidden_layer4 = DenseLayer(hps.h5, hps.h4, hps.wr, hps.br)
#         self.dropout_laye4 = layers.Dropout(hps.dr)             
        self.output_layer  = LinearLayer(hps.ld, hps.h4, hps.wr, hps.br)
        
    def call(self, input_data, training):
        fx = self.input_layer(input_data)        
        fx = self.hidden_layer1(fx)
        if training:
            fx = self.dropout_laye1(fx)     
        fx = self.hidden_layer2(fx)
        if training:
            fx = self.dropout_laye2(fx) 
        fx = self.hidden_layer3(fx)
        if training:
            fx = self.dropout_laye3(fx) 
#         fx = self.hidden_layer4(fx)
#         if training:
#             fx = self.dropout_laye4(fx)
        return self.output_layer(fx)    

class LinearLayer(tf.keras.layers.Layer):

    def __init__(self, units, input_dim, weights_regularizer, bias_regularizer):
        super(LinearLayer, self).__init__(dtype = 'float64')
        self.w = self.add_weight(name='w_linear',
                                shape = (input_dim, units), 
                                initializer = tf.keras.initializers.RandomUniform(
                                minval=-tf.cast(tf.math.sqrt(6/(input_dim+units)), dtype = 'float64'), 
                                maxval=tf.cast(tf.math.sqrt(6/(input_dim+units)), dtype = 'float64'), 
                                seed=16751),                                                                   
#                               regularizer = tf.keras.regularizers.l1(weights_regularizer), 
                                trainable = True)
        self.b = self.add_weight(name='b_linear',
                                 shape = (units,),    
                                 initializer = tf.zeros_initializer(),
                                 regularizer = tf.keras.regularizers.l1(bias_regularizer),
                                 trainable = True)

    def call(self, inputs):
        return tf.matmul(inputs, self.w) + self.b

class DenseLayer(tf.keras.layers.Layer):

    def __init__(self, units, input_dim, weights_regularizer, bias_regularizer):
        super(DenseLayer, self).__init__(dtype = 'float64')
        self.w = self.add_weight(name='w_dense',
                                 shape = (input_dim, units), 
                                 initializer = tf.keras.initializers.RandomUniform(
                                     minval=-tf.cast(tf.math.sqrt(6.0/(input_dim+units)), dtype = 'float64'),  
                                     maxval=tf.cast(tf.math.sqrt(6.0/(input_dim+units)) , dtype = 'float64'),  
                                     seed=16751), 
                                 regularizer = tf.keras.regularizers.l1(weights_regularizer), 
                                 trainable = True)
        self.b = self.add_weight(name='b_dense',
                                 shape = (units,),    
                                 initializer = tf.zeros_initializer(),
                                 regularizer = tf.keras.regularizers.l1(bias_regularizer),
                                 trainable = True)

    def call(self, inputs):
        x = tf.matmul(inputs, self.w) + self.b
        return tf.nn.elu(x)