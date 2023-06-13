import 'package:flutter/material.dart';

class CouterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }

  void resetCounter() {
    _counter = 0;
    notifyListeners();
  }

  void decrementCounter() {
    _counter--;
    notifyListeners();
  }
}
