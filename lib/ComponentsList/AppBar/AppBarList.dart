import 'package:flutter/material.dart';
import 'package:flutterhero/ViewComponents/AppBar/WhatsappAppBar.dart';
import 'package:flutterhero/Widgets/WidgetsArea.dart';

import '../../Code/AppBar/AppBarCodes.dart';
import '../../ViewComponents/AppBar/SimpleAppBar.dart';
import '../../ViewComponents/AppBar/TabBarAppBar.dart';

var appBarList = [
  WidgetArea(
    code1Title: "Simple App Bar",
    code1: simpleAppBar,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: SimpleAppBar(),
    ),
  ),
  WidgetArea(
    code1Title: "Tab App Bar",
    code1: tabAppBar,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: TabAppBar(),
    ),
  ),
  WidgetArea(
    code1Title: "Whatsapp App Bar",
    code1: whatsappAppbar,
    isBorder: true,
    view: const SizedBox(
      height: 500,
      width: 300,
      child: WhatsappAppBar(),
    ),
  ),
];
