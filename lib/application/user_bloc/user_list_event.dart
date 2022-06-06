part of 'user_list_bloc.dart';

@freezed
class UserListEvent with _$UserListEvent {
  const factory UserListEvent.loadUser({required String phoneNumber}) =
      _LoadUser;
  const factory UserListEvent.filterUser({required String searchKey}) =
      _FilterUser;
}
