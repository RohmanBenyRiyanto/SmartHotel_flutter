import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/widgets/small_button.dart';

class NewPassowordView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: SingleChildScrollView(
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
                        'Kami bisa mencoba\nmemverifikasi identitas Anda\ndengan pertanyaan rahasia',
                        style: TextStyle(
                            color: color_heading_1,
                            fontFamily: 'Poppins',
                            fontSize: 17,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(bottom: 10),
                      child: SvgPicture.asset(
                        'assets/svg/question.svg',
                        height: 100,
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
                  padding: EdgeInsets.only(left: 16, right: 35),
                  child: Text(
                    'Saat mengkonfigurasi akun Smotel, Anda memilih dan menjawab dua pertanyaan rahasia. Jawab kedua pertanyaan dengan tepat untuk mengakses akun Anda',
                    style: TextStyle(
                        color: color_abu,
                        fontFamily: 'Poppins',
                        fontSize: 12,
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
                    labelText: "Nama Hewan Peliharaan Anda?",
                    labelStyle: TextStyle(
                        color: color_abu,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                    hintText: "Jawab",
                    focusColor: color_main,
                    hintStyle: TextStyle(
                        color: color_abu,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                          right: 18, top: 10, bottom: 10, left: 10),
                      child: SvgPicture.asset('assets/svg/show_psswrd.svg'),
                    ),
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
              Padding(
                padding: EdgeInsets.only(left: 16, right: 16),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Dimana Kota Kelahiran Anda?",
                    labelStyle: TextStyle(
                        color: color_abu,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400),
                    hintText: "Jawab",
                    focusColor: color_main,
                    hintStyle: TextStyle(
                        color: color_abu,
                        fontSize: 18,
                        fontWeight: FontWeight.w400),
                    floatingLabelBehavior: FloatingLabelBehavior.always,
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(
                          right: 18, top: 10, bottom: 10, left: 10),
                      child: SvgPicture.asset('assets/svg/show_psswrd.svg'),
                    ),
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
                  text: "Konfirmasi",
                  press: () {},
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
