import 'package:flutter/material.dart';

class IconLabelWidget extends StatelessWidget {
  final Widget icon;
  final Widget label;
  final Axis axis;
  const IconLabelWidget(
      {Key? key,
      required this.icon,
      required this.label,
      this.axis = Axis.vertical})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
  
    return axis == Axis.vertical
        ? Column(mainAxisSize: MainAxisSize.min, children: [icon,
      const SizedBox(
        height: 5,
      ),
      label])
        : Row(mainAxisSize: MainAxisSize.min, children: [icon,
      const SizedBox(
        width: 5,
      ),
      label]);
  }
}
