import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier{
  ThemeMode currentTheme = ThemeMode.light;

  void changeTheme(ThemeMode newTheme){
    currentTheme = newTheme;
    notifyListeners();
  }

  bool isDarkEnables() {
    return currentTheme==ThemeMode.dark;
  }

}