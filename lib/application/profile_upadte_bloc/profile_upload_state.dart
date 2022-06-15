part of 'profile_upload_bloc.dart';

@freezed
class ProfileUploadState with _$ProfileUploadState {
  const factory ProfileUploadState({
    required bool isLoading,
    required bool uploadCompleted,
    required bool fetchCompleted,
    File? imageData,
    String? name,
    Failure? error,
  }) = _ProfileUploadState;
  factory ProfileUploadState.initial() => const ProfileUploadState(
      isLoading: false, uploadCompleted: false, fetchCompleted: false);
}
