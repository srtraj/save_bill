import 'dart:io';
import 'dart:js';

import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_file_repo.dart';

part 'attach_bill_event.dart';
part 'attach_bill_state.dart';
part 'attach_bill_bloc.freezed.dart';

class AttachBillBloc extends Bloc<AttachBillEvent, AttachBillState> {
  late final IFileRepo _fileRepo;
  AttachBillBloc({required IFileRepo fileRepo})
      : super(AttachBillState.initial()) {
    on<AttachBillEvent>((event, emit) async {
      _fileRepo = fileRepo;
      if (event is _PicImage) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, List<File>> picResponse =
              await _fileRepo.pickMultipleImage();
          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async =>
                  emit(state.copyWith(isLoading: false, data: data)));
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
      if (event is _CaptureImage) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, File> picResponse =
              await _fileRepo.captureImage(context);
          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async {
            List<File> dataList = List.from(state.data);
            dataList.add(data);
            emit(state.copyWith(isLoading: false, data: dataList));
          });
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
          if (event is _PicPdf) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, File> picResponse =
              await _fileRepo.pickPdf();
          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async {
            List<File> dataList = List.from(state.data);
            dataList.add(data);
            emit(state.copyWith(isLoading: false, data: dataList));
          });
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
    });
  }
}
