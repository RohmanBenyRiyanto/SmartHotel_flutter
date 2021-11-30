import 'package:flutter/material.dart';

import 'package:smart_hotel/app/theme/color.dart';

ThemeData theme() {
  return ThemeData(
    inputDecorationTheme: newMethod(),
  );
}

InputDecorationTheme newMethod() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(6),
    borderSide: BorderSide(color: color_abu),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}
