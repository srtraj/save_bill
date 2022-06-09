import 'package:flutter/material.dart';

class WhatsappReminderBillDesign extends StatelessWidget {
  const WhatsappReminderBillDesign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              "Payment Reminder for",
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "₹ 50",
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text("on 08 jun 22",
                style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey)),
            SizedBox(
              height: 15,
            ),
            Text("sent by Sharath",
                style: TextStyle(fontSize: 14, color: Colors.black)),
            SizedBox(
              height: 5,
            ),
            Text("8157898849",
                style: TextStyle(fontSize: 12, color: Colors.black))
          ],
        ),
      ),
    );
  }
}
