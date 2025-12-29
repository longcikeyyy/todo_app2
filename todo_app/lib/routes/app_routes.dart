import 'package:flutter/material.dart';
import 'package:todo_app/screen/home_screen.dart';
import 'package:todo_app/screen/registration_screen.dart';
import 'package:todo_app/screen/signin_screen.dart';
import 'package:todo_app/screen/splash_screen.dart';

class AppRoutes {
  /// Define all routes in the application
  static const String splashScreen = '/splashScreen';
  static const String registrationScreen = '/registrationScreen';
  static const String signinScreen = '/signinScreen';
  static const String homeScreen = '/homeScreen';

  /// routes map
  static Map<String, Widget Function(BuildContext)> routes = {
    AppRoutes.splashScreen: (context) => const SplashScreen(),
    AppRoutes.registrationScreen: (context) => RegistrationScreen(),
    AppRoutes.signinScreen: (context) => const SigninScreen(),
    AppRoutes.homeScreen: (context) => const HomeScreen(),
  };
}
