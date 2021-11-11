


import 'package:flutter/material.dart';
import 'package:smart_hotel/Profile/components/header_profile.dart';
import 'package:smart_hotel/my_room/components/header.dart';
import 'package:smart_hotel/theme/color.dart';

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
