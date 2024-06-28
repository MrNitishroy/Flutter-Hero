import 'package:flutter/material.dart';
import 'package:flutterhero/Page/About/AboutUs.dart';
import 'package:flutterhero/Page/AppBar/AppBarPage.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 2;
  var pages = [
    AboutUs(),
    AboutUs(),
    AppBarPage(),
  ];
  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
