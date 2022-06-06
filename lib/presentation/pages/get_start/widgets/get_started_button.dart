import 'package:flutter/material.dart';
import 'package:save_bill/routes/routes.dart';

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({Key? key}) : super(key: key);

  @override
  State<GetStartedButton> createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offset;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 1000));

    _offset = Tween<Offset>(begin: const Offset(0.3, 0), end: Offset.zero)
        .animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.repeat(reverse: true);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.phoneVerification);
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Get Started  ",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                    fontWeight: FontWeight.bold, color: Colors.white70),
              ),
              SlideTransition(
                position: _offset,
                child: Text(
                  ">>>",
                  style: Theme.of(context)
                      .textTheme
                      .headline6!
                      .copyWith(color: Colors.white70),
                ),
              ),
            ],
          ),
        ));
  }
}
