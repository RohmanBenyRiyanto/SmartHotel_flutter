import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:smart_hotel/sign/sign_in/sign_in.dart';
import 'package:smart_hotel/theme/color.dart';

class SplashScreen extends StatefulWidget {
  static String routeName = "/splashscreen";
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //This is logic change page
  // void initState() {
  //   super.initState();
  //   Timer(Duration(seconds: 3), (){
  //     Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => SignIn()));
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [color_main, color_blue],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/svg/logo.svg',
                width: 200,
                height: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'SMOTEL',
                style: TextStyle(
                  color: color_purple,
                  fontFamily: 'Poppins',
                  fontSize: 28,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
