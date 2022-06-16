import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_contacts/properties/event.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/domain/models/customer_model/customer_model.dart';

part 'customer_list_event.dart';
part 'customer_list_state.dart';
part 'customer_list_bloc.freezed.dart';

class CustomerListBloc extends Bloc<CustomerListEvent, CustomerListState> {
  late final IFirebaseRepo _fireRepo;

  CustomerListBloc({required IFirebaseRepo fireRepo})
      : super(CustomerListState.initial()) {
    _fireRepo = fireRepo;
    on<CustomerListEvent>((event, emit) async {
      if (event is _LoadUser) {
        try {
          emit(state.copyWith(isLoading: true, originalUserData: null));
          Either<Failure, List<CustomerDataModel>> response =
              await _fireRepo.getCustomerList();
          emit(response.fold(
              (error) => state.copyWith(isLoading: false, error: error),
              (data) => state.copyWith(isLoading: false, data: data)));
        } catch (error) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
      if (event is _FilterUser) {
        try {
          emit(state.copyWith(
              isLoading: true,
              originalUserData: state.originalUserData ?? state.data));
          List<CustomerDataModel> lst = state.originalUserData!;
          if (event.searchKey.isNotEmpty) {
            lst = lst
                .where((element) => element.name
                    .toString()
                    .toLowerCase()
                    .contains(event.searchKey.toLowerCase()))
                .toList();
            emit(state.copyWith(isLoading: false, data: lst));
          } else {
            emit(state.copyWith(
                isLoading: false, data: lst, originalUserData: null));
          }
        } catch (error) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
    });
  }
}
