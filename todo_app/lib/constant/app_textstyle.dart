import 'package:flutter/material.dart';
import 'package:todo_app/constant/app_color.dart';

class AppTextstyle {
  /// Regular -> 400
  /// Medium -> 500
  /// Bold -> 600
  /// Semi-Bold -> 700

  static String fontFamily = 'Poppins';

  static TextStyle fontBold = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor.withValues(alpha: 0.75),
  );
  static TextStyle fontRegular = TextStyle(
    fontFamily: fontFamily,
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColor.blackColor.withValues(alpha: 0.74),
  );

  static TextStyle tsRegularSize18Black = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w400,
    color: AppColor.blackColor,
  );

  static TextStyle tsBoldSize18Black = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor,
  );

  static TextStyle tsMediumSize18Black = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    color: AppColor.blackColor,
  );

  static TextStyle tsSemiBoldSize18Black = TextStyle(
    fontFamily: fontFamily,
    fontSize: 18,
    fontWeight: FontWeight.w700,
    color: AppColor.blackColor,
  );
}
