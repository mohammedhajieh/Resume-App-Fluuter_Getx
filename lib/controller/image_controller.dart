import 'dart:async';

import 'package:flutter_application_1/utils/custom_str.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ImageController extends GetxController {
  RxInt pos = 0.obs;
  late Timer timer;

  @override
  void onInit() {
    super.onInit();
    timer = Timer.periodic(const Duration(seconds: 15), (timer) {
      pos.value = (pos.value + 1) % photos.length;
    });
  }

  @override
  void onClose() {
    timer.cancel();
    super.onClose();
  }

  List<String> photos = [
    AppStrings.imageUrl,
    AppStrings.imageUrl1,
    AppStrings.imageUrl2,
  ];
}
