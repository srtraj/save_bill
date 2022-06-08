import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

getFirstLetterFromName(String name) {
  return name.split(" ").map((String e) => e[0]).join();
}

showTaost({required String message}) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 16.0);
}

isNumeric(String str) {
  return double.parse(str);
}

