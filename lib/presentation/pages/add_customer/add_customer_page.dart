import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/presentation/pages/add_customer/add_customer_name_textfield.dart';
import 'package:save_bill/presentation/pages/add_customer/contact_list_widget.dart';
import 'package:save_bill/presentation/widgets/phone_textfield.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  late TextEditingController _cntMob;
  @override
  void initState() {
    _cntMob = TextEditingController();
    context.read<ContactListBloc>().add(const ContactListEvent.loadContact());
    super.initState();
  }

  @override
  void dispose() {
    _cntMob.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pop(),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    child: Icon(Icons.arrow_back),
                  ),
                ),
                const Spacer()
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            const AddCustomerNameTextField(),
            const SizedBox(
              height: 15,
            ),
            PhoneTextField(
              controller: _cntMob,
              hintText: "Enter Number (Optional)",
              hasClear: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                    onPressed: () {}, child: const Text("Continue"))),
            const Expanded(child: ConatctListWidget())
          ],
        ),
      ),
    );
  }
}
