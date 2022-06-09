import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_social_share_repo.dart';

part 'sms_reminder_state.dart';
part 'sms_reminder_cubit.freezed.dart';

class SmsReminderCubit extends Cubit<SmsReminderState> {
  late ISocialShareRepo _iSocialShareRepo;
  SmsReminderCubit({required ISocialShareRepo socialShareRepo})
      : super(const SmsReminderState.initial()) {
    _iSocialShareRepo = socialShareRepo;
  }
  void sendSmsReminder(
      {required String mobNumber,
      required String name,
      required String price}) async {
    emit(const SmsReminderState.loading());
    final result = await _iSocialShareRepo.sendSmsReminder(
        mobNumber: mobNumber, name: name, price: price);
    result.fold(
      (failure) => emit(SmsReminderState.error(error: failure)),
      (_) => emit(const SmsReminderState.loaded()),  
    );
  }
}
