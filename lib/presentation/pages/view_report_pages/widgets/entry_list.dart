import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:save_bill/core/meta_colors.dart';

import 'view_report_tile.dart';

class EntryListWidget extends StatelessWidget {
  const EntryListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
          children: List.generate(
        50,
        (index) => Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ViewReportTileWidget(
            widget1: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Jithesh$index",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                const SizedBox(height: 5),
                Text(
                  DateFormat('dd MMMM yy - hh:mm aaa').format(
                    DateTime.now(),
                  ),
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
            widget2: Text(
              "₹ 60007",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: MetaColor.billColor),
            ),
            widget3: Text(
              "₹ 307",
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge!
                  .copyWith(color: MetaColor.recievedColor),
            ),
          ),
        ),
      )),
    );
  }
}

