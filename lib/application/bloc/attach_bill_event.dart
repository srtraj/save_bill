part of 'attach_bill_bloc.dart';

@freezed
class AttachBillEvent with _$AttachBillEvent {
  const factory AttachBillEvent.started() = _Started;
}