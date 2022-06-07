import 'package:flutter/material.dart';

class IconLabelWidget extends StatelessWidget {
  final Widget icon;
  final String label;
  const IconLabelWidget({Key? key, required this.icon, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children:  [
        icon,
        const SizedBox(
          height: 5,
        ),
        Text(label)
      ],
    );
  }
}
