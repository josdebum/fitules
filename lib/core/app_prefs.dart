import "package:shared_preferences/shared_preferences.dart";

// App Preferences and Settings
class AppPreferences {
  static const themeSetting = "THEMESETTING";


  static setThemePref(bool value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(themeSetting, value);
  }

  static Future<bool> getTheme() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(themeSetting) ?? false;
  }


}
