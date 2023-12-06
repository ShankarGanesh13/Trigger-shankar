import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trigger/services/shared_preference_service.dart';

class HomeScreenProvider extends ChangeNotifier {
  int successCount = 0;
  int randomNumber = 0;
  bool? success;

  void incrementSuccessCount() {
    successCount++;
    SharedPreferencesService.saveSuccessCount(successCount: successCount);
    notifyListeners();
  }

  Future<void> loadSuccessCount() async {
    successCount = await SharedPreferencesService.loadSuccessCount();
    notifyListeners();
  }

  void generateRandomNumber() {
    randomNumber = Random().nextInt(60);
    int currentSeconds = int.parse(DateFormat('ss').format(DateTime.now()));
    if (currentSeconds == randomNumber) {
      incrementSuccessCount();
      success = true;
    } else {
      success = false;
    }
    notifyListeners();
  }
}
