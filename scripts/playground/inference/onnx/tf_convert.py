import os
import tensorflow as tf
os.environ['TF_CPP_MIN_LOG_LEVEL'] = '1'

# _TF_MODEL = "/home/milanjain91/models/ClimateApp/ClimateLSTMProxyAppTF/gpu_ng32_nc0_e50_b2048_dfp32_mpguHVD_prof0.tf"

import sys
import argparse
CURR_DIR = os.path.dirname(os.path.realpath(__file__))
sys.path.append(os.path.join(CURR_DIR, "../../../../"))

from proxy_apps.apps.tf.models.cnn1d import TFCNN
from proxy_apps.apps.tf.models.lstm import LSTMSingleLayerTF

def load_model(bw_size, fw_size, basedir, tf_modelname):
    if "Climate" in basedir:
        n_features = 326
    else:
        n_features = 136
    
    # set tf datatype
    dtype = os.path.basename(tf_modelname).split("_")[5]
    if dtype in ["dfp32", "damp"]:
        tf.keras.backend.set_floatx("float32")
    elif dtype in ["dfp64"]:
        tf.keras.backend.set_floatx("float64")
    
    if basedir[-2:] == "TF":
        model_name = "tf"
        if "LSTM" in basedir:
            print("=======> LSTM Model <========")
            model = LSTMSingleLayerTF
            model_name += "_lstm"
        else:
            print("=======> CNN Model <========")
            model = TFCNN
            model_name += "_cnn"
    else:
        sys.exit("Expecting a Tensorflow model")

    tf_model = model(
        model_name,
        {
            "bw_size": bw_size,
            "fw_size": fw_size,
            "n_features": n_features
        }
    )
    
    return n_features, tf_model, model_name

if __name__ == "__main__":
    parser = argparse.ArgumentParser()
    parser.add_argument("--input_file")

    args = parser.parse_args()

    _TF_MODEL = args.input_file
    basedir = os.path.basename(os.path.dirname(args.input_file))
    bw_size = 60
    fw_size = 30
    batch_size = 1024

    n_features, tf_model, model_name = load_model(
        bw_size, fw_size, basedir, _TF_MODEL
    )
    tf_inp = tf.random.uniform(
        shape=(batch_size, bw_size, n_features)
    )
    # tf_model.build(input_shape=(1024, 60, 136))
    y_before = tf_model.predict(tf_inp)

    tf_model.load_weights(_TF_MODEL)
    y_after = tf_model.predict(tf_inp)

    # print("Match:", tf.equal(y_before, y_after))
    output_path = "./tf_model"
    tf_model.save(output_path)