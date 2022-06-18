import 'package:flutter/material.dart';

Map<int, Color> _swatchOpacity = {
  50: const Color.fromRGBO(176, 135, 21, .1),
  100: const Color.fromRGBO(176, 135, 21, .2),
  200: const Color.fromRGBO(176, 135, 21, .3),
  300: const Color.fromRGBO(176, 135, 21, .4),
  400: const Color.fromRGBO(176, 135, 21, .5),
  500: const Color.fromRGBO(176, 135, 21, .6),
  600: const Color.fromRGBO(176, 135, 21, .7),
  700: const Color.fromRGBO(176, 135, 21, .8),
  800: const Color.fromRGBO(176, 135, 21, .9),
  900: const Color.fromRGBO(176, 135, 21, 1),
};

abstract class CustomColors {
  static Color customConstractColor = Colors.black;
  static MaterialColor customSwatchColor =
      MaterialColor(0xFFB08715, _swatchOpacity);
}
