import 'package:flutter/material.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';
import 'package:food_adda_app/common/theme/widget_theme.dart/app_barr_theme.dart';
import 'package:food_adda_app/common/theme/widget_theme.dart/app_input_theme.dart';
import 'package:food_adda_app/common/theme/widget_theme.dart/app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: "Metropolis",
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldBg,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,
    inputDecorationTheme: AppInputTheme.lightInputTheme,
    appBarTheme: AppBarrTheme.lightAppBarTheme,
  );

  static final darkTheme = ThemeData(
    fontFamily: "Metropolis",
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.scaffoldBg,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.darkTextTheme,
    inputDecorationTheme: AppInputTheme.lightInputTheme,
  );
}
