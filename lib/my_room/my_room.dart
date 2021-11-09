import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_hotel/my_room/components/body_my_room.dart';
import 'package:smart_hotel/theme/color.dart';

class MyRoom extends StatelessWidget {
  static String routeName = "/my_room";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        backgroundColor: color_main,
        title: Text(
          'My Room',
          style: TextStyle(
              color: color_white,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8),
            child: IconButton(
              icon: Container(
                child: SvgPicture.asset(
                  'assets/svg/ic_pesan.svg',
                  height: 20,
                  color: color_white,
                ),
              ),
              onPressed: () {
                print('Pesan');
              },
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
          ),
        ],
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(2),
            child: SvgPicture.asset(
              'assets/svg/left_arrow.svg',
              height: 16,
              color: color_white,
            ),
          ),
          onPressed: () {
            print('BALIK KIRI WAE');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: BodyMyRoom(),
        bottom: false,
      ),
    );
  }
}
