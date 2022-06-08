import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'widgets/amount_textfield.dart';
import 'widgets/attach_bills.dart';
import 'widgets/attach_chips_list.dart';
import 'widgets/calender_dropdown.dart';
import 'widgets/details_textfield.dart';

class AddBill extends StatefulWidget {
  final bool isGave;
  const AddBill({Key? key, this.isGave = false}) : super(key: key);

  @override
  State<AddBill> createState() => _AddBillState();
}

class _AddBillState extends State<AddBill> {
  late Color mainColor;
  late Color appBarColor;
  late TextEditingController _cntPrice;
  late TextEditingController _cntDetails;
  late bool _isTap;
  @override
  void initState() {
    mainColor = widget.isGave ? MetaColor.gaveColor : MetaColor.getColor;
    _cntPrice = TextEditingController();
    _cntDetails = TextEditingController();
    _isTap = false;
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
                      onPressed: () {},
                      child: const Text("Save"),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
