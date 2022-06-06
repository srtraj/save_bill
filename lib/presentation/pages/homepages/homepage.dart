import 'package:flutter/material.dart';
import 'package:save_bill/presentation/pages/homepages/widgets/add_customer_floating_button.dart';
import 'package:save_bill/presentation/pages/homepages/widgets/custom_app_bar_widget.dart';
import 'package:save_bill/presentation/pages/homepages/widgets/user_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          CustomAppBarWidget(),
          UserList(),
        ],
      ),
      floatingActionButton: const AddCustomerFloatingButton(),
    );
  }
}
