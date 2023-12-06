import 'package:flutter/material.dart';

class AppColors {
  static Color p1 = const Color.fromARGB(255, 0, 44, 79);
  static Color background = Colors.black;
  static Color widget2 = Colors.green;
  static Color widget1 = Colors.red;

  static Color widget3 = const Color.fromARGB(255, 127, 18, 146);
  static Color widget4 = const Color.fromARGB(255, 226, 226, 36);
  static LinearGradient gradient = const LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      Color.fromRGBO(22, 31, 49, 0.10),
      Color.fromRGBO(69, 192, 141, 0.10)
    ],
  );
}
