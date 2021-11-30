import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

import '../models/cards_upcoming_model.dart';

class ScheduleCarousel extends StatelessWidget {
  const ScheduleCarousel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: KPadding),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Upcoming Schedule',
                style: TextStyle(
                  color: color_black,
                  fontFamily: 'Poppins',
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              TextButton(
                style: ButtonStyle(
                  overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent.withOpacity(0)),
                ),
                child: Text(
                  'See all',
                  style: TextStyle(
                    color: color_purple,
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                onPressed: () {
                  print('Lihat Semua');
                },
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            print("Lihat jadwal");
          },
          child: SizedBox(
            height: 121,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 16),
              scrollDirection: Axis.horizontal,
              itemCount: upcommings.length,
              itemBuilder: (BuildContext context, int index) {
                Upcomming upcomming = upcommings[index];
                return Container(
                  margin: EdgeInsets.only(left: 16, top: 10, bottom: 10),
                  padding: EdgeInsets.all(10),
                  width: 240,
                  decoration: BoxDecoration(
                    color: color_white,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0.0, 2.0),
                        blurRadius: 6.0,
                      ),
                    ],
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 105.0,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.only(bottom: 8),
                              child: Text(
                                upcomming.header_upcom,
                                style: TextStyle(
                                  color: color_black,
                                  fontFamily: 'Poppins',
                                  fontSize: 20,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(right: 8),
                                  child: SvgPicture.asset(
                                    'assets/svg/location.svg',
                                    width: 11,
                                  ),
                                ),
                                Text(
                                  upcomming.kota,
                                  style: TextStyle(
                                    color: color_abu,
                                    fontFamily: 'Poppins',
                                    fontSize: 11,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          color: color_white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black26,
                              offset: Offset(0.0, 2.0),
                              blurRadius: 6.0,
                            ),
                          ],
                        ),
                        child: Stack(
                          children: <Widget>[
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Image(
                                height: 83.22,
                                width: 92.1,
                                image: AssetImage(upcomming.imageUrl),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
