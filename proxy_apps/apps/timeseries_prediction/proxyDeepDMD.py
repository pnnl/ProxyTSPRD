import tensorflow as tf
# import nvtx.plugins.tf as nvtx_tf

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
        self.d_type = config['dtype']

# Neural Network
class NeuralNetworkModel(tf.keras.Model): 
    def __init__(self, hp):
        super(NeuralNetworkModel, self).__init__()
        self.encoder = Encoder(hp) 

        # loss tracker
        self.loss_tracker = tf.keras.metrics.Mean(name="loss")
        
        # Define and randomly initialize the Koopman operator
        self.KO = tf.Variable(tf.random.normal(shape = (hp.ld+hp.od, hp.ld+hp.od), 
            dtype=hp.d_type, 
            mean=0.0, stddev=0.05, 
            seed=123321, name='KoopmanOperator'),
                                                    trainable=True)
        self.rf = hp.rf 
        self.d_type = hp.d_type
        self.model_name = hp.model_name
        
    @property
    def metrics(self):
        # We list our `Metric` objects here so that `reset_states()` can be
        # called automatically at the start of each epoch
        # or at the start of `evaluate()`.
        # If you don't implement this property, you have to call
        # `reset_states()` yourself at the time of your choosing.
        return [self.loss_tracker]

    @tf.function(experimental_compile=True) # (input_signature=(tf.TensorSpec(shape=[None], dtype=tf.float64),))
    def train_step(self, inputs):       
        X, Y        = inputs
        # tf.print(X, Y)
        # tf.print(tf.shape(X), tf.shape(Y))
        
        with tf.GradientTape() as tape:
            Psi_X    = self.encoder(X, training=True)
            Psi_Y    = self.encoder(Y, training=False)    

            PSI_X    = tf.concat([X, tf.cast(Psi_X, self.d_type)], 1)
            PSI_Y    = tf.concat([Y, tf.cast(Psi_Y, self.d_type)], 1) 

            # 1-time step evolution on observable space:
            K_PSI_X  = tf.matmul(PSI_X, self.KO) 
            
            # 1-step Koopman loss on observable space:        
            K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')

            # Regularization loss on Koopman operator:
            Reg_loss= tf.math.scalar_mul(self.rf, tf.norm(self.KO, axis = [0,1], ord = 'fro'))      
        
            # Total loss:
            loss = K_loss + Reg_loss
            
            # tf.print("K Loss: ", K_loss, "Reg Loss: ", Reg_loss, "Total Loss: ", loss)
            # loss += sum(self.encoder.losses)
            
        # Compute gradients
        trainable_vars = self.trainable_variables
        gradients = tape.gradient(loss, trainable_vars)
        
        # Update weights
        self.optimizer.apply_gradients(zip(gradients, trainable_vars))

        # Compute our own metrics
        self.loss_tracker.update_state(loss)
        
        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return {"loss": self.loss_tracker.result()}
        
    @tf.function(experimental_compile=True)
    def test_step(self, inputs):       
        X = inputs[0]
        Y = inputs[1] 

        Psi_X    = self.encoder(X, training=False)
        Psi_Y    = self.encoder(Y, training=False)    

        PSI_X    = tf.concat([X, tf.cast(Psi_X, self.d_type)], 1)
        PSI_Y    = tf.concat([Y, tf.cast(Psi_Y, self.d_type)], 1) 
            
        # 1-time step evolution on observable space:
        K_PSI_X  = tf.matmul(PSI_X, self.KO) 

        # 1-step Koopman loss on observable space:        
        K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')

        # Regularization loss on Koopman operator:
        Reg_loss= tf.math.scalar_mul(self.rf, tf.norm(self.KO, axis = [0,1], ord = 'fro'))        

        # Total loss:
        loss = K_loss + Reg_loss
            
        # Compute our own metrics
        self.loss_tracker.update_state(loss)
        
        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return {"loss": self.loss_tracker.result()}
        
    @tf.function(experimental_compile=True)
    def predict_step(self, inputs):       
        X = inputs[0]
        Y = inputs[1] 
        
        Psi_X    = self.encoder(X, training=False)
        Psi_Y    = self.encoder(Y, training=False)    

        PSI_X    = tf.concat([X, tf.cast(Psi_X, self.d_type)], 1)
        PSI_Y    = tf.concat([Y, tf.cast(Psi_Y, self.d_type)], 1) 

        # 1-time step evolution on observable space:
        K_PSI_X  = tf.matmul(PSI_X, self.KO) 

        # 1-step Koopman loss on observable space:        
        K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')
        
        # Regularization loss on Koopman operator:
        Reg_loss= tf.math.scalar_mul(self.rf, tf.norm(self.KO, axis = [0,1], ord = 'fro'))        

        return Psi_X, PSI_X, Psi_Y, PSI_Y, K_loss

