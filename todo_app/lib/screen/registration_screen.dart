import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';
import 'package:todo_app/component/app_textfield.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:todo_app/routes/app_routes.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Image.asset(AppPath.imgShape),
            ),
            SizedBox(height: 76),
            Center(
              child: Text(
                "Welcome Onboard!",
                style: AppTextstyle.tsBoldSize18Black,
              ),
            ),
            SizedBox(height: 14),
            Text(
              "Let's help you meet up your tasks",
              style: AppTextstyle.tsRegularSize13Black,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 24, top: 49),
              child: AppTextfield(hintText: 'Enter your full name'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 24, top: 21),
              child: AppTextfield(hintText: 'Enter your email'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 24, top: 21),
              child: AppTextfield(hintText: 'Enter password'),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 27,
                right: 24,
                top: 21,
                bottom: 50,
              ),
              child: AppTextfield(hintText: 'Confirm password'),
            ),
            AppButton(
              textButton: 'Register',
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.signinScreen);
              },
            ),
            SizedBox(height: 23),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account ?',
                  style: AppTextstyle.tsRegularSize14Black,
                ),
                SizedBox(width: 5),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.signinScreen);
                  },
                  child: Text(
                    'Sign In',
                    style: AppTextstyle.tsSemiBoldSize14Black.copyWith(
                      color: AppColor.blueColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
