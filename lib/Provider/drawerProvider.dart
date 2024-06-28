import 'package:flutter/material.dart';
import 'package:flutterhero/Page/About/AboutUs.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 1;
  var pages = [
    AboutUs(),
    AboutUs(),
    AboutUs(),
  ];
  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
