import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:save_bill/core/meta_colors.dart';

class BillTile extends StatelessWidget {
  const BillTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    DateFormat('dd MMMM yy - hh:mm aaa').format(
                      DateTime.now(),
                    ),
                    style: Theme.of(context).textTheme.labelSmall,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Details",
                    style: Theme.of(context).textTheme.bodyMedium,
                  )
                ],
              ),
            ),
            const Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  "₹ 100",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MetaColor.billColor,
                  ),
                ),
              ),
            ),
            const Expanded(
              flex: 1,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text(
                  "₹ 100",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: MetaColor.recievedColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
