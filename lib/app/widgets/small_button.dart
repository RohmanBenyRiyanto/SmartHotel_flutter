import 'package:flutter/material.dart';

import 'package:smart_hotel/app/theme/color.dart';

class SmallButton extends StatelessWidget {
  const SmallButton({
    Key? key,
    this.text,
    this.press,
  }) : super(key: key);
  final String? text;
  final Function? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
          primary: Colors.white,
          backgroundColor: color_purple,
        ),
        onPressed: press as void Function()?,
        child: Padding(
          padding: EdgeInsets.only(left: 20.0, right: 20.0),
          child: Text(
            text!,
            style: TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500),
          ),
        ),
      ),
    );
  }
}
