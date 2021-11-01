import 'package:flutter/material.dart';

import 'components/body.dart';

class SignIn extends StatelessWidget {
  static String routeName = "/sign_in";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: body(),
      ),
    );
  }
}
