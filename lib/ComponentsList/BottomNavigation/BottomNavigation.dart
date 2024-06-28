import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/BottomNavigation/BottomNavigation.dart';
import '../../ViewComponents/BottomNavigation/SimpleNagation.dart';

var bottomNavigation = [
  WidgetArea(
    code1Title: "Getx Used For State Management",
    code1: "get: ^4.6.6",
    code2Title: "Navigation Code",
    code2: simpleBottomNavigationCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleBottomNavigationBar(),
    ),
  ),
];
