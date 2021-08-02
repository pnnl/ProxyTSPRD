import time
import logging
import tensorflow as tf
# from tensorflow.keras.utils import Progbar
# from tensorflow.python.keras import callbacks as callbacks_module
# import nvtx.plugins.tf as nvtx_tf

logger = tf.get_logger()

# Neural Network
class NeuralNetworkModel(): 
    def __init__(self, hp, model, mixed_precision=False):
        self.encoder = model

        # other parameters
        self.rf = hp.rf 
        self.d_type = hp.d_type
        self.model_name = hp.model_name
        self.mixed_precision = mixed_precision
        
    # @tf.function
    def distributed_train_epoch(self, training_dataset, batch_size, steps_per_epoch):
        total_loss = 0.0
        num_batches = 0

        # Iterate over the batches of the dataset.
        for inp_data in training_dataset:
            total_loss += self.distributed_train_step(inp_data)
            num_batches += 1
        
        return total_loss, num_batches

    def fit(self, training_dataset, n_epochs, batch_size, steps_per_epoch):
        all_loss = []
        epoch_time = []
        avg_batch_time = []
        for epoch in range(n_epochs):
            # logger.info("\nepoch {}/{}".format(epoch+1, n_epochs))
            # self.pb_i = Progbar(steps_per_epoch+1, stateful_metrics=['loss'])
            epoch_start_time = time.time()
            total_loss, num_batches = self.distributed_train_epoch(training_dataset, batch_size, steps_per_epoch)
            loss_value = total_loss / (self.encoder.distribute_strategy.num_replicas_in_sync * num_batches)
            epoch_stop_time = time.time()
            
            # logger.info("Loss value: {}".format(tf.keras.backend.get_value(loss_value)))
            all_loss.append(tf.keras.backend.get_value(loss_value))
            epoch_time.append(epoch_stop_time-epoch_start_time)
            avg_batch_time.append((epoch_stop_time-epoch_start_time)/num_batches)
            
        return all_loss, epoch_time, avg_batch_time
        
    def predict(self, test_dataset):
        for inp_data in test_dataset: total_loss += self.distributed_test_step(inp_data)
        
    
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
            loss += sum(self.encoder.losses)
            if self.mixed_precision: scaled_loss = self.encoder.optimizer.get_scaled_loss(loss)
            
            # tf.print("K Loss: ", K_loss, "Reg Loss: ", Reg_loss, "Total Loss: ", loss) 
            
        # Compute gradients
        trainable_vars = self.encoder.trainable_variables
        if self.mixed_precision: 
            scaled_gradients = tape.gradient(scaled_loss, trainable_vars)
            gradients = self.encoder.optimizer.get_unscaled_gradients(scaled_gradients)
        else: gradients = tape.gradient(loss, trainable_vars)

        # Update weights
        self.encoder.optimizer.apply_gradients(zip(gradients, trainable_vars))

        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return loss
        
    # @tf.function#(experimental_compile=True)
    def test_step(self, inputs): 
        print(inputs)
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
            
        # Return a dict mapping metric names to current value.
        # Note that it will include the loss (tracked in self.metrics).
        return Psi_X, PSI_X, Psi_Y, PSI_Y, K_loss
        # return loss
        
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
        fx = self.dropout_laye1(fx, training=training)     
        fx = self.hidden_layer2(fx)
        fx = self.dropout_laye2(fx, training=training) 
        fx = self.hidden_layer3(fx)
        fx = self.dropout_laye3(fx, training=training) 
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
        self.alpha = 1
        
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
        cond = tf.keras.backend.greater(x, 0)
        return tf.keras.backend.switch(cond, x, tf.keras.backend.exp(tf.keras.backend.minimum(x, 0.)) - 1)
        # return tf.keras.activations.elu(x)