part of 'verify_otp_bloc.dart';

@freezed
class VerifyOtpState with _$VerifyOtpState {
   const factory VerifyOtpState({
    required bool isLoading,
    required bool signInSuccess,
    Failure? error,
  }) = _VerifyOtpState;
  factory VerifyOtpState.initial() =>
      const VerifyOtpState(isLoading: false, signInSuccess: false);


}
