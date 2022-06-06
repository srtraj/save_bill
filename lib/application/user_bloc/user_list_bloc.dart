import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/domain/models/user_model/user_model.dart';

part 'user_list_event.dart';
part 'user_list_state.dart';
part 'user_list_bloc.freezed.dart';

class UserListBloc extends Bloc<UserListEvent, UserListState> {
  late final IFirebaseRepo _fireRepo;

  UserListBloc({required IFirebaseRepo fireRepo})
      : super(UserListState.initial()) {
    _fireRepo = fireRepo;
    on<UserListEvent>((event, emit) async {
      if (event is _LoadUser) {
        try {
          emit(state.copyWith(isLoading: true));
          Either<Failure, List<UserModel>> response =
              await _fireRepo.getUserList(phoneNumber: event.phoneNumber);
          emit(response.fold(
              (error) => state.copyWith(isLoading: false, error: error),
              (data) => state.copyWith(
                  isLoading: false, data: data, originalUserData: data)));
        } catch (error) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
      if (event is _FilterUser) {
        try {
          emit(state.copyWith(isLoading: true));
          List<UserModel> lst = state.originalUserData!;
          if (event.searchKey.isNotEmpty) {
            lst = lst
                .where((element) => element.name
                    .toString()
                    .toLowerCase()
                    .contains(event.searchKey.toLowerCase()))
                .toList();
          }
          emit(state.copyWith(isLoading: false, data: lst));
        } catch (error) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
    });
  }
}
