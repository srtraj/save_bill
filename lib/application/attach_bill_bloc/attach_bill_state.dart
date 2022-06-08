part of 'attach_bill_bloc.dart';

@freezed
class AttachBillState with _$AttachBillState {
    const factory AttachBillState({
    required bool isLoading,
    required List<File> data,
    Failure? error,
  }) = _AttachBillState;
  factory AttachBillState.initial() =>
      const AttachBillState(isLoading: false,data:[]);
}
