import 'package:flutter/material.dart';
import '../widgets/header.dart';
import 'package:smart_hotel/app/theme/color.dart';

class BodyMyRoom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_grey_bg,
      body: SafeArea(
        child: HeaderMyRoom(),
      ),
    );
  }
}
