part of 'otp_resend_clock_cubit.dart';

@freezed
class OtpResendClockState with _$OtpResendClockState {
  const factory OtpResendClockState({
    required bool isLoading,
    required int seconds,
  }) = _OtpResendClockState;
  factory OtpResendClockState.initial() =>
      const OtpResendClockState(isLoading: false, seconds: 0);
}
