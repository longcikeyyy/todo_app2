import 'package:flutter/material.dart';
import 'package:todo_app/constant/app_color.dart';
import 'package:todo_app/constant/app_path.dart';
import 'package:todo_app/constant/app_textstyle.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:Column(
      children: [
       Align(
      alignment: Alignment.topLeft,
      child:
       Image.asset(AppPath.shape)),
        SizedBox(height: 76),
            Center(
              child: Text(
                "Welcome Onboard!",
                style: AppTextstyle.fontBold,
              ),
            ),
        SizedBox(height: 14), 
             Text(
              "Let's help you meet up your tasks",
             style: AppTextstyle.fontRegular, 
             ),

             Padding(
               padding: const EdgeInsets.only(left: 27,right: 24,top:49),
               child: TextField(       
                decoration: InputDecoration(
                  fillColor: AppColor.whiteColor,
                  border:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(22),
                    
                  ),
                  hintText: 'Enter your full name', 
                  hintStyle: AppTextstyle.fontRegular,
                  ),
                
               ),
             )
          
        
      ],
     
     )
    );
  }
}
