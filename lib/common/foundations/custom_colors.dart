import 'package:flutter/material.dart';

const Map<int, Color> _swatchOpacity = {
  50: Color.fromRGBO(46, 125, 50, .1),
  100: Color.fromRGBO(46, 125, 50, .1),
  200: Color.fromRGBO(46, 125, 50, .1),
  300: Color.fromRGBO(46, 125, 50, .1),
  400: Color.fromRGBO(46, 125, 50, .1),
  500: Color.fromRGBO(46, 125, 50, .1),
  600: Color.fromRGBO(46, 125, 50, .1),
  700: Color.fromRGBO(46, 125, 50, .1),
  800: Color.fromRGBO(46, 125, 50, .1),
  900: Color.fromRGBO(46, 125, 50, .1),
};

abstract class CustomColors {
  static Color primaryColor = Colors.green.shade800;
  static Color secondaryColor = Colors.red.shade600;
  static const MaterialColor customColorSwatch = MaterialColor(0xFF2e7d32, _swatchOpacity);
}
