import 'package:flutter/material.dart';

class AppFonts {
  static TextStyle getAppFont({
    required FontWeight fontWeight,
    required double fontSize,
    required Color color,
    required double height,
  }) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
      height: height,
    );
  }

  static final w700white20 = getAppFont(
    fontWeight: FontWeight.w700,
    fontSize: 20,
    color: Colors.white,
    height: 1.3,
  );
  static final w600white30 = getAppFont(
    fontWeight: FontWeight.w600,
    fontSize: 30,
    color: Colors.white,
    height: 1,
  );
  static final w700white30 = getAppFont(
    fontWeight: FontWeight.w700,
    fontSize: 26,
    color: Colors.white,
    height: 1,
  );
  static final w500white16 = getAppFont(
    fontWeight: FontWeight.w500,
    fontSize: 16,
    color: Colors.white,
    height: 1,
  );
}
