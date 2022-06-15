import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:save_bill/presentation/functions.dart';

class CameraPreviewPage extends StatefulWidget {
  const CameraPreviewPage({Key? key}) : super(key: key);

  @override
  State<CameraPreviewPage> createState() => _CameraPreviewPageState();
}

class _CameraPreviewPageState extends State<CameraPreviewPage>
    with WidgetsBindingObserver {
  late CameraController _controller;
  late bool _isCameraInitialized;
  late bool _isCaptureLoading;
  List<CameraDescription>? cameras;
  double _minAvailableZoom = 1.0;
  double _maxAvailableZoom = 1.0;
  double _currentZoomLevel = 1.0;

  @override
  void initState() {
    super.initState();
    _isCameraInitialized = false;
    _isCaptureLoading = false;
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
        backgroundColor: Colors.black,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
        ),
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
                  bottom: 10,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ElevatedButton(
                      onPressed: _isCaptureLoading
                          ? null
                          : () async {
                              setState(() {
                                _isCaptureLoading = true;
                              });
                              await captureImage(context);
                            },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: _isCaptureLoading
                          ? const CircularProgressIndicator()
                          : const Icon(
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
        await editImage(context, image);
        setState(() {
          _isCaptureLoading = false;
        });
      }
    } catch (_) {
      showToast(message: 'Error taking picture');
    }
  }

  editImage(context, file) async {
    try {
      CroppedFile? croppedFile =
          await ImageCropper().cropImage(sourcePath: file.path, uiSettings: [
        AndroidUiSettings(toolbarTitle: 'Cropper', lockAspectRatio: true),
        IOSUiSettings(title: 'Cropper', aspectRatioLockEnabled: true)
      ]);
      if (croppedFile != null) {
        Navigator.pop(context, File(croppedFile.path));
      } else {
        return null;
      }
    } on Exception catch (_) {
      showToast(message: "Error cropping image,Please try again");
    }
  }
}

// class ImagePreview extends StatefulWidget {
//   const ImagePreview({Key? key, required this.imagePath}) : super(key: key);
//   final File imagePath;

//   @override
//   State<ImagePreview> createState() => _ImagePreviewState();
// }

// class _ImagePreviewState extends State<ImagePreview> {
//   late File _file;
//   @override
//   void initState() {
//     _file = widget.imagePath;
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final ht = MediaQuery.of(context).size.height;
//     return Scaffold(
//         backgroundColor: Colors.grey[300],
//         body: SafeArea(
//           child: Column(
//             children: [
//               SizedBox(
//                 height: ht * 0.01,
//               ),
//               Expanded(
//                 child: Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Center(
//                     child: Image.file(
//                       _file,
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//               ),
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 20.0),
//                 child: SizedBox(
//                   height: 75,
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     mainAxisSize: MainAxisSize.max,
//                     children: [
//                       ElevatedButton(
//                         onPressed: () => Navigator.pop(context),
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                         ),
//                         child: const Center(child: Icon(Icons.undo)),
//                       ),
//                       ElevatedButton(
//                         onPressed: () {},
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                         ),
//                         child: const Center(child: Icon(Icons.done)),
//                       ),
//                       ElevatedButton(
//                         onPressed: () => editImage(_file),
//                         style: ElevatedButton.styleFrom(
//                           shape: const CircleBorder(),
//                         ),
//                         child: const Center(child: Icon(Icons.edit)),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 10,
//               )
//             ],
//           ),
//         ));
//   }

//   editImage(file) async {
//     try {
//       CroppedFile? croppedFile = await ImageCropper().cropImage(
//           sourcePath: file.path,
//           aspectRatioPresets: Platform.isAndroid
//               ? [
//                   CropAspectRatioPreset.square,
//                 ]
//               : [
//                   CropAspectRatioPreset.square,
//                 ],
//           uiSettings: [
//             AndroidUiSettings(toolbarTitle: 'Cropper', lockAspectRatio: true),
//             IOSUiSettings(title: 'Cropper', aspectRatioLockEnabled: true)
//           ]);
//       if (croppedFile != null) {
//         return File(croppedFile.path);
//       } else {
//         return null;
//       }
//     } on Exception catch (_) {
//       showTaost(message: "Error cropping image,Please try again");
//     }
//   }
// }
