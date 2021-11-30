import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_hotel/app/controllers/auth_controller.dart';

class SigninController extends GetxController {
  final authController = Get.find<AuthController>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  var email = '';
  var password = '';

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassowrd(String value) {
    if (value.isEmpty) {
      return "Password required";
    }
    return null;
  }

  void checkForm() async {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      authController.signIn(emailController.text, passController.text);
    }
    loginFormKey.currentState!.save();
  }
}
