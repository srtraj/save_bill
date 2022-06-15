import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/mobile_login_bloc/otp_resend_clock_bloc/otp_resend_clock_cubit.dart';
import 'package:save_bill/application/mobile_login_bloc/verify_phone_bloc/verify_phone_bloc.dart';
import 'package:save_bill/core/constants.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/domain/failures/failure.dart';
import 'package:save_bill/presentation/functions.dart';

import 'package:save_bill/presentation/widgets/phone_textfield.dart';
import 'package:save_bill/routes/routes.dart';

class PhoneVerification extends StatefulWidget {
  const PhoneVerification({Key? key}) : super(key: key);

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _cntMob;
  @override
  void initState() {
    _cntMob = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cntMob.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height / 100;
    final keyHeight = MediaQuery.of(context).viewInsets.bottom;

    final imgHeight =
        keyHeight < ht * 15 ? ht * 30 : ht * 30 - (keyHeight - ht * 15);
    return BlocConsumer<VerifyPhoneBloc, VerifyPhoneState>(
        listener: (context, state) {
      if (state.error != null) {
        Failure error = state.error!;
        if (error is FirebaseError) {
          showToast(message: error.exception.code);
        }
      } else if (state.isCodesent&&!state.isResend) {
        Navigator.pushNamed(context, Routes.otpVerification);
      }
    }, builder: (context, state) {
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
                        height: imgHeight,
                        child: Image.asset(
                          Assets.assetsImagesMobileVerification,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: ht * 10,
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
                          const TextSpan(text: "We will send you an "),
                          TextSpan(
                            text: "One Time Password",
                            style: Theme.of(context)
                                .textTheme
                                .bodyLarge!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                          const TextSpan(text: " on this mobile number"),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: ht * 8,
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Enter Mobile Number",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                    SizedBox(height: ht),
                    Form(
                      key: _formKey,
                      child: PhoneTextField(
                        controller: _cntMob,
                      ),
                    ),
                    SizedBox(height: ht * 3),
                    SizedBox(
                      height: ht * 6,
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                            context.read<VerifyPhoneBloc>().add(
                                VerifyPhoneEvent.verifyPhone(
                                    context: context,
                                    phoneNumber: _cntMob.text,
                                    duration: MetaConstant.otpResendOtpDuration));
                          }
                        },
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all<Color>(Colors.yellow),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Get Otp",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (state.isLoading)
              const Center(
                child: CircularProgressIndicator(),
              )
          ],
        ),
      );
    });
  }
}
