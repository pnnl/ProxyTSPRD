import os, sys
import tensorflow as tf

from .main import Interface

class TensorFlowInterface(Interface):
    def __init__(
        self, 
    ) -> None:
        super().__init__()
        self._ML_FRAMEWORK = "TensorFlow"

        ## Tensorflow Setup
        if self._GLOBAL_RANK == 0:
            print("[INFO] TensorFlow version: ", tf.__version__)

    def init_app_manager(
        self, 
        app,
        app_name,
        output_dir,
        mixed_precision_support=False
    ):
        super().init_app_manager(
            app=app,
            app_name=app_name, 
            output_dir=output_dir,
            mixed_precision_support=mixed_precision_support
        )

    def init_data_manager(
        self,
        data_dir,
        file_format,
        data_manager_type,
        train_files=-1,
        test_files=0,
        val_files=0,
        shuffle=False
    ):
        data_manager = super().init_data_manager(
            data_dir=data_dir,
            file_format=file_format,
            data_manager_type=data_manager_type,
            train_files=train_files,
            test_files=test_files,
            val_files=val_files,
            shuffle=shuffle
        )
        
        # keep track of framework
        data_manager._ML_FRAMEWORK = self._ML_FRAMEWORK

        return data_manager
    
    def load_data(
        self, 
        data_files,
        data_params,
        batch_size=1
    ):
        # empty training dataset
        dataloader = None
        # self.data_manager._BATCH_SIZE = batch_size

        # pytorch data loader
        data_generator = super().load_data(
            data_files,
            data_params
        )
        if data_params["dataloader"] == "tf.data.Dataset":
            # print(data_generator.x_indexer.shape)
            dataloader = tf.data.Dataset.from_generator(
                data_generator,
                output_signature = (
                    tf.TensorSpec(
                        shape=(data_generator.x_indexer.shape[1], data_generator.n_cols * data_generator.repeat_cols),
                        dtype=data_generator.d_type
                    ),
                    tf.TensorSpec(
                        shape=(data_generator.y_indexer.shape[1], data_generator.n_cols * data_generator.repeat_cols),
                        dtype=data_generator.d_type
                    )
                )
            )
            data_options = tf.data.Options()
            dataloader = dataloader.with_options(data_options).batch(batch_size)
            dataloader = dataloader.prefetch(buffer_size=tf.data.experimental.AUTOTUNE)
            

        return dataloader

    def init_training_engine(
        self,
        model_name,
        model_dir,
        data_params,
        criterion_params,
        device=None
    ):
        super().init_training_engine(
            model_name=model_name,
            data_params=data_params,
            criterion_params=criterion_params,
            device=device
        )
        model_exists = False

        # print(data_params)
        self.model.build(
            input_shape=(
                data_params["batch_size"], 
                data_params["bw_size"], 
                data_params["n_features"]
            )
        )

        # load if model exists
        self._MODEL_PATH = os.path.join(
                            model_dir, 
                            model_name + ".tf"
                        )
        if self._GLOBAL_RANK == 0:
            print(f"[INFO] Model Path: %s" %(self._MODEL_PATH))
        if os.path.exists(self._MODEL_PATH + ".index"):
            self.model.load_weights(self._MODEL_PATH)
            # trained_model = tf.keras.models.load_model(self._MODEL_PATH)
            # self.model.set_weight(trained_model.get_weights())
            if self._GLOBAL_RANK == 0:
                print(f"[INFO] Loaded Model: %s" %(self._MODEL_PATH))
        
            model_exists = True
        elif not os.path.exists(model_dir):
            os.makedirs(model_dir)

        # print model parameters
        if self._GLOBAL_RANK == 0:
            print("[INFO] Model Parameters:")
            print(self.model.summary())

        return model_exists

    def train(self):
        pass

    def infer(self):
        pass

