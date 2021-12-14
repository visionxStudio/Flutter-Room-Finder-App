import 'package:flutter/material.dart';
import 'package:roomfinder/src/common/constants/constants.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static bool isLandscape = false;
  static bool isdesktop = false;
  static bool isSmallScreen = false;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;

    isLandscape =
        _mediaQueryData.orientation == Orientation.landscape ? true : false;
    if (screenHeight < kTabletBreakpoint) {
      isSmallScreen = true;
    }
    if (screenWidth > screenHeight && screenWidth > 900) {
      isdesktop = true;
    } else {
      isdesktop = false;
    }
  }
}

/// Get the proportionate height as per screen size
double height(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * screenHeight;
}

/// Get the proportionate height as per screen size
double width(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * screenWidth;
}
