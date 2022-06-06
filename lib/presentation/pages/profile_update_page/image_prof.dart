import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';

class ImageProf extends StatefulWidget {
  const ImageProf({Key? key}) : super(key: key);

  @override
  State<ImageProf> createState() => _ImageProfState();
}

class _ImageProfState extends State<ImageProf> {
  XFile? imageFile;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("widget.title"),
      ),
      body: Center(
        child:
            imageFile != null ? Image.file(File(imageFile!.path)) : Container(),
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrange,
          onPressed: () async {
            await _pickImage();
          },
          child: const Icon(Icons.add)),
    );
  }

  _pickImage() async {
    ImagePicker().pickImage(source: ImageSource.gallery).then((value) {
      if (value != null) {
        _cropImage(value.path);
      } else {
        _clearImage();
      }
    });
  }

  _cropImage(path) async {
    CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
              ]
            : [
                CropAspectRatioPreset.square,
              ],
        uiSettings: [
          AndroidUiSettings(toolbarTitle: 'Cropper', lockAspectRatio: true),
          IOSUiSettings(title: 'Cropper', aspectRatioLockEnabled: true)
        ]);
    if (croppedFile != null) {
      imageFile = XFile(croppedFile.path);
    }
    setState(() {});
  }

  void _clearImage() {
    imageFile = null;
    setState(() {});
  }
}
