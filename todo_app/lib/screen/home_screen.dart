import 'package:flutter/material.dart';
import 'package:todo_app/constant/app_path.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          InkWell(
            onTap: () {
              Navigator.popUntil(context, ModalRoute.withName('/splashScreen'));
            },
            child: Image.asset(AppPath.imgShape),
          ),
        ],
      ),
    );
  }
}
