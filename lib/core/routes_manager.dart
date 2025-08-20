import 'package:flutter/material.dart';
import 'package:islami_app/features/main_layout/main_layout.dart';
import 'package:islami_app/features/onboarding/onboarding_screen.dart';
import 'package:islami_app/features/splash/splash_screen.dart';

class RoutesManager {
  static const String splash = "/splash";
  static const String onBoarding = "/onBoarding";
  static const String mainLayout = "/mainLayout";


  static Map<String, WidgetBuilder> get routes => {
        splash: (_) =>  SplashScreen(),
        onBoarding: (_) =>  OnboardingScreen(),
        mainLayout: (_) =>  MainLayout(),
      };
  

}