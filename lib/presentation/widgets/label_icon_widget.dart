import 'package:flutter/material.dart';

class LableIconWidget extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final Axis axis;
  const LableIconWidget(
      {Key? key,
      required this.icon,
      required this.label,
      this.axis = Axis.vertical})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return axis == Axis.vertical
        ? Column(mainAxisSize: MainAxisSize.min, children: [label,
      const SizedBox(
        height: 5,
      ),
      icon])
        : Row(mainAxisSize: MainAxisSize.min, children: [label,
      const SizedBox(
        width: 5,
      ),
      icon]);
  }
}
