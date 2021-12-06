import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

import '../widgets/body_ac.dart';
import '../widgets/lampu.dart';

class hotel_services extends StatelessWidget {
  const hotel_services({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.symmetric(horizontal: KPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hotel Service',
            style: TextStyle(
              color: color_black,
              fontFamily: 'Poppins',
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Lampu()),
                  );
                  print('Lamp Clicked');
                },
                child: Container(
                  height: 140,
                  width: 157,
                  decoration: BoxDecoration(
                    color: color_purple_muda,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 9.5,
                        right: 0,
                        child: Image.asset(
                          'assets/images/il_lampu.png',
                          height: 92.5,
                        ),
                      ),
                      Positioned(
                        top: 85.0,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Lampu',
                              style: TextStyle(
                                color: color_purple,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                Text(
                                  'Color',
                                  style: TextStyle(
                                    color: color_purple,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Container(
                                  height: 13,
                                  width: 13,
                                  decoration: BoxDecoration(
                                    color: color_red,
                                    borderRadius: BorderRadius.circular(2),
                                    border: Border.all(
                                      color: color_white,
                                      width: 1,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 35,
                                ),
                                SvgPicture.asset(
                                  'assets/svg/ic_kecerahan.svg',
                                  height: 15,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '100' + '%',
                                  style: TextStyle(
                                    color: color_purple,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                width: 10,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BodyAc()),
                  );
                  print("AC clicked");
                },
                child: Container(
                  height: 140,
                  width: 157,
                  decoration: BoxDecoration(
                    color: color_orange_muda,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 9.5,
                        right: 0,
                        child: Image.asset(
                          'assets/images/il_ac.png',
                          height: 92.5,
                        ),
                      ),
                      Positioned(
                        top: 85.0,
                        left: 10,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'AC',
                              style: TextStyle(
                                color: color_orange,
                                fontFamily: 'Poppins',
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Row(
                              children: [
                                SvgPicture.asset(
                                  'assets/svg/ic_suhu.svg',
                                  height: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  '12' + '°C',
                                  style: TextStyle(
                                    color: color_orange,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                SizedBox(
                                  width: 30.0,
                                ),
                                SvgPicture.asset(
                                  'assets/svg/ic_cool.svg',
                                  height: 13,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Cooling',
                                  style: TextStyle(
                                    color: color_orange,
                                    fontFamily: 'Poppins',
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
