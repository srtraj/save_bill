part of 'add_customer_cubit.dart';

@freezed
class AddCustomerState with _$AddCustomerState {
  const factory AddCustomerState.initial() = _Initial;

  const factory AddCustomerState.loading() = AddCustomerLoading;
    const factory AddCustomerState.loaded() = AddCustomerLoaded;
  const factory AddCustomerState.error() = AddCustomerError;
}
