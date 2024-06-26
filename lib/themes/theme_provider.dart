import 'package:flutter/material.dart';
import 'package:todo_app/themes/dark_mode.dart';
import 'package:todo_app/themes/light_mode.dart';


class ThemeProvider extends ChangeNotifier{

  // initially , light mode
  ThemeData _themeData = lightMode;

  // get theme 
  ThemeData get themeData => _themeData;

  // is dark mode 
  bool get isDarkMode => _themeData== darkMode;

  // set theme 
  set themeData(ThemeData themeData){
    _themeData =themeData;

    // Update UI
    notifyListeners();
  }

  // Toggle theme 
  void toggleTheme(){
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}