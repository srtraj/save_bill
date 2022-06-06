import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_contact_repo.dart';
import 'package:save_bill/domain/models/contact_model/contact_model.dart';

part 'contact_list_event.dart';
part 'contact_list_state.dart';
part 'contact_list_bloc.freezed.dart';

class ContactListBloc extends Bloc<ContactListEvent, ContactListState> {
  late final IContactRepo _contactRepo;
  ContactListBloc({required IContactRepo contactRepo})
      : super(ContactListState.initial()) {
    _contactRepo = contactRepo;
    on<ContactListEvent>((event, emit) async {
      if (event is _LoadConctact) {
        try {
          emit(state.copyWith(isLoading: true, originalData: null));
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
          if (event is _FilterConctact) {
      try {
          emit(state.copyWith(
              isLoading: true,
              originalData:
                  state.originalData ?? state.data ));
          List<ContactModel> lst = state.originalData!;
          if (event.searchKey.isNotEmpty) {
            lst = lst
                .where((element) => element.name
                    .toString()
                    .toLowerCase()
                    .contains(event.searchKey.toLowerCase()))
                .toList();
                emit(state.copyWith(isLoading: false, data: lst));
          }
          else{
            emit(state.copyWith(isLoading: false, data: lst,originalData: null));
          }
          
        } catch (error) {
          emit(state.copyWith(
              isLoading: false, error: const Failure.internalFailure()));
        }
      }
    });
  }
}
