part of 'contact_list_bloc.dart';

@freezed
class ContactListEvent with _$ContactListEvent {
  const factory ContactListEvent.loadContact() = _LoadConctact;
  const factory ContactListEvent.filterContact({required String searchKey}) =
      _FilterConctact;
}
