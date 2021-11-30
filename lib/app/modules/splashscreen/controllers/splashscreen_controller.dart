import 'dart:async';

import 'package:get/get.dart';

import 'package:smart_hotel/app/routes/app_pages.dart';

class SplashscreenController extends GetxController {
  //TODO: Implement SplashscreenController
  @override
  void onReady() {
    super.onReady();
    splash();
  }

  Future<void> splash() async {
    Timer(Duration(seconds: 4), () {
      Get.offAllNamed(Routes.SIGNIN);
    });
  }
}
