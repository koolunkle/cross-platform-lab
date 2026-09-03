import 'package:flutter/material.dart';

class ChangeNotifierCounterViewmodel extends ChangeNotifier {
  int count = 0;

  ChangeNotifierCounterViewmodel();

  void countUp() {
    count++;
    notifyListeners();
  }

  void countDown() {
    count--;
    notifyListeners();
  }
}
