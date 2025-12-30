import 'package:flutter/material.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_textstyle.dart';

class AppTextfield extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final TextEditingController? controller;

  const AppTextfield({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColor.whiteColor,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(22),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
        hintText: hintText,
        hintStyle: AppTextstyle.tsRegularSize13Black,
      ),
    );
  }
}
