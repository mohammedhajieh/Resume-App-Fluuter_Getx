import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/splash_controller.dart';
import 'package:flutter_application_1/data/dev_data.dart';
import 'package:flutter_application_1/utils/custom_str.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreenView extends StatelessWidget {
  const SplashScreenView({super.key, required this.theme});
  final ThemeData theme;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: GetBuilder<SplashScreenController>(
        init: SplashScreenController(),
        builder: (controller) {
          bool isDarkMode =
              ThemeModelInheritedNotifier.of(context).theme.brightness ==
                  Brightness.dark;
          return Container(
            color: isDarkMode
                ? theme.scaffoldBackgroundColor
                : theme.scaffoldBackgroundColor,
            child: Stack(
              fit: StackFit.expand,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Lottie.asset(
                      AppStrings.splashScreen,
                      width: controller.animation.value * 375,
                      height: controller.animation.value * 375,
                    ),
                    SizedBox(
                      height: size.height * 0.01,
                    ),
                    Text(
                      DevData.devData.splashName,
                      style: theme.textTheme.displaySmall,
                      textScaler: TextScaler.noScaling,
                    ),
                  ],
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
