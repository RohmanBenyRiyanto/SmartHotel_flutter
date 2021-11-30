import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

import '../widgets/content_myroom.dart';
import '../widgets/hotel_services.dart';

class HeaderMyRoom extends StatelessWidget {
  const HeaderMyRoom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_white,
      body: ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: myroomcontent.length,
        itemBuilder: (BuildContext context, int index) {
          MyRoomContent myroomcontents = myroomcontent[index];
          return Column(
            children: [
              Container(
                height: 263,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 0,
                      left: 0,
                      child: Container(
                        height: 187,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [color_main, color_blue],
                          ),
                        ),
                        child: Image.asset(
                          'assets/images/il_header_my_room.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 35,
                      left: 16,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                'Hi!',
                                style: TextStyle(
                                  color: color_white,
                                  fontFamily: 'Poppins',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 5.0),
                                child: Text(
                                  myroomcontents.nickname,
                                  style: TextStyle(
                                    color: color_white,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'Selamat datang di Kamar ' +
                                myroomcontents.NoKamar +
                                '!',
                            style: TextStyle(
                              color: color_white,
                              fontFamily: 'Poppins',
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          Text(
                            'Nikmati dan kontrol kamarmu melalui Smotel\napp! Enjoy it!',
                            style: TextStyle(
                              color: color_white,
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.w300,
                            ),
                          )
                        ],
                      ),
                    ),
                    new Positioned(
                      left: KPadding,
                      top: 148,
                      right: KPadding,
                      child: new Container(
                        height: 98.0,
                        decoration: new BoxDecoration(
                          color: color_white,
                          borderRadius: BorderRadius.circular(18),
                          boxShadow: [
                            BoxShadow(
                              offset: Offset(1, 5),
                              blurRadius: 22,
                              color: color_black.withOpacity(0.15),
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(12),
                          child: new Row(
                            children: [
                              Container(
                                height: 69,
                                width: 65,
                                decoration: new BoxDecoration(
                                  color: color_orange_muda,
                                  borderRadius: BorderRadius.circular(9),
                                ),
                                child: Center(
                                  child: Text(
                                    myroomcontents.NoKamar,
                                    style: TextStyle(
                                      color: color_orange,
                                      fontFamily: 'Poppins',
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            myroomcontents.fullname,
                                            style: TextStyle(
                                              color: color_black,
                                              fontFamily: 'Poppins',
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 3,
                                          ),
                                          Text(
                                            myroomcontents.IdPemesanan,
                                            style: TextStyle(
                                              color: color_abu,
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 30,
                                      ),
                                      SvgPicture.asset(
                                        myroomcontents.QrCode,
                                        height: 35,
                                        width: 35,
                                      ),
                                    ],
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          SvgPicture.asset(
                                            'assets/svg/ic_box_arrow_in_down.svg',
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(
                                              left: 8.0,
                                              top: 6.0,
                                            ),
                                            child: Text(
                                              myroomcontents.CheckInTgl +
                                                  ' ' +
                                                  myroomcontents.CheckInDate,
                                              style: TextStyle(
                                                color: color_purple,
                                                fontFamily: 'Poppins',
                                                fontSize: 11,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(
                                          top: 8,
                                          left: 50,
                                        ),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            SvgPicture.asset(
                                              'assets/svg/ic_box_arrow_in_up.svg',
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                left: 8.0,
                                                bottom: 3.5,
                                              ),
                                              child: Text(
                                                myroomcontents.CheckOuttTgl +
                                                    ' ' +
                                                    myroomcontents.CheckOuDate,
                                                style: TextStyle(
                                                  color: color_purple,
                                                  fontFamily: 'Poppins',
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w300,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              hotel_services(),
            ],
          );
        },
      ),
    );
  }
}
