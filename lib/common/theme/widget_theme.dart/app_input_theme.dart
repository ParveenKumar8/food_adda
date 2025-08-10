import 'package:flutter/material.dart';
import 'package:food_adda_app/common/theme/app_colors.dart';

class AppInputTheme {
  AppInputTheme._();

  static final InputDecorationTheme lightInputTheme = InputDecorationTheme(
    fillColor: AppColors.secondary.withValues(alpha: 0.2),
    filled: true,
    contentPadding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
    hintStyle: TextStyle(
      color: AppColors.secondaryFont,
      fontSize: 14,
      fontWeight: FontWeight.w400,
    ),
    labelStyle: TextStyle(
      color: AppColors.secondaryFont,
      fontSize: 16,
      fontWeight: FontWeight.w600,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28.0),
      borderSide: BorderSide.none,
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28.0),
      borderSide: BorderSide.none,
    ),

    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28.0),
      borderSide: BorderSide.none,
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(28.0),
      borderSide: BorderSide.none,
    ),
    // OutlineInputBorder(
    //   borderRadius: BorderRadius.circular(28.0),
    //   borderSide: BorderSide(color: AppColors.inputError, width: 1.5),
    // ),
  );
}
