import 'dart:ui' as ui;

import 'package:flutter/material.dart';

class PlaceInfo {
  final String namePromo;
  final String date;
  final Color startColor;
  final Color endColor;
  final String iconPromo;

  PlaceInfo(this.namePromo, this.startColor, this.endColor, this.date,
      this.iconPromo);
}

class CustomCardShapePainter extends CustomPainter {
  final double radius;
  final Color startColor;
  final Color endColor;

  CustomCardShapePainter(this.radius, this.startColor, this.endColor);

  @override
  void paint(Canvas canvas, Size size) {
    var radius = 10.0;

    var paint = Paint();

    paint.shader = ui.Gradient.linear(
        Offset(0, 0), Offset(size.width, size.height), [
      HSLColor.fromColor(startColor).withLightness(0.8).toColor(),
      endColor
    ]);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
