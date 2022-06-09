import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'widgets/bill_app_bar.dart';
import 'widgets/bill_list_widget.dart';
import 'widgets/bill_report_remind_bar.dart';
import 'widgets/gave_got_button_widget.dart';

class BillHome extends StatelessWidget {
  const BillHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MetaColor.grey,
      appBar: const BillAppBar(),
      body: Column(
        children: const [
          BillReportRemindBar(),
          BillListWidget(),
          GaveGotButtonWidget()
        ],
      ),
    );
  }
}
