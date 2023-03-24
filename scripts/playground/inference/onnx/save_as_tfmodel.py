import os, glob
import itertools

import tensorflow as tf
from tf_convert import load_model

datasets = ["Climate", "Grid"]
models = ["LSTM", "CNN"]
bw_size = 60
fw_size = 30
batch_size = 1024
MODEL_DIR = "/home/milanjain91/models/"

for d, m in itertools.product(datasets, models):
    if d == "Climate":
        directory = "ClimateApp"
    elif d == "Grid":
        directory = "ProxyTSPRD_IPDPS"

    model_path = os.path.join(MODEL_DIR, directory)
    files = glob.glob(os.path.join(model_path, d + m + "*/gpu_ng8*HVD_prof0*.tf.index"))
    
    for f in files:
        _tf_model = f.split(".index")[0]
        print(_tf_model)
        basedir = os.path.basename(os.path.dirname(_tf_model))
        n_features, tf_model, model_name = load_model(
            bw_size, fw_size, basedir, _tf_model
        )
        tf_inp = tf.random.uniform(
            shape=(batch_size, bw_size, n_features)
        )
        y_before = tf_model.predict(tf_inp)
        tf_model.load_weights(_tf_model)

        output_path = os.path.join(
            os.path.dirname(_tf_model), "tf_models"
        )
        if not os.path.exists(output_path):
            os.makedirs(output_path)

        tf_model.save(
            os.path.join(
                output_path, os.path.basename(_tf_model).split(".")[0]
            )
        )
