part of 'verify_phone_bloc.dart';

@freezed
class VerifyPhoneEvent with _$VerifyPhoneEvent {
  const factory VerifyPhoneEvent.verifyPhone(
      {required BuildContext context,
      required String phoneNumber,
      required Duration duration}) = VerifyPhone;

  const factory VerifyPhoneEvent.verificationCompleted(
      {required PhoneAuthCredential authCredential}) = VerificationCompleted;
  const factory VerifyPhoneEvent.verificationFailed({required Failure error}) =
      VerificationFailed;
  const factory VerifyPhoneEvent.codeSent(
      {required String verificationId, int? forceResendingToken}) = CodeSent;
  const factory VerifyPhoneEvent.codeAutoRetrievalTimeout(
      {required String timeout}) = CodeAutoRetrievalTimeout;
}
