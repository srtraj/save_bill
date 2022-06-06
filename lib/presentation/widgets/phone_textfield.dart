import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:save_bill/core/meta_assets.dart';

class PhoneTextField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool hasClear;
  const PhoneTextField(
      {Key? key,
      required this.controller,
      this.hintText,
      this.hasClear = false})
      : super(key: key);

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  late bool _isFocus;
  @override
  void initState() {
    _isFocus = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FocusScope(
      onFocusChange: (hasFocus) {
        if (widget.hasClear) {
          setState(() {
            _isFocus = hasFocus;
          });
        }
      },
      child: SizedBox(
        height: 45,
        child: TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              suffixIcon: _isFocus
                  ? GestureDetector(
                      onTap: () {
                        widget.controller.clear();
                        FocusScope.of(context).unfocus();
                      },
                      child: const Icon(Icons.clear),
                    )
                  : null,
              prefixIcon: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      Assets.assetsImagesIndiaFlag,
                      height: 25,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "+91",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text("-"),
                  ],
                ),
              ),
              contentPadding: EdgeInsets.zero,
              hintText: widget.hintText),
          keyboardType: TextInputType.number,
          inputFormatters: <TextInputFormatter>[
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(10),
          ],
          validator: (val) {
            if (val!.length != 10) {
              return "Please enter valid phone number";
            }
            return null;
          },
        ),
      ),
    );
  }
}
