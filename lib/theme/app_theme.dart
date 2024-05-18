import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_theme_localization/utils/app_colors.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  scaffoldBackgroundColor: lightBgColor,
  useMaterial3: true,
  colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: lightPrimaryColor,
      onPrimary: lightFontColor,
      secondary: lightContainerColor,
      onSecondary: lightBgColor,
      error: Colors.red,
      onError: lightFontColor,
      background: lightBgColor,
      onBackground: lightFontColor,
      surface: lightContainerColor,
      // onSurface is default text color
      onSurface: lightFontColor,
      primaryContainer: lightContainerColor,
      onPrimaryContainer: lightFontColor,
      secondaryContainer: lightLabelColor),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.normal,
      fontFamily: 'Gumela Arabic',
      height: 1.5.h,
    ),
    bodyMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    bodySmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.normal,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    titleLarge: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    titleMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    titleSmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
  ),
);
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  scaffoldBackgroundColor: darkBgColor,
  useMaterial3: true,
  colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: darkPrimaryColor,
      onPrimary: darkFontColor,
      secondary: darkContainerColor,
      onSecondary: darkBgColor,
      error: Colors.red,
      onError: darkFontColor,
      background: darkBgColor,
      onBackground: darkFontColor,
      surface: darkContainerColor,
      // onSurface is default text color
      onSurface: darkFontColor,
      primaryContainer: darkContainerColor,
      onPrimaryContainer: darkFontColor,
      secondaryContainer: darkLabelColor),
  textTheme: TextTheme(
    bodyLarge: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.normal,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    bodyMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.normal,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    bodySmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.normal,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    titleLarge: TextStyle(
      fontSize: 25.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    titleMedium: TextStyle(
      fontSize: 20.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
    titleSmall: TextStyle(
      fontSize: 15.sp,
      fontWeight: FontWeight.bold,
      fontFamily: 'Gumela Arabic',
      height: 1,
    ),
  ),
);
