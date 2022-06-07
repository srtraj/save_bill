import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:save_bill/domain/failures/failure.dart';

abstract class IFileRepo {
  Future<Either<Failure, File>> pickSingleImage();
   Future<Either<Failure, List<File>>> pickMultipleImage();
     Future<Either<Failure, File>> editImage1x1(File file);
}