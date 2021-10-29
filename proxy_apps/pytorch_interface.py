class PyTorchInterface:
    def __init__(self, dtype, mixed_precision):
        import torch
        print("[INFO] PyTorch version: ", torch.__version__)

        device = torch.device('cuda' if torch.cuda.is_available() else 'cpu')
        print(device)

        if dtype == "float64": torch.set_default_dtype(torch.float64)
        else: torch.set_default_dtype(torch.float32)

        if mixed_precision:
            # set floatx
            dtype = "float32"
            torch.set_default_dtype(torch.float32)

        def get_indexer(n_rows, window_size, shift_size, start_point, leave_last):
            return np.arange(window_size)[None, :] + start_point + shift_size*np.arange(((n_rows - window_size - leave_last - start_point) // shift_size) + 1)[:, None]