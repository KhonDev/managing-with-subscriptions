import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class AppTheme {
  static final appTheme = ThemeData(
    fontFamily: 'Inter',
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSwatch(
      accentColor: AppColors.black,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: AppColors.black),
    ),
  );

  static final whiteShadow = BoxShadow(
    color: Colors.black.withOpacity(.05),
    blurRadius: 6.0,
  );
}