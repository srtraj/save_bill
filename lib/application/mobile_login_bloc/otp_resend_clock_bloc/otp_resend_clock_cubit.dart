import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_resend_clock_state.dart';
part 'otp_resend_clock_cubit.freezed.dart';

class OtpResendClockCubit extends Cubit<OtpResendClockState> {
  OtpResendClockCubit() : super(OtpResendClockState.initial());

  void start({required Duration duration}) {
    emit(state.copyWith(isLoading: true, seconds: duration.inSeconds));
    Timer.periodic(const Duration(seconds: 1), (timer) {
      emit(state.copyWith(isLoading: true, seconds: state.seconds - 1));
      if (state.seconds == 0) {
        timer.cancel();
        emit(state.copyWith(isLoading: false, seconds: duration.inSeconds));
      }
    });
  }
}
