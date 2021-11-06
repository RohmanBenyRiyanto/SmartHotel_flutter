import 'package:flutter/material.dart';
import 'package:smart_hotel/home/widgets/header.dart';
import 'package:smart_hotel/home/widgets/promo_carousel.dart';
import 'package:smart_hotel/home/widgets/schedule_carousel.dart';
import 'package:smart_hotel/home/widgets/sekitar_anda.dart';
import 'package:smart_hotel/theme/color.dart';

class Home extends StatelessWidget {
  

  static String routeName = "/home";
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      extendBody: true,
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
            SizedBox(
              height: 5,
            ),
            CardsSekitarAnda(),
          ],
        ),
        bottom: false,
      ),
      floatingActionButton:
          FloatingActionButton(onPressed: () {}, child: Icon(Icons.qr_code)),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 6,
        color: color_main,
        elevation: 0,
        child: Container(
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Icon(
                  Icons.home,
                  size: 40.0,
                ),
                Icon(
                  Icons.home,
                  size: 40.0,
                ),
                SizedBox.shrink(),
                Icon(
                  Icons.home,
                  size: 40.0,
                ),
                Icon(
                  Icons.home,
                  size: 40.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
