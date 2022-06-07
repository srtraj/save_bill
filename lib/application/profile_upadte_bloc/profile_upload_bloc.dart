import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_file_repo.dart';

part 'profile_upload_event.dart';
part 'profile_upload_state.dart';
part 'profile_upload_bloc.freezed.dart';

class ProfileUploadBloc extends Bloc<ProfileUploadEvent, ProfileUploadState> {
  late final IFileRepo _fileRepo;
  ProfileUploadBloc({required IFileRepo fileRepo})
      : super(ProfileUploadState.initial()) {
    _fileRepo = fileRepo;
    on<ProfileUploadEvent>((event, emit) async {
      if (event is _picProfile) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, File> picResponse = await _fileRepo.pickSingleImage();

          await picResponse.fold(
              (error) async =>
                  emit(state.copyWith(isLoading: false, error: error)),
              (data) async {
            Either<Failure, File> editResponse =
                await _fileRepo.editImage1x1(data);

            editResponse.fold(
                (error1) =>
                    emit(state.copyWith(isLoading: false, error: error1)),
                (data1) => emit(state.copyWith(isLoading: false, data: data1)));
          });
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
    });
  }
}
