import 'package:flutter/widgets.dart';

class AppController extends ChangeNotifier{
  static AppController instance = AppController();

  bool isDarkTheme= false;
  changeTheme() {
    isDarkTheme = !isDarkTheme;
    notifyListeners();
  }
}