import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_hotel/app/controllers/auth_controller.dart';

class SignupController extends GetxController {
  final authController = Get.find<AuthController>();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController passCController = TextEditingController();
  var email = '';
  var password = '';
  var passwordC = '';

  @override
  void onClose() {
    super.onClose();
    emailController.dispose();
    passController.dispose();
    passCController.dispose();
  }

  String? validateEmail(String value) {
    if (!GetUtils.isEmail(value)) {
      return "Provide valid Email";
    }
    return null;
  }

  String? validatePassword(String value) {
    if (value.length <= 8) {
      return "Password must be of 8 character";
    }
    return null;
  }

  String? comparePassword(String value) {
    if (value.isEmpty) {
      return "Password must be confirm";
    } else if (value != passController.text) {
      return "Password confirmation does not match!";
    }
    return null;
  }

  void checkForm() async {
    final isValid = loginFormKey.currentState!.validate();
    if (!isValid) {
      return;
    } else {
      authController.signUp(emailController.text, passController.text);
    }
    loginFormKey.currentState!.save();
  }
}
