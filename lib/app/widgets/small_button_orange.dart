import 'package:flutter/material.dart';

import 'package:smart_hotel/app/theme/color.dart';

class SmallButtonOrange extends StatelessWidget {
  const SmallButtonOrange({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
          primary: Colors.white,
          backgroundColor: color_orange,
        ),
        onPressed: press as void Function()?,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 12,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
