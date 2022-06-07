import 'package:file_picker/file_picker.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:dartz/dartz.dart';
import 'dart:io';

import 'package:save_bill/domain/i_repo/i_file_repo.dart';

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
  Future<Either<Failure, List<File>>> pickMultipleImage() async {
    try {

      final value = await FilePicker.platform.pickFiles(
        allowMultiple: true,
        type: FileType.image,
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
  Future<Either<Failure, File>> pickSingleImage() async {
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
}
