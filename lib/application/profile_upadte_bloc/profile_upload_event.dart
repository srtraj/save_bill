part of 'profile_upload_bloc.dart';

@freezed
class ProfileUploadEvent with _$ProfileUploadEvent {
  const factory ProfileUploadEvent.picProfile() = _picProfile;
  const factory ProfileUploadEvent.PicImage() =_PicImage;
}