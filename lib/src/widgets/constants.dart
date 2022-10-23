import 'package:flutter/material.dart';

// main colors used in app.
const Color kColorPrimaryBlue = Color(0xFF0055A6);
const Color kColorPrimaryGrey = Color(0xFF808080);
const Color kColorSecondaryGrey = Color(0xFF4E4E4E);

// configuration for device screen.
class SizeConfig {
  static double screenWidth = 0;
  static double screenHeight = 0;
  static double scaleX = 1;
  static double scaleY = 1;

  void init(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    screenWidth = screenSize.width;
    screenHeight = screenSize.height;

    const designSize = Size(1125, 2436);
    scaleX = screenWidth / designSize.width;
    scaleY = screenHeight / designSize.height;
  }
}
