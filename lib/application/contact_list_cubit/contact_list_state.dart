part of 'contact_list_cubit.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState({
    required bool isLoading,
    required List<ContactModel> data,
    Failure? error,
  }) = _ContactListState;
  factory ContactListState.initial() =>
      const ContactListState(isLoading: false, data: []);
}
