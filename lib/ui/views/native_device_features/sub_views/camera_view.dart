import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import '../../../components/code_preview_component.dart';

import '../../../components/code_preview_component.dart';
import './../../../components/section_wrapper_component_component.dart';
import './../../../components/text_block_component.dart';

class CameraView extends StatelessWidget {
  final String _appBarTitle = 'Camera';
  final String _codeTabMarkdownLocation = 'assets/markdowns/test.md';

  @override
  Widget build(BuildContext context) {
    return CodePreviewTabsComponent(
      appBarTitle: this._appBarTitle,
      previewTab: _CameraImplementation(),
      codeTabMarkdownLocation: this._codeTabMarkdownLocation,
    );
  }
}

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
    return Wrap(
      children: <Widget>[
        SectionWrapperComponent(
          title: 'Simple use',
          content: [
            TextBlockComponent(
              'To use camera, add a popular camera package to "pubspec.yaml" file and follow it\'s implementation. This example uses "camera" package.',
            ),
            TextBlockComponent(
              'The setup involves creating a controller for camera and using "CameraPreview" widget to preview the camera.',
            ),
            Container(
              height: 500,
              width: double.infinity,
              child: FutureBuilder<void>(
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
              ),
            ),
          ],
        ),
      ],
    );
  }
}
