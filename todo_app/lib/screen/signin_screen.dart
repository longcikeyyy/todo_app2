import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';
import 'package:todo_app/component/app_textfield.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:todo_app/routes/app_routes.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: AlignmentGeometry.topLeft,
              child: Image.asset(AppPath.imgShape),
            ),
            SizedBox(height: 35),
            Center(
              child: Text(
                "Welcome Back!",
                style: AppTextstyle.tsBoldSize18Black,
              ),
            ),
            SizedBox(height: (35 / 812) * MediaQuery.of(context).size.height),
            DottedBorder(
              options: RectDottedBorderOptions(
                dashPattern: [10, 2],
                strokeWidth: 1,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
                color: AppColor.blackColor.withValues(alpha: 0.3),
              ),
              child: Image.asset(AppPath.imgPhoneWithPerson2),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 46,
                right: 25,
                left: 25,
                bottom: 21,
              ),
              child: AppTextfield(hintText: "Enter your email"),
            ),
            Padding(
              padding: EdgeInsets.only(right: 25, left: 25),
              child: AppTextfield(hintText: "Enter password"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 25, bottom: 24),
              child: Text(
                "Forgot Password",
                style: AppTextstyle.tsRegularSize14Black.copyWith(
                  color: AppColor.blueColor,
                ),
              ),
            ),
            AppButton(
              textButton: "Sign In",
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.homeScreen);
              },
            ),
            SizedBox(height: 29),
            Text.rich(
              TextSpan(
                text: 'Don’t have an account ? ',
                style: AppTextstyle.tsRegularSize14Black,
                children: [
                  TextSpan(
                    text: 'Sign Up',
                    style: AppTextstyle.tsSemiBoldSize14Black.copyWith(
                      color: AppColor.blueColor,
                    ),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.pushNamed(context, AppRoutes.signinScreen);
                      },
                  ),
                ],
              ),
            ),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Don’t have an account ? ',
            //       style: AppTextstyle.tsRegularSize14Black,
            //     ),
            //     SizedBox(width: 5),
            //     GestureDetector(
            //       onTap: () {
            //         Navigator.pushNamed(context, AppRoutes.signinScreen);
            //       },
            //       child: Text(
            //         'Sign Up',
            //         style: AppTextstyle.tsSemiBoldSize14Black.copyWith(
            //           color: AppColor.blueColor,
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }
}
