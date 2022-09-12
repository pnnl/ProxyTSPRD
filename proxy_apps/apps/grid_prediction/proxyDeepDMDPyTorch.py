import math
import time
import torch

class NeuralNetworkModel(): 
    def __init__(self, hp, model, optimizer, device, use_amp=False):
        # model and optimizer
        self.encoder = model
        self.optimizer = optimizer
        self.device = device
        self.use_amp = use_amp
        print("Mixed Precision: ", self.use_amp)
        self.scaler = torch.cuda.amp.GradScaler(enabled=self.use_amp)

        # other parameters
        self.rf = hp.rf 
        self.wr = hp.wr
        self.br = hp.br
        self.n_epochs = hp.ep
        self.d_type = hp.d_type
        
    def train(self, training_dataset):
        total_loss = 0.0
        num_batches = 0
        
        # Iterate over the batches of the dataset.
        for X, Y in training_dataset:
            # x and y
            X, Y        = X.to(self.device), Y.to(self.device)
            with torch.cuda.amp.autocast(enabled=self.use_amp):
                # forward pass
                Psi_X    = self.encoder(X, training=True)
                Psi_Y    = self.encoder(Y, training=False)
                # print("Outside: input size", Psi_X.size(), "output_size", Psi_Y.size())

                # loss computation
                PSI_X    = torch.cat([X, Psi_X], 1)
                PSI_Y    = torch.cat([Y, Psi_Y], 1)

                # 1-time step evolution on observable space:
                if torch.cuda.device_count() > 1: K_PSI_X  = torch.matmul(PSI_X, self.encoder.module.KO) 
                else: K_PSI_X  = torch.matmul(PSI_X, self.encoder.KO) 

                # 1-step Koopman loss on observable space:        
                K_loss   = torch.norm(PSI_Y - K_PSI_X, dim = [0,1], p = 'fro')

                # Regularization loss on Koopman operator:
                if torch.cuda.device_count() > 1: Reg_loss= torch.mul(self.rf, torch.norm(self.encoder.module.KO, dim = [0,1], p = 'fro'))  
                else: Reg_loss= torch.mul(self.rf, torch.norm(self.encoder.KO, dim = [0,1], p = 'fro'))

                weight_p, bias_p = 0., 0.
                for name, param in self.encoder.named_parameters():
                    if '.b' in name:
                        bias_p += param.abs().sum()
                    elif '.w' in name:
                        weight_p += param.abs().sum()

                # Total loss:
                loss = torch.add(K_loss, Reg_loss) + \
                        torch.mul(weight_p, self.wr) + \
                        torch.mul(bias_p, self.br)

                # print("K Loss: ", K_loss, "Reg Loss: ", Reg_loss, "Total Loss: ", loss)

            # backward + optimize
            self.scaler.scale(loss).backward()
            self.scaler.step(self.optimizer)
            self.scaler.update()
            
            # zero the parameter gradients
            self.optimizer.zero_grad(set_to_none=True)

            total_loss += loss
            num_batches += 1

        return total_loss, num_batches
        
    def fit(self, training_dataset):
        # collect data
        all_loss = []
        epoch_time = []
        avg_batch_time = []
        
        # for each epoch
        for epoch in range(self.n_epochs):
            # get total loss from the batch and training time
            epoch_start_time = time.time()
            
            total_loss, num_batches = self.train(training_dataset)
            loss_value = total_loss / num_batches
            # print(f"Epoch {epoch} : Loss {loss_value.data}")
            
            epoch_stop_time = time.time()
            
            # logger.info("Loss value: {}".format(tf.keras.backend.get_value(loss_value)))
            all_loss.append(loss_value.data)
            epoch_time.append(epoch_stop_time-epoch_start_time)
            avg_batch_time.append((epoch_stop_time-epoch_start_time)/num_batches)
            
        return all_loss, epoch_time, avg_batch_time
    
    def predict(self, input_dataset):
        K_loss_list = []
        for X, Y in input_dataset:
            X, Y        = X.to(self.device), Y.to(self.device)

            with torch.no_grad():
                # forward pass
                Psi_X    = self.encoder(X, training=True)
                Psi_Y    = self.encoder(Y, training=False)
                # print("Outside: input size", Psi_X.size(), "output_size", Psi_Y.size())

                # loss computation
                PSI_X    = torch.cat([X, Psi_X], 1)
                PSI_Y    = torch.cat([Y, Psi_Y], 1)

                # 1-time step evolution on observable space:
                if torch.cuda.device_count() > 1: K_PSI_X  = torch.matmul(PSI_X, self.encoder.module.KO) 
                else: K_PSI_X  = torch.matmul(PSI_X, self.encoder.KO) 

                # 1-step Koopman loss on observable space:        
                K_loss   = torch.norm(PSI_Y - K_PSI_X, dim = [0,1], p = 'fro')

                # Regularization loss on Koopman operator:
                if torch.cuda.device_count() > 1: Reg_loss= torch.mul(self.rf, torch.norm(self.encoder.module.KO, dim = [0,1], p = 'fro'))  
                else: Reg_loss= torch.mul(self.rf, torch.norm(self.encoder.KO, dim = [0,1], p = 'fro'))
                    
                K_loss_list.append(K_loss.cpu().data.numpy())

        return Psi_X.cpu().data.numpy(), PSI_X.cpu().data.numpy(), Psi_Y.cpu().data.numpy(), PSI_Y.cpu().data.numpy(), K_loss_list
        
