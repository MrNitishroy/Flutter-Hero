import 'package:flutter/material.dart';

class DrawerProvider extends ChangeNotifier {
  int selectedPageIndex = 2;

  void seletedMenu(int index) {
    selectedPageIndex = index;
    notifyListeners();
  }
}
