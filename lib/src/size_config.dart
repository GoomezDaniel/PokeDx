import 'package:flutter/material.dart';

/// Clase que devuelve los valores de pantalla para configurar los elementos
class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  // 812 is the layout height that designer use
  return (inputHeight / 812.0) * SizeConfig.screenHeight;
}

// Get the proportionate width as per screen size
double getProportionateScreenWidth(double inputWidth) {
  // 375 is the layout width that designer use
  return (inputWidth / 375.0) * SizeConfig.screenWidth;
}

/// Get the proportionate height
double screenHeight() {
  return SizeConfig.screenHeight;
}

/// Get the proportionate width
double screenWidth() {
  return SizeConfig.screenWidth;
}
