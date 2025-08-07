import 'package:flutter/material.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';
import 'package:food_adda_app/common/theme/widget_theme.dart/app_text_theme.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    fontFamily: "Metropolis",
    brightness: Brightness.light,
    //scaffoldBackgroundColor: AppColors.scaffoldBg,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.lightTextTheme,

    // inputDecorationTheme: InputDecorationTheme(
    //   fillColor: AppColors.inputFillDark,
    //   filled: true,
    //   border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
    //   hintStyle: TextStyle(color: MyAppColors.textDark.withOpacity(0.5)),
    //   labelStyle: TextStyle(color: MyAppColors.primaryDark),
    // ),
  );

  static final darkTheme = ThemeData(
    fontFamily: "Metropolis",
    brightness: Brightness.light,
    //scaffoldBackgroundColor: AppColors.scaffoldBg,
    primaryColor: AppColors.primary,
    textTheme: AppTextTheme.darkTextTheme,
  );
}
