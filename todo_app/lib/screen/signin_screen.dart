import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:todo_app/screen/home_screen.dart';

class SigninScreen extends StatelessWidget {
  const SigninScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Align(
            alignment: AlignmentGeometry.topLeft,
            child: Image.asset(AppPath.imgShape),
          ),
          SizedBox(height: 35),
          Center(child: Text("Welcome Back!", style: AppTextstyle.tsBoldSize18Black)),
          SizedBox(height: 35),
          Image.asset(AppPath.imgPhoneWithPerson2),
          SizedBox(height: 46),
          Padding(
            padding: EdgeInsetsGeometry.only(
              top: 46,
              right: 25,
              left: 25,
              bottom: 21,
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColor.whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(color: AppColor.whiteColor),
                ),
                hintText: "Enter your email",
                hintStyle: AppTextstyle.tsRegularSize13Black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsetsGeometry.only(right: 25, left: 25, bottom: 25),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColor.whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(22),
                  borderSide: BorderSide(color: AppColor.whiteColor),
                ),
                hintText: "Enter password",
                hintStyle: AppTextstyle.tsRegularSize13Black,
              ),
            ),
          ),
          Text(
            "Forgot Password",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: AppColor.blueColor,
            ),
          ),
          SizedBox(height: 24),
          AppButton(
            textButton: "Sign In",
            onTap: () {
              Navigator.pushNamed(context, '/homeScreen');
            },
          ),
        ],
      ),
    );
  }
}
