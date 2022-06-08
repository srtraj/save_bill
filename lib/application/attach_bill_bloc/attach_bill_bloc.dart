import 'dart:io';

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
    _fileRepo = fileRepo;
    on<AttachBillEvent>((event, emit) async {
      if (event is _PicImage) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, File> picResponse =
              await _fileRepo.pickSingleImage();
          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async => emit(state
                  .copyWith(isLoading: false, data: [...state.data, data])));
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
      if (event is _CaptureImage) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, File> picResponse =
              await _fileRepo.captureImage(event.context);
          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async => emit(state
                  .copyWith(isLoading: false, data: [...state.data, data])));
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
      if (event is _PicFile) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, List<File>> picResponse = await _fileRepo.pickMultipleFile();
          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async => emit(state
                  .copyWith(isLoading: false, data: [...state.data, ...data])));
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
    });
  }
}
