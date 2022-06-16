import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:save_bill/application/mobile_login_bloc/otp_resend_clock_bloc/otp_resend_clock_cubit.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_otp_bloc/verify_otp_bloc.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_phone_bloc/verify_phone_bloc.dart';
import 'package:save_bill/core/constants.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/domain/i_repo/i_local_db_repo.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/pages/login_page/otp_verification_page/widgets/pin_field.dart';

import 'package:save_bill/routes/routes.dart';

import 'widgets/custom_pin_keyboard.dart';

class OtpVerification extends StatefulWidget {
  const OtpVerification({Key? key}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  ValueNotifier<List<String>> otpKeyList = ValueNotifier([]);
  final int _numberOfField = 6;

  @override
  void dispose() {
    otpKeyList.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height / 100;
    return BlocConsumer<VerifyPhoneBloc, VerifyPhoneState>(
      listener: (context, state) {
        if (state.authCredential != null) {
          context.read<VerifyOtpBloc>().add(VerifyOtpEvent.verifyOtp(
              cred: state.authCredential!,
              smsCode: null,
              verificationId: null));
        }
      },
      builder: (context, state) {
        otpKeyList.value = List.from((state.authCredential != null &&
                state.authCredential!.verificationId != null &&
                state.authCredential!.smsCode != null)
            ? state.authCredential!.smsCode!.split('')
            : otpKeyList.value);
        return BlocConsumer<VerifyOtpBloc, VerifyOtpState>(
          listener: (ctx, otpState) {
            if (otpState.error != null) {
              Failure error = otpState.error!;
              if (error is FirebaseError) {
                showToast(message: error.exception.code);
              } else {
                showToast(
                    message: "Something went wrong,Please try again later");
              }
            }
            if (otpState.signInSuccess) {
              GetIt.instance<ILocalDbRepo>()
                  .setInitialPageInfo(pageInfo: Routes.profileUpdatePage);
              Navigator.pushNamedAndRemoveUntil(
                  context, Routes.profileUpdatePage, (route) => false,);
            }
          },
          builder: (ctx, otpState) {
            return Scaffold(
              resizeToAvoidBottomInset: false,
              body: Stack(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Column(
                        children: [
                          SizedBox(height: ht * 2),
                          Center(
                            child: SizedBox(
                              height: ht * 15,
                              child: Image.asset(
                                Assets.assetsImagesOtpVerification,
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: ht * 5,
                          ),
                          Text(
                            "Otp Verification",
                            style: Theme.of(context)
                                .textTheme
                                .headline5!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: ht),
                          RichText(
                            textAlign: TextAlign.center,
                            text: TextSpan(
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(color: Colors.grey),
                              children: [
                                const TextSpan(
                                    text: "Enter the OTP sent to : "),
                                TextSpan(
                                  text: "+91-${state.phone}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyLarge!
                                      .copyWith(fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: ht * 5,
                          ),
                          SizedBox(height: ht),
                          ValueListenableBuilder(
                              valueListenable: otpKeyList,
                              builder: (context, List<String> list, child) {
                                return Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: PinField(
                                    numberOfField: _numberOfField,
                                    values: list,
                                  ),
                                );
                              }),
                          SizedBox(
                            height: ht * 3,
                          ),
                          BlocBuilder<OtpResendClockCubit, OtpResendClockState>(
                            builder: (_, resendState) {
                              return RichText(
                                textAlign: TextAlign.center,
                                text: resendState.isLoading
                                    ? TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(color: Colors.grey),
                                        children: [
                                          const TextSpan(
                                              text: "Resend OTP in :"),
                                          TextSpan(
                                            text: "${resendState.seconds} sec",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontWeight:
                                                        FontWeight.bold),
                                          ),
                                        ],
                                      )
                                    : TextSpan(
                                        style: Theme.of(context)
                                            .textTheme
                                            .subtitle1!
                                            .copyWith(color: Colors.grey),
                                        children: [
                                          const TextSpan(
                                              text: "Didn't received OTP ? "),
                                          TextSpan(
                                            text: "Request again",
                                            style: Theme.of(context)
                                                .textTheme
                                                .subtitle1!
                                                .copyWith(
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.blue),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () => context
                                                  .read<VerifyPhoneBloc>()
                                                  .add(VerifyPhoneEvent.verifyPhone(
                                                      context: context,
                                                      phoneNumber: state.phone!,
                                                      duration: MetaConstant
                                                          .otpResendOtpDuration)),
                                          ),
                                        ],
                                      ),
                              );
                            },
                          ),
                          SizedBox(height: ht * 3),
                          SizedBox(
                            width: double.infinity,
                            height: ht * 6,
                            child: ElevatedButton(
                              onPressed: () {
                                if (otpKeyList.value.length == _numberOfField) {
                                  context.read<VerifyOtpBloc>().add(
                                      VerifyOtpEvent.verifyOtp(
                                          verificationId: state.verId!,
                                          smsCode: otpKeyList.value.join(),
                                          cred: null));
                                }
                                // Navigator.pushNamed(
                                //     context, Routes.profileUpdatePage);
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.yellow),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                              child: Text(
                                "Verify",
                                style: Theme.of(context).textTheme.headline6,
                              ),
                            ),
                          ),
                          const Spacer(),
                          SizedBox(
                            height: ht * 35,
                            child: CustomKeyboard(
                              onTap: _keyEntered,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  if (otpState.isLoading || state.isLoading)
                    const Center(
                      child: CircularProgressIndicator(),
                    ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  _keyEntered(val) {
    List ls = otpKeyList.value;
    if (val == "back") {
      if (ls.isNotEmpty) {
        ls.removeLast();
      }
    } else if (ls.length != _numberOfField && val != "-") {
      ls.insert(ls.length, val);
    }
    otpKeyList.value = List.from(ls);
  }
}
