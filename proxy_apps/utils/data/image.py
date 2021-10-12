import numpy as np
import tensorflow as tf

class ImageDataHandler():
    def __init__(self, handler_params):
        self.data_type = handler_params["data_type"]
        self.training_data_dir = handler_params["training_data_dir"]
        self.val_data_dir = handler_params["val_data_dir"]

    def load_data(self):
        train_npz = tf.io.gfile.glob(self.training_data_dir + '/train_data*')
        train_files = tf.data.Dataset.from_tensor_slices(train_npz)
        train_dataset = train_files.interleave(lambda f: ImageDataGen(f), num_parallel_calls=tf.data.AUTOTUNE)

        val_npz = tf.io.gfile.glob(self.val_data_dir + '/val_data*')
        val_files = tf.data.Dataset.from_tensor_slices(val_npz)
        val_dataset = val_files.interleave(lambda f: ImageDataGen(f), num_parallel_calls=tf.data.AUTOTUNE)

        return train_dataset, val_dataset

class ImageDataGen(tf.data.Dataset):
    def _generator(filename):
        # Opening the file
        img_data = np.load(filename)

        img_size = 32
        img_size2 = img_size * img_size

        img_binary = img_data['data']
        img_binary = np.dstack((img_binary[:, :img_size2], img_binary[:, img_size2:2 * img_size2], img_binary[:, 2 * img_size2:]))
        img_binary = img_binary.reshape((img_binary.shape[0], img_size, img_size, 3))

        img_labels = img_data['labels']
        # print(img_binary[0].shape, img_labels.shape)
        for sample_idx in range(img_binary.shape[0]):
            # Reading data (line, record) from the file
            # print(img_binary[sample_idx].shape, img_labels[sample_idx].shape)
            yield img_binary[sample_idx], img_labels[sample_idx]

    def __new__(cls, filename):
        return tf.data.Dataset.from_generator(
            cls._generator,
            output_signature = (tf.TensorSpec(shape=(32, 32, 3), dtype=tf.int64),
                                tf.TensorSpec(shape=(), dtype=tf.int64)),
            args=(filename,)
        )
