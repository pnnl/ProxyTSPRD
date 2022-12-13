import os

class AppManager:
    def __init__(
        self,
        app,
        app_name,
        output_dir,
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

    def get_datagenerator(
        self,
        files,
        data_params,
        dtype,
        validation_files=None
    ):
        return self._APP.get_datagen(
            files=files,
            data_params=data_params,
            dtype=dtype,
            validation_files=validation_files
        )
    
    def get_model(
        self, 
        model_name, 
        data_params,
        device=None
    ):
        return self._APP.get_model(
            model_name, 
            data_params, 
            device=device
        )
        
    def get_opt(
        self,
        model_params,
        opt_params
    ):
        return self._APP.get_opt(model_params, opt_params)
    
    def get_criterion(
        self, 
        criterion_params
    ):
        return self._APP.get_criterion(criterion_params)
        