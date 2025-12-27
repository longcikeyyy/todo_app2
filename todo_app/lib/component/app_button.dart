import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String textButton;
  final Function()? onTap;

  const AppButton({super.key, required this.textButton, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width - 26 - 24,
        height: 62,
        decoration: BoxDecoration(color: Color(0xFF50C2C9)),
        alignment: Alignment.center,
        child: Text(
          textButton,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            fontFamily: 'Poppins',
            color: Color(0xFFFFFFFF),
          ),
        ),
      ),
    );
  }
}
