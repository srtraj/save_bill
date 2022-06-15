import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/failures/failure.dart';

abstract class IFileRepo {
  Future<Either<Failure, File>> pickImage();
  Future<Either<Failure, List<File>>> pickMultipleFile();

  Future<Either<Failure, File>> editImage1x1(File file);
  Future<Either<Failure, File>> captureImage(context);
  Future<Either<Failure, File>> pickPdf();
}
