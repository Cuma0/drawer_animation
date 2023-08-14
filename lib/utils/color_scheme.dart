import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instace;
  static ColorSchemeLight? get instance {
    _instace ??= ColorSchemeLight._init();
    return _instace;
  }

  ColorSchemeLight._init();

  final Color lightBlue = const Color(0xff91A9EF);
  final Color blue = const Color(0xff38519C);
  final Color darkBlue = const Color(0xff071B52);
  final Color white = const Color(0xffF2F2F5);
}
