import 'package:flutter/material.dart';

abstract class ColorConfig {
  static const Color primary = Color.fromRGBO(9, 22, 87, 1.0);
  static const Color secondary = Color.fromRGBO(217, 60, 60, 1.0);
  static const Color grey = Color.fromRGBO(159, 156, 162, 1);
  static Color greyOpacity03 = grey.withOpacity(0.3);
  static const Color white = Color.fromRGBO(255, 255, 255, 1);
  static const Color lightGrey = Color.fromRGBO(245, 245, 245, 1);
  static const Color black = Colors.black;
  static Color hoverOpacity = black.withOpacity(0.2);
  static const Color transparent = Colors.transparent;
}
