part of 'verify_otp_bloc.dart';

@freezed
class VerifyOtpEvent with _$VerifyOtpEvent {
  const factory VerifyOtpEvent.verifyOtp(
      {String? verificationId,
      String? smsCode,
      PhoneAuthCredential? cred}) = verifyOtp;
}
