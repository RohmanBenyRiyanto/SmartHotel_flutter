import 'package:flutter/material.dart';
import '../widgets/body_singup.dart';
import 'package:get/get.dart';

import '../controllers/signup_controller.dart';

class SignupView extends GetView<SignupController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: body_singup(),
        bottom: false,
      ),
    );
  }
}
