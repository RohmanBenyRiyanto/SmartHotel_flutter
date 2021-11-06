// @dart=2.9

import 'package:flutter/material.dart';
import 'package:smart_hotel/Profile/profile.dart';
import 'package:smart_hotel/home/home.dart';
import 'package:smart_hotel/routes.dart';

import 'home/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart Hotel',
      // home: SplashScreen(),
      // We use routeName so that we dont need to remember the name
<<<<<<< HEAD
      initialRoute: Home.routeName,
=======
      initialRoute: profile.routeName,
>>>>>>> f4516157eae8c4a19d25fdadcd177cdf0fedc42b
      routes: routes,
    );
  }
}
