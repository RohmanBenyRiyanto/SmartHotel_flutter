import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/widgets/small_button.dart';

import '../controllers/forgetpassword_controller.dart';

class ForgetpasswordView extends GetView<ForgetpasswordController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: color_white,
      appBar: AppBar(
        backgroundColor: color_white,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/svg/left_arrow.svg',
            height: 20,
          ),
          onPressed: () {
            Get.back();
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'Temukan Akun\nSmotel Anda',
                          style: TextStyle(
                              color: color_heading_1,
                              fontFamily: 'Poppins',
                              fontSize: 28,
                              fontWeight: FontWeight.w700),
                        ),
                      ),
                      Container(
                        child: SvgPicture.asset(
                          'assets/svg/search.svg',
                          height: 125,
                          // height: 70.0,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Text(
                      'Masukkan email anda untuk mencari\nakun Anda.',
                      style: TextStyle(
                          color: color_abu,
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16, right: 16),
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Contoh : example@gmail.com",
                      focusColor: color_main,
                      hintStyle: TextStyle(
                          color: color_abu,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                      floatingLabelBehavior: FloatingLabelBehavior.always,
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: color_abu),
                        gapPadding: 10,
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6),
                        borderSide: BorderSide(color: color_purple),
                        gapPadding: 10,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  padding: EdgeInsets.only(right: 16),
                  alignment: Alignment.centerRight,
                  child: SmallButton(
                    text: "Cari",
                    press: () {},
                  ),
                )
              ],
            ),
          ),
        ),
        bottom: false,
      ),
    );
  }
}
