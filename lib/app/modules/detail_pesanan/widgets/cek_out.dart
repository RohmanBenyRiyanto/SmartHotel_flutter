import 'package:flutter/material.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

class CekOut extends StatelessWidget {
  final String labelText;
  final String tanggal;
  final String bln_thn;
  final BoxDecoration decoration;
  const CekOut(
      {required this.labelText,
      required this.tanggal,
      required this.bln_thn,
      required this.decoration});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 127.5),
      child: Stack(
        children: <Widget>[
          Container(
            height: 335,
          ),
          Positioned(
            bottom: 0,
            child: Container(
              width: 95.5,
              height: 85,
              decoration: decoration,
              child: Column(
                children: [
                  Container(
                    child: Text(
                      tanggal,
                      style: TextStyle(
                        color: color_black,
                        fontFamily: 'Poppins',
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    child: Text(
                      bln_thn,
                      style: TextStyle(
                        color: color_black,
                        fontFamily: 'Poppins',
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 13.5,
            bottom: 77.0,
            child: Container(
              color: Colors.white,
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5),
                child: Text(
                  labelText,
                  style: TextStyle(
                    color: color_purple,
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
