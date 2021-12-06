import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:dotted_line/dotted_line.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:switcher_button/switcher_button.dart';

import 'package:smart_hotel/app/theme/color.dart';
import 'package:smart_hotel/app/theme/const.dart';

import '../widgets/costum_slider.dart';

// import 'package:flutter/cupertino.dart';
// import 'package:awesome_slider/awesome_slider.dart';

// ignore: must_be_immutable
class BodyLampu extends StatefulWidget {
  BodyLampu({Key? key}) : super(key: key);

  @override
  State<BodyLampu> createState() => _BodyLampuState();
}

class _BodyLampuState extends State<BodyLampu> {
  Color _color = Colors.white;
  double valueOnTextWidget = 0.0;
  Color color = color_main;
  bool onoff = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color_white,
      body: Column(
        children: <Widget>[
          Container(
            height: 300,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: color_grey_bg,
              border: Border(
                bottom: BorderSide(width: 1.5, color: color_off),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  onoff
                      ? 'assets/images/lampu_mati.png'
                      : 'assets/images/lampu_hidup.png',
                  height: 155,
                ),
                SizedBox(
                  height: 25,
                ),
                SwitcherButton(
                  size: 47,
                  onColor: color_off,
                  offColor: color_main,
                  value: onoff,
                  onChange: (value) => setState(() => this.onoff = value),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  onoff ? 'Click to turn on' : 'Click to turn off',
                  style: TextStyle(
                    color: onoff ? color_off : color_main,
                    fontFamily: 'Poppins',
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16, top: 11),
                child: Text(
                  'Kecerahan',
                  style: TextStyle(
                    color: color_black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: KPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '0%',
                      style: TextStyle(
                        color: onoff ? color_main : color_grey,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      valueOnTextWidget.round().toString() + '%',
                      style: TextStyle(
                        color: onoff ? color_off : color_main,
                        fontSize: 15,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              IgnorePointer(
                ignoring: onoff,
                child: Slider(
                  value: valueOnTextWidget,
                  min: 0.0,
                  max: 100.0,
                  activeColor: onoff ? color_off : color,
                  onChanged: (double value) {
                    setState(
                      () {
                        valueOnTextWidget = value;
                      },
                    );
                  },
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0, right: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Warna',
                  style: TextStyle(
                    color: color_black,
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                IgnorePointer(
                  ignoring: onoff,
                  child: GestureDetector(
                    onTap: () => pickColor(context),
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: onoff ? color_off : color,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 1.5, color: color_off),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Restart lampu untuk menerapkan\nwarna.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: color_abu,
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget buildColorPicker() => ColorPicker(
        enableAlpha: false,
        // ignore: deprecated_member_use
        showLabel: false,
        pickerColor: color,
        portraitOnly: true,
        onColorChanged: (color) => this.color = color,
      );

  void pickColor(BuildContext context) => showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            'Pilih warna lampumu',
            style: TextStyle(
                color: color_black,
                fontSize: 18,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildColorPicker(),
              // ignore: deprecated_member_use
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  splashFactory: NoSplash.splashFactory,
                  primary: color_white,
                  elevation: 0,
                ),
                child: Center(
                  child: Text(
                    'Pilih',
                    style: TextStyle(
                        color: color_black,
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500),
                  ),
                ),
                onPressed: () => Navigator.of(context).pop(),
              ),
            ],
          ),
        ),
      );
}
