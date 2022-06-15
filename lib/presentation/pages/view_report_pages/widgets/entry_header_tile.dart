import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';

import 'view_report_tile.dart';

class EntryHeaderTileWidget extends StatelessWidget {
  const EntryHeaderTileWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(height: 15),
          Row(
            children: const [
              Text(
                "Net Balance",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Spacer(),
              Text(
                "₹ 500",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: MetaColor.billColor),
              )
            ],
          ),
          const Divider(),
          const SizedBox(height: 5),
          ViewReportTileWidget(
            widget1: Text(
              "Total",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            widget2: Text(
              "Bill",
              style: Theme.of(context).textTheme.caption,
            ),
            widget3: Text(
              "Recieved",
              style: Theme.of(context).textTheme.caption,
            ),
          ),
          ViewReportTileWidget(
            widget1: Text(
              "9 Entries",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(fontWeight: FontWeight.bold),
            ),
            widget2: Text(
              "₹ 60007",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(
                      color: MetaColor.billColor,
                      fontWeight: FontWeight.bold),
            ),
            widget3: Text(
              "₹ 307",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(
                      color: MetaColor.recievedColor,
                      fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 5),
          const Divider(),
        ],
      ),
    );
  }
}

