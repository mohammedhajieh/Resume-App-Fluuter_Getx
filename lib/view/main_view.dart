import 'package:animated_theme_switcher/animated_theme_switcher.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/controller/main_controller.dart';
import 'package:flutter_application_1/view/fifth_view.dart';
import 'package:flutter_application_1/view/first_view.dart';
import 'package:flutter_application_1/view/fourth_view.dart';
import 'package:flutter_application_1/view/second_view.dart';
import 'package:flutter_application_1/view/third_view.dart';
import 'package:get/get.dart';

class MainView extends StatelessWidget {
  const MainView({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GetBuilder<MainController>(
      init: MainController(),
      builder: (controller) => SizedBox(
        width: size.width,
        height: size.height,
        child: PageView(
          controller: controller.pageController,
          scrollDirection: Axis.vertical,
          children: [
            /// First View
            ThemeSwitchingArea(
              child: FirstView(
                nextPage: () => controller.onNextPage(1),
              ),
            ),

            /// Second View
            ThemeSwitchingArea(
              child: SecondView(
                backPage: () => controller.onNextPage(0),
                nextPage: () => controller.onNextPage(2),
              ),
            ),

            /// Third View
            ThemeSwitchingArea(
              child: ThirdView(
                backPage: () => controller.onNextPage(1),
                nextPage: () => controller.onNextPage(3),
              ),
            ),

            /// Fourth View
            ThemeSwitchingArea(
              child: FourthView(
                backPage: () => controller.onNextPage(2),
                nextPage: () => controller.onNextPage(4),
              ),
            ),

            /// Fifth View
            ThemeSwitchingArea(
              child: FifthView(
                backPage: () => controller.onNextPage(3),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
