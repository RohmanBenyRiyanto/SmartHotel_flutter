import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_hotel/app/modules/signin/widgets/body.dart';

import '../controllers/signin_controller.dart';

class SigninView extends GetView<SigninController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: body(),
        bottom: false,
      ),
    );
  }
}
