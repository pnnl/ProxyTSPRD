from .. import torch

class PTCNN2D(torch.nn.Module):
  def __init__(self, model_name, model_parameters):
    super(PTCNN2D, self).__init__()
    self.bw_size = model_parameters["bw_size"] # size of the backward window
    self.fw_size = model_parameters["fw_size"] # size of the backward window
    self.n_features = model_parameters["n_features"] # size of the backward window
    self.n_channels = model_parameters["n_channels"]
    
    # self.criterion = criterion
    self.conv_layer    = torch.nn.Conv2d(in_channels=self.n_channels, out_channels=1, kernel_size=(self.bw_size, self.bw_size))
    self.dense_layer   = torch.nn.Linear(in_features=self.n_features-self.bw_size+1, out_features=self.fw_size * self.n_features)
      
  def forward(self, inputs):
    # print("Input:", inputs.shape)
    c = self.conv_layer(inputs)
    # print("Conv:", c.shape)
    d_out = self.dense_layer(torch.flatten(c, start_dim=1, end_dim=2))
    # print("Dense:", d_out.shape)
    out = d_out.view((d_out.shape[0], self.fw_size, self.n_features))
    # print("Out:", out.shape)
    return out
  
