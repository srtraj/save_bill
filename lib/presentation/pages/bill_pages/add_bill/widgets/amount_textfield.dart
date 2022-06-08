import 'package:flutter/material.dart';

class AmountTextFieldWidget extends StatelessWidget {
  const AmountTextFieldWidget({
    Key? key,
    required TextEditingController cntPrice,
    required this.mainColor,
  })  : _cntPrice = cntPrice,
        super(key: key);

  final TextEditingController _cntPrice;
  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(2),
        child: TextField(
          controller: _cntPrice,
          style: TextStyle(
            color: mainColor,
            fontWeight: FontWeight.bold,
          ),
          decoration: InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            prefixIconConstraints: const BoxConstraints(minWidth: 40),
            hintText: "Enter Amount",
            prefixIcon: Icon(
              Icons.currency_rupee_rounded,
              color: mainColor,
              size: 18,
            ),
          ),
        ),
      ),
    );
  }
}
