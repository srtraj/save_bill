import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';

part 'add_customer_state.dart';
part 'add_customer_cubit.freezed.dart';

class AddCustomerCubit extends Cubit<AddCustomerState> {
  late final IFirebaseRepo _fireRepo;
  AddCustomerCubit({required IFirebaseRepo fireRepo})
      : super(const AddCustomerState.initial()) {
    _fireRepo = fireRepo;
  }
  Future<void> addCustomer({required String name, String? phone}) async {
    try {
      emit(const AddCustomerState.loading());
      await _fireRepo.addCustomer(name: name, phone: phone);
      emit(const AddCustomerState.loaded());
    } on Exception catch (e) {
      emit(const AddCustomerState.error());
    }
  }
}
