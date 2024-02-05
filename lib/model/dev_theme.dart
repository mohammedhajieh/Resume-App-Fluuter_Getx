import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/custom_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeService {
  ThemeService._();

  static late SharedPreferences prefs;
  static ThemeService? _instance;

  static Future<ThemeService> get instance async {
    if (_instance == null) {
      prefs = await SharedPreferences.getInstance();
      _instance = ThemeService._();
    }
    return _instance!;
  }

  final allThemes = <String, ThemeData>{
    'dark': AppTheme.darkTheme,
    'light': AppTheme.lightTheme,
  };

  get initial {
    String? themeName = prefs.getString('theme');
    if (themeName == null) {
      final isPlatformDark =
          WidgetsBinding.instance.platformDispatcher.platformBrightness ==
              Brightness.dark;
      themeName = isPlatformDark ? 'dark' : 'light';
    }
    return allThemes[themeName];
  }

  save(String newThemeName) {
    prefs.setString('theme', newThemeName);
  }

  ThemeData getByName(String name) {
    return allThemes[name]!;
  }
}
