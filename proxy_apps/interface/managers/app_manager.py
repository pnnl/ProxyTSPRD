import os

class AppManager:
    def __init__(
        self,
        app,
        app_name,
        output_dir,
        ml_framework,
        print_rank=0
    ) -> None:
        # app
        self._APP = app
        self._PRINT_RANK = print_rank
        
        # app name
        self._APP_NAME = app_name
        if self._PRINT_RANK == 0:
            print("[INFO] Selected App: %s" %(self._APP_NAME))
        
        # output data directory
        self._OUTPUT_DIR = os.path.abspath(output_dir)
        if self._PRINT_RANK == 0:
            print("[INFO] Output Data Directory: %s" %(self._OUTPUT_DIR))

        self._ML_FRAMEWORK = ml_framework
        assert self._ML_FRAMEWORK in ["PyTorch", "TensorFlow"], "[ERROR] %s is not supported, choose between [PyTorch, TensorFlow] %(ml_framework)"

    def get_training_data(
        self,
        training_files,
        data_params,
        dtype,
        validation_files=None
    ):
        if self._ML_FRAMEWORK == "PyTorch":
            return self._APP.get_pt_training_data(
                training_files=training_files,
                data_params=data_params,
                dtype=dtype,
                validation_files=validation_files
            )
        elif self._ML_FRAMEWORK == "TensorFlow":
            return self._APP.get_tf_training_data(
                training_files=training_files,
                data_params=data_params,
                dtype=dtype,
                validation_files=validation_files
            )

    def get_model(
        self, 
        model_name, 
        model_parameters,
        device=None
    ):
        if self._ML_FRAMEWORK == "PyTorch":
            return self._APP.get_pt_model(model_name, model_parameters, device=device)
        elif self._ML_FRAMEWORK == "TensorFlow":
            return self._APP.get_tf_model(model_name, model_parameters)

    def get_opt(
        self
    ):
        return self._APP.get_opt()
    
    def get_criterion(
        self, 
        criterion_params
    ):
        if self._ML_FRAMEWORK == "PyTorch":
            return self._APP.get_pt_criterion(criterion_params)
        elif self._ML_FRAMEWORK == "TensorFlow":
            return self._APP.get_tf_criterion(criterion_params)
