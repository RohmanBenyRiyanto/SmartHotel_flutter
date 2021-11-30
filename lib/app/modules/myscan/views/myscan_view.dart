import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/modules/myscan/widgets/Button_OK.dart';
import 'package:smart_hotel/app/modules/myscan/widgets/Custom_Card.dart';
import 'package:smart_hotel/app/modules/myscan/widgets/Logo_Image.dart';
import 'package:smart_hotel/app/theme/color.dart';

import '../controllers/myscan_controller.dart';

class MyscanView extends GetView<MyscanController> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            backgroundColor: color_main,
            title: Text(
              'My Scan',
              style: TextStyle(
                color: color_white,
                fontFamily: 'Poppins',
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            centerTitle: true,
            actions: <Widget>[],
            leading: IconButton(
                icon: Container(
                  padding: EdgeInsets.all(2),
                  child: SvgPicture.asset(
                    'assets/left_arrow.svg',
                    height: 16,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  print('Back');
                }),
            elevation: 0,
          ),
          body: Container(
            color: Color(0xFF7986CB),
            child: Column(
              children: <Widget>[
                // Column 1
                CustomCard(),

                // Column 2
                ButtonOk(),

                // Column 3
                LogoImage(),
              ],
            ),
          )),
    );
  }
}
