import 'dart:ui';

class AppColors {
  AppColors._();
  // Below line is less efficient by next line because every time it calls
  // it will create a new instance of color with getter method

  //static Color get primary => const Color(0xff000000);

  static const primary = Color(0xffFC6011);
  static const secondary = Color(0xffB6B7B7);
  static const primaryFont = Color(0xff4A4B4D);
  static const secondaryFont = Color(0xff7C7D7E);
  static const scaffoldBg = Color(0xffFFFFFF);
  static const inputBg = Color(0xffF2F2F2);
  static const inputStrokeBg = Color(0xff707070);
  static const inputError = Color(0xffFF0000);
  static const dotBgColor = Color(0xffD6D6D6);

  static const facebook = Color(0xff367FC0);
  static const google = Color(0xffDD4B39);

  static const white = Color(0xffFFFFFF);
  static const black = Color(0xff000000);
  static const light = Color(0xffFFFFFF);
  static const dark = Color(0xff000000);
}
