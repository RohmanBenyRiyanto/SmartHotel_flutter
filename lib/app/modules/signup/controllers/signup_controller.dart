import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smart_hotel/app/controllers/auth_controller.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController
  final authController = Get.find<AuthController>();

  TextEditingController usernameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  void onClose() {
    usernameController.dispose();
    emailController.dispose();
    passController.dispose();
    super.onClose();
  }
}
