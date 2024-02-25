import 'package:flutter/material.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xffb7935f);
  static Color primaryDarkColor = const Color(0xff141a2e);
  static Color yellowColor = const Color(0xffFACC1D);
  static Color textLight = const Color(0xFF242424);
  static Color textDark = const Color(0xFFF8F8F8);
  static Color cardLight = const Color(0xffF8F8F8);
  static Color cardDark = const Color(0xff141A2E);
  static ThemeData lightTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colors.transparent,
    cardColor: cardLight,
    backgroundColor: primaryColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: textLight,
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: textLight,
          fontSize: 25,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w600),
      bodySmall: TextStyle(
          color: textLight,
          fontSize: 20,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w300),
      titleMedium: TextStyle(
          color: textLight,
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w600
      ),
    ),
    cardTheme: CardTheme(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      color: cardLight.withOpacity(.7),
      elevation: 20,
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: cardLight),),
    ),
    appBarTheme: AppBarTheme(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.white.withOpacity(.0),
      centerTitle: true,
      titleTextStyle: TextStyle(
          color: textLight,
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(size: 30, color: Colors.black),
    ),
    iconTheme: IconThemeData(color: MyThemeData.primaryColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: textLight,
      unselectedItemColor: Colors.white,
    ),
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: false,
    scaffoldBackgroundColor: Colors.transparent,
    cardColor: cardDark,
    backgroundColor: yellowColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: textDark,
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      bodyMedium: TextStyle(
          color: textDark,
          fontSize: 25,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w600),
      bodySmall: TextStyle(
          color: textDark,
          fontSize: 20,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.w300),
      titleMedium: TextStyle(
            color: textLight,
            fontSize: 30,
            fontFamily: 'ElMessiri',
            fontWeight: FontWeight.w600
      ),
    ),
    cardTheme: CardTheme(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      color: cardDark,
      elevation: 20,
    shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: cardDark),),
    ),
    iconTheme: IconThemeData(color: MyThemeData.yellowColor),
    appBarTheme: AppBarTheme(
      shadowColor: Colors.transparent,
      backgroundColor: Colors.white.withOpacity(.0),
      centerTitle: true,
      titleTextStyle: TextStyle(
          color:textDark,
          fontSize: 30,
          fontFamily: 'ElMessiri',
          fontWeight: FontWeight.bold),
      iconTheme: IconThemeData(size: 30, color: yellowColor),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: primaryDarkColor,
      showSelectedLabels: false,
      showUnselectedLabels: false,
      type: BottomNavigationBarType.fixed,
      selectedItemColor: yellowColor,
      unselectedItemColor: textDark,
    ),
  );
}
