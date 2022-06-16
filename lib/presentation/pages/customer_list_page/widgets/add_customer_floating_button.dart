import 'package:flutter/material.dart';
import 'package:save_bill/infrastructure/data_source/remote/firebase_repo.dart';
import 'package:save_bill/routes/routes.dart';

class AddCustomerFloatingButton extends StatelessWidget {
  const AddCustomerFloatingButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        FirebaseRepo().getCustomerLista();
        // => Navigator.pushNamed(context, Routes.addCustomer)
        },
      icon: const Icon(Icons.person_add),
      label: const Text("Add Customer"),
    );
  }
}
