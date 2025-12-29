import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';
import 'package:todo_app/component/app_textfield.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:todo_app/routes/app_routes.dart';
import 'package:todo_app/screen/signin_screen.dart';
import 'package:todo_app/screen/splash_screen.dart';

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
              child: Text("Welcome Onboard!", style: AppTextstyle.fontBold),
            ),
            SizedBox(height: 14),
            Text(
              "Let's help you meet up your tasks",
              style: AppTextstyle.fontRegular,
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

            /// TODO: Implement Sign in text
          ],
        ),
      ),
    );
  }
}
