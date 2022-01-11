import functools
import numpy as np
import torch
import tensorflow as tf

class ImageDataHandler_TF():
    def __init__(self, training_files, handler_params, dtype, validation_files=None):
        self.data_type = dtype
        self.train_files = training_files
        self.val_files = validation_files

    def load_data(self):
        # train_npz = tf.io.gfile.glob(self.training_data_dir + '/train_data*')
        train_files = tf.data.Dataset.from_tensor_slices(self.train_files)
        train_dataset = train_files.interleave(lambda f: ImageDataGen(f), num_parallel_calls=tf.data.AUTOTUNE)

        # val_npz = tf.io.gfile.glob(self.val_data_dir + '/val_data*')
        val_files = tf.data.Dataset.from_tensor_slices(self.val_files)
        val_dataset = val_files.interleave(lambda f: ImageDataGen(f), num_parallel_calls=tf.data.AUTOTUNE)

        return train_dataset, val_dataset

class ImageDataSequentialDataGenerator_TF(tf.keras.utils.Sequence):
    'Characterizes a dataset for TensorFlow'
    def __init__(self, training_files, handler_params, dtype, validation_files=None):
        'Initialization'
        self.training_files = training_files
        self.n_files = len(self.training_files)
        self.d_type = dtype
        
    def get_training_data(self):
        complete_data = list(map(functools.partial(self.get_data), self.training_files))
        self.X = np.concatenate([arr[0] for arr in complete_data], axis=0) # stacked_array[0, :, :]
        self.y = np.reshape(np.concatenate([arr[1] for arr in complete_data], axis=0), (-1, 1)) # stacked_array[1, :, :]
        self.y = self.y - 1
        print(self.X.shape, self.y.shape)
        print(self.X[0].shape)
        
        assert self.X.shape[0]==self.y.shape[0]
        
    def get_data(self, filename): 
        # Opening the file
        img_data = np.load(filename)

        img_size = 32
        img_size2 = img_size * img_size

        img_binary = img_data['data']
        img_binary = np.dstack((img_binary[:, :img_size2], img_binary[:, img_size2:2 * img_size2], img_binary[:, 2 * img_size2:]))
        img_binary = img_binary.reshape((img_binary.shape[0], img_size, img_size, 3))

        img_labels = img_data['labels']
        return img_binary, img_labels

    def __len__(self):
        'Denotes the total number of samples'
        return self.X.shape[0]
    
    def __getitem__(self, index):
        'Generates one sample of data'
        # print(self.X[index, :].shape, self.y[index, :].shape)
        return self.X[index], self.y[index]
    
    def __call__(self):
        for i in range(self.X.shape[0]):
            yield self.__getitem__(i)
    
class ImageDataSequentialDataGenerator_PT(torch.utils.data.Dataset):
    'Characterizes a dataset for PyTorch'
    def __init__(self, training_files, handler_params, dtype, validation_files=None):
        'Initialization'
        self.training_files = training_files
        self.n_files = len(self.training_files)
        self.d_type = dtype
        print(self.n_files, self.training_files)
        
    def get_training_data(self):
        # complete_data = [self.get_data(f) for f in self.training_files]
        complete_data = list(map(functools.partial(self.get_data), self.training_files))
        self.X = torch.tensor(np.concatenate([arr[0] for arr in complete_data])).permute(0, 3, 1, 2).type(torch.float) # stacked_array[0, :, :]
        self.y = torch.reshape(torch.tensor(np.concatenate([arr[1] for arr in complete_data])).type(torch.int64), (-1,)) # stacked_array[1, :, :]
        # unique_targets = torch.unique(old_target)
        # self.y = torch.empty_like(old_target)
        # for idx, t in enumerate(unique_targets):
        #     print('replacing {} with {}'.format(t, idx))
        #     self.y[old_target == t] = idx
        self.y = self.y - 1
        
        # for t in self.X:
        #     t =
        # 
        print(self.X.shape, self.y)
        print(self.X[0].shape)
        
        assert self.X.shape[0]==self.y.shape[0]
        
    def get_data(self, filename): 
        # Opening the file
        img_data = np.load(filename)

        img_size = 32
        img_size2 = img_size * img_size

        img_binary = img_data['data']
        img_binary = np.dstack((img_binary[:, :img_size2], img_binary[:, img_size2:2 * img_size2], img_binary[:, 2 * img_size2:]))
        img_binary = img_binary.reshape((img_binary.shape[0], img_size, img_size, 3))

        img_labels = img_data['labels']
        return img_binary, img_labels

    def __len__(self):
        'Denotes the total number of samples'
        return self.X.shape[0]
    
    def __getitem__(self, index):
        'Generates one sample of data'
        return self.X[index], self.y[index]

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
