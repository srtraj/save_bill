import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'package:save_bill/presentation/pages/bill_pages/bill_list/widgets/whatsapp_reminder_bill_design.dart';
import 'package:save_bill/presentation/pages/bill_pages/function.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'widgets/amount_textfield.dart';
import 'widgets/attach_bills.dart';
import 'widgets/attach_chips_list.dart';
import 'widgets/calender_dropdown.dart';
import 'widgets/details_textfield.dart';

class AddBill extends StatefulWidget {
  final AddBillArguement argument;
  const AddBill({Key? key, required this.argument}) : super(key: key);

  @override
  State<AddBill> createState() => _AddBillState();
}

class _AddBillState extends State<AddBill> {
  late Color mainColor;
  late Color appBarColor;
  late TextEditingController _cntPrice;
  late TextEditingController _cntDetails;
  final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    mainColor =
        widget.argument.isGave ? MetaColor.gaveColor : MetaColor.getColor;
    _cntPrice = TextEditingController();
    _cntDetails = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _cntPrice.dispose();
    _cntDetails.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        iconTheme: IconThemeData(
          color: mainColor, //change your color here
        ),
        elevation: 0,
      ),
      body: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    AmountTextFieldWidget(
                        cntPrice: _cntPrice, mainColor: mainColor),
                    const SizedBox(
                      height: 10,
                    ),
                    DetailsTextFieldWidget(cntDetails: _cntDetails),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        CalenderDropdownWidget(mainColor: mainColor),
                        const Spacer(),
                        AttachBillsWidget(mainColor: mainColor)
                      ],
                    ),
                    const AttachChipsList(),
                    const Spacer(),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: mainColor),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {}
                        },
                        child: const Text("Save"),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
