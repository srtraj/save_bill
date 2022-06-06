import 'package:flutter/material.dart';

class CustomKeyboard extends StatefulWidget {
  final ValueSetter onTap;
  const CustomKeyboard({Key? key, required this.onTap}) : super(key: key);

  @override
  State<CustomKeyboard> createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard> {
  final List _keys = [
    ["1", "2", "3"],
    ["4", "5", "6"],
    ["7", "8", "9"],
    ["-", "0", "⌫"]
  ];
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      final wt = constraints.maxWidth / 100;
      final keyWidth = wt * 90 / 3;
      final keyHeight = constraints.maxHeight * 0.9 / 4;

      return Column(
        children: List.generate(
            _keys.length,
            (index) => Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    _keys[index].length,
                    (i) => InkWell(
                      onTap: () {
                        widget.onTap(
                            _keys[index][i] == "⌫" ? "back" : _keys[index][i]);
                      },
                      child: SizedBox(
                        width: keyWidth,
                        height: keyHeight,
                        child: Center(
                          child: Text(
                            _keys[index][i],
                            style: Theme.of(context).textTheme.headline5,
                          ),
                        ),
                      ),
                    ),
                  ),
                )),
      );
    });
  }
}
