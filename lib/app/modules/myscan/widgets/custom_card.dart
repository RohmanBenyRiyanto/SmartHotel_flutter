import 'package:flutter/material.dart';

import 'package:smart_hotel/app/theme/color.dart';

// ignore_for_file: file_names

class CustomCard extends StatelessWidget {
  const CustomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 10,
        top: 90,
        right: 10,
      ),
      width: double.infinity,
      child: Card(
          child: Padding(
        padding: EdgeInsets.only(
          top: 30,
          bottom: 10,
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(
                bottom: 80,
                top: 70,
              ),
              child: Image(
                image: AssetImage('assets/sad.png'),
                width: 145,
              ),
            ),
            Text(
              'Anda tidak memiliki pesanan di Smotel',
              style: TextStyle(
                color: color_abu,
                fontFamily: 'Poppins',
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      )),
    );
  }
}
