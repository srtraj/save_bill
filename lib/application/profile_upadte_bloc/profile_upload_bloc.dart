import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_file_repo.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';

part 'profile_upload_event.dart';
part 'profile_upload_state.dart';
part 'profile_upload_bloc.freezed.dart';

class ProfileUploadBloc extends Bloc<ProfileUploadEvent, ProfileUploadState> {
  late final IFileRepo _fileRepo;
  late final IFirebaseRepo _fireRepo;
  ProfileUploadBloc(
      {required IFileRepo fileRepo, required IFirebaseRepo fireRepo})
      : super(ProfileUploadState.initial()) {
    _fileRepo = fileRepo;
    _fireRepo = fireRepo;
    on<ProfileUploadEvent>((event, emit) async {
      if (event is _picProfile) {
        try {
          emit(state.copyWith(isLoading: false, uploadCompleted: false,fetchCompleted:false));
          Either<Failure, File> picResponse = await _fileRepo.pickImage();

          await picResponse
              .fold((error) async => emit(state.copyWith(error: error)),
                  (data) async {
            Either<Failure, File> editResponse =
                await _fileRepo.editImage1x1(data);
            editResponse.fold((error1) => emit(state.copyWith(error: error1)),
                (data1) => emit(state.copyWith(imageData: data1)));
          });
        } on Exception catch (_) {
          emit(state.copyWith(error: const Failure.internalFailure()));
        }
      }
      if (event is ProfileUploadToDb) {
        try {
          emit(state.copyWith(isLoading: true, uploadCompleted: false,fetchCompleted:false));

          final response = await _fireRepo.uploadProfile(
              name: event.name, image: event.image);
          emit(response.fold(
              (failure) => state.copyWith(
                  isLoading: false, uploadCompleted: false, error: failure),
              (success) =>
                  state.copyWith(isLoading: false, uploadCompleted: true)));
        } on Exception catch (e) {
          emit(state.copyWith(
              isLoading: false,
              uploadCompleted: false,
              error: const Failure.internalFailure()));
        }
      }
      if (event is ProfileFetchFromDb) {
        try {
          emit(state.copyWith(isLoading: true, fetchCompleted: false));
          final response = await _fireRepo.fetchProfile();

          await response.fold(
              (failure) async => emit(state.copyWith(
                  isLoading: false,
                  fetchCompleted: false,
                  error: failure)), (successData) async {
            final name = successData["name"];
            final image = await _fireRepo.fetchImageFromUrl(
                imageUrl: successData['profUrl']);
            image.fold(
                (imageFailure) => emit(state.copyWith(
                    isLoading: false,
                    fetchCompleted: false,
                    name: name,
                    error: imageFailure)),
                (imageData) => emit(state.copyWith(
                      isLoading: false,
                      fetchCompleted: true,
                      imageData: imageData,
                      name: name,
                    )));
          });
        } on Exception catch (e) {
          emit(state.copyWith(
              isLoading: false,
              fetchCompleted: false,
              error: const Failure.internalFailure()));
        }
      }
    });
  }
}
