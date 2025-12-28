import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';
import 'package:todo_app/screen/registration_screen.dart';

/// Cốt lỗi cuối cùng của lập trình
/// Code phải dễ đọc, dễ hiểu, dễ bảo trì, dễ mở rộng, dễ tái sử dụng, dễ kiểm thử,
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Image.asset(AppPath.shape),
          ),
          SizedBox(height: (59 / 812) * MediaQuery.of(context).size.height),
          Center(child: Image.asset(AppPath.imgPhoneWithPerson)),
          SizedBox(height: 45),
          Text(
            'Gets things done with TODO',
            style: AppTextstyle.fontBold,
          ),
          Padding(
            padding: EdgeInsets.only(top: 36, left: 48, right: 46, bottom: 92),
            child: Text(
              "Lorem ipsum dolor sit amet,\nconsectetur adipiscing elit. Interdum\n dictum tempus, interdum at dignissim\n metus. Ultricies sed nunc.",
              style: AppTextstyle.fontRegular,
              textAlign: TextAlign.center,
            ),
          ),
          AppButton(
            textButton: 'Get Started',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => RegistrationScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
