import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:todo_app/screen/signin_screen.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(AppPath.imgShape),
          ),
          SizedBox(height: 76),
          Center(child: Text("Welcome Onboard!", style: AppTextstyle.fontBold)),
          SizedBox(height: 14),
          Text(
            "Let's help you meet up your tasks",
            style: AppTextstyle.fontRegular,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 24, top: 49),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColor.whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.whiteColor),
                  borderRadius: BorderRadius.circular(22),
                ),
                hintText: 'Enter your full name',
                hintStyle: AppTextstyle.fontRegular,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 24, top: 21),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColor.whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.whiteColor),
                  borderRadius: BorderRadius.circular(22),
                ),
                hintText: 'Enter your email',
                hintStyle: AppTextstyle.fontRegular,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 27, right: 24, top: 21),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColor.whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.whiteColor),
                  borderRadius: BorderRadius.circular(22),
                ),
                hintText: 'Enter password',
                hintStyle: AppTextstyle.fontRegular,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 27,
              right: 24,
              top: 21,
              bottom: 50,
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: AppColor.whiteColor,
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.whiteColor),
                  borderRadius: BorderRadius.circular(22),
                ),
                hintText: 'Confirm Password',
                hintStyle: AppTextstyle.fontRegular,
              ),
            ),
          ),
          AppButton(
            textButton: 'Register',
            onTap: () {
              //print("being tapp");
              MaterialPageRoute(builder: (context) => SigninScreen());
            },
          ),
        ],
      ),
    );
  }
}
