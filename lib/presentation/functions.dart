import 'dart:io';
import 'dart:typed_data';

import 'package:external_path/external_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:fluttertoast/fluttertoast.dart';

getFirstLetterFromName(String name) {
  return name.split(" ").map((String e) => e[0]).join();
}

String uniqueIdFromDate() =>
    DateTime.now().toString().replaceAll(RegExp(r'[-: .]'), "");

showToast(
    {required String message, ToastGravity gravity = ToastGravity.BOTTOM}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: gravity,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0);
}

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

getDowloadPath() async {
  var path = await ExternalPath.getExternalStoragePublicDirectory(
      ExternalPath.DIRECTORY_DOWNLOADS);
  return path;
}

showLoaderDialog(BuildContext context) {
  showDialog(
    barrierDismissible: false,
    context: context,
    builder: (BuildContext context) {
      return WillPopScope(
        onWillPop: () async => false,
        child: AlertDialog(
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const CircularProgressIndicator(),
              Container(
                  margin: const EdgeInsets.only(left: 7),
                  child: const Text("Loading...")),
            ],
          ),
        ),
      );
    },
  );
}

Future<Uint8List?> imageCompressPercetage(File image, int quality) async {
  final result = await FlutterImageCompress.compressWithFile(
    image.absolute.path,
    quality: quality,
  );
  return result;
}

 Future compressedImageFunction(
    {required File image,
    required int limit,
    int min = 1,
    int max = 95}) async {
  int mid = ((max + min) / 2).floor();
  final compressedImage = await imageCompressPercetage(image, mid);
  final int compressedSize = compressedImage!.lengthInBytes;
 
  if (limit == compressedSize) {
    return compressedImage;
  } else if (limit > compressedSize) {
    await compressedImageFunction(image: image, limit: limit, min: mid + 1, max: max);
  } else {
    await compressedImageFunction(image: image, limit: limit, min: min, max: mid - 1);
  }
}
