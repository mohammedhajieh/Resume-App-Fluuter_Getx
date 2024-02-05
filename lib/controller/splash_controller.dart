import 'package:flutter/material.dart';
import 'package:flutter_application_1/view/main_view.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController
    with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<double> animation;

  @override
  void onInit() {
    animationInitilization();
    super.onInit();
  }

  animationInitilization() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 11));
    animation = CurvedAnimation(
            parent: animationController, curve: Curves.easeInOutCubicEmphasized)
        .obs
        .value;
    animation.addListener(() => update());
    animationController.forward().whenComplete(() {
      Get.off(() => const MainView());
    });
  }
}
