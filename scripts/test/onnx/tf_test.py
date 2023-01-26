import os
import tensorflow as tf
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '1'

_TF_MODEL = "/home/milanjain91/models/ClimateApp/ClimateCNNProxyAppTF/gpu_ng32_nc0_e50_b2048_dfp64_mpguHVD_prof0.tf.index"

import sys
sys.path.append("../../../")
from proxy_apps.apps.cnn import TFCNN

tf_model = TFCNN(
    "tf_cnn",
    {
        "bw_size": 60,
        "fw_size": 30,
        "n_features": 136
    }
)
tf_inp = tf.random.uniform(shape=(1024, 60, 136))
# tf_model.build(input_shape=(1024, 60, 136))
y_before = tf_model.predict(tf_inp)

tf_model.load_weights(_TF_MODEL)
y_after = tf_model.predict(tf_inp)

# print("Match:", tf.equal(y_before, y_after))