import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';

class AddCustomerNameTextField extends StatelessWidget {
  const AddCustomerNameTextField({Key? key,required this.controller}) : super(key: key);
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      onChanged: (key) => context
          .read<ContactListBloc>()
          .add(ContactListEvent.filterContact(searchKey: key)),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        hintText: "Enter customer name",
        contentPadding: const EdgeInsets.symmetric(horizontal: 15),
      ),
      validator: (value) {
        if (value==null||value.isEmpty) {
          return "Please enter customer name";
        }
        return null;
      },
    );
  }
}
