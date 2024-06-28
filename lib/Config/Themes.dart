import 'package:flutter/material.dart';
import 'package:flutterhero/Config/Colors.dart';

var lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: backgroundColor,
    colorScheme: const ColorScheme.light(
      surface: backgroundColor,
      primary: primaryColor,
      onSurface: onBackgroundColor,
      primaryContainer: primaryContainerColor,
      onPrimaryContainer: onPrimaryContainerColor,
      secondaryContainer: secondryContainer,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: primaryContainerColor,
      surfaceTintColor: primaryContainerColor,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      fillColor: backgroundColor,
      filled: true,
      hintStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: onPrimaryContainerColor,
      ),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: onBackgroundColor,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: onBackgroundColor,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: onBackgroundColor,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: onBackgroundColor,
      ),
      labelLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: onPrimaryContainerColor,
      ),
      labelMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: onPrimaryContainerColor,
      ),
    ));

var darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: darkBgColor,
    appBarTheme: AppBarTheme(
       centerTitle: true,
        backgroundColor: darkPrimaryColor,
    ),
    colorScheme: const ColorScheme.dark(
      surface: darkBgColor,
      primary: darkPrimaryColor,
      onSurface: darkOnBackground,
      primaryContainer: darkPrimaryContaainer,
      onPrimaryContainer: darkOnPrimaryContainerColor,
      secondaryContainer: darkSecondryContainer,
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: darkPrimaryContaainer,
      surfaceTintColor: darkPrimaryContaainer,
    ),
    inputDecorationTheme: const InputDecorationTheme(
      border: InputBorder.none,
      fillColor: darkBgColor,
      filled: true,
      hintStyle: TextStyle(
        fontFamily: "Poppins",
        fontSize: 12,
        fontWeight: FontWeight.w400,
        color: darkOnPrimaryContainerColor,
      ),
    ),
    textTheme: const TextTheme(
      headlineMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 25,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      headlineSmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 20,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      bodyMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      bodySmall: TextStyle(
        fontFamily: "Poppins",
        fontSize: 12,
        fontWeight: FontWeight.w500,
        color: darkOnBackground,
      ),
      labelLarge: TextStyle(
        fontFamily: "Poppins",
        fontSize: 15,
        fontWeight: FontWeight.w400,
        color: onPrimaryContainerColor,
      ),
      labelMedium: TextStyle(
        fontFamily: "Poppins",
        fontSize: 10,
        fontWeight: FontWeight.w400,
        color: onPrimaryContainerColor,
      ),
    ));
