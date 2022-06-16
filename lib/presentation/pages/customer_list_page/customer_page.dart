import 'package:flutter/material.dart';

import 'widgets/add_customer_floating_button.dart';
import 'widgets/custom_app_bar_widget.dart';
import 'widgets/customer_list.dart';

class CustomerPage extends StatelessWidget {
  const CustomerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UserAppBarWidget(),
      body: CustomerListWidget(),
      floatingActionButton: AddCustomerFloatingButton(),
    );
  }
}
