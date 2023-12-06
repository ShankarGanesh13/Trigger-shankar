import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trigger/utils/app_fonts.dart';
import 'package:trigger/utils/colors.dart';

class SharedPreferencesService {
  static Future<int> loadSuccessCount() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getInt('successCount') ?? 0;
  }

  static Future<void> saveSuccessCount({required int successCount}) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('successCount', successCount);
  }

  static Future<void> resetScore(BuildContext context) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('successCount', 0);

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 2),
        backgroundColor: AppColors.widget3,
        content: Text(
          "SCORE RESET TO 0",
          style: AppFonts.w500white16,
        ),
        action: SnackBarAction(
          label: 'Dismiss',
          textColor: Colors.white,
          onPressed: () {},
        ),
      ),
    );
  }
}
