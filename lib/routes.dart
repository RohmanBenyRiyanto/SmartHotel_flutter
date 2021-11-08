import 'package:flutter/widgets.dart';
import 'package:smart_hotel/Profile/profile.dart';
import 'package:smart_hotel/bottom_bar/bottom_bar.dart';
import 'package:smart_hotel/detail_pesanan/detail_pesanan_succes.dart';
import 'package:smart_hotel/home/home.dart';
import 'package:smart_hotel/sign/forgot_password/new_password.dart';
import 'package:smart_hotel/sign/forgot_password/password_hint.dart';
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
  PasswordHint.routeName: (context) => PasswordHint(),
  NewPassword.routeName: (context) => NewPassword(),
  profile.routeName: (context) => profile(),
  DetailPesananSucces.routeName: (context) => DetailPesananSucces(),
};
