import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_hotel/my_room/components/body_lampu.dart';
import 'package:smart_hotel/my_room/components/body_my_room.dart';
import 'package:smart_hotel/theme/color.dart';

class Lampu extends StatelessWidget {
  static String routeName = "/lampu";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: color_grey_bg,
        title: Text(
          'My Room',
          style: TextStyle(
              color: color_purple,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[],
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(2),
            child: SvgPicture.asset(
              'assets/svg/left_arrow.svg',
              height: 16,
              color: color_purple,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
            print('Back Clicked');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: BodyLampu(),
        bottom: false,
      ),
    );
  }
}
