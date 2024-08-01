// ignore_for_file: constant_identifier_names, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static const Color PRIMARY_COLOR = Color(0xffEA4080);
  static const Color PRIMARY_GRADIENT = Color(0xffEE805F);
  static const Color PRIMARY_DEEP = Color(0xffb40f4d);
  static const Color DARK_BG = Color(0xff181818);
  static const Color DARK_BG_VARIANT = Color(0xff333333);
  static const Color ON_DARK_BG = Color(0xfffafafa);
  static const Color LIGHT_BG = Color(0xffffffff);
  static const Color LIGHT_BG_VARIANT = Color(0x28ff77b2);
  static const Color ON_LIGHT_BG = Color(0xff232222);

  static ThemeData APP_THEME_LIGHT = ThemeData(
    primaryColor: PRIMARY_COLOR,
    primaryColorDark: PRIMARY_DEEP,
    primaryColorLight: PRIMARY_COLOR,
    colorScheme: ColorScheme(
      brightness: Brightness.light,
      primary: PRIMARY_COLOR,
      onPrimary: PRIMARY_GRADIENT,
      secondary: PRIMARY_DEEP,
      onSecondary: ON_LIGHT_BG,
      error: PRIMARY_DEEP,
      onError: PRIMARY_GRADIENT,
      surface: DARK_BG,
      onSurface: ON_LIGHT_BG,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.bold, fontSize: 22.sp),
      titleMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 20.sp),
      titleSmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18.sp),
      labelLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 22.sp),
      labelMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18.sp),
      labelSmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 16.sp),
      bodyLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16.sp),
      bodyMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14.sp),
      bodySmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w300, fontSize: 12.sp),
      displayLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.normal, fontSize: 11.sp),
      displayMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.normal, fontSize: 10.sp),
      displaySmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.normal, fontSize: 8.sp),
    ),
  );

  static ThemeData APP_THEME_DARK = ThemeData(
    primaryColor: PRIMARY_COLOR,
    primaryColorDark: PRIMARY_DEEP,
    primaryColorLight: PRIMARY_COLOR,
    colorScheme: ColorScheme(
      brightness: Brightness.dark,
      primary: PRIMARY_COLOR,
      onPrimary: PRIMARY_GRADIENT,
      secondary: PRIMARY_DEEP,
      onSecondary: ON_LIGHT_BG,
      error: PRIMARY_DEEP,
      onError: PRIMARY_GRADIENT,
      surface: DARK_BG,
      onSurface: ON_DARK_BG,
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.bold, fontSize: 22.sp),
      titleMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 20.sp),
      titleSmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18.sp),
      labelLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 22.sp),
      labelMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 18.sp),
      labelSmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w600, fontSize: 16.sp),
      bodyLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 16.sp),
      bodyMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w400, fontSize: 14.sp),
      bodySmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.w300, fontSize: 12.sp),
      displayLarge: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.normal, fontSize: 11.sp),
      displayMedium: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.normal, fontSize: 10.sp),
      displaySmall: TextStyle(
          fontFamily: 'Inter', fontWeight: FontWeight.normal, fontSize: 8.sp),
    ),
  );
}
