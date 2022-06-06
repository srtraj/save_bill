part of 'contact_list_bloc.dart';

@freezed
class ContactListState with _$ContactListState {
  const factory ContactListState({
    required bool isLoading,
    List<ContactModel>? originalData,
    required List<ContactModel> data,
    Failure? error,
  }) = _ContactListState;
  factory ContactListState.initial() => const ContactListState(
        isLoading: false,
        data: [],
      );
}
