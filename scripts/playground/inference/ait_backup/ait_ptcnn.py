from collections import OrderedDict

import sys
import torch

class PTCNN1D(torch.nn.Module):
    def __init__(self, model_parameters):
        super(PTCNN1D, self).__init__()
        self.bw_size = model_parameters["bw_size"] # size of the backward window
        self.fw_size = model_parameters["fw_size"] # size of the backward window
        self.n_features = model_parameters["n_features"] # size of the backward window
        
        # self.criterion = criterion
        # self.lambda_layer  = Lambda()
        self.conv_layer    = torch.nn.Conv1d(in_channels=self.n_features, out_channels=256, kernel_size=self.bw_size)
        self.dense_layer   = torch.nn.Linear(in_features=256, out_features=self.fw_size * self.n_features)
        
    def forward(self, inputs):
        # Run through Conv1d and Pool1d layers
        print("Inputs:", inputs.permute(0, 2, 1).shape)
        c = self.conv_layer(inputs.permute(0, 2, 1))
        print("Conv:", c.permute(0, 2, 1).shape)
        d_out = self.dense_layer(c.permute(0, 2, 1))
        print("Dense:", d_out.shape)
        out = d_out.view((d_out.shape[0], self.fw_size, self.n_features))
        print(out.shape)
        return out

class PTCNN2D(torch.nn.Module):
  def __init__(self, model_parameters):
      super(PTCNN2D, self).__init__()
      self.bw_size = model_parameters["bw_size"] # size of the backward window
      self.fw_size = model_parameters["fw_size"] # size of the backward window
      self.n_features = model_parameters["n_features"] # size of the backward window
      
      # self.criterion = criterion
      self.conv_layer    = torch.nn.Conv2d(in_channels=2, out_channels=1, kernel_size=(self.bw_size, self.bw_size))
      self.dense_layer   = torch.nn.Linear(in_features=self.n_features-self.bw_size+1, out_features=self.fw_size * self.n_features)
      
  def forward(self, inputs):
      # l = inputs[:, -3:, :]
      # print("Lambda:", l.shape)
      # c = self.conv_layer(l.permute(0, 2, 1))
      # print("Conv:", c.shape)
      # out = self.dense_layer(c.permute(0, 2, 1))
      # return out.view((out.shape[0], self.fw_size, self.n_features))
      print("Input:", inputs.shape)
      c = self.conv_layer(inputs)
      print("Conv:", c.shape)
      d_out = self.dense_layer(c)
      print("Dense:", d_out.shape)
      out = d_out.view((d_out.shape[0], self.fw_size, self.n_features))
      print("Out:", out.shape)
      return out

batch_size=1024
hidden=512
# create pt model
model_parameters = {
  "bw_size": 60,
  "fw_size": 30,
  "n_features": 136
}

# create pt input
pt1d_model = PTCNN1D(
  model_parameters=model_parameters
).cuda().half()

x1d = torch.randn([batch_size, model_parameters["bw_size"], model_parameters["n_features"]]).cuda().half()
print(x1d.shape)

# # run pt model
pt1d_model.eval()
y_pt = pt1d_model(x1d)

print("PyTorch 2D =============")
pt2d_model = PTCNN2D(
  model_parameters=model_parameters
).cuda().half()

x2d = torch.randn([batch_size, 2, model_parameters["bw_size"], model_parameters["n_features"]]).cuda().half()
print("Normal Shape:", x2d.shape)

x2d_ait = x2d.permute(0, 2, 3, 1)
print("AIT Shape:", x2d_ait.shape)

# run pt model
pt2d_model.eval()
y_pt = pt2d_model(x2d)

# sys.exit(1)
from aitemplate.compiler import compile_model, ops
from aitemplate.frontend import nn, Tensor
from aitemplate.testing import detect_target
from aitemplate.testing.benchmark_pt import benchmark_torch_function
from aitemplate.utils.graph_utils import sorted_graph_pseudo_code

