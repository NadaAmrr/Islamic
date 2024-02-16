import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffb7935f);
  static Color blackColor = Color(0xff242424);

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: Color(0xff242424),
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: Color(0xff242424),
          fontSize: 25,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w600),
      bodySmall: TextStyle(
          color: Color(0xff242424),
          fontSize: 20,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w300),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Color(0xff242424),
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(size: 30, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xffb7935f),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff242424),
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.transparent,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: Color(0xff242424),
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: Color(0xff242424),
          fontSize: 25,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w600),
      bodySmall: TextStyle(
          color: Color(0xff242424),
          fontSize: 20,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w300),
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: Color(0xff242424),
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(size: 30, color: Colors.black),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Color(0xffb7935f),
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: Color(0xff242424),
      unselectedItemColor: Colors.white,
    ),
  );
}
