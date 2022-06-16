part of 'customer_list_bloc.dart';

@freezed
class CustomerListEvent with _$CustomerListEvent {
  const factory CustomerListEvent.loadUser({required String phoneNumber}) =
      _LoadUser;
  const factory CustomerListEvent.filterUser({required String searchKey}) =
      _FilterUser;

}
