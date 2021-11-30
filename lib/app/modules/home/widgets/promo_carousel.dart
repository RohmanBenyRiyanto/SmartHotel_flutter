import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:simple_shadow/simple_shadow.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

import '../models/promo.dart';

class Promo_carousel extends StatelessWidget {
  final double _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    var items = [
      PlaceInfo(
          'Promo Natal',
          Color(0xff6DC8F3),
          Color(0xff73A1F9),
          'Periode pemesanan 25\nDesember - 1 Januari 2022',
          'assets/svg/il_natal.svg'),
      PlaceInfo(
          'Voucher Smotel',
          Color(0xffFFB157),
          Color(0xffFFA057),
          'Periode pemesanan 25\nDesember - 1 Januari 2022',
          'assets/svg/diskon.svg'),
      PlaceInfo(
          'Promo Natal',
          Color(0xffFF5B95),
          Color(0xffF8556D),
          'Periode pemesanan 25\nDesember - 1 Januari 2022',
          'assets/svg/il_natal.svg'),
      PlaceInfo(
          'Voucher Smotel',
          Color(0xffD76EF5),
          Color(0xff8F7AFE),
          'Periode pemesanan 25\nDesember - 1 Januari 2022',
          'assets/svg/diskon.svg'),
      PlaceInfo(
          'Promo Natal',
          Color(0xff42E695),
          Color(0xff3BB2B8),
          'Periode pemesanan 25\nDesember - 1 Januari 2022',
          'assets/svg/il_natal.svg'),
    ];
    return Container(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: KPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Promo',
                  style: TextStyle(
                    color: color_black,
                    fontFamily: 'Poppins',
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 5,
          ),
          GestureDetector(
            onTap: () {
              print("Lihat Promo");
            },
            child: Container(
              height: 111,
              child: ListView.builder(
                padding: EdgeInsets.only(right: 16),
                scrollDirection: Axis.horizontal,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(left: 16, top: 10, bottom: 10),
                    padding: EdgeInsets.all(16),
                    width: 260,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(_borderRadius),
                      gradient: LinearGradient(colors: [
                        items[index].startColor,
                        items[index].endColor,
                      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
                      boxShadow: [
                        BoxShadow(
                          color: items[index].endColor,
                          offset: Offset(0.0, 2.0),
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    items[index].namePromo,
                                    style: TextStyle(
                                      color: color_black,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                      height: 1.3,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 3),
                                    child: Text(
                                      items[index].date,
                                      style: TextStyle(
                                        color: Colors.black54,
                                        fontFamily: 'Poppins',
                                        fontSize: 9,
                                        fontWeight: FontWeight.w400,
                                        height: 1.3,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SimpleShadow(
                              child: SvgPicture.asset(
                                items[index].iconPromo,
                                width: 60,
                              ),
                              opacity: 0.5, // Default: 0.5
                              color: color_black, // Default: Black
                              offset: Offset(5, 5), // Default: Offset(2, 2)
                              sigma: 5, // Defa
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