class Encoder(tf.keras.Model):
    def __init__(self, hps):
        super(Encoder, self).__init__(name = 'Encoder')
        self.input_layer   = DenseLayer(hps.h1, 0.0, 0.0, hps.d_type)
        self.hidden_layer1 = DenseLayer(hps.h2, hps.wr, hps.br, hps.d_type)
        self.dropout_laye1 = tf.keras.layers.Dropout(hps.dr)
        self.hidden_layer2 = DenseLayer(hps.h3, hps.wr, hps.br, hps.d_type)        
        self.dropout_laye2 = tf.keras.layers.Dropout(hps.dr)
        self.hidden_layer3 = DenseLayer(hps.h4, hps.wr, hps.br, hps.d_type)
        self.dropout_laye3 = tf.keras.layers.Dropout(hps.dr)           
        self.output_layer  = LinearLayer(hps.ld, hps.wr, hps.br, hps.d_type)
        
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
        return self.output_layer(fx)

class LinearLayer(tf.keras.layers.Layer):

    def __init__(self, units, weights_regularizer, bias_regularizer, d_type):
        super(LinearLayer, self).__init__()
        self.units = units
        self.weights_regularizer = weights_regularizer
        self.bias_regularizer = bias_regularizer
        self.d_type = d_type
    
    def build(self, input_shape):
        input_dim = input_shape[-1]
        self.w = self.add_weight(name='w_linear',
                                shape = (input_dim, self.units), 
                                initializer = tf.keras.initializers.RandomUniform(
                                minval=-tf.cast(tf.math.sqrt(6/(input_dim+self.units)), dtype = self.d_type), 
                                maxval=tf.cast(tf.math.sqrt(6/(input_dim+self.units)), dtype = self.d_type), 
                                seed=16751),                                                                   
                                trainable = True)
        self.b = self.add_weight(name='b_linear',
                                 shape = (self.units,),    
                                 initializer = tf.zeros_initializer(),
                                 regularizer = tf.keras.regularizers.l1(self.bias_regularizer),
                                 trainable = True)

    def call(self, inputs):
        return tf.matmul(inputs, self.w) + self.b

class DenseLayer(tf.keras.layers.Layer):

    def __init__(self, units, weights_regularizer, bias_regularizer, d_type):
        super(DenseLayer, self).__init__()
        self.units = units
        self.weights_regularizer = weights_regularizer
        self.bias_regularizer = bias_regularizer
        self.d_type = d_type
        
    def build(self, input_shape):
        input_dim = input_shape[-1]
        self.w = self.add_weight(name='w_dense',
                                 shape = (input_dim, self.units), 
                                 initializer = tf.keras.initializers.RandomUniform(
                                     minval=-tf.cast(tf.math.sqrt(6.0/(input_dim+self.units)), dtype = self.d_type),  
                                     maxval=tf.cast(tf.math.sqrt(6.0/(input_dim+self.units)), dtype = self.d_type),  
                                     seed=16751), 
                                 regularizer = tf.keras.regularizers.l1(self.weights_regularizer), 
                                 trainable = True)
        self.b = self.add_weight(name='b_dense',
                                 shape = (self.units,),    
                                 initializer = tf.zeros_initializer(),
                                 regularizer = tf.keras.regularizers.l1(self.bias_regularizer),
                                 trainable = True)

    def call(self, inputs):
        x = tf.matmul(inputs, self.w) + self.b
        return tf.nn.elu(x)