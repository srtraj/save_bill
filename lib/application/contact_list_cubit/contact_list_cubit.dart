import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_contact_repo.dart';
import 'package:save_bill/domain/models/contact_model/contact_model.dart';

part 'contact_list_state.dart';
part 'contact_list_cubit.freezed.dart';

class ContactListCubit extends Cubit<ContactListState> {
  late final IContactRepo _contactRepo;
  ContactListCubit({required IContactRepo contactRepo})
      : super(ContactListState.initial()) {
    _contactRepo = contactRepo;
  }

  void getContactLists() async {
    try {
      emit(state.copyWith(isLoading: true));
      Either<Failure, List<ContactModel>> response =
          await _contactRepo.getContactList();
      emit(response.fold(
        (error) => state.copyWith(isLoading: false, error: error),
        (data) => state.copyWith(isLoading: false, data: data),
      ));
      emit(state.copyWith(isLoading: false));
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, error: const Failure.internalFailure()));
    }
  }
}
