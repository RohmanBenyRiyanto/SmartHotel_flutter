import 'package:flutter/material.dart';

class LogoImage extends StatelessWidget {
  const LogoImage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
            width: double.infinity,
      height: 138,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
        Image.asset(
          'assets/logo1.png',
          width: 170,
        ),
      ]),
    );
  }
}