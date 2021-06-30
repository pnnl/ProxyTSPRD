import math
import time
import tensorflow as tf
from tensorflow.keras.utils import Progbar
from tensorflow.python.keras import callbacks as callbacks_module
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

class Encoder(tf.keras.Model):
    def __init__(self, hps):
        super(Encoder, self).__init__(name = 'Encoder')
        self.KO = tf.Variable(tf.random.normal(shape = (hps.ld+hps.od, hps.ld+hps.od), 
            dtype=hps.d_type, 
            mean=0.0, stddev=0.05, 
            seed=123321, name='KoopmanOperator'),
                                                    trainable=True)
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

# Neural Network
class NeuralNetworkModel(): 
    def __init__(self, hp, model):
        self.encoder = model

        # other parameters
        self.rf = hp.rf 
        self.d_type = hp.d_type
        self.model_name = hp.model_name
        
    def fit(self, training_dataset, n_epochs, batch_size, steps_per_epoch):
        m_start = time.time()
        for epoch in range(n_epochs):
            print("\nepoch {}/{}".format(epoch+1, n_epochs))
            pb_i = Progbar(steps_per_epoch+1, stateful_metrics=['loss'])

            # Iterate over the batches of the dataset.
            for step, inp_data in enumerate(training_dataset):
                loss_value = self.distributed_train_step(inp_data)

                # Log every 200 batches.
                pb_i.add(batch_size//batch_size, values=[('loss', loss_value)])

        m_stop = time.time()
        print(m_stop-m_start)
        
    @tf.function#(experimental_compile=True)
    def distributed_test_step(self, dist_inputs):
        return self.encoder.distribute_strategy.run(self.test_step, args=(dist_inputs,))

    @tf.function#(experimental_compile=True)
    def distributed_train_step(self, dist_inputs):
        per_replica_losses = self.encoder.distribute_strategy.run(self.train_step, args=(dist_inputs,))
        return self.encoder.distribute_strategy.reduce(tf.distribute.ReduceOp.SUM, per_replica_losses, axis=None)

    # @tf.function(experimental_compile=True) # (input_signature=(tf.TensorSpec(shape=[None], dtype=tf.float64),))
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
            if self.model_name in ["TFDataOptMP", "TFDataOptMGPUMP"]:
                loss = self.optimizer.get_scaled_loss(loss)
            
            # tf.print("K Loss: ", K_loss, "Reg Loss: ", Reg_loss, "Total Loss: ", loss)
            # loss += sum(self.encoder.losses)
            
        # Compute gradients
        trainable_vars = self.encoder.trainable_variables
        gradients = tape.gradient(loss, trainable_vars)
        if self.model_name in ["TFDataOptMP", "TFDataOptMGPUMP"]:
            gradients = self.encoder.optimizer.get_unscaled_gradients(gradients)

        # Update weights
        self.encoder.optimizer.apply_gradients(zip(gradients, trainable_vars))

        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return loss
        
    # @tf.function#(experimental_compile=True)
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
        if self.model_name in ["TFDataOptMP", "TFDataOptMGPUMP"]:
            loss = self.optimizer.get_scaled_loss(loss)
        # loss += sum(self.encoder.losses)
            
        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return loss
        
    @tf.function#(experimental_compile=True)
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



