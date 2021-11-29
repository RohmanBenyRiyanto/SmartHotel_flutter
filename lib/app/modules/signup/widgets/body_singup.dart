import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/signup_form.dart';
import 'package:smart_hotel/app/theme/color.dart';

class body_singup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child: Padding(
            padding: EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: SvgPicture.asset(
                    'assets/svg/logo.svg',
                    width: 60.0,
                    // height: 70.0,
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  alignment: Alignment.topLeft,
                  child: Text(
                    'Buat Akun Smotelmu\nSekarang!',
                    style: TextStyle(
                      color: color_white,
                      fontSize: 28,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  // height: 380,
                  // width: 380,
                  decoration: BoxDecoration(
                    color: color_white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 30,
                      ),
                      SignUpForm()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
