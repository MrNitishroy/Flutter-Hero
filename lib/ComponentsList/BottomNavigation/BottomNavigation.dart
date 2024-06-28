import 'package:flutter/material.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';
import '../../Code/BottomNavigation/BottomNavigation.dart';
import '../../ViewComponents/BottomNavigation/SimpleNagation.dart';

var bottomNavigation = [
  WidgetArea(
    code1Title: "Material Bottom Nav",
    code1: simpleBottomNavigationCode,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleBottomNavigationBar(),
    ),
  ),
];
