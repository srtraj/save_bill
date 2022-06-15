import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:save_bill/domain/i_repo/i_file_repo.dart';
import 'package:save_bill/routes/routes.dart';

class FileRepo implements IFileRepo {
  @override
  Future<Either<Failure, File>> editImage1x1(File file) async {
    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: file.path,
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
        return Right(File(croppedFile.path));
      } else {
        return const Left(Failure.internalFailure());
      }
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, List<File>>> pickMultipleFile() async {
    try {
      final value = await FilePicker.platform.pickFiles(
        allowMultiple: true,
      );

      if (value != null) {
        return Right(value.paths.map((e) => File(e!)).toList());
      } else {
        return const Left(Failure.internalFailure());
      }
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, File>> pickImage() async {
    try {
      final value = await FilePicker.platform.pickFiles(
        type: FileType.image,
      );
      if (value != null) {
        return Right(File(value.files.single.path!));
      } else {
        return const Left(Failure.internalFailure());
      }
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, File>> captureImage(context) async {
    try {
      final value = await Navigator.pushNamed(
        context,
        Routes.cameraPreview,
      );
      if (value != null) {
        return Right(value as File);
      } else {
        return const Left(Failure.internalFailure());
      }
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }

  @override
  Future<Either<Failure, File>> pickPdf() async {
    try {
      final value = await FilePicker.platform.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf'],
      );
      if (value != null) {
        return Right(File(value.files.single.path!));
      } else {
        return const Left(Failure.internalFailure());
      }
    } on Exception catch (_) {
      return const Left(Failure.internalFailure());
    }
  }
}
