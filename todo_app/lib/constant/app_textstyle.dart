import 'package:flutter/material.dart';
import 'package:todo_app/constant/app_color.dart';
class AppTextstyle {
  /// Regular -> 400
  /// Medium -> 500
  /// Bold -> 600
  /// Semi-Bold -> 700

  static TextStyle fontBold = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColor.blackColor.withValues(alpha: 0.75),
  );
   static TextStyle fontRegular = TextStyle(
    fontFamily: 'Poppins',
    fontSize: 13,
    fontWeight: FontWeight.w400,
    color: AppColor.blackColor.withValues(alpha: 0.74),
  );

}
