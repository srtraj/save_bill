import 'package:flutter/material.dart';

import 'package:save_bill/presentation/widgets/icon_label_widget.dart';

class BillReportRemindBar extends StatelessWidget {
  const BillReportRemindBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: const [
            Expanded(
              child: IconLabelWidget(
                  icon: Icon(
                    Icons.currency_rupee_rounded,
                    color: Colors.blue,
                  ),
                  label: "Report"),
            ),
            Expanded(
              child: IconLabelWidget(
                  icon: Icon(
                    Icons.whatsapp,
                    color: Colors.green,
                  ),
                  label: "Remind"),
            )
          ],
        ),
      ),
    );
  }
}