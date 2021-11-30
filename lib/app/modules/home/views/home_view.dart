import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:smart_hotel/app/theme/color.dart';

import '../controllers/home_controller.dart';
import '../widgets/header.dart';
import '../widgets/promo_carousel.dart';
import '../widgets/schedule_carousel.dart';
import '../widgets/sekitar_anda.dart';

class HomeView extends GetView<HomeController> {
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
            SizedBox(
              height: 25,
            ),
          ],
        ),
        bottom: false,
      ),
    );
  }
}
