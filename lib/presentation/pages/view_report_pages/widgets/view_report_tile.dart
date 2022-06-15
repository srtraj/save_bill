import 'package:flutter/material.dart';

class ViewReportTileWidget extends StatelessWidget {
  const ViewReportTileWidget({
    Key? key,
    required this.widget1,
    required this.widget2,
    required this.widget3,
  }) : super(key: key);
  final Widget widget1;
  final Widget widget2;
  final Widget widget3;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 2, child: widget1),
        Expanded(flex: 1, child: widget2),
        Expanded(
          flex: 1,
          child: Align(alignment: Alignment.centerRight, child: widget3),
        ),
      ],
    );
  }
}
