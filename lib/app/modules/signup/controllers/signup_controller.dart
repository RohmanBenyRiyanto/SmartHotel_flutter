import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  //TODO: Implement SignupController

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
