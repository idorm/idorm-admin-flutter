import 'dart:ui';

import 'package:flutter/material.dart';

class IDormColors {
  static const Color primary = Color(0xff71A1FE);

  static const Color black = Color(0xff000000);

  static const Color gray1 = Color(0xffF2F5FA);
  static const Color gray2 = Color(0xffE3E1EC);
  static const Color gray3 = Color(0xff9B9B9B);
  static const Color gray4 = Color(0xff5B5B5B);

  static const Color white = Color(0xffffffff);

  static const MaterialColor materialPrimary = MaterialColor(
    0xff71A1FE,
    <int, Color>{
      50: Color(0xff71A1FE),
      100: Color(0xff71A1FE),
      200: Color(0xff71A1FE),
      300: Color(0xff71A1FE),
      400: Color(0xff71A1FE),
      500: primary,
      600: Color(0xff71A1FE),
      700: Color(0xff71A1FE),
      800: Color(0xff71A1FE),
      900: Color(0xff71A1FE),
    },
  );
}
