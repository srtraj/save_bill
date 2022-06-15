import 'package:flutter/material.dart';

import 'widgets/add_customer_floating_button.dart';
import 'widgets/custom_app_bar_widget.dart';
import 'widgets/user_list.dart';

class UserPage extends StatelessWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: UserAppBarWidget(),
      body: UserList(),
      floatingActionButton: AddCustomerFloatingButton(),
    );
  }
}
