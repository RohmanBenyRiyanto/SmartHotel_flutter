// @dart=2.9

import 'package:flutter/material.dart';
import 'package:smart_hotel/routes.dart';
import 'package:smart_hotel/sign/forgot_password/new_password.dart';
import 'package:smart_hotel/sign/forgot_password/password_hint.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: NewPassword.routeName,
      routes: routes,
    );
  }
}
