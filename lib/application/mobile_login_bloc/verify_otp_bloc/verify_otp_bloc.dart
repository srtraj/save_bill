import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';

part 'verify_otp_event.dart';
part 'verify_otp_state.dart';
part 'verify_otp_bloc.freezed.dart';

class VerifyOtpBloc extends Bloc<VerifyOtpEvent, VerifyOtpState> {
  late final IFirebaseRepo _fireRepo;
  VerifyOtpBloc({required IFirebaseRepo fireRepo})
      : super(VerifyOtpState.initial()) {
    _fireRepo = fireRepo;
    on<VerifyOtpEvent>((event, emit) async {
      if (event is verifyOtp) {
        try {
          emit(state.copyWith(isLoading: true));
          final response = await _fireRepo.verifyOtp(
              cred: event.cred,
              smsCode: event.smsCode,
              verificationId: event.verificationId);
          response.fold(
              (error) => emit(state.copyWith(
                  isLoading: false, error: event.cred != null ? null : error)),
              (success) => emit(state.copyWith(
                  isLoading: false, error: null, signInSuccess: true)));
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false,
              error:
                  event.cred != null ? null : const Failure.internalFailure()));
        }
      }
    });
  }
}
