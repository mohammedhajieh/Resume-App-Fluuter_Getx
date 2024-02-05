import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class MainController extends GetxController {
  var pageController = PageController(initialPage: 0);

  void onNextPage(int page) {
    pageController.animateToPage(
      page,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeOut,
    );
  }
}
