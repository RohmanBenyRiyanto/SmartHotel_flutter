import 'package:flutter/material.dart';
import 'package:smart_hotel/sign/sign_up/components/body_singup.dart';

class SignUp extends StatelessWidget {
  static String routeName = "/sign_in";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: body_singup(),
      ),
    );
  }
}
