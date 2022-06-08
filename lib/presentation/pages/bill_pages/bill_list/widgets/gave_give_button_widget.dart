import 'package:flutter/material.dart';
import 'package:save_bill/core/meta_colors.dart';
import 'package:save_bill/routes/route_arguments.dart';
import 'package:save_bill/routes/routes.dart';

class GaveGiveButtonWidget extends StatelessWidget {
  const GaveGiveButtonWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.addBill,
                  arguments: AddBillArguement(isGave: true)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MetaColor.gaveColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Center(
                  child: Text(
                    "Gave",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: GestureDetector(
              onTap: () => Navigator.pushNamed(context, Routes.addBill,
                  arguments: AddBillArguement(isGave: false)),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: MetaColor.getColor,
                ),
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Center(
                  child: Text(
                    "Get",
                    style: Theme.of(context)
                        .textTheme
                        .headline6!
                        .copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
