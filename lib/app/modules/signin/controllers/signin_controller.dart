import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_hotel/app/controllers/auth_controller.dart';

class SigninController extends GetxController {
  //TODO: Implement SigninController
  final authController = Get.find<AuthController>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void onClose() {
    emailController.dispose();
    passController.dispose();
    super.onClose();
  }
}