class Encoder(torch.nn.Module):
    def __init__(self, hps, device, use_amp=False):
        super(Encoder, self).__init__()
        self.use_amp = use_amp
        self.device = device
        self.KO = torch.nn.Parameter(torch.Tensor(hps.ld+hps.od, hps.ld+hps.od), requires_grad=True)
        torch.nn.init.normal_(self.KO, mean=0.0, std=0.05)
        
        self.input_layer   = DenseLayer(hps.h1, hps.od, 0.0, 0.0, hps.d_type, device, use_amp=self.use_amp)
        self.hidden_layer1 = DenseLayer(hps.h2, hps.h1, hps.wr, hps.br, hps.d_type, device, use_amp=self.use_amp)
        self.dropout_laye1 = torch.nn.Dropout(hps.dr)
        self.hidden_layer2 = DenseLayer(hps.h3, hps.h2, hps.wr, hps.br, hps.d_type, device, use_amp=self.use_amp)        
        self.dropout_laye2 = torch.nn.Dropout(hps.dr)
        self.hidden_layer3 = DenseLayer(hps.h4, hps.h3, hps.wr, hps.br, hps.d_type, device, use_amp=self.use_amp)
        self.dropout_laye3 = torch.nn.Dropout(hps.dr)           
        self.output_layer  = LinearLayer(hps.ld, hps.h4, hps.wr, hps.br, hps.d_type, device, use_amp=self.use_amp)
        
    def forward(self, input_data, training):
        with torch.cuda.amp.autocast(enabled=self.use_amp):
            fx = self.input_layer(input_data)        
            # print("\tIn Model: input size", input_data.size(),
            #       "output size", fx.size())
            fx = self.hidden_layer1(fx)
            if training: fx = self.dropout_laye1(fx)     
            fx = self.hidden_layer2(fx)
            if training: fx = self.dropout_laye2(fx) 
            fx = self.hidden_layer3(fx)
            if training: fx = self.dropout_laye3(fx) 
            return self.output_layer(fx)

class LinearLayer(torch.nn.Module):

    def __init__(self, units, input_dim, weights_regularizer, bias_regularizer, d_type, device, use_amp=False):
        super(LinearLayer, self).__init__()
        self.use_amp = use_amp
        self.device = device
        self.w = torch.nn.Parameter(torch.Tensor(input_dim, units))
        torch.nn.init.uniform_(self.w, 
                               a=-math.sqrt(6/(input_dim+units)),
                               b=math.sqrt(6/(input_dim+units))
                              )
        
        self.b = torch.nn.Parameter(torch.Tensor(units))
        torch.nn.init.zeros_(self.b)

    def forward(self, inputs):
        with torch.cuda.amp.autocast(enabled=self.use_amp):
            return torch.add(torch.matmul(inputs, self.w), self.b)

class DenseLayer(torch.nn.Module):

    def __init__(self, units, input_dim, weights_regularizer, bias_regularizer, d_type, device, use_amp=False):
        super(DenseLayer, self).__init__()
        self.alpha = 1
        self.use_amp = use_amp
        self.device = device
        self.w = torch.nn.Parameter(torch.Tensor(input_dim, units))
        torch.nn.init.uniform_(self.w, 
                               a=-math.sqrt(6/(input_dim+units)),
                               b=math.sqrt(6/(input_dim+units))
                              )
        
        self.b = torch.nn.Parameter(torch.Tensor(units))
        torch.nn.init.zeros_(self.b)

    def forward(self, inputs):
        with torch.cuda.amp.autocast(enabled=self.use_amp):
            x = torch.add(torch.matmul(inputs, self.w), self.b)
            zeros = torch.zeros(x.shape, device=self.device)
            return torch.max(zeros, x) + torch.min(zeros, self.alpha * (torch.exp(x) - 1))
        # return torch.nn.functional.elu(x)