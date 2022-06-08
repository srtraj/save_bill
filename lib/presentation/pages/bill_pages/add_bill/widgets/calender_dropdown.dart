import 'package:flutter/material.dart';

class CalenderDropdownWidget extends StatelessWidget {
  const CalenderDropdownWidget({
    Key? key,
    required this.mainColor,
  }) : super(key: key);

  final Color mainColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding:
            const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        child: Row(
          children: [
            Icon(
              Icons.calendar_month_outlined,
              color: mainColor,
            ),
            const SizedBox(
              width: 5,
            ),
            const Text("07 jun 22"),
            const SizedBox(
              width: 5,
            ),
            Icon(
              Icons.arrow_drop_down,
              color: mainColor,
            ),
          ],
        ),
      ),
    );
  }
}

