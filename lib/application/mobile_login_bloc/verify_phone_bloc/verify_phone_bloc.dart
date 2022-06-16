import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:save_bill/application/mobile_login_bloc/otp_resend_clock_bloc/otp_resend_clock_cubit.dart';
import 'package:save_bill/core/constants.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_firebase_repo.dart';
import 'package:save_bill/routes/routes.dart';

part 'verify_phone_event.dart';
part 'verify_phone_state.dart';
part 'verify_phone_bloc.freezed.dart';

class VerifyPhoneBloc extends Bloc<VerifyPhoneEvent, VerifyPhoneState> {
  late final IFirebaseRepo _fireRepo;
  VerifyPhoneBloc({required IFirebaseRepo fireRepo})
      : super(VerifyPhoneState.initial()) {
    _fireRepo = fireRepo;

    on<VerifyPhoneEvent>((event, emit) async {
      if (event is VerifyPhone) {
        try {
          bool isResend = ModalRoute.of(event.context)!.settings.name ==
              Routes.otpVerification;
        
          emit(state.copyWith(
              isLoading: true,
              isCodesent: false,
              verId: null,
              authCredential: null,
              phone: event.phoneNumber,
              isResend: isResend,
              resendToken: isResend ? state.resendToken : null,
              error: null));
          _fireRepo.signInWithMobile(
            context: event.context,
            phoneNumber: "+91${event.phoneNumber}",
            forceResendingToken: state.resendToken,
            timerfunction: () {
              event.context
                  .read<OtpResendClockCubit>()
                  .start(duration: MetaConstant.otpResendOtpDuration);
            },
            duration: event.duration,
          );
        } on Exception catch (_) {
          emit(state.copyWith(
              isLoading: false,
              isCodesent: true,
              verId: null,
              authCredential: null,
              phone: null,
              error: const Failure.internalFailure()));
        }
      }
      if (event is VerificationCompleted) {
        emit(state.copyWith(
            isLoading: false,
            authCredential: event.authCredential,
            error: null));
      }
      if (event is VerificationFailed) {
        emit(state.copyWith(
            isLoading: false,
            isCodesent: false,
            phone: null,
            error: event.error,
            authCredential: null,
            verId: null));
      }
      if (event is CodeSent) {
        emit(state.copyWith(
            isLoading: false,
            isCodesent: true,
            verId: event.verificationId,
            resendToken: event.forceResendingToken,
            error: null));
      }

      if (event is CodeAutoRetrievalTimeout) {
        // emit(state);
      }
    });
  }
}
