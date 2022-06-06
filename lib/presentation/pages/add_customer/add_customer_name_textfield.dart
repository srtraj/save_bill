import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';

class AddCustomerNameTextField extends StatelessWidget {
  const AddCustomerNameTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
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
    );
  }
}
