import 'dart:ui';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_hotel/app/modules/detail_hotel/widgets/detail_pembayaran.dart';
import 'package:smart_hotel/app/modules/detail_pesanan/views/detail_pesanan_view.dart';
import 'package:smart_hotel/app/modules/myscan/views/myscan_view.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/widgets/default_button.dart';

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
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.only(left: 16.0, right: 16, top: 16, bottom: 24),
        child: Column(
          children: [
            Container(
                padding:
                    EdgeInsets.only(top: 24, right: 16, bottom: 24, left: 16),
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
                                    height: 120.0,
                                    width: 120.0,
                                    image: AssetImage(
                                        "assets/images/hotel_two.png"),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            left: 210.0,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom: 8, left: 16, right: 10),
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
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () => {
                              // pickBookingFromDate(context),
                            },
                            child: Container(
                              padding: EdgeInsets.only(
                                  left: 10.0,
                                  right: 10.0,
                                  top: 8.0,
                                  bottom: 8.0),
                              height: 45.0,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: color_main,
                                borderRadius: BorderRadius.circular(7.0),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Icon(
                                    Icons.date_range_outlined,
                                    size: 18,
                                    color: color_white,
                                  ),
                                  Text(
                                    'Minggu, 30 Oktober 2021',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      color: color_white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w300,
                                    ),
                                  ),
                                  Icon(
                                    Icons.loop,
                                    size: 18,
                                    color: color_white,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: color_main,
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.date_range_outlined,
                                  size: 18,
                                  color: color_white,
                                ),
                                Text(
                                  'Senin, 1 November 2021',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: color_white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.loop,
                                  size: 18,
                                  color: color_white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: color_main,
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.group,
                                  size: 18,
                                  color: color_white,
                                ),
                                Text(
                                  '3 Orang',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: color_white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 18,
                                  color: color_white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: color_main,
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.hotel,
                                  size: 18,
                                  color: color_white,
                                ),
                                Text(
                                  '2 Bed',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: color_white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 18,
                                  color: color_white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            padding: EdgeInsets.only(
                                left: 10.0, right: 10.0, top: 8.0, bottom: 8.0),
                            height: 45.0,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: color_main,
                              borderRadius: BorderRadius.circular(7.0),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(
                                  Icons.meeting_room_outlined,
                                  size: 18,
                                  color: color_white,
                                ),
                                Text(
                                  'Deluxe Room No.230',
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    color: color_white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w300,
                                  ),
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  size: 18,
                                  color: color_white,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            height: 50.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child: ElevatedButton(
                              style: ButtonStyle(
                                foregroundColor:
                                    MaterialStateProperty.all<Color>(
                                        Colors.white),
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        color_orange),
                                shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                ),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailPesananView()),
                                );
                              },
                              child: Text(
                                'Pesan',
                                style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
            SizedBox(
              width: 16,
            ),
          ],
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
