part of 'sms_reminder_cubit.dart';

@freezed
class SmsReminderState with _$SmsReminderState {
   const factory SmsReminderState.initial() = Initial;
  const factory SmsReminderState.loading() = LoadingSmsReminder;
  const factory SmsReminderState.loaded() = LoadedSmsReminder;
    const factory SmsReminderState.error({required Failure error}) = ErrorSmsReminder;
}
