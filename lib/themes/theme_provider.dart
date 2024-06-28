import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:todo_app/themes/dark_mode.dart';
import 'package:todo_app/themes/light_mode.dart';


class ThemeProvider extends ChangeNotifier{
  final SharedPreferences _prefs;

  ThemeProvider({required SharedPreferences prefs}) : _prefs = prefs {
    // Load the theme preference from SharedPreferences
    _loadThemePreference();
  }

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
    // Save the settings for the theme 
    _saveThemePreference();
  }

  // Toggle theme 
  void toggleTheme() {
    _themeData = _themeData == ThemeData.light() ? ThemeData.dark() : ThemeData.light();
    _saveThemePreference();
    notifyListeners();
  }

  void _loadThemePreference() {
    final isDarkMode = _prefs.getBool('isDarkMode') ?? false;
    _themeData = isDarkMode ? ThemeData.dark() : ThemeData.light();
    notifyListeners();
  }

   void _saveThemePreference() {
    _prefs.setBool('isDarkMode', _themeData == ThemeData.dark());
  }
}