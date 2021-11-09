// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_hotel/routes.dart';
import 'package:smart_hotel/theme/color.dart';

import 'bottom_bar/bottom_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: color_status,
      ),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Hotel',
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
      initialRoute: BottomNaviBar.routeName,
      routes: routes,
    );
  }
}
