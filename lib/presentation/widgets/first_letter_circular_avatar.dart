import 'package:flutter/material.dart';
import 'package:save_bill/presentation/functions.dart';

class FirstLetterCircularAvatar extends StatelessWidget {
  const FirstLetterCircularAvatar({
    Key? key,
    required this.name,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.blue,
      child: Text(
        getFirstLetterFromName(name),
        style: Theme.of(context)
            .textTheme
            .subtitle1!
            .copyWith(color: Colors.white, fontWeight: FontWeight.bold),
      ),
    );
  }
}