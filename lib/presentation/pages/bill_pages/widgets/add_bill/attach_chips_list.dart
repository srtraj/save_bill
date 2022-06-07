import 'package:flutter/material.dart';

class AttachChipsList extends StatelessWidget {
  const AttachChipsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Wrap(
        spacing: 6.0,
        runSpacing: 6.0,
        children: const <Widget>[
          AttachChips(),
          AttachChips(),
        ],
      ),
    );
  }
}

class AttachChips extends StatelessWidget {
  const AttachChips({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Chip(
      onDeleted: () {},
      deleteIcon: const Icon(
        Icons.clear,
        size: 17,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
      label: const Text(
        "label",
      ),
      elevation: 3,
      shadowColor: Colors.grey[60],
      padding: const EdgeInsets.all(8.0),
    );
  }
}
