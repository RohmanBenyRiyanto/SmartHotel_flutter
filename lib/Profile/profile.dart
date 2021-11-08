import 'package:flutter/material.dart';
import 'package:smart_hotel/Profile/components/body_profile.dart';

class profile extends StatelessWidget {
  static String routeName = "/profile";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: SafeArea(
        child: body_profile(),
        bottom: false,
      ),
    );
  }
}
