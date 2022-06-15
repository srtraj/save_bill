import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_social_share_repo.dart';

part 'whatsapp_reminder_state.dart';
part 'whatsapp_reminder_cubit.freezed.dart';

class WhatsappReminderCubit extends Cubit<WhatsappReminderState> {
  late ISocialShareRepo _iSocialShareRepo;
  WhatsappReminderCubit({required ISocialShareRepo socialShareRepo})
      : super(const WhatsappReminderState.initial()) {
    _iSocialShareRepo = socialShareRepo;
  }

  void sendWhatsappReminder(
      {required String mobNumber,
      required String name,
      required String price}) async {
    emit(const WhatsappReminderState.loading());
    final result = await _iSocialShareRepo.sendWhatsappReminder(
        mobNumber: mobNumber, name: name, price: price);
    result.fold(
      (failure) => emit(WhatsappReminderState.error(error: failure)),
      (_) => emit(const WhatsappReminderState.loaded()),  
    );
  }
}
