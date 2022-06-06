part of 'user_list_bloc.dart';

@freezed
class UserListState with _$UserListState {
  const factory UserListState({
    required bool isLoading,
    List<UserModel>? originalUserData,
    required List<UserModel> data,
    Failure? error,
  }) = _UserListState;
  factory UserListState.initial() =>
      const UserListState(isLoading: false, data: []);
}
