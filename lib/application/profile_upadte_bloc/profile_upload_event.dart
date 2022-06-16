part of 'profile_upload_bloc.dart';

@freezed
class ProfileUploadEvent with _$ProfileUploadEvent {
  const factory ProfileUploadEvent.picProfile() = _picProfile;

  const factory ProfileUploadEvent.profileUploadToDb(
      {required String name, File? image,String? imageUrl}) = ProfileUploadToDb;

  const factory ProfileUploadEvent.profileFetchFromDb() = ProfileFetchFromDb;
}
