import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_hotel/my_room/components/content_myroom.dart';
import 'package:smart_hotel/my_room/components/hotel_services.dart';
import 'package:smart_hotel/theme/color.dart';
import 'package:smart_hotel/theme/const.dart';

class BodyLampu extends StatelessWidget {
  const BodyLampu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_white,
      body: Container(
        height: 300,
        width: MediaQuery.of(context).size.width,
        color: color_orange,
        child: Center(),
      ),
    );
  }
}
