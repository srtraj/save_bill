import 'package:flutter/material.dart';

class DetailsTextFieldWidget extends StatelessWidget {
  const DetailsTextFieldWidget({
    Key? key,
    required TextEditingController cntDetails,
  })  : _cntDetails = cntDetails,
        super(key: key);

  final TextEditingController _cntDetails;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: TextField(
          controller: _cntDetails,
          decoration: const InputDecoration(
            border: InputBorder.none,
            focusedBorder: InputBorder.none,
            enabledBorder: InputBorder.none,
            errorBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            contentPadding: EdgeInsets.zero,
            hintText: "Enter details (Optional)",
          ),
        ),
      ),
    );
  }
}
