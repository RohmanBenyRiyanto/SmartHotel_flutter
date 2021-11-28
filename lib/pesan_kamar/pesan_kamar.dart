import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:smart_hotel/pesan_kamar/components/body_pesan_kamar.dart';
import 'package:smart_hotel/theme/color.dart';

class PesanKamar extends StatelessWidget {
  static String routeName = "/pesan_kamar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_main,
      extendBody: true,
      appBar: AppBar(
        backgroundColor: color_main,
        title: Text(
          'Konfirmasi Pesanan',
          style: TextStyle(
              color: color_white,
              fontFamily: 'Poppins',
              fontSize: 18,
              fontWeight: FontWeight.w500),
        ),
        actions: <Widget>[],
        leading: IconButton(
          icon: Container(
            padding: const EdgeInsets.all(2),
            child: SvgPicture.asset(
              'assets/svg/left_arrow.svg',
              height: 16,
              color: color_white,
            ),
          ),
          onPressed: () {
            Navigator.pop(context);
            print('Back Clicked');
          },
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
        ),
        elevation: 0,
        centerTitle: true,
      ),
      body: SafeArea(
        child: BodyMyRoom(),
        bottom: false,
      ),
    );
  }
}
