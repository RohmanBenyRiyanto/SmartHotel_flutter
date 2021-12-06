import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/modules/home/controllers/home_controller.dart';
import 'package:smart_hotel/app/routes/app_pages.dart';
import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

import '../models/sekitar_model.dart';

class CardsSekitarAnda extends GetView<HomeController> {
  const CardsSekitarAnda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 10),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: KPadding),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Sekitar Anda',
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
            height: 340,
            child: ListView.builder(
              padding: EdgeInsets.only(right: 16, bottom: 0),
              scrollDirection: Axis.horizontal,
              itemCount: sekitar.length,
              itemBuilder: (BuildContext context, int index) {
                Sekitar sekitars = sekitar[index];
                return Container(
                  margin: EdgeInsets.only(left: 16, top: 10, bottom: 10),
                  width: 250,
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
                        top: 167,
                        child: Container(
                          width: 250.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: 10, right: 10, top: 14, bottom: 14),
                            child: Column(
                              children: <Widget>[
                                GestureDetector(
                                  onTap: () => print(sekitars.namaHotel),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        sekitars.namaHotel,
                                        style: TextStyle(
                                            color: color_black,
                                            fontFamily: 'Poppins',
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600,
                                            height: 1.2),
                                        maxLines: 2,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            sekitars.rating,
                                            style: TextStyle(
                                              color: color_black,
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          Padding(
                                            padding: EdgeInsets.only(left: 5),
                                            child: SvgPicture.asset(
                                              'assets/svg/star.svg',
                                              width: 11,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                GestureDetector(
                                  onTap: () => print(sekitars.kota),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(right: 5),
                                        child: SvgPicture.asset(
                                          'assets/svg/location.svg',
                                          width: 11,
                                        ),
                                      ),
                                      Text(
                                        sekitars.kota,
                                        style: TextStyle(
                                          color: color_abu,
                                          fontFamily: 'Poppins',
                                          fontSize: 11,
                                          fontWeight: FontWeight.w400,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Mulai dari',
                                    style: TextStyle(
                                      color: color_black,
                                      fontFamily: 'Poppins',
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: 16),
                                      child: Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(right: 5),
                                            child: Text(
                                              'Rp.',
                                              style: TextStyle(
                                                color: color_orange,
                                                fontFamily: 'Poppins',
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                          ),
                                          Text(
                                            sekitars.harga,
                                            style: TextStyle(
                                              color: color_orange,
                                              fontFamily: 'Poppins',
                                              fontSize: 16,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    // ignore: deprecated_member_use
                                    SizedBox(
                                      height: 32,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(7)),
                                          primary: color_white,
                                          backgroundColor: color_orange,
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              left: 5.0, right: 5.0),
                                          child: Text(
                                            'Pilih Kamar',
                                            style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontSize: 12,
                                              fontWeight: FontWeight.w500,
                                            ),
                                          ),
                                        ),
                                        onPressed: () {
                                          print('Pilih Kamar');
                                          Get.toNamed(Routes.DETAIL_HOTEL);
                                        },
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Get.toNamed(Routes.DETAIL_HOTEL),
                        child: Container(
                          width: 250,
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
                                  width: 250,
                                  height: 167,
                                  image: AssetImage(sekitars.imageUrl),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
