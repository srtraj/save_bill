import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'package:save_bill/presentation/pages/bill_pages/bill_list/widgets/bill_tile.dart';

class BillListWidget extends StatelessWidget {
  const BillListWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Column(
      children: [
        ColoredBox(
          color: MetaColor.grey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Text(
                    "Entries",
                    style: Theme.of(context).textTheme.caption,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Gave",
                        style: Theme.of(context).textTheme.caption,
                      )),
                ),
                Expanded(
                  flex: 1,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "Get",
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
        Expanded(
          child: ListView.separated(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const BillTile();
            },
            separatorBuilder: (context, index) {
              return const ColoredBox(
                color: MetaColor.grey,
                child: SizedBox(
                  height: 5,
                ),
              );
            },
          ),
        ),
      ],
    ));
  }
}
