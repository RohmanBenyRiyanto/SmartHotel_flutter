import 'package:flutter/material.dart';
import 'header_profile.dart';
import 'package:smart_hotel/app/theme/color.dart';

class body_profile extends StatelessWidget {
  static String routeName = "/body_profile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_grey_bg,
      body: SafeArea(
        child: HeaderProfile(),
      ),
    );
  }
}
