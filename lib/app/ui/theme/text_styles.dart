import 'package:flutter/rendering.dart';

import 'app_colors.dart';

abstract class TextStyles {
  static const header1s32 = TextStyle(
    fontSize: 32.0,
    fontWeight: FontWeight.bold,
    color: AppColors.black,
  );

  static const header2s24 = TextStyle(
    fontSize: 24.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const p1s18 = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const p2s16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const p2s16W = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.white,
  );
  static const p2s16R = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w600,
    color: AppColors.red,
  );
  static const body1s14 = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );
  static const body2s16 = TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.w300,
    color: AppColors.black,
  );
  static const footnoteMed12 = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w500,
    color: AppColors.black,
  );
  static const footnote2s12Reg = TextStyle(
    fontSize: 12.0,
    fontWeight: FontWeight.w400,
    color: AppColors.black,
  );

  // static const s39w400 = TextStyle(
  //   fontSize: 39.0,
  //   fontWeight: FontWeight.w400,
  //   color: AppColors.blackText,
  // );
}
