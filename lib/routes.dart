import 'package:flutter/widgets.dart';
import 'package:smart_hotel/home/home.dart';
import 'package:smart_hotel/sign/forgot_password/search_account.dart';
import 'package:smart_hotel/sign/sign_in/sign_in.dart';
import 'package:smart_hotel/sign/sign_up/sign_up.dart';
import 'package:smart_hotel/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignIn.routeName: (context) => SignIn(),
  SignUp.routeName: (context) => SignUp(),
  SearchAccount.routeName: (context) => SearchAccount(),
  Home.routeName: (context) => Home(),
};