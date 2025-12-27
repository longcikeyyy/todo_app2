import 'package:flutter/material.dart';
import 'package:todo_app/component/app_button.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(child: Image.asset('assets/images/shape.png')),
          AppButton(
            textButton: 'Register',
            onTap: () {
              debugPrint('Get Started');
            },
          ),
        ],
      ),
    );
  }
}
