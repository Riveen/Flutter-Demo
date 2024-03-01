import 'package:flutter/material.dart';

class UiProvider extends ChangeNotifier {
  bool _isDark = false;
  bool get isDark => _isDark;

  changeTheme() {
    _isDark = !isDark;
    notifyListeners();
  }

  final darkTheme = ThemeData(
      primaryColor: Colors.black12,
      brightness: Brightness.dark,
      primaryColorDark: Colors.black12);

  final lightTheme = ThemeData(
      primaryColor: Colors.white,
      brightness: Brightness.light,
      primaryColorDark: Colors.white);

  init() {
    notifyListeners();
  }
}
