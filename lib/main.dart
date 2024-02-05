import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/dev_theme.dart';
import 'package:flutter_application_1/utils/custom_theme.dart';
import 'package:flutter_application_1/view/splash_view.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final themeService = await ThemeService.instance;
  var initTheme = themeService.initial;
  runApp(
    MyApp(
      theme: initTheme,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.theme});
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    return ThemeProvider(
      initTheme: theme,
      duration: const Duration(seconds: 1, milliseconds: 40),
      builder: (p0, theme) => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        home: SplashScreenView(theme: theme),
      ),
    );
  }
}
