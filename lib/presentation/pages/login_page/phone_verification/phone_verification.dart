import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';

import 'package:save_bill/presentation/widgets/phone_textfield.dart';
import 'package:save_bill/routes/route_arguments.dart';
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
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
                      Navigator.pushNamed(context, Routes.otpVerification,
                          arguments:
                              OtpVerificationArgument(mobile: _cntMob.text));
                    }
                  },
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.yellow),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                  child: const Text("Get Otp"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
