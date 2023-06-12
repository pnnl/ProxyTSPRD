from collections import OrderedDict

import sys
import torch

_DIM = 4
_DTYPE = "float16"
_FDTYPE = torch.float16

class PTCNN2D(torch.nn.Module):
  def __init__(self, model_parameters):
    super(PTCNN2D, self).__init__()
    self.bw_size = model_parameters["bw_size"] # size of the backward window
    self.fw_size = model_parameters["fw_size"] # size of the backward window
    self.n_features = model_parameters["n_features"] # size of the backward window
    
    # self.criterion = criterion
    self.conv_layer    = torch.nn.Conv2d(in_channels=_DIM, out_channels=1, kernel_size=(self.bw_size, self.bw_size))
    self.dense_layer   = torch.nn.Linear(in_features=self.n_features-self.bw_size+1, out_features=self.fw_size * self.n_features)
      
  def forward(self, inputs):
    print("Input:", inputs.shape)
    c = self.conv_layer(inputs)
    print("Conv:", c.shape)
    d_out = self.dense_layer(torch.flatten(c, start_dim=1, end_dim=2))
    print("Dense:", d_out.shape)
    out = d_out.view((d_out.shape[0], self.fw_size, self.n_features))
    print("Out:", out.shape)
    return out

batch_size=1024
model_parameters = {
  "bw_size": 60,
  "fw_size": 30,
  "n_features": 136
}

pt2d_model = PTCNN2D(
  model_parameters=model_parameters
).cuda().type(_FDTYPE)

x2d = torch.randn([batch_size, _DIM, model_parameters["bw_size"], model_parameters["n_features"]]).cuda().type(_FDTYPE)
# print(x2d[0])
print("Normal Shape:", x2d.shape)

# run pt model
pt2d_model.eval()
y_pt = pt2d_model(x2d)

from aitemplate.compiler import compile_model, ops
from aitemplate.frontend import nn, Tensor
from aitemplate.testing import detect_target

x2d_ait = x2d.permute((0, 2, 3, 1)).contiguous()
# print(x2d_ait[0])
print("AIT Shape:", x2d_ait.shape)

class AIT_PTCNN(nn.Module):
  def __init__(self, model_parameters):
    super(AIT_PTCNN, self).__init__()
    self.bw_size = model_parameters["bw_size"] # size of the backward window
    self.fw_size = model_parameters["fw_size"] # size of the backward window
    self.n_features = model_parameters["n_features"] # size of the backward window
    
    self.conv_layer    = nn.Conv2dBiasFewChannels(in_channels=_DIM, out_channels=1, kernel_size=self.bw_size, stride=1)
    self.flat_layer = nn.Flatten(start_dim=2, end_dim=-1)
    self.dense_layer   = nn.Linear(in_channels=self.n_features-self.bw_size+1, out_channels=self.fw_size * self.n_features)
    self.view = nn.View()
      
  def forward(self, inputs):
    # print("Inputs---------------", inputs.shape())
    c = self.conv_layer(inputs)
    # print("Conv---------------", c.shape())
    f_out = self.flat_layer(c)
    # print("Flatten---------------", f_out.shape())
    d_out = self.dense_layer(f_out)
    # print("Dense---------------", d_out.shape())
    out = self.view(d_out, (1024, self.fw_size, self.n_features))
    # print("Out---------------", out.shape())
      
    return out

def map_pt_params(ait_model, pt_model):
  ait_model.name_parameter_tensor()
  pt_params = dict(pt_model.named_parameters())
  mapped_pt_params = OrderedDict()
  for name, _ in ait_model.named_parameters():
    # print("Length:", len(pt_params[name].shape))
    if len(pt_params[name].shape) == 4:
      arr = pt_params[name].permute((0, 2, 3, 1)).contiguous()
    else:
      arr = pt_params[name].contiguous()
    ait_name = name.replace(".", "_")
    assert name in pt_params
    mapped_pt_params[ait_name] = arr
    print(name, arr.shape, pt_params[name].shape)

  return mapped_pt_params

# create AIT model
ait_model = AIT_PTCNN(
  model_parameters=model_parameters
)

# create AIT input Tensor
X = Tensor(
    shape=[batch_size, model_parameters["bw_size"], model_parameters["n_features"], _DIM],
    dtype=_DTYPE,
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
    y = torch.empty([batch_size, model_parameters["fw_size"], model_parameters["n_features"]]).cuda().type(_FDTYPE).contiguous()
    # print("PyTorch y:", y_pt[0])

    # inputs and outputs dict
    inputs = {"X": x2d_ait}
    outputs = {"Y": y}

    # run
    module.run_with_tensors(inputs, outputs, graph_mode=True)

    # print("After Execution y:", y[0])
    print(y.shape, y_pt.shape)
    # verify output is correct
    print(torch.allclose(y, y_pt, atol=1e-2, rtol=1e-2))