import 'package:flutter/material.dart';
import 'package:islami_app/core/resources/colors_manager.dart';

class ThemeManager {
  static final ThemeData light = ThemeData(
    scaffoldBackgroundColor: ColorsManager.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData( 
    backgroundColor: ColorsManager.gold,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: ColorsManager.white,
    unselectedItemColor: ColorsManager.black, 
    ),
  );
  static final ThemeData dark = ThemeData(
    scaffoldBackgroundColor: ColorsManager.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData( 
    backgroundColor: ColorsManager.gold,
    type: BottomNavigationBarType.fixed,
    selectedItemColor: ColorsManager.white,
    unselectedItemColor: ColorsManager.black, 
    ),
  );
}