class AIT_PTCNN(nn.Module):
  def __init__(self, model_parameters):
      super(AIT_PTCNN, self).__init__()
      self.bw_size = model_parameters["bw_size"] # size of the backward window
      self.fw_size = model_parameters["fw_size"] # size of the backward window
      self.n_features = model_parameters["n_features"] # size of the backward window
      
      # self.criterion = criterion
      # self.lambda_layer  = Lambda()
      # self.reshape_layer = nn.Reshape()
      self.conv_layer    = nn.Conv2dBias(in_channels=2, out_channels=1, kernel_size=self.bw_size, stride=1)
      self.flat_layer = nn.Flatten(start_dim=2, end_dim=-1)
      self.dense_layer   = nn.Linear(in_channels=self.n_features-self.bw_size+1, out_channels=self.fw_size * self.n_features)
      self.view = nn.View()
      
  def forward(self, inputs):
      # print(x.shape)
      # Run through Conv1d and Pool1d layers
      # l = self.lambda_layer(inputs)
      # l = inputs[:, -3:, :]
      print("Inputs---------------", inputs.shape())
      # reshaped_input = self.reshape_layer(inputs, (1024, self.bw_size, self.n_features, 2))
      # reshaped_input = ops.nhwc3to4()(inputs)
      # print("Reshaped Inputs---------------", reshaped_input.shape())
      c = self.conv_layer(inputs)
      print("Conv---------------", c.shape())
      f_out = self.flat_layer(c)
      print("Flatten---------------", f_out.shape())
      d_out = self.dense_layer(f_out)
      print("Dense---------------", d_out.shape())
      # out = d_out.view((d_out.shape[0], self.fw_size, self.n_features))
      out = self.view(d_out, (1024, self.fw_size, self.n_features))
      print("Out---------------", out.shape())
      
      return out

def map_pt_params(ait_model, pt_model):
  ait_model.name_parameter_tensor()
  pt_params = dict(pt_model.named_parameters())
  mapped_pt_params = OrderedDict()
  for name, _ in ait_model.named_parameters():
    # if len(pt_params[name].shape) == 4:
    #   arr = pt_params[name].permute((0, 2, 3, 1)).contiguous()
    # else:
    arr = pt_params[name]
    ait_name = name.replace(".", "_")
    assert name in pt_params
    mapped_pt_params[ait_name] = arr
    print(name, mapped_pt_params[ait_name].shape, pt_params[name].shape)

  # sys.exit(1)
  print(pt_params.keys())
  print(mapped_pt_params.keys())

  # sys.exit()
  return mapped_pt_params

# m = nn.Linear(77, 4080)
# f = nn.Flatten(start_dim=2, end_dim=-1)
# input = Tensor(shape=[1024, 1, 77, 1])
# print(input)
# flattened_input = f(input)
# print(flattened_input)
# output = m(flattened_input)
# print(output)

# create AIT model
ait_model = AIT_PTCNN(
  model_parameters=model_parameters
)

# create AIT input Tensor
X = Tensor(
      shape=[batch_size, model_parameters["bw_size"], model_parameters["n_features"], 2],
      name="X",
      is_input=True,
)
# run AIT module to generate output tensor
Y = ait_model(X)
# mark the output tensor
Y._attrs["is_output"] = True
Y._attrs["name"] = "Y"

# map pt weights to ait
weights = map_pt_params(ait_model, pt2d_model)

# codegen
target = detect_target()
print(target)

with compile_model(
    Y, target, "./tmp", "simple_model_demo", constants=weights
) as module:
    # create storage for output tensor
    y = torch.empty([batch_size, model_parameters["fw_size"], model_parameters["n_features"]]).cuda().half()
    print("Empty y:", y)

    # inputs and outputs dict
    inputs = {"X": x2d_ait}
    outputs = {"Y": y}

    # run
    module.run_with_tensors(inputs, outputs, graph_mode=True)

    print("After Execution y:", y)
    # verify output is correct
    print(torch.allclose(y, y_pt, atol=1e-2, rtol=1e-2))

    # # run pt model
    # pt2d_model.eval()
    # y_pt = pt2d_model(x)