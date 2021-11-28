import 'package:flutter/material.dart';
import 'package:smart_hotel/theme/color.dart';

class ButtonOk extends StatelessWidget {
  const ButtonOk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      child: TextButton(
        style: TextButton.styleFrom(
          primary: color_white,
          backgroundColor: color_orange,
        ),
        onPressed: () {
          print('On Click');
        },
        child: Text(
          'Ok',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
