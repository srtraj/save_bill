import 'package:flutter/material.dart';

class AddCustomerNameTextField extends StatelessWidget {
  const AddCustomerNameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Enter customer name",
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      ),
    );
  }
}
