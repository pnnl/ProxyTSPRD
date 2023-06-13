from .. import torch

class Lambda(torch.nn.Module):
    def __init__(self):
        super(Lambda, self).__init__()
        
    def forward(self, x): 
        return x[:, -3:, :]

class PTCNN(torch.nn.Module):
    def __init__(self, model_name, model_parameters, device=None):
        super(PTCNN, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        
        # self.criterion = criterion
        # self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=self.n_features, out_channels=256, kernel_size=(3))
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=self.fw_size * self.n_features)
        
    def forward(self, inputs):
        # print(x.shape)
        # Run through Conv1d and Pool1d layers
        # print("Input:", inputs.shape)
        # l = self.lambda_layer(inputs)
        l = inputs[:, -3:, :]
        # print("Lambda:", l.shape)
        c = self.conv_layer(l.permute(0, 2, 1))
        # print("Conv:", c.shape)
        out = self.dense_layer(c.permute(0, 2, 1))
        # out = out.view((out.shape[0], self.fw_size, self.n_features))
        # print(out.shape, targets.shape)
        # loss = self.criterion(out, targets)
        # loss = self.criterion(
        #     out.reshape(-1, self.fw_size*self.n_features), 
        #     targets.reshape(-1, self.fw_size*self.n_features))
        # # print("Dense:", out.shape)
        # return out.view((out.shape[0], self.fw_size, self.n_features)), loss
        # return out
        return out.view((out.shape[0], self.fw_size, self.n_features))

class PTCNN_SN(torch.nn.Module):
    def __init__(self, model_name, model_parameters, criterion, device=None):
        super(PTCNN_SN, self).__init__()
        self.device = device
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        
        self.criterion = criterion
        # self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=self.n_features, out_channels=256, kernel_size=(3))
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=self.fw_size * self.n_features)
        
    def forward(self, inputs, targets):
        # print(x.shape)
        # Run through Conv1d and Pool1d layers
        # print("Input:", inputs)
        # l = self.lambda_layer(inputs)
        l = inputs[:, -3:, :]
        # print("Lambda:", l.shape)
        c = self.conv_layer(l.permute(0, 2, 1))
        # print("Conv:", c.shape)
        out = self.dense_layer(c.permute(0, 2, 1))
        # out = out.view((out.shape[0], self.fw_size, self.n_features))
        # print(out.shape, targets.shape)
        # loss = self.criterion(out, targets)
        loss = self.criterion(
            out.reshape(-1, self.fw_size*self.n_features), 
            targets.reshape(-1, self.fw_size*self.n_features))
        # print("Dense:", out.shape)
        # print("Dense (Reshaped):", out.view((out.shape[0], self.fw_size, self.n_features)).shape)
        return loss, out.view((out.shape[0], self.fw_size, self.n_features))                  