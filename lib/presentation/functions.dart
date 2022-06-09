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

bool isNumeric(String? s) {
 if (s == null) {
   return false;
 }
 return double.tryParse(s) != null;
}
