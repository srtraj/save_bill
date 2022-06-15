part of 'verify_phone_bloc.dart';

@freezed
class VerifyPhoneState with _$VerifyPhoneState {
  const factory VerifyPhoneState({
    required bool isLoading,
    required bool isCodesent,
    String? verId,
    String? phone,
    PhoneAuthCredential? authCredential,
    required bool isResend,
    int? resendToken,
    Failure? error,
  }) = _VerifyPhoneState;
  factory VerifyPhoneState.initial() => const VerifyPhoneState(
      isLoading: false, isCodesent: false, isResend: false);
}
