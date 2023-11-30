import 'package:flutter/material.dart';

abstract class SizeConfig {
  // Radius
  static const double radiusSmall = 10;
  static const double radiusDefault = 20;

  // Spacing
  static const double spacingSmall = 5;
  static const double spacingDefault = 10;
  static const double spacingBig = 18;

  // Font
  static const double fontSmall = 10;
  static const double fontDefault = 16;
  static const double fontBig = 20;
  static const double fontExtraBig = 45;

  // Icon
  static const double iconSmall = 10;
  static const double iconDefault = 20;
  static const double iconBig = 40;

  // Screen
  static double maxHeightScreen(BuildContext context) => MediaQuery.of(context).size.height;

  static double maxWidthScreen(BuildContext context) => MediaQuery.of(context).size.width;

  static const double screenSmall = 600;
  static const double screenNormal = 1000;
}
