import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:smart_hotel/app/theme/color.dart';

class BodyMyRoom extends StatelessWidget {
  static String routeName = "/body_my_room";
  DateTime bookingFrom = DateTime.now();

  String getDateText() {
    if (bookingFrom == null || bookingFrom == DateTime.now()) {
      return DateTime.now().toString();
    } else {
      return '${bookingFrom.day}, ${bookingFrom.day} ${bookingFrom.month} ${bookingFrom.year}';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16, top: 16),
        child: Column(
          children: [
            Container(
                padding:
                    EdgeInsets.only(top: 20, right: 30, bottom: 45, left: 30),
                width: double.infinity,
                decoration: new BoxDecoration(
                  color: color_white,
                  borderRadius: BorderRadius.circular(9),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      child: Row(
                        children: <Widget>[
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
                                    height: 120,
                                    width: 200,
                                    image: AssetImage(
                                        "assets/images/hotel_two.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 215.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 8, left: 20, right: 20),
                                  child: Text(
                                    "Smotel \nPancoran",
                                    style: TextStyle(
                                      color: color_black,
                                      fontFamily: 'Poppins',
                                      fontSize: 28,
                                      fontWeight: FontWeight.w800,
                                      height: 1.3,
                                      letterSpacing: 1,
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Padding(
                                      padding:
                                          EdgeInsets.only(right: 8, left: 20),
                                      child: SvgPicture.asset(
                                        'assets/svg/location.svg',
                                        width: 11,
                                      ),
                                    ),
                                    Text(
                                      "Kota Jakarta Selatan",
                                      style: TextStyle(
                                        color: color_black,
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
                        ],
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 20),
                        child: Column(children: <Widget>[
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text("ID Pemesanan",
                                style: TextStyle(
                                  color: color_purple,
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                )),
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(top: 8, bottom: 10),
                                child: Text(
                                  "XCSXJXNJSCCH123432",
                                  style: TextStyle(
                                    color: color_purple,
                                    fontFamily: 'Poppins',
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )),
                          )
                        ])),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                              minWidth: double.infinity,
                              color: color_main,
                              onPressed: () => {
                                    pickBookingFromDate(context),
                                  },
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 8.0, bottom: 8, left: 15, right: 8),
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.date_range_outlined,
                                            color: color_white,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            'Minggu, 30 Oktober 2021',
                                            style: TextStyle(
                                                color: color_white,
                                                fontSize: 18.0),
                                          )),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.loop,
                                            color: color_white,
                                          )),
                                    ],
                                  )),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                              minWidth: double.infinity,
                              color: color_main,
                              onPressed: () => {},
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 8.0, bottom: 8, left: 15, right: 8),
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.date_range_outlined,
                                            color: color_white,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            "Senin, 1 November 2021",
                                            style: TextStyle(
                                                color: color_white,
                                                fontSize: 18.0),
                                          )),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.loop,
                                            color: color_white,
                                          )),
                                    ],
                                  )),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                              minWidth: double.infinity,
                              color: color_main,
                              onPressed: () => {},
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 8.0, bottom: 8, left: 15, right: 8),
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.group,
                                            color: color_white,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            "3 Orang",
                                            style: TextStyle(
                                                color: color_white,
                                                fontSize: 18.0),
                                          )),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            color: color_white,
                                          )),
                                    ],
                                  )),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                              minWidth: double.infinity,
                              color: color_main,
                              onPressed: () => {},
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 8.0, bottom: 8, left: 15, right: 8),
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.hotel,
                                            color: color_white,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            "2 Bed",
                                            style: TextStyle(
                                                color: color_white,
                                                fontSize: 18.0),
                                          )),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            color: color_white,
                                          )),
                                    ],
                                  )),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                              minWidth: double.infinity,
                              color: color_main,
                              onPressed: () => {},
                              child: Container(
                                  padding: EdgeInsets.only(
                                      top: 8.0, bottom: 8, left: 15, right: 8),
                                  child: Stack(
                                    children: [
                                      Align(
                                          alignment: Alignment.centerLeft,
                                          child: Icon(
                                            Icons.meeting_room_outlined,
                                            color: color_white,
                                          )),
                                      Container(
                                          alignment: Alignment.centerLeft,
                                          margin:
                                              const EdgeInsets.only(left: 50.0),
                                          child: Text(
                                            "Deluxe Room  No.230",
                                            style: TextStyle(
                                                color: color_white,
                                                fontSize: 18.0),
                                          )),
                                      Align(
                                          alignment: Alignment.centerRight,
                                          child: Icon(
                                            Icons.arrow_drop_down,
                                            color: color_white,
                                          )),
                                    ],
                                  )),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 15, bottom: 15),
                      child: Column(
                        children: [
                          MaterialButton(
                              minWidth: double.infinity,
                              color: color_orange,
                              onPressed: () => {},
                              child: Container(
                                  child: Stack(
                                children: [
                                  Container(
                                      margin: const EdgeInsets.only(
                                          top: 15.0, bottom: 15),
                                      child: Text(
                                        "Pesan",
                                        style: TextStyle(
                                          color: color_white,
                                          fontSize: 18.0,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      )),
                                ],
                              )),
                              shape: new RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(10.0))),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              width: 16,
            ),
          ],
          // children: [
          //   TextFormField(
          //     decoration: InputDecoration(
          //       labelText: "Email *",
          //       labelStyle: TextStyle(
          //           color: color_abu,
          //           fontSize: 20,
          //           fontFamily: 'Poppins',
          //           fontWeight: FontWeight.w600),
          //       hintText: "Input Your Email",
          //       focusColor: color_main,
          //       hintStyle: TextStyle(
          //           color: color_abu,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w400),
          //       floatingLabelBehavior: FloatingLabelBehavior.always,
          //       contentPadding:
          //           EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(6),
          //         borderSide: BorderSide(color: color_abu),
          //         gapPadding: 10,
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(6),
          //         borderSide: BorderSide(color: color_purple),
          //         gapPadding: 10,
          //       ),
          //     ),
          //   ),
          //   SizedBox(
          //     height: 30,
          //   ),
          //   TextFormField(
          //     decoration: InputDecoration(
          //       labelText: "Password *",
          //       labelStyle: TextStyle(
          //           color: color_abu,
          //           fontSize: 20,
          //           fontFamily: 'Poppins',
          //           fontWeight: FontWeight.w600),
          //       hintText: "Input Your Password",
          //       focusColor: color_main,
          //       hintStyle: TextStyle(
          //           color: color_abu,
          //           fontSize: 18,
          //           fontWeight: FontWeight.w400),
          //       floatingLabelBehavior: FloatingLabelBehavior.always,
          //       suffixIcon: Padding(
          //         padding:
          //             EdgeInsets.only(right: 18, top: 10, bottom: 10, left: 10),
          //         child: SvgPicture.asset('assets/svg/show_psswrd.svg'),
          //       ),
          //       contentPadding:
          //           EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          //       enabledBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(6),
          //         borderSide: BorderSide(color: color_abu),
          //         gapPadding: 10,
          //       ),
          //       focusedBorder: OutlineInputBorder(
          //         borderRadius: BorderRadius.circular(6),
          //         borderSide: BorderSide(color: color_purple),
          //         gapPadding: 10,
          //       ),
          //     ),
          //   ),
          //   SizedBox(
          //     height: 10,
          //   ),
          //   Container(
          //     alignment: Alignment.topRight,
          //     child: RichText(
          //       text: TextSpan(
          //         children: [
          //           new TextSpan(
          //             text: 'Lupa password?',
          //             style: TextStyle(
          //               color: color_purple,
          //               fontFamily: 'Poppins',
          //               fontSize: 14,
          //               fontWeight: FontWeight.w500,
          //             ),
          //             recognizer: TapGestureRecognizer()
          //               ..onTap = () {
          //                 print('SAYA LUPA AWOKWOKWOWK');
          //               },
          //           ),
          //         ],
          //       ),
          //     ),
          //   ),
          //   SizedBox(
          //     height: 20,
          //   ),
          //   DefaultButton(
          //     text: "Sign in",
          //     press: () {},
          //   ),
          //   SizedBox(
          //     height: 20,
          //   ),
          //   Secondary_Button_Img(
          //     icon: "assets/svg/logo_google.svg",
          //     text: "Sign in with Google",
          //     press: () {},
          //   ),
          //   SizedBox(
          //     height: 15,
          //   ),
          //   Row(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: [
          //       Text(
          //         'Belum Punya Akun? ',
          //         style: TextStyle(
          //           color: color_abu,
          //           fontFamily: 'Poppins',
          //           fontSize: 14,
          //           fontWeight: FontWeight.w500,
          //         ),
          //       ),
          //       RichText(
          //         text: TextSpan(
          //           children: [
          //             new TextSpan(
          //               text: 'Sign Up',
          //               style: TextStyle(
          //                 color: color_purple,
          //                 fontFamily: 'Poppins',
          //                 fontSize: 16,
          //                 fontWeight: FontWeight.w600,
          //               ),
          //               recognizer: TapGestureRecognizer()
          //                 ..onTap = () {
          //                   print('DAFTAR COK');
          //                 },
          //             ),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // ],
        ),
      ),
    );
  }

  Future pickBookingFromDate(BuildContext context) async {
    final initDate = DateTime.now();
    final newDate = await showDatePicker(
      context: context,
      initialDate: initDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().day + 7),
    );
  }
}
