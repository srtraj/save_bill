import 'package:flutter/material.dart';

class CircularImageWidget extends StatelessWidget {
  const CircularImageWidget(
      {Key? key, required this.imageProvider, this.radius = 40})
      : super(key: key);
  final ImageProvider imageProvider;
  final double radius;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius,
      height: radius,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(120.0)),
        image: DecorationImage(
          image: imageProvider,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
