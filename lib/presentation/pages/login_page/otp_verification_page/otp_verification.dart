import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_assets.dart';
import 'package:save_bill/presentation/pages/login_page/otp_verification_page/widgets/pin_field.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'package:save_bill/routes/routes.dart';
import 'widgets/custom_pin_keyboard.dart';

class OtpVerification extends StatefulWidget {
  final OtpVerificationArgument argument;
  const OtpVerification({Key? key, required this.argument}) : super(key: key);

  @override
  State<OtpVerification> createState() => _OtpVerificationState();
}

class _OtpVerificationState extends State<OtpVerification> {
  ValueNotifier<List<String>> keyList = ValueNotifier([]);
  final int _numberOfField = 6;

  @override
  void dispose() {
    keyList.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ht = MediaQuery.of(context).size.height / 100;
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
                    const TextSpan(text: "Enter the OTP sent to : "),
                    TextSpan(
                      text: "+91-${widget.argument.mobile}",
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
                  valueListenable: keyList,
                  builder: (context, List<String> list, child) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: PinField(
                        numberOfField: _numberOfField,
                        values: list,
                      ),
                    );
                  }),
              SizedBox(
                height: ht * 3,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(color: Colors.grey),
                  children: [
                    const TextSpan(text: "Didn't received OTP ? "),
                    TextSpan(
                      text: "Request again",
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              SizedBox(height: ht * 3),
              SizedBox(
                width: double.infinity,
                height: ht * 6,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.profileUpdatePage);
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
    );
  }

  _keyEntered(val) {
    List ls = keyList.value;
    if (val == "back") {
      if (ls.isNotEmpty) {
        ls.removeLast();
      }
    } else if (ls.length != _numberOfField && val != "-") {
      ls.insert(ls.length, val);
    }
    keyList.value = List.from(ls);
  }
}
