import 'package:flutter/material.dart';

import 'package:badges/badges.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/controllers/auth_controller.dart';
import 'package:smart_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

final authController = Get.find<AuthController>();

class HeaderWithSearchBox extends GetView<HomeController> {
  const HeaderWithSearchBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    int countThisNotification = 1;
    return Container(
      height: size.height * 0.3,
      child: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(left: KPadding, right: 28),
            height: size.height * 0.3 - 27,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [color_main, color_blue],
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Row(
              children: <Widget>[
                Text(
                  "Cari Smotelmu\nSekarang",
                  style: TextStyle(
                    color: color_white,
                    fontFamily: 'Poppins',
                    fontSize: 28,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Spacer(),
                Container(
                  margin: EdgeInsets.only(bottom: 21),
                  child: GestureDetector(
                    onTap: () {
                      print("Notification");
                    },
                    child: Badge(
                      padding: EdgeInsets.all(3),
                      badgeColor: color_orange,
                      shape: BadgeShape.circle,
                      position: BadgePosition.topEnd(),
                      badgeContent: Text(
                        //backend create logic notification
                        '$countThisNotification',
                        style: TextStyle(
                          color: color_white,
                          fontFamily: 'Poppins',
                          fontSize: 9,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      child: SvgPicture.asset(
                        "assets/svg/lonceng.svg",
                        height: 24,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              alignment: Alignment.center,
              margin: EdgeInsets.symmetric(horizontal: KPadding),
              padding: EdgeInsets.symmetric(horizontal: 8),
              height: 54,
              decoration: BoxDecoration(
                color: color_white,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 10),
                    blurRadius: 50,
                    color: color_purple.withOpacity(0.23),
                  ),
                ],
              ),
              child: Row(
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10.0),
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Cari Smotelmu",
                          hintStyle: TextStyle(
                            color: color_abu,
                            fontFamily: 'Poppins',
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () => print('test'),
                    child: SvgPicture.asset("assets/svg/mini_search.svg"),
                    style: ElevatedButton.styleFrom(
                      shape: CircleBorder(),
                      primary: color_orange,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
    // ],
    // );
  }
}
