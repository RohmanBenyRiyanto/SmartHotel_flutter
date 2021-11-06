import 'package:flutter/material.dart';
import 'package:smart_hotel/home/widgets/header.dart';
import 'package:smart_hotel/home/widgets/promo_carousel.dart';
import 'package:smart_hotel/home/widgets/schedule_carousel.dart';
import 'package:smart_hotel/theme/color.dart';
import 'package:smart_hotel/theme/const.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: color_white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            HeaderWithSearchBox(size: size),
            SizedBox(
              height: 10,
            ),
            //tampil tidaknya cards upcoming tergantung ada tidaknya jadwal
            Visibility(visible: true, child: ScheduleCarousel()),
            SizedBox(
              height: 5,
            ),
            Visibility(visible: true, child: Promo_carousel()),
          ],
        ),
      ),
    );
  }
}
