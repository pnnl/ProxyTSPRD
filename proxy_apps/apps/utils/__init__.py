import sys

def app_selector(app_name, platform):
    print("[INFO] Running app %s on %s." %(app_name, platform))
    if app_name == "ClimateLSTMProxyAppPT":
        from ..pt.climate import ClimateLSTMProxyAppPT
        app = ClimateLSTMProxyAppPT(platform)
    elif app_name == "ClimateLSTMProxyAppTF":
        from ..tf.climate import ClimateLSTMProxyAppTF
        app = ClimateLSTMProxyAppTF(platform)
    elif app_name == "ClimateCNNProxyAppPT":
        from ..pt.climate import ClimateCNNProxyAppPT
        app = ClimateCNNProxyAppPT(platform)
    elif app_name == "ClimateCNNProxyAppPT":
        from ..pt.climate import ClimateCNNProxyAppPT
        app = ClimateCNNProxyAppPT(platform)
    elif app_name == "ClimateCNN2DProxyAppPT":
        from ..pt.climate import ClimateCNN2DProxyAppPT
        app = ClimateCNN2DProxyAppPT(platform)
    elif app_name == "GridLSTMProxyAppPT":
        from ..pt.grid import GridLSTMProxyAppPT
        app = GridLSTMProxyAppPT(platform)
    elif app_name == "GridLSTMProxyAppTF":
        from ..tf.grid import GridLSTMProxyAppTF
        app = GridLSTMProxyAppTF(platform)
    elif app_name == "GridCNNProxyAppPT":
        from ..pt.grid import GridCNNProxyAppPT
        app = GridCNNProxyAppPT(platform)
    elif app_name == "GridCNNProxyAppTF":
        from ..tf.grid import GridCNNProxyAppTF
        app = GridCNNProxyAppTF(platform)
    elif app_name == "GridCNN2DProxyAppPT":
        from ..pt.grid import GridCNN2DProxyAppPT
        app = GridCNN2DProxyAppPT(platform)
    else:
        sys.exit("[ERROR] Invalid App: %s" %(app_name))

    return app
