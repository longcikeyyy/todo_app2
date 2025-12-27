import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Stack(
      children: [
        Positioned(
          width: 290,
          height: 270,
          top: -109,
          left: -99,
          child: Image.asset(
            'assets/images/shape.png',
          )
        ),
         Positioned(
          width: 172.56,
          height: 170,
          top:220,
          left:102,
          child:Image.asset('assets/images/undraw_mobile_ux_o0e1 1.png')
         ),
         Positioned(
          top:435,
          left:48,
          width:281,
          height:21,
          child:
          Text(
            "Gets things done with TODO", 
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 18,
              height:1.16,
              letterSpacing: 1.08, 
              color:Colors.black.withOpacity(0.75)
) 
              )
       ),
          Positioned(
            width: 281,
            height: 72,
            top: 492,
            left: 48,
            child:
             Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Interdum dictum tempus, interdum at dignissim metus. Ultricies sed nunc.", 
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  fontSize: 13,
                  height: 1.37, 
                  letterSpacing: 0.78,
                  color:Colors.black.withOpacity(0.74)
                  
                )
              ),
            
          ),
          Positioned(
            width:325,
            height:62,
            top: 656,
            left: 26,
            child: ElevatedButton(
             onPressed:(){

             },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF50C2C9),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(0)
                )
              ),
             child: 
             Text("Get Started",
             textAlign: TextAlign.center,
              style: 
              TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 18,
                height: 1.37,
                letterSpacing: 1.08,
                color: Color(0xFFFFFFFF)
                ),

              )
          )
          ),
    ],
    ),
  );
}
}