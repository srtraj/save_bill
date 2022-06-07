import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPreviewPage extends StatefulWidget {
  const CameraPreviewPage({Key? key}) : super(key: key);


  @override
  State<CameraPreviewPage> createState() => _CameraPreviewPageState();
}

class _CameraPreviewPageState extends State<CameraPreviewPage>
    with WidgetsBindingObserver {
  late CameraController _controller;
  late bool _isCameraInitialized;
   List<CameraDescription>? cameras;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  double _currentZoomLevel = 1.0;

  @override
  void initState() {
    super.initState();
      _isCameraInitialized = false;
    cameraInitialize();
  }

  cameraInitialize() async {
      _isCameraInitialized = false;
    cameras ??= await availableCameras();
  
    _controller = CameraController(
      cameras![0],
      ResolutionPreset.max,
    );
    await _controller.initialize();

    _controller.getMaxZoomLevel().then((value) => _maxAvailableZoom = value);

    _controller.getMinZoomLevel().then((value) => _minAvailableZoom = value);
    setState(() {
      _isCameraInitialized = true;
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    final CameraController cameraController = _controller;

    // App state changed before we got the chance to initialize.
    if (!cameraController.value.isInitialized) {
      return;
    }

    if (state == AppLifecycleState.inactive) {
      // Free up memory when camera not active
      cameraController.dispose();
    } else if (state == AppLifecycleState.resumed) {
      // Reinitialize the camera with same properties
      cameraInitialize();
    }
  }

  @override
  void dispose() {
    // Dispose of the controller when the widget is disposed.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height / 100;
    return WillPopScope(
      onWillPop: () async {
        Navigator.pop(context, null);
        return false;
      },
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            height: ht * 100,
            child: Stack(
              children: [
                _isCameraInitialized
                    ? Container(
                        color: Colors.red,
                        child: Stack(
                          children: [
                            LayoutBuilder(builder: (BuildContext context,
                                BoxConstraints constraints) {
                              return GestureDetector(
                                  behavior: HitTestBehavior.opaque,
                                  onTapDown: (details) =>
                                      onViewFinderTap(details, constraints),
                                  child: CameraPreview(_controller));
                            }),
                            Positioned(
                              right: 15,
                              bottom: ht * 5,
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: ht * 30,
                                    child: RotatedBox(
                                      quarterTurns: 3,
                                      child: Slider(
                                        value: _currentZoomLevel,
                                        min: _minAvailableZoom,
                                        max: _maxAvailableZoom,
                                        activeColor: Colors.yellow,
                                        inactiveColor: Colors.grey,
                                        onChanged: (value) async {
                                          setState(() {
                                            _currentZoomLevel = value;
                                          });
                                          await _controller.setZoomLevel(value);
                                        },
                                      ),
                                    ),
                                  ),
                                  Container(
                                    decoration: BoxDecoration(
                                      color: Colors.black87,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        '${_currentZoomLevel.toStringAsFixed(1)}x',
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    : Container(
                        color: Colors.black,
                      ),
                Positioned.fill(
                  bottom: 20,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: InkWell(
                      onTap: () => captureImage(context),
                      child: const Icon(
                        Icons.camera,
                        size: 60,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onViewFinderTap(TapDownDetails details, BoxConstraints constraints) {
    final offset = Offset(
      details.localPosition.dx / constraints.maxWidth,
      details.localPosition.dy / constraints.maxHeight,
    );
    _controller.setExposurePoint(offset);
    _controller.setFocusPoint(offset);
  }

  captureImage(context) async {
    try {
      if (_controller.value.isInitialized) {
        final image = await _controller.takePicture();
        Navigator.pop(context, File(image.path));
      }
    } catch (_) {
      Navigator.pop(context, null);
    }
  }
}
