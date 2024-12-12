import 'package:flutter/material.dart';
import 'package:notes/theme/theme.dart';

class ThemeProvider with ChangeNotifier {
  // initially theme is light mode
  ThemeData _themeData = lightMode;

  // getter method to access the theme from main.dart ThemeProvider
  ThemeData get themeData => _themeData;

  // getter method if dark mode is on
  bool get isDarkMode => _themeData == darkMode;

  // setter method to set the new theme
  set themeData(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();
  }

  // toggle theme switch method
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
