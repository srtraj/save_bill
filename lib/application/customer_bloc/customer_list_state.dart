part of 'customer_list_bloc.dart';

@freezed
class CustomerListState with _$CustomerListState {
  const factory CustomerListState({
    required bool isLoading,
    List<CustomerDataModel>? originalUserData,
    required List<CustomerDataModel> data,
    Failure? error,
  }) = _CustomerListState;
  factory CustomerListState.initial() => const CustomerListState(
      isLoading: false, data: []);
}
