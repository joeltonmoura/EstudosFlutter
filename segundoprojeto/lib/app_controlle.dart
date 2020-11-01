import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool isdartThem = false;

  changeTeme() {
    isdartThem = !isdartThem;

    notifyListeners();
  }
}
