part of 'whatsapp_reminder_cubit.dart';

@freezed
class WhatsappReminderState with _$WhatsappReminderState {
  const factory WhatsappReminderState.initial() = Initial;
  const factory WhatsappReminderState.loading() = LoadingWhatsappReminder;
  const factory WhatsappReminderState.loaded() = LoadedWhatsappReminder;
    const factory WhatsappReminderState.error({required Failure error}) = ErrorWhatsappReminder;
}
