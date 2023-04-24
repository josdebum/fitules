

// Change Notifier for App Theme
import 'package:fitules/core/app_prefs.dart';
import 'package:flutter/material.dart';

class ThemeNotifier extends ChangeNotifier {
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  ThemeNotifier() {
    _darkTheme;
    loadFromPrefs();
  }

  toggleTheme() {
    _darkTheme = !_darkTheme;
    saveToPrefs();
    notifyListeners();
  }

  loadFromPrefs() async {
    _darkTheme = await AppPreferences.getTheme();
    notifyListeners();
  }

  saveToPrefs() async {
    AppPreferences.setThemePref(darkTheme);
  }
}
