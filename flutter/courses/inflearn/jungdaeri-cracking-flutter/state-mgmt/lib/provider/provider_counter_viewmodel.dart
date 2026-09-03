import 'package:flutter/material.dart';

class ProviderCounterViewmodel extends ChangeNotifier {
  int count = 0;

  ProviderCounterViewmodel();

  void countUp() {
    count++;
    notifyListeners();
  }

  void countDown() {
    count--;
    notifyListeners();
  }
}
