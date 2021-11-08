// @dart=2.9

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:smart_hotel/detail_pesanan/detail_pesanan_succes.dart';
import 'package:smart_hotel/routes.dart';
import 'package:smart_hotel/splash_screen.dart';
import 'package:smart_hotel/theme/color.dart';

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
      initialRoute: DetailPesananSucces.routeName,
      routes: routes,
    );
  }
}
