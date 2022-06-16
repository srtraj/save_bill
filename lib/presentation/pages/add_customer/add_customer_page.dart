import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:save_bill/application/add_customer_bloc/add_customer_cubit.dart';
import 'package:save_bill/application/contact_list_bloc/contact_list_bloc.dart';
import 'package:save_bill/presentation/functions.dart';
import 'package:save_bill/presentation/pages/add_customer/widgets/add_customer_name_textfield.dart';
import 'package:save_bill/presentation/pages/add_customer/widgets/contact_list_widget.dart';
import 'package:save_bill/presentation/widgets/phone_textfield.dart';
import 'package:save_bill/routes/routes.dart';

class AddCustomerPage extends StatefulWidget {
  const AddCustomerPage({Key? key}) : super(key: key);

  @override
  State<AddCustomerPage> createState() => _AddCustomerPageState();
}

class _AddCustomerPageState extends State<AddCustomerPage> {
  late TextEditingController _cntMob;
  late TextEditingController _cntName;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    _cntMob = TextEditingController();
    _cntName = TextEditingController();
    context.read<ContactListBloc>().add(const ContactListEvent.loadContact());
    super.initState();
  }

  @override
  void dispose() {
    _cntMob.dispose();
    _cntName.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<AddCustomerCubit, AddCustomerState>(
      listener: (context, state) {
        if (state is AddCustomerLoading) {
          showLoaderDialog(context);
        }
        if (state is AddCustomerLoaded) {
          Navigator.of(context).pop();
          Navigator.pushNamed(context, Routes.billHome);
        }
        if (state is AddCustomerError) {
          showToast(message: "Something went wrong,please try again later");
        }
      },
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Form(
            key: _formKey,
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
                AddCustomerNameTextField(controller: _cntName),
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
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            FocusScope.of(context).unfocus();
                            context.read<AddCustomerCubit>().addCustomer(
                                name: _cntName.text, phone: _cntMob.text);
                          }
                        },
                        child: const Text("Continue"))),
                Expanded(
                    child: ConatctListWidget(
                        nameController: _cntName, mobController: _cntMob)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
