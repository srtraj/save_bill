import 'package:flutter/material.dart';

class PinField extends StatefulWidget {
  final int numberOfField;
  final List values;
  const PinField({Key? key, this.numberOfField = 4, required this.values})
      : super(key: key);

  @override
  State<PinField> createState() => _PinFieldState();
}

class _PinFieldState extends State<PinField> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final wt = constraints.maxWidth / 100;
      final padding = wt * 1.5;
      final fieldWidth = (wt * 100 / widget.numberOfField) - (2 * padding);
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            children: List.generate(
              widget.numberOfField,
              (index) => Padding(
                padding: EdgeInsets.all(padding),
                child: Container(
                  height: fieldWidth,
                  width: fieldWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(),
                  ),
                  child: Center(
                    child: Text(
                      index >= widget.values.length ? "" : widget.values[index],
                      style: Theme.of(context)
                          .textTheme
                          .headline6!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      );
    });
  }
}
