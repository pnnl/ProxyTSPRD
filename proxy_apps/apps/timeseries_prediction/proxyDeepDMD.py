import tensorflow as tf
# import nvtx.plugins.tf as nvtx_tf

# Neural Network
class NeuralNetworkModel(tf.keras.Model): 
    def __init__(self, hp):
        super(NeuralNetworkModel, self).__init__()
        self.encoder = Encoder(hp) 

        # loss tracker
        self.loss_tracker = tf.keras.metrics.Mean(name="loss")
        
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
        with tf.GradientTape() as tape:
            Psi_X    = self.encoder(X, training=True)
            Psi_Y    = self.encoder(Y, training=False)    

            PSI_X    = tf.concat([X, tf.cast(Psi_X, self.d_type)], 1)
            PSI_Y    = tf.concat([Y, tf.cast(Psi_Y, self.d_type)], 1) 

            # 1-time step evolution on observable space:
            K_PSI_X  = tf.matmul(PSI_X, self.encoder.KO) 
            
            # 1-step Koopman loss on observable space:        
            K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')

            # Regularization loss on Koopman operator:
            Reg_loss= tf.math.scalar_mul(self.rf, tf.norm(self.encoder.KO, axis = [0,1], ord = 'fro'))      
        
            # Total loss:
            loss = K_loss + Reg_loss
            loss += sum(self.encoder.losses)
            # tf.print("K Loss: ", K_loss, "Reg Loss: ", Reg_loss, "Total Loss: ", loss)
            
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
        X, Y        = inputs

        Psi_X    = self.encoder(X, training=False)
        Psi_Y    = self.encoder(Y, training=False)    

        PSI_X    = tf.concat([X, tf.cast(Psi_X, self.d_type)], 1)
        PSI_Y    = tf.concat([Y, tf.cast(Psi_Y, self.d_type)], 1) 
            
        # 1-time step evolution on observable space:
        K_PSI_X  = tf.matmul(PSI_X, self.encoder.KO) 

        # 1-step Koopman loss on observable space:        
        K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')

        # Regularization loss on Koopman operator:
        Reg_loss= tf.math.scalar_mul(self.rf, tf.norm(self.encoder.KO, axis = [0,1], ord = 'fro'))        

        # Total loss:
        loss = K_loss + Reg_loss
        loss += sum(self.encoder.losses)
        
        # Compute our own metrics
        self.loss_tracker.update_state(loss)
        
        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return {"loss": self.loss_tracker.result()}
        
    @tf.function(experimental_compile=True)
    def predict_step(self, inputs):       
        X, Y        = inputs
        
        Psi_X    = self.encoder(X, training=False)
        Psi_Y    = self.encoder(Y, training=False)    
        
        PSI_X    = tf.concat([X, tf.cast(Psi_X, self.d_type)], 1)
        PSI_Y    = tf.concat([Y, tf.cast(Psi_Y, self.d_type)], 1) 
        
        # 1-time step evolution on observable space:
        K_PSI_X  = tf.matmul(PSI_X, self.encoder.KO) 
        
        # 1-step Koopman loss on observable space:        
        K_loss   = tf.norm(PSI_Y - K_PSI_X, axis = [0,1], ord = 'fro')
        
        # Regularization loss on Koopman operator:
        Reg_loss= tf.math.scalar_mul(self.rf, tf.norm(self.encoder.KO, axis = [0,1], ord = 'fro')) 
        
        return Psi_X, PSI_X, Psi_Y, PSI_Y, K_loss

class Encoder(tf.keras.Model):
    def __init__(self, hps):
        super(Encoder, self).__init__(name = 'Encoder')
        # Define and randomly initialize the Koopman operator
        self.KO = tf.Variable(tf.random.normal(shape = (hps.ld+hps.od, hps.ld+hps.od), 
            dtype=hps.d_type, 
            mean=0.0, stddev=0.05, 
            seed=123321, name='KoopmanOperator'), trainable=True)
        
        self.input_layer   = DenseLayer(hps.h1, hps.od, 0.0, 0.0, hps.d_type)
        self.hidden_layer1 = DenseLayer(hps.h2, hps.h1, hps.wr, hps.br, hps.d_type)
        self.dropout_laye1 = tf.keras.layers.Dropout(hps.dr)
        self.hidden_layer2 = DenseLayer(hps.h3, hps.h2, hps.wr, hps.br, hps.d_type)        
        self.dropout_laye2 = tf.keras.layers.Dropout(hps.dr)
        self.hidden_layer3 = DenseLayer(hps.h4, hps.h3, hps.wr, hps.br, hps.d_type)
        self.dropout_laye3 = tf.keras.layers.Dropout(hps.dr)           
        self.output_layer  = LinearLayer(hps.ld, hps.h4, hps.wr, hps.br, hps.d_type)
        
    def call(self, input_data, training):
        fx = self.input_layer(input_data)        
        fx = self.hidden_layer1(fx)
        fx = self.dropout_laye1(fx, training=training)     
        fx = self.hidden_layer2(fx)
        fx = self.dropout_laye2(fx, training=training) 
        fx = self.hidden_layer3(fx)
        fx = self.dropout_laye3(fx, training=training) 
        return self.output_layer(fx)

class LinearLayer(tf.keras.layers.Layer):

    def __init__(self, units, input_dim, weights_regularizer, bias_regularizer, d_type):
        super(LinearLayer, self).__init__()
        self.w = self.add_weight(name='w_linear',
                                shape = (input_dim, units), 
                                initializer = tf.keras.initializers.RandomUniform(
                                minval=-tf.cast(tf.math.sqrt(6/(input_dim+units)), dtype = d_type), 
                                maxval=tf.cast(tf.math.sqrt(6/(input_dim+units)), dtype = d_type), 
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

    def __init__(self, units, input_dim, weights_regularizer, bias_regularizer, d_type):
        super(DenseLayer, self).__init__()
        self.w = self.add_weight(name='w_dense',
                                 shape = (input_dim, units), 
                                 initializer = tf.keras.initializers.RandomUniform(
                                     minval=-tf.cast(tf.math.sqrt(6.0/(input_dim+units)), dtype = d_type),  
                                     maxval=tf.cast(tf.math.sqrt(6.0/(input_dim+units)) , dtype = d_type),  
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