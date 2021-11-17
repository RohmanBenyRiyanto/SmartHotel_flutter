import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../widgets/body_profile.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
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
      body: SafeArea(
        child: body_profile(),
        bottom: false,
      ),
    );
  }
}
