    class _CameraImplementation extends StatefulWidget {
        @override
        __CameraImplementationState createState() => __CameraImplementationState();
    }

    class __CameraImplementationState extends State<_CameraImplementation> {
        CameraController _cameraController;
        Future<void> _initializeControllerFuture;
        List<CameraDescription> _cameras;

        @override
        void initState() {
            super.initState();

            this._initializedCamera();
        }

        _initializedCamera() async {
            _cameras = await availableCameras();

            this._cameraController = CameraController(
                this._cameras[0],
                ResolutionPreset.medium,
            );

            this._initializeControllerFuture = this._cameraController.initialize();

            this._cameraController.addListener(() {
                if (mounted) setState(() {});
            });
        }

        @override
        void dispose() {
            _cameraController.dispose();

            super.dispose();
        }

        @override
        Widget build(BuildContext context) {
            return FutureBuilder<void>(
                future: this._initializeControllerFuture,
                builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.done) {
                        return CameraPreview(
                            this._cameraController,
                        );
                    } else {
                        return Container(
                            alignment: Alignment.center,
                            child: CircularProgressIndicator(),
                        );
                    }
                },
            );
        }
    }
