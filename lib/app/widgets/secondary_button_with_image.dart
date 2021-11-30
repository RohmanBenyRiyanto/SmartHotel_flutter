import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

import 'package:smart_hotel/app/theme/color.dart';

class Secondary_Button_Img extends StatelessWidget {
  const Secondary_Button_Img({
    Key? key,
    this.text,
    this.icon,
    this.press,
  }) : super(key: key);
  final String? icon;
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50,
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
            primary: color_purple,
            side: BorderSide(color: color_purple, width: 2)),
        onPressed: press as void Function()?,
        child: new Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            SvgPicture.asset(icon!),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                text!,
                style: TextStyle(
                  fontSize: 14,
                  color: color_purple,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
