part of 'profile_upload_bloc.dart';

@freezed
class ProfileUploadState with _$ProfileUploadState {
  const factory ProfileUploadState({
    required bool isLoading,
    File? data,
    Failure? error,
  }) = _ProfileUploadState;
  factory ProfileUploadState.initial() =>
      const ProfileUploadState(isLoading: false);
}