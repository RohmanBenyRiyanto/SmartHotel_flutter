import 'package:flutter/material.dart';

import 'package:smart_hotel/app/theme/color.dart';

import '../widgets/header.dart';

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
