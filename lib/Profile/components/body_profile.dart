import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_hotel/theme/color.dart';

class body_profile extends StatelessWidget {
  static String routeName = "/body_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color_main,
        title: Text(
          'Profile',
          style: TextStyle(
              color: color_white,
              fontFamily: 'Poppins',
              fontSize: 19,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[],
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg/left_arrow.svg',
            height: 20,
            color: color_white,
          ),
          onPressed: () {
            print('BALIK KIRI WAE');
          },
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
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
        ),
      ),
    );
  }
}
